-- library declarations
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

-- empty entity
-- there is no interface to the surroundings because the unit under test (UUT)
-- and the tester is all integrated into the same module
ENTITY alu_8_test IS
END alu_8_test;

-- component declaration for the UUT - the lower level entity (the entity of the uut)
ARCHITECTURE Structural OF alu_8_test IS

COMPONENT alu_8
  PORT (
    a_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    b_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    carry_in : IN STD_LOGIC;
    carry_out : OUT STD_LOGIC;
    alu_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    select_in : IN STD_LOGIC_VECTOR(1 DOWNTO 0)
  );
END COMPONENT;

-- declare the local signals to assign values to and for observation
-- these will normally be the same as the signals in the port definition
-- of the component - reflecting the inputs and outputs of the UUT

-- inputs
-- initiated to zero - but this will not be the case in a real world application
SIGNAL a_in : std_logic_vector(7 DOWNTO 0) := (OTHERS => '0');
SIGNAL b_in : std_logic_vector(7 DOWNTO 0) := (OTHERS => '0');
SIGNAL select_in : std_logic_vector(1 DOWNTO 0) := (OTHERS => '0');
SIGNAL carry_in : std_logic := '0';

-- outputs
SIGNAL carry_out : std_logic;
SIGNAL alu_out : std_logic_vector(7 DOWNTO 0);

-- if you need a clock input signal, the clock period can be declared this way
-- (delete the -- and use the right name for clock)
--constant <clock>_period : time := 10 ns;

BEGIN
  -- create an instance of the UUT and connect it to the defined input and output signals
  uut : alu_8 PORT MAP (
    a_in => a_in,
    b_in => b_in,
    carry_in => carry_in,
    carry_out => carry_out,
    alu_out => alu_out,
    select_in => select_in
  );

  -- clock process definitions
  -- uncomment these process statements if you need a clock generation process and give clock the right name
  -- this process will run in parallel with the stimulus process.
  -- <clock>_process :process
  --begin
    --<clock> <= '0';
    --wait for <clock>_period/2;
    --<clock> <= '1';
    --wait for <clock>_period/2;
  --end process;
 
  -- stimulus process, this is where you define a sequence of input signals for the simulation
  -- all signals must be defined
  stimulus_process : PROCESS
  BEGIN
    -- hold reset state for 100 ns
    WAIT FOR 100 ns;
  
    -- uncomment the following (and give the clock the right name)
    -- if you want the circuit to "settle" before you assign values to the inputs
    --wait for <clock>_period*10;
  
    -- test cases
    a_in <= "00011100";
    b_in <= "11011000";
    select_in <= "00";
    carry_in <= '0';
    WAIT FOR 100 ns;
    -- expect: alu_out = 0b11110100 = 0xF4
    -- expect: carry_out = 0
    
    a_in <= "11110000";
    b_in <= "00001110";
    select_in <= "00";
    carry_in <= '1';
    WAIT FOR 100 ns;
    -- expect: alu_out = 0b11111111 = 0xFF
    -- expect: carry_out = 0
        
    a_in <= "10000000";
    b_in <= "10000000";
    select_in <= "00";
    carry_in <= '0';
    WAIT FOR 100 ns;
    -- expect: alu_out = 0b00000000 = 0x00
    -- expect: carry_out = 1
    
    a_in <= "11110000";
    b_in <= "00000000";
    select_in <= "01";
    carry_in <= '0';
    WAIT FOR 100 ns;
    -- expect: alu_out = 0b00001111 = 0x0F
    -- expect: carry_out = 0
        
    a_in <= "11000000";
    b_in <= "00001100";
    select_in <= "10";
    carry_in <= '0';
    WAIT FOR 100 ns;
    -- expect: alu_out = 0b11001100 = 0xCC
    -- expect: carry_out = 0
            
    a_in <= "11110000";
    b_in <= "11111111";
    select_in <= "11";
    carry_in <= '0';
    WAIT FOR 100 ns;
    -- expect: alu_out = 0b11110000 = 0xF0
    -- expect: carry_out = 0
    
    -- wait forever
    WAIT;
  END PROCESS;
END Structural;