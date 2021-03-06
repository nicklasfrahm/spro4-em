-- library declarations
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

-- empty entity
-- there is no interface to the surroundings because the unit under test (UUT)
-- and the tester is all integrated into the same module
ENTITY d_flip_flop_test IS
END d_flip_flop_test;

-- component declaration for the UUT - the lower level entity (the entity of the uut)
ARCHITECTURE Behavioral OF d_flip_flop_test IS

COMPONENT d_flip_flop
  PORT (
    clk : IN STD_LOGIC;
    reset : IN STD_LOGIC;
    preset : IN STD_LOGIC;
    d_in : IN STD_LOGIC;
    q_out : OUT STD_LOGIC
  );
END COMPONENT;

-- declare the local signals to assign values to and for observation
-- these will normally be the same as the signals in the port definition
-- of the component - reflecting the inputs and outputs of the UUT

-- inputs
-- initiated to zero - but this will not be the case in a real world application
SIGNAL d_in : STD_LOGIC := '0';
SIGNAL reset : STD_LOGIC := '0';
SIGNAL preset : STD_LOGIC := '0';
SIGNAL clk : STD_LOGIC := '0';

-- outputs
SIGNAL q_out : STD_LOGIC;

-- if you need a clock input signal, the clock period can be declared this way
-- (delete the -- and use the right name for clock)
CONSTANT clk_period : time := 10 ns;

BEGIN
  -- create an instance of the UUT and connect it to the defined input and output signals
  uut : d_flip_flop PORT MAP (
    d_in => d_in,
    reset => reset,
    preset => preset,
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
  
    -- uncomment the following (and give the clock the right name)
    -- if you want the circuit to "settle" before you assign values to the inputs
    --wait for <clock>_period*10;
  
    -- test high input sampling
    d_in <= '1';
    WAIT FOR clk_period * 10;
    -- expect: q_out = 1
  
    -- test reset
    reset <= '1';
    WAIT FOR clk_period * 10;
    -- expect: q_out = 0
    
    -- test preset
    d_in <= '0';
    reset <= '0';
    preset <= '1';
    WAIT FOR clk_period * 10;
    -- expect: q_out = 1
    
    -- test reset priority
    reset <= '1';
    WAIT FOR clk_period * 10;
    -- expect: q_out = 0
    
    -- test high input sampling
    d_in <= '1';
    reset <= '0';
    preset <= '0';
    WAIT FOR clk_period * 10;
    -- expect: q_out = 1

    -- test low input sampling
    d_in <= '1';
    reset <= '0';
    preset <= '0';
    WAIT FOR clk_period * 10;
    -- expect: q_out = 0
  
    -- wait forever
    WAIT;
  END PROCESS;
END Behavioral;