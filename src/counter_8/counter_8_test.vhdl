-- library declarations
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

-- empty entity
-- there is no interface to the surroundings because the unit under test (UUT)
-- and the tester is all integrated into the same module
ENTITY counter_8_test IS
END counter_8_test;

-- component declaration for the UUT - the lower level entity (the entity of the uut)
ARCHITECTURE Behavioral OF counter_8_test IS

COMPONENT counter_8
  PORT (
    clk : IN STD_LOGIC;
    direction : IN STD_LOGIC;
    reset : IN STD_LOGIC;
    q_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END COMPONENT;

-- declare the local signals to assign values to and for observation
-- these will normally be the same as the signals in the port definition
-- of the component - reflecting the inputs and outputs of the UUT

-- inputs
-- initiated to zero - but this will not be the case in a real world application
SIGNAL direction : STD_LOGIC := '0';
SIGNAL reset : STD_LOGIC := '0';
SIGNAL clk : STD_LOGIC := '0';

-- outputs
SIGNAL q_out : STD_LOGIC_VECTOR(7 DOWNTO 0);

-- if you need a clock input signal, the clock period can be declared this way
-- (delete the -- and use the right name for clock)
CONSTANT clk_period : time := 10 ns;

BEGIN
  -- create an instance of the UUT and connect it to the defined input and output signals
  uut : counter_8 PORT MAP (
    direction => direction,
    reset => reset,
    clk => clk,
    q_out => q_out
  );

  -- clock process definitions
  -- uncomment these process statements if you need a clock generation process and give clock the right name
  -- this process will run in parallel with the stimulus process
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
    WAIT FOR clk_period * 10;
  
    -- reset
    reset <= '1';
    WAIT FOR clk_period * 10;
    -- expect: q_out = 0b00000000 = 0x00
  
    -- test positive direction
    reset <= '0';
    direction <= '1';
    WAIT FOR clk_period * 10;
    -- expect: q_out = 0b00010100 =  0x0A
  
    -- test negative direction
    direction <= '0';
    WAIT FOR clk_period * 10;
    -- expect: q_out = 0b00010100 =  0x00

    WAIT FOR clk_period * 10;
    -- expect: q_out = 0b11110101 = 0xF5
    
  END PROCESS;
END Behavioral;