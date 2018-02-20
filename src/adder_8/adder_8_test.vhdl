-- library declarations
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

-- empty entity
-- there is no interface to the surroundings because the unit under test (uut)
-- and the tester are all integrated into the same module
ENTITY adder_8_test IS
END adder_8_test;

-- component declaration for the unit under test (UUT) - the lower level entity (the entity of the uut)
ARCHITECTURE Behavioral OF adder_8_test IS

COMPONENT adder_8
  PORT (
    a_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    b_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    carry_in : IN STD_LOGIC;
    carry_out : OUT STD_LOGIC;
    sum_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END COMPONENT;

-- declare the local signals to assign values to and for observation.
-- these will normally be the same as the signals in the port definition
-- of the component - reflecting the inputs and outputs of the UUT.

-- inputs
-- initiated to zero - but this will not be the case in a real world application
SIGNAL a_in : std_logic_vector(7 DOWNTO 0) := (OTHERS => '0');
SIGNAL b_in : std_logic_vector(7 DOWNTO 0) := (OTHERS => '0');
SIGNAL carry_in : std_logic := '0';

-- outputs
SIGNAL carry_out : std_logic;
SIGNAL sum_out : std_logic_vector(7 DOWNTO 0);

-- if you need a clock input signal, the clock period can be declared this way
-- (delete the -- and use the right name for clock)
--constant _period : time := 10 ns;

BEGIN
  -- create an instance of the UUT and connect it to the defined input and output signals
  uut : adder_8 PORT MAP(
    a_in => a_in,
    b_in => b_in,
    carry_in => carry_in,
    carry_out => carry_out,
    sum_out => sum_out
  );

  -- clock process definitions
  -- uncomment these process statements if you need a clock generation process and give clock the right name
  -- this process will run in parallel with the stimulus process
  -- _process :process
  --begin
  -- <= '0';
  --wait for _period/2;
  -- <= '1';
  --wait for _period/2;
  --end process;

  -- stimulus process, this is where you define a sequence of input signals for the simulation.
  -- all signals must be defined.
  stimulus_process : PROCESS
  BEGIN
    -- hold reset state for 100 ns
    WAIT FOR 100 ns;

    -- uncomment the following (and give the clock the right name)
    -- if you want the circuit to "settle" before you assign values to the inputs
    --wait for _period*10;

    -- now insert test cases here
    a_in <= "00001111";
    b_in <= "01010101";
    carry_in <= '0';
    WAIT FOR 100 ns;
    -- expect: sum_out = 0b01100100 = 0x64
    -- expect: carry_out = 0

    a_in <= "00000000";
    b_in <= "01010101";
    carry_in <= '0';
    WAIT FOR 100 ns;
    -- expect: sum_out = 0b01010101 = 0x55
    -- expect: carry_out = 0

    a_in <= "11110000";
    b_in <= "01010101";
    carry_in <= '0';
    WAIT FOR 100 ns;
    -- expect: sum_out = 0b01000101 = 0x45
    -- expect: carry_out = 1

    a_in <= "00001111";
    b_in <= "01010101";
    carry_in <= '1';
    WAIT FOR 100 ns;
    -- expect: sum_out = 0b01100101 = 0x65
    -- expect: carry_out = 0

    -- wait forever
    WAIT;
  END PROCESS;
END;