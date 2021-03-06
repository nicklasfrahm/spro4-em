LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

-- empty entity
-- there is no interface to the surroundings because the unit under test (UUT)
-- and the tester are all integrated into the same module
ENTITY frequency_select_test IS
END frequency_select_test;

-- component declaration for the UUT - the lower level entity (the entity of the uut)
ARCHITECTURE Behavioral OF frequency_select_test IS

COMPONENT frequency_select
  PORT (
      clk : IN STD_LOGIC;
    dip_sw_in : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
    addr_out : OUT STD_LOGIC_VECTOR (4 DOWNTO 0);
    reset : IN STD_LOGIC
  );
END COMPONENT;

-- declare the local signals to assign values to and for observation.
-- these will normally be the same as the signals in the port definition
-- of the component - reflecting the inputs and outputs of the UUT.

-- inputs
-- initiated to zero - but this will not be the case in a real world application
SIGNAL clk : STD_LOGIC := '0';
SIGNAL dip_sw_in : STD_LOGIC_VECTOR (7 DOWNTO 0) := (OTHERS => '0');
SIGNAL reset : STD_LOGIC := '0';

-- outputs
SIGNAL addr_out : STD_LOGIC_VECTOR (4 DOWNTO 0);

-- if you need a clock input signal, the clock period can be declared this way
-- (delete the -- and use the right name for clock)
CONSTANT clk_period : time := 10 ns;

BEGIN
  -- create an instance of the UUT and connect it to the defined input and output signals
  uut : frequency_select PORT MAP(
    clk => clk,
    dip_sw_in => dip_sw_in,
    addr_out => addr_out,
    reset => reset
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
    dip_sw_in <= "00000001";
    WAIT FOR clk_period * 1000;

    dip_sw_in <= "00001000";
    WAIT FOR clk_period * 1000;    

    dip_sw_in <= "00000010";
    WAIT FOR clk_period * 1000;

    reset <= '1';

    -- wait forever
    WAIT;
  END PROCESS;
END Behavioral;