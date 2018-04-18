-- library declarations
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

-- empty entity
-- there is no interface to the surroundings because the unit under test (UUT)
-- and the tester are all integrated into the same module
ENTITY dip_sw_8_test IS
END dip_sw_8_test;

-- component declaration for the UUT - the lower level entity (the entity of the uut)
ARCHITECTURE Behavioral OF dip_sw_8_test IS

COMPONENT dip_sw_8
  PORT (
    clk : IN STD_LOGIC;
    dip_sw0_in : IN STD_LOGIC;
    dip_sw1_in : IN STD_LOGIC;
    dip_sw2_in : IN STD_LOGIC;
    dip_sw3_in : IN STD_LOGIC;
    dip_sw4_in : IN STD_LOGIC;
    dip_sw5_in : IN STD_LOGIC;
    dip_sw6_in : IN STD_LOGIC;
    dip_sw7_in : IN STD_LOGIC;
    dip_sw_out : OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
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

-- outputs
SIGNAL dip_sw_out : STD_LOGIC_VECTOR(7 DOWNTO 0);

-- if you need a clock input signal, the clock period can be declared this way
-- (delete the -- and use the right name for clock)
CONSTANT clk_period : time := 20 ns;

BEGIN
  -- create an instance of the UUT and connect it to the defined input and output signals
  uut : dip_sw_8 PORT MAP(
    clk => clk,
    dip_sw0_in => dip_sw0_in,
    dip_sw1_in => dip_sw1_in,
    dip_sw2_in => dip_sw2_in,
    dip_sw3_in => dip_sw3_in,
    dip_sw4_in => dip_sw4_in,
    dip_sw5_in => dip_sw5_in,
    dip_sw6_in => dip_sw6_in,
    dip_sw7_in => dip_sw7_in,
    dip_sw_out => dip_sw_out
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
    WAIT FOR clk_period * 2;
    -- expect: dip_sw_out = 0x01

    dip_sw1_in <= '1';
    WAIT FOR clk_period * 2;
    -- expect: dip_sw_out = 0x03
    
    dip_sw2_in <= '1';
    WAIT FOR clk_period * 2;
    -- expect: dip_sw_out = 0x07
    
    dip_sw3_in <= '1';
    WAIT FOR clk_period * 2;
    -- expect: dip_sw_out = 0x0F
    
    dip_sw4_in <= '1';
    WAIT FOR clk_period * 2;
    -- expect: dip_sw_out = 0x1F

    dip_sw5_in <= '1';
    WAIT FOR clk_period * 2;
    -- expect: dip_sw_out = 0x3F
    
    dip_sw6_in <= '1';
    WAIT FOR clk_period * 2;
    -- expect: dip_sw_out = 0x7F
    
    dip_sw7_in <= '1';
    -- expect: dip_sw_out = 0xFF

    -- wait forever
    WAIT;
  END PROCESS;
END Behavioral;