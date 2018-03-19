LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY risc_controller_8 IS
  PORT (
    ---- actual inputs and outputs
    reset : IN STD_LOGIC;
    clk : IN STD_LOGIC;
    carry_out : IN STD_LOGIC;
    carry_in : OUT STD_LOGIC;
    data_in_sel : OUT STD_LOGIC;
    alu_sel : OUT STD_LOGIC_VECTOR (1 DOWNTO 0);
    a_enable : OUT STD_LOGIC;
    b_enable : OUT STD_LOGIC;
    c_enable : OUT STD_LOGIC;
    d_enable : OUT STD_LOGIC;
    data_a_sel : OUT STD_LOGIC_VECTOR (1 DOWNTO 0);
    data_b_sel : OUT STD_LOGIC_VECTOR (1 DOWNTO 0);
    ---- debug outputs for testing
    -- debug current state
    state_debug : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    -- debug program counter value
    pc_debug : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    -- debug operation being executed
    operation_debug : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    -- debug opcode
    opcode_debug : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
  );
END risc_controller_8;

ARCHITECTURE Behavioral OF risc_controller_8 IS
  TYPE STATE_TYPE IS (st_reset, st_decode_and_execute, st_wait_for_decode_and_execute, st_execute, st_wait_for_execute);
  SIGNAL state_current, state_next : STATE_TYPE;
  -- internal data from program rom
  SIGNAL opcode : STD_LOGIC_VECTOR(3 DOWNTO 0);
  -- internal program counter
  SIGNAL pc : STD_LOGIC_VECTOR(3 DOWNTO 0);
  -- toggle to increment program counter
  SIGNAL pc_increment : STD_LOGIC;
  -- toggle to reset program counter
  SIGNAL pc_reset : STD_LOGIC;

BEGIN

  synchronization_process : PROCESS (clk)
  BEGIN
    IF (FALLING_EDGE(clk))
    THEN
      IF (reset = '1') 
      THEN
        state_current <= st_reset;
      ELSE
        state_current <= state_next;
      END IF;
    END IF;
  END PROCESS;

  output_decode : PROCESS (state_current, opcode)
  BEGIN
    -- reset all control signals
    IF (state_current = st_reset)
    THEN
      data_in_sel <= '0';
      a_enable <= '0';
      b_enable <= '0';
      c_enable <= '0';
      d_enable <= '0';
      data_a_sel <= "00";
      data_b_sel <= "00";
      alu_sel <= "00";
      carry_in <= '0';
      pc_increment <= '0';
      pc_reset <= '1';
      state_debug <= "000";
    END IF;
    -- decode the instruction
    IF (state_current = st_decode_and_execute)
    THEN
      CASE opcode IS 
        -- LOAD A
        WHEN "0000" =>
          data_in_sel <= '0';
          a_enable <= '1';
          b_enable <= '0';
          c_enable <= '0';
          d_enable <= '0';
          data_a_sel <= "00";
          data_b_sel <= "00";
          alu_sel <= "00";
          carry_in <= '0';
          pc_increment <= '1';
          pc_reset <= '0';
          operation_debug <= "0000";
        -- LOAD B
        WHEN "0001" =>
          data_in_sel <= '0';
          a_enable <= '0';
          b_enable <= '1';
          c_enable <= '0';
          d_enable <= '0';
          data_a_sel <= "01";
          data_b_sel <= "00";
          alu_sel <= "00";
          carry_in <= '0';
          pc_increment <= '1';
          pc_reset <= '0';
          operation_debug <= "0001";
        -- LOAD C
        WHEN "0010" =>
          data_in_sel <= '0';
          a_enable <= '0';
          b_enable <= '0';
          c_enable <= '1';
          d_enable <= '0';
          data_a_sel <= "10";
          data_b_sel <= "00";
          alu_sel <= "00";
          carry_in <= '0';
          pc_increment <= '1';
          pc_reset <= '0';
          operation_debug <= "0010";
        -- LOAD D
        WHEN "0011" =>
          data_in_sel <= '0';
          a_enable <= '0';
          b_enable <= '0';
          c_enable <= '0';
          d_enable <= '1';
          data_a_sel <= "11";
          data_b_sel <= "00";
          alu_sel <= "00";
          carry_in <= '0';
          pc_increment <= '1';
          pc_reset <= '0';
          operation_debug <= "0011";
        -- ADD AAA
        WHEN "0100" =>
          data_in_sel <= '1';
          a_enable <= '1';
          b_enable <= '0';
          c_enable <= '0';
          d_enable <= '0';
          data_a_sel <= "00";
          data_b_sel <= "00";
          alu_sel <= "00";
          carry_in <= '0';
          pc_increment <= '1';
          pc_reset <= '0';
          operation_debug <= "0100";
        -- ADD AAB
        WHEN "0101" =>
          data_in_sel <= '1';
          a_enable <= '1';
          b_enable <= '0';
          c_enable <= '0';
          d_enable <= '0';
          data_a_sel <= "00";
          data_b_sel <= "01";
          alu_sel <= "00";
          carry_in <= '0';
          pc_increment <= '1';
          pc_reset <= '0';
          operation_debug <= "0101";
        -- ADD ABC
        WHEN "0110" =>
          data_in_sel <= '1';
          a_enable <= '1';
          b_enable <= '0';
          c_enable <= '0';
          d_enable <= '0';
          data_a_sel <= "01";
          data_b_sel <= "10";
          alu_sel <= "00";
          carry_in <= '0';
          pc_increment <= '1';
          pc_reset <= '0';
          operation_debug <= "0110";
        -- SUB AAB
        WHEN "0111" =>
          data_in_sel <= '1';
          a_enable <= '0';
          b_enable <= '1';
          c_enable <= '0';
          d_enable <= '0';
          data_a_sel <= "01";
          data_b_sel <= "00";
          alu_sel <= "01";
          carry_in <= '0';
          pc_increment <= '0';
          pc_reset <= '0';
          operation_debug <= "0111";
        -- SUB ABC
        WHEN "1000" =>
          data_in_sel <= '1';
          a_enable <= '0';
          b_enable <= '0';
          c_enable <= '1';
          d_enable <= '0';
          data_a_sel <= "10";
          data_b_sel <= "00";
          alu_sel <= "01";
          carry_in <= '0';
          pc_increment <= '0';
          pc_reset <= '0';
          operation_debug <= "1000";
        -- AND CCD
        WHEN "1001" =>
          data_in_sel <= '1';
          a_enable <= '0';
          b_enable <= '0';
          c_enable <= '1';
          d_enable <= '0';
          data_a_sel <= "10";
          data_b_sel <= "11";
          alu_sel <= "11";
          carry_in <= '0';
          pc_increment <= '1';
          pc_reset <= '0';
          operation_debug <= "1001";
        -- OR CCD
        WHEN "1010" =>
          data_in_sel <= '1';
          a_enable <= '0';
          b_enable <= '0';
          c_enable <= '1';
          d_enable <= '0';
          data_a_sel <= "10";
          data_b_sel <= "11";
          alu_sel <= "10";
          carry_in <= '0';
          pc_increment <= '1';
          pc_reset <= '0';
          operation_debug <= "1010";
        -- NOT A
        WHEN "1011" =>
          data_in_sel <= '1';
          a_enable <= '1';
          b_enable <= '0';
          c_enable <= '0';
          d_enable <= '0';
          data_a_sel <= "00";
          data_b_sel <= "00";
          alu_sel <= "01";
          carry_in <= '0';
          pc_increment <= '1';
          pc_reset <= '0';
          operation_debug <= "1011";
        -- NOT D
        WHEN "1100" =>
          data_in_sel <= '0';
          a_enable <= '0';
          b_enable <= '0';
          c_enable <= '0';
          d_enable <= '1';
          data_a_sel <= "11";
          data_b_sel <= "00";
          alu_sel <= "01";
          carry_in <= '0';
          pc_increment <= '1';
          pc_reset <= '0';
          operation_debug <= "1100";
        -- WAIT
        WHEN "1101" =>
          data_in_sel <= '0';
          a_enable <= '0';
          b_enable <= '0';
          c_enable <= '0';
          d_enable <= '0';
          data_a_sel <= "00";
          data_b_sel <= "00";
          alu_sel <= "00";
          carry_in <= '0';
          pc_increment <= '1';
          pc_reset <= '0';
          operation_debug <= "1101";
        -- HALT
        WHEN "1110" =>
          data_in_sel <= '0';
          a_enable <= '0';
          b_enable <= '0';
          c_enable <= '0';
          d_enable <= '0';
          data_a_sel <= "00";
          data_b_sel <= "00";
          alu_sel <= "00";
          carry_in <= '0';
          pc_increment <= '0';
          pc_reset <= '0';
          operation_debug <= "1110";
        -- RESET
        WHEN "1111" =>
          data_in_sel <= '0';
          a_enable <= '0';
          b_enable <= '0';
          c_enable <= '0';
          d_enable <= '0';
          data_a_sel <= "00";
          data_b_sel <= "00";
          alu_sel <= "00";
          carry_in <= '0';
          pc_increment <= '0';
          pc_reset <= '1';
          operation_debug <= "1111";
        WHEN OTHERS => NULL;
      END CASE;

      state_debug <= "001";
    END IF;  
    -- wait for next decoding and execution step
    IF (state_current = st_wait_for_decode_and_execute)
    THEN
      data_in_sel <= '0';
      a_enable <= '0';
      b_enable <= '0';
      c_enable <= '0';
      d_enable <= '0';
      data_a_sel <= "00";
      data_b_sel <= "00";
      alu_sel <= "00";
      carry_in <= '0';
      pc_increment <= '0';
      pc_reset <= '0';
      state_debug <= "010";
    END IF;
    -- execute instruction from program memory
    IF (state_current = st_execute)
    THEN
      -- SUB AAB
      IF (opcode = "0111")
      THEN
        data_in_sel <= '1';
        a_enable <= '1';
        b_enable <= '0';
        c_enable <= '0';
        d_enable <= '0';
        data_a_sel <= "00";
        data_b_sel <= "01";
        alu_sel <= "00";
        carry_in <= '1';
        pc_increment <= '1';
        pc_reset <= '0';
        operation_debug <= "0111";
      END IF;
      -- SUB ABC
      IF (opcode = "1000")
      THEN
        data_in_sel <= '1';
        a_enable <= '1';
        b_enable <= '0';
        c_enable <= '0';
        d_enable <= '0';
        data_a_sel <= "01";
        data_b_sel <= "10";
        alu_sel <= "00";
        carry_in <= '1';
        pc_increment <= '1';
        pc_reset <= '0';
        operation_debug <= "1000";
      END IF;

      state_debug <= "011";
    END IF;
    -- wait for next execution step for subtraction
    IF (state_current = st_wait_for_execute)
    THEN
      data_in_sel <= '0';
      a_enable <= '0';
      b_enable <= '0';
      c_enable <= '0';
      d_enable <= '0';
      data_a_sel <= "00";
      data_b_sel <= "00";
      alu_sel <= "00";
      carry_in <= '0';
      pc_increment <= '0';
      pc_reset <= '0';
      state_debug <= "100";
    END IF; 
  END PROCESS;

  state_next_decode : PROCESS (state_current, opcode)
  BEGIN
    state_next <= state_current;  
    
    CASE (state_current) IS
      WHEN st_reset =>
        state_next <= st_decode_and_execute;
      WHEN st_decode_and_execute =>
        IF (opcode = "0111" OR opcode = "1000")
        THEN
          state_next <= st_wait_for_execute;
        ELSE
          state_next <= st_wait_for_decode_and_execute;
        END IF;
      WHEN st_wait_for_decode_and_execute =>
        state_next <= st_decode_and_execute;
      WHEN st_execute =>
        state_next <= st_wait_for_decode_and_execute;
      WHEN st_wait_for_execute =>
        state_next <= st_execute;
      WHEN OTHERS =>
        state_next <= st_reset;
    END CASE;
  END PROCESS;
   
  program_memory : PROCESS (clk)
  TYPE ROM_TYPE IS ARRAY (0 TO 15) OF STD_LOGIC_VECTOR(3 DOWNTO 0);                 
  VARIABLE rom : ROM_TYPE := (
    X"0", X"1", X"2", X"3", X"4", X"5", X"6", X"7",
    X"8", X"9", X"A", X"B", X"C", X"D", X"E", X"F"
  );
  BEGIN
    IF (RISING_EDGE(clk))
    THEN
      IF (state_current = st_reset OR pc_reset = '1')
      THEN
        pc <= "0000";
        IF (pc_reset = '1')
        THEN
          opcode <= rom(0);
        END IF;
      ELSE
        opcode <= rom(CONV_INTEGER(pc));
        IF (pc_increment = '1')
        THEN
          pc <= pc + 1;
        END IF;
      END IF;
    END IF; 
  END PROCESS;

  -- debug outputs for observation in simulations
  opcode_debug <= opcode;
  pc_debug <= pc;

END Behavioral;
