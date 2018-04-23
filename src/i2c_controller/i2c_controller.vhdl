LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY i2c_controller IS
  GENERIC (
    clk_divide : STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
   
  PORT (
    clk : IN STD_LOGIC;
    inst_address : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
    inst_data : IN STD_LOGIC_VECTOR (11 DOWNTO 0);
    i2c_scl : OUT STD_LOGIC := '1';
    i2c_sda_i : IN STD_LOGIC;
    i2c_sda_o : OUT STD_LOGIC := '0';
    i2c_sda_t : OUT STD_LOGIC := '1';
    inputs : IN STD_LOGIC_VECTOR (15 DOWNTO 0);
    outputs : OUT STD_LOGIC_VECTOR (15 DOWNTO 0) := (OTHERS => '0');
    reg_addr : OUT STD_LOGIC_VECTOR (4 DOWNTO 0);
    reg_data : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
    reg_write : OUT STD_LOGIC;
    debug_scl : OUT STD_LOGIC := '1';
    debug_sda : OUT STD_LOGIC;
    error : OUT STD_LOGIC
  );
END i2c_controller;

-- instruction set
-- 0x0NN -- JUMP N -- set program counter to N
-- 0x1NN -- SKIPCLEAR N -- skip IF input N IS clear
-- 0x2NN -- SKIPSET N -- skip IF input N IS set
-- 0x3NN -- CLEAR N -- clear output N
-- 0x4NN -- SET N -- set output N
-- 0x5NN -- READ N -- read from the i2c bus to register N
-- 0X6NN -- DELAY M -- delay M clock cycles (N = log2(M))
-- 0x7NN -- SKIPNACK -- skip IF NACK IS set
-- 0x8NN -- SKIPACK -- skip IF ACK IS set
-- 0x9NN -- WRITELOW -- write inputs 7 DOWNTO 0 to the i2c bus
-- 0xANN -- WRITEHIGH -- write inputs 15 DOWNTO 8 to the i2c bus
-- 0xBNN -- MASTERACK -- send a master ACK with the next read
-- 0xCNN -- NOP -- no operation, do nothing
-- 0xDNN -- STOP -- send stop on i2c bus
-- 0xENN -- WRITE N -- output N on i2c bus

ARCHITECTURE Behavioral OF i3c2 IS

CONSTANT STATE_RUN        : STD_LOGIC_VECTOR(3 DOWNTO 0) := X"0";
CONSTANT STATE_DELAY      : STD_LOGIC_VECTOR(3 DOWNTO 0) := X"1";
CONSTANT STATE_I2C_START  : STD_LOGIC_VECTOR(3 DOWNTO 0) := X"2";
CONSTANT STATE_I2C_BITS   : STD_LOGIC_VECTOR(3 DOWNTO 0) := X"3";
CONSTANT STATE_I2C_STOP   : STD_LOGIC_VECTOR(3 DOWNTO 0) := X"4";

SIGNAL state              : STD_LOGIC_VECTOR(3 DOWNTO 0) := STATE_RUN;

CONSTANT OPCODE_JUMP      : STD_LOGIC_VECTOR(3 DOWNTO 0) := X"0";
CONSTANT OPCODE_SKIPSET   : STD_LOGIC_VECTOR(3 DOWNTO 0) := X"1";
CONSTANT OPCODE_SKIPCLEAR : STD_LOGIC_VECTOR(3 DOWNTO 0) := X"2";
CONSTANT OPCODE_CLEAR     : STD_LOGIC_VECTOR(3 DOWNTO 0) := X"3";
CONSTANT OPCODE_SET       : STD_LOGIC_VECTOR(3 DOWNTO 0) := X"4";
CONSTANT OPCODE_I2C_READ  : STD_LOGIC_VECTOR(3 DOWNTO 0) := X"5";
CONSTANT OPCODE_DELAY     : STD_LOGIC_VECTOR(3 DOWNTO 0) := X"6";
CONSTANT OPCODE_SKIPNACK  : STD_LOGIC_VECTOR(3 DOWNTO 0) := X"7";
CONSTANT OPCODE_SKIPACK   : STD_LOGIC_VECTOR(3 DOWNTO 0) := X"8";
CONSTANT OPCODE_WRITELOW  : STD_LOGIC_VECTOR(3 DOWNTO 0) := X"9";
CONSTANT OPCODE_WRITEHI   : STD_LOGIC_VECTOR(3 DOWNTO 0) := X"A";
CONSTANT OPCODE_MASTERACK : STD_LOGIC_VECTOR(3 DOWNTO 0) := X"B";
CONSTANT OPCODE_NOP       : STD_LOGIC_VECTOR(3 DOWNTO 0) := X"C";
CONSTANT OPCODE_I2C_STOP  : STD_LOGIC_VECTOR(3 DOWNTO 0) := X"D";
CONSTANT OPCODE_I2C_WRITE : STD_LOGIC_VECTOR(3 DOWNTO 0) := X"E";
CONSTANT OPCODE_UNKNOWN   : STD_LOGIC_VECTOR(3 DOWNTO 0) := X"F";

SIGNAL opcode             : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL ack_flag           : STD_LOGIC := '0';
SIGNAL skip               : STD_LOGIC := '1'; -- set to 1 to ignore first instruction
   
-- I2C status
SIGNAL i2c_doing_read     : STD_LOGIC := '0';
SIGNAL i2c_started        : STD_LOGIC := '0';
SIGNAL i2c_bits_left      : UNSIGNED(3 DOWNTO 0);

-- counters     
SIGNAL pcnext             : UNSIGNED(9 DOWNTO 0) := (OTHERS => '0');
SIGNAL delay              : UNSIGNED(15 DOWNTO 0);
SIGNAL bitcount           : UNSIGNED(7 DOWNTO 0);
   
-- input and output data
SIGNAL i2c_data           : STD_LOGIC_VECTOR(8 DOWNTO 0);

BEGIN
  
  opcode <= OPCODE_JUMP      WHEN inst_data(11 DOWNTO 8) = X"0" ELSE
            OPCODE_SKIPCLEAR WHEN inst_data(11 DOWNTO 8) = X"1" ELSE
            OPCODE_SKIPSET   WHEN inst_data(11 DOWNTO 8) = X"2" ELSE
            OPCODE_CLEAR     WHEN inst_data(11 DOWNTO 8) = X"3" ELSE
            OPCODE_SET       WHEN inst_data(11 DOWNTO 8) = X"4" ELSE
            OPCODE_I2C_READ  WHEN inst_data(11 DOWNTO 8) = X"5" ELSE
            OPCODE_DELAY     WHEN inst_data(11 DOWNTO 8) = X"6" ELSE
            OPCODE_SKIPNACK  WHEN inst_data(11 DOWNTO 8) = X"7" ELSE 
            OPCODE_SKIPACK   WHEN inst_data(11 DOWNTO 8) = X"8" ELSE
            OPCODE_WRITELOW  WHEN inst_data(11 DOWNTO 8) = X"9" ELSE
            OPCODE_WRITEHI   WHEN inst_data(11 DOWNTO 8) = X"A" ELSE
            OPCODE_MASTERACK WHEN inst_data(11 DOWNTO 8) = X"B" ELSE
            OPCODE_NOP       WHEN inst_data(11 DOWNTO 8) = X"C" ELSE
            OPCODE_I2C_STOP  WHEN inst_data(11 DOWNTO 8) = X"D" ELSE
            OPCODE_I2C_WRITE WHEN inst_data(11 DOWNTO 8) = X"E" ELSE
            OPCODE_UNKNOWN;
   
  inst_address <= STD_LOGIC_VECTOR(pcnext);
  debug_sda <= i2c_sda_i;
  i2c_sda_o <= '0';

  cpu : PROCESS(clk)
  BEGIN
    IF (RISING_EDGE(clk))
    THEN
      CASE state IS 
        WHEN STATE_I2C_START =>
          i2c_started <= '1';
          i2c_scl <= '1';   
          debug_scl <= '1';

          IF (bitcount = UNSIGNED("0" & clk_divide(clk_divide'HIGH DOWNTO 1)))
          THEN
            i2c_sda_t <= '0';
          END IF;
              
          IF (bitcount = 0)
          THEN
            state <= STATE_I2C_BITS;
            i2c_scl <= '0';   
            debug_scl <= '0';
            bitcount <= UNSIGNED(clk_divide);
          ELSE
            bitcount <= bitcount - 1;
          END IF;

        WHEN STATE_I2C_BITS =>
          -- scl has always just lowered '0' on entry
          -- set the data half way through clock LOW half of the cycle
          IF (bitcount = UNSIGNED(clk_divide) - UNSIGNED("00" & clk_divide(clk_divide'HIGH DOWNTO 2)))
          THEN
            IF (i2c_data(8) = '0')
            THEN
              i2c_sda_t <= '0';
            ELSE
              i2c_sda_t <= '1';
            END IF;
          END IF;
                  
          -- raise the clock half way through
          IF (bitcount = UNSIGNED("0" & clk_divide(clk_divide'HIGH DOWNTO 1)))
          THEN
            i2c_scl <= '1';
            debug_scl <= '1';
            -- Input bits halfway  through the cycle
            i2c_data <= i2c_data(7 DOWNTO 0) & i2c_sda_i;
          END IF;

          -- lower the clock at the END of the cycle
          IF (bitcount = 0)
          THEN
            i2c_scl <= '0';
            debug_scl <= '0';
            IF (i2c_bits_left  = "000")
            THEN
              i2c_scl <= '0';
              debug_scl <= '0';
              IF (i2c_doing_read = '1')
              THEN
                reg_data  <= i2c_data(8 DOWNTO 1);
                reg_write <= '1';
              END IF;
              ack_flag <= NOT i2c_data(0);
              state    <= STATE_RUN;
              pcnext   <= pcnext+1;
            ELSE
            i2c_bits_left  <= i2c_bits_left -1;
            END IF;
            bitcount <= UNSIGNED(clk_divide);
          ELSE
            bitcount <= bitcount-1;
          END IF;

        WHEN STATE_I2C_STOP =>
          -- clock stays HIGH, and data goes HIGH half way through a bit
          i2c_started <= '0';
          IF (bitcount = UNSIGNED(clk_divide) - UNSIGNED("00" & clk_divide(clk_divide'HIGH DOWNTO 2)))
          THEN
            i2c_sda_t <= '0';
          END IF;
            
          IF (bitcount = UNSIGNED("0" & clk_divide(clk_divide'HIGH DOWNTO 1)))
          THEN
            i2c_scl <= '1';
            debug_scl <= '1';
          END IF;

          IF (bitcount = UNSIGNED("00" & clk_divide(clk_divide'HIGH DOWNTO 2)))
          THEN
            i2c_sda_t <= '1';
          END IF;

          IF (bitcount = 0)
          THEN
            state <= STATE_RUN;
            pcnext <= pcnext+1;           
          ELSE
            bitcount <= bitcount-1;
          END IF;
               
        WHEN STATE_DELAY =>
          IF (bitcount /= 0)
          THEN
            bitcount <= bitcount -1;
          ELSE
            IF (delay = 0)
            THEN
              pcnext <= pcnext+1;
              state <= STATE_RUN;
            ELSE
              delay <= delay-1;
              bitcount <= UNSIGNED(clk_divide) - 1;
            END IF;
          END IF;
               
        WHEN STATE_RUN =>
          reg_data     <= "XXXXXXXX";
               
          IF (skip = '1')
          THEN
            -- Do nothing for a cycle other than unset 'skip';
            skip <= '0';      
            pcnext <= pcnext+1;
          ELSE
            CASE opcode IS
              WHEN OPCODE_JUMP =>
                -- Ignore the next instruciton while fetching the jump destination
                skip <= '1';
                pcnext <= UNSIGNED(inst_data(6 DOWNTO 0)) & "000";
              
              WHEN OPCODE_I2C_WRITE =>
                i2c_data <= inst_data(7 DOWNTO 0) & "1";
                bitcount <= UNSIGNED(clk_divide);
                i2c_doing_read <= '0';
                i2c_bits_left  <= "1000";
                IF (i2c_started = '0')
                THEN
                  state <= STATE_I2C_START;
                ELSE
                  state <= STATE_I2C_BITS;
                END IF;
                        
              WHEN OPCODE_I2C_READ =>
                reg_addr <= inst_data(4 DOWNTO 0);
                -- keep the SDA pulled up while clocking in data & ACK
                i2c_data <= X"FF" & "1";
                bitcount <= UNSIGNED(clk_divide);
                i2c_bits_left  <= "1000";
                i2c_doing_read <= '1';
                IF (i2c_started = '0')
                THEN
                  state <= STATE_I2C_START;
                ELSE
                  state <= STATE_I2C_BITS;
                END IF;

              WHEN OPCODE_SKIPCLEAR =>
                skip <= inputs(TO_INTEGER(UNSIGNED(inst_data(3 DOWNTO 0)))) xnor inst_data(4);
                pcnext <= pcnext + 1;
                    
              WHEN OPCODE_SKIPSET =>
                skip <= inputs(TO_INTEGER(UNSIGNED(inst_data(3 DOWNTO 0)))) xnor inst_data(4);
                pcnext <= pcnext + 1;
              
              WHEN OPCODE_CLEAR =>
                outputs(TO_INTEGER(UNSIGNED(inst_data(3 DOWNTO 0)))) <= inst_data(4);
                pcnext <= pcnext + 1;
                    
              WHEN OPCODE_SET =>
                outputs(TO_INTEGER(UNSIGNED(inst_data(3 DOWNTO 0)))) <= inst_data(4);
                pcnext <= pcnext + 1;
              
              WHEN OPCODE_SKIPACK =>
                skip <= ack_flag;
                pcnext <= pcnext + 1;
                    
              WHEN OPCODE_SKIPNACK =>
                skip <= not ack_flag;
                pcnext <= pcnext + 1;
                  
              WHEN OPCODE_DELAY =>
                state <= STATE_DELAY;
                bitcount <= UNSIGNED(clk_divide);
                CASE inst_data(3 DOWNTO 0) IS
                  WHEN "0000" => delay <= X"0001";
                  WHEN "0001" => delay <= X"0002";
                  WHEN "0010" => delay <= X"0004";
                  WHEN "0011" => delay <= X"0008";
                  WHEN "0100" => delay <= X"0010";
                  WHEN "0101" => delay <= X"0020";
                  WHEN "0110" => delay <= X"0040";
                  WHEN "0111" => delay <= X"0080";
                  WHEN "1000" => delay <= X"0100";
                  WHEN "1001" => delay <= X"0200";
                  WHEN "1010" => delay <= X"0400";
                  WHEN "1011" => delay <= X"0800";
                  WHEN "1100" => delay <= X"1000";
                  WHEN "1101" => delay <= X"2000";
                  WHEN "1110" => delay <= X"4000";
                  WHEN OTHERS => delay <= X"8000";
                END CASE;
                        
              WHEN OPCODE_I2C_STOP =>
                bitcount <= UNSIGNED(clk_divide);
                state <= STATE_I2C_STOP;
                        
              WHEN OPCODE_NOP =>
                pcnext <= pcnext + 1;

              WHEN OTHERS =>
                error <= '1';
                
            END CASE;
          END IF;
            
        WHEN OTHERS =>
          state <= STATE_RUN;
          pcnext <= (OTHERS => '0');
          skip <= '1';

      END CASE;
    END IF;
  END PROCESS;
END Behavioral;