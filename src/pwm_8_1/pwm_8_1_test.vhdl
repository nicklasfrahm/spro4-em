-- library declarations
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

-- empty entity
-- there is no interface to the surroundings because the unit under test (UUT)
-- and the tester is all integrated into the same module
ENTITY pwm_8_1_test IS
END pwm_8_1_test;

-- component declaration for the UUT - the lower level entity (the entity of the uut)
ARCHITECTURE Behavioral OF pwm_8_1_test IS

COMPONENT pwm_8_1
  PORT (
    clk : IN STD_LOGIC;
    data_in : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
    reset : IN STD_LOGIC;
    pwm_out : OUT STD_LOGIC
  );
END COMPONENT;

-- declare the local signals to assign values to and for observation
-- these will normally be the same as the signals in the port definition
-- of the component - reflecting the inputs and outputs of the UUT

-- inputs
-- initiated to zero - but this will not be the case in a real world application
SIGNAL clk : STD_LOGIC := '0';
SIGNAL reset : STD_LOGIC := '0';
SIGNAL data_in : STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0');

-- outputs
SIGNAL pwm_out : STD_LOGIC;


-- if you need a clock input signal, the clock period can be declared this way
-- (delete the -- and use the right name for clock)
constant clk_period : time := 20 ns;

BEGIN
  -- create an instance of the UUT and connect it to the defined input and output signals
  uut : pwm_8_1 PORT MAP (
    clk => clk,
    reset => reset,
    data_in => data_in,
    pwm_out => pwm_out
  );

  -- clock process definitions
  -- uncomment these process statements if you need a clock generation process and give clock the right name
  -- this process will run in parallel with the stimulus process.
  clk_process : PROCESS
  BEGIN
    clk <= '1';
    WAIT FOR clk_period / 2;
    clk <= '0';
    WAIT FOR clk_period / 2;
  END PROCESS;
 
  -- stimulus process, this is where you define a sequence of input signals for the simulation
  -- all signals must be defined
  stimulus_process : PROCESS
  BEGIN
    -- hold reset state for 100 ns
    reset <= '1';
    WAIT FOR clk_period * 10 + clk_period / 2;
  
    -- uncomment the following (and give the clock the right name)
    -- if you want the circuit to "settle" before you assign values to the inputs
    --wait for <clock>_period*10;
    
    reset <= '0';
    data_in <= X"40";
    WAIT FOR clk_period * 256;

    data_in <= X"80";
    WAIT FOR clk_period * 256;

    data_in <= X"C0";
    WAIT FOR clk_period * 256;

    -- wait forever
    WAIT;
  END PROCESS;
END Behavioral;