-- library declarations
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

-- empty entity
-- there is no interface to the surroundings because the unit under test (UUT)
-- and the tester are all integrated into the same module
ENTITY sine_wave_gen_test IS
END sine_wave_gen_test;

-- component declaration for the UUT - the lower level entity (the entity of the uut)
ARCHITECTURE Behavioral OF sine_wave_gen_test IS

COMPONENT sine_wave_gen
  PORT (
    -- actual inputs and outputs
    clk : IN STD_LOGIC;
    reset : IN STD_LOGIC;
    dip_sw0_in : IN STD_LOGIC;
    dip_sw1_in : IN STD_LOGIC;
    dip_sw2_in : IN STD_LOGIC;
    dip_sw3_in : IN STD_LOGIC;
    dip_sw4_in : IN STD_LOGIC;
    dip_sw5_in : IN STD_LOGIC;
    dip_sw6_in : IN STD_LOGIC;
    dip_sw7_in : IN STD_LOGIC;
    -- debug sine wave
    sine_debug : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);    
    pwm_out : OUT STD_LOGIC
  );
END COMPONENT;

-- declare the local signals to assign values to and for observation.
-- these will normally be the same as the signals in the port definition
-- of the component - reflecting the inputs and outputs of the UUT.

-- inputs
-- initiated to zero - but this will not be the case in a real world application
SIGNAL clk : STD_LOGIC := '0';
SIGNAL dip_sw0_in : STD_LOGIC := '0';
SIGNAL dip_sw1_in : STD_LOGIC := '0';
SIGNAL dip_sw2_in : STD_LOGIC := '0';
SIGNAL dip_sw3_in : STD_LOGIC := '0';
SIGNAL dip_sw4_in : STD_LOGIC := '0';
SIGNAL dip_sw5_in : STD_LOGIC := '0';
SIGNAL dip_sw6_in : STD_LOGIC := '0';
SIGNAL dip_sw7_in : STD_LOGIC := '0';
SIGNAL reset : STD_LOGIC := '0';

-- outputs
SIGNAL sine_debug : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL pwm_out : STD_LOGIC;

-- if you need a clock input signal, the clock period can be declared this way
-- (delete the -- and use the right name for clock)
CONSTANT clk_period : time := 10 ns;

BEGIN
  -- create an instance of the UUT and connect it to the defined input and output signals
  uut : sine_wave_gen PORT MAP(
    clk => clk,
    reset => reset,
    dip_sw0_in => dip_sw0_in,
    dip_sw1_in => dip_sw1_in,
    dip_sw2_in => dip_sw2_in,
    dip_sw3_in => dip_sw3_in,
    dip_sw4_in => dip_sw4_in,
    dip_sw5_in => dip_sw5_in,
    dip_sw6_in => dip_sw6_in,
    dip_sw7_in => dip_sw7_in,
    pwm_out => pwm_out,
    sine_debug => sine_debug
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

    -- uncomment the following (and give the clock the right name)
    -- if you want the circuit to "settle" before you assign values to the inputs
    WAIT FOR clk_period * 10;

    -- now insert test cases here
    dip_sw0_in <= '1';
    WAIT FOR 1 ms;

    dip_sw0_in <= '0';
    dip_sw1_in <= '1';
    WAIT FOR 1 ms;

    dip_sw1_in <= '0';
    dip_sw2_in <= '1';
    WAIT FOR 1 ms;
  
    dip_sw2_in <= '0';
    dip_sw3_in <= '1';
    WAIT FOR 1 ms;

    reset <= '1';
    WAIT FOR 1 us;

    reset <= '0';
    dip_sw3_in <= '0';    
    dip_sw4_in <= '1';
    WAIT FOR 1 ms;

    dip_sw4_in <= '0';
    dip_sw5_in <= '1';
    WAIT FOR 1 ms;
   
    dip_sw5_in <= '0';
    dip_sw6_in <= '1';
    WAIT FOR 1 ms;
    
    dip_sw6_in <= '0';
    dip_sw7_in <= '1';

    -- wait forever
    WAIT;
  END PROCESS;
END Behavioral;