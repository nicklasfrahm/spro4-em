-- library declarations
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

-- empty entity
-- there is no interface to the surroundings because the unit under test (UUT)
-- and the tester is all integrated into the same module
ENTITY comparator_8_1_test IS
END comparator_8_1_test;

-- component declaration for the UUT - the lower level entity (the entity of the uut)
ARCHITECTURE Behavioral OF comparator_8_1_test IS

COMPONENT comparator_8_1
  PORT (
    clk : IN STD_LOGIC;
    reset : IN STD_LOGIC;
    a_in : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
    b_in : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
    comp_out : OUT STD_LOGIC
  );
END COMPONENT;

-- declare the local signals to assign values to and for observation
-- these will normally be the same as the signals in the port definition
-- of the component - reflecting the inputs and outputs of the UUT

-- inputs
-- initiated to zero - but this will not be the case in a real world application
SIGNAL clk : STD_LOGIC;
SIGNAL reset : STD_LOGIC := '0';
SIGNAL a_in : STD_LOGIC_VECTOR (7 DOWNTO 0) := (OTHERS => '0');
SIGNAL b_in : STD_LOGIC_VECTOR (7 DOWNTO 0) := (OTHERS => '0');

-- outputs
SIGNAL comp_out : STD_LOGIC;

-- if you need a clock input signal, the clock period can be declared this way
-- (delete the -- and use the right name for clock)
CONSTANT clk_period : time := 50 ns;

BEGIN
  -- create an instance of the UUT and connect it to the defined input and output signals
  uut : comparator_8_1 PORT MAP (
    clk => clk,
    reset => reset,
    a_in => a_in,
    b_in => b_in,
    comp_out => comp_out
  );

  -- clock process definitions
  -- uncomment these process statements if you need a clock generation process and give clock the right name
  -- this process will run in parallel with the stimulus process.
  clk_process : PROCESS
  BEGIN
    clk <= '0';
    WAIT FOR clk_period / 2;
    clk <= '1';
    WAIT FOR clk_period / 2;
  END PROCESS;
 
  -- stimulus process, this is where you define a sequence of input signals for the simulation.
  -- all signals must be defined.
  stimulus_process : PROCESS
  BEGIN
    
    
    -- hold reset state for 100 ns
    WAIT FOR 100 ns - clk_period / 2;

    a_in <= X"0F";
    b_in <= X"0D";
    WAIT FOR clk_period * 5;
    -- expect: comp_out = 0

    a_in <= X"0D";
    WAIT FOR clk_period * 5;
    -- expect: comp_out = 1

    a_in <= X"0C";
    WAIT FOR clk_period * 5;
    -- expect: comp_out = 1

    b_in <= X"0A";
    WAIT FOR clk_period * 5;
    -- expect: comp_out = 0

    b_in <= X"F0";
    WAIT FOR clk_period * 5;
    -- expect: comp_out = 1

    reset <= '1';
    WAIT FOR clk_period * 2;
    -- expect: comp_out = 0

    reset <= '0';
    WAIT FOR clk_period * 2;

    WAIT;
  END PROCESS;
END Behavioral;