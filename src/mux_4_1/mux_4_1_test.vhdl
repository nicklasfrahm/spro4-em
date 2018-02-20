-- library declarations
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

-- empty entity
-- there is no interface to the surroundings because the unit under test (uut)
-- and the tester is all integrated into the same module
ENTITY mux_4_1_test IS
END mux_4_1_test;

-- component declaration for the UUT - the lower level entity (the entity of the uut)
ARCHITECTURE Behavioral OF mux_4_1_test IS

COMPONENT mux_4_1
  PORT (
    sum_in : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
    inv_in : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
    and_in : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
    or_in : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
    select_in : IN STD_LOGIC_VECTOR (1 DOWNTO 0);
    alu_out : OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
  );
END COMPONENT;

-- declare the local signals to assign values to and for observation
-- these will normally be the same as the signals in the port definition
-- of the component - reflecting the inputs and outputs of the UUT

-- inputs
-- initiated to zero - but this will not be the case in a real world application
SIGNAL sum_in : STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0');
SIGNAL inv_in : STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0');
SIGNAL or_in : STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0');
SIGNAL and_in : STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0');
SIGNAL select_in : STD_LOGIC_VECTOR(1 DOWNTO 0) := (OTHERS => '0');

-- outputs
SIGNAL alu_out : std_logic_vector(7 DOWNTO 0);

-- if you need a clock input signal, the clock period can be declared this way
-- (delete the -- and use the right name for clock)
--constant _period : time := 10 ns;

-- create an instance of the UUT and "connect it" to the defined input and output signals
BEGIN
  uut : mux_4_1 PORT MAP(
    sum_in => sum_in,
    and_in => and_in,
    or_in => or_in,
    select_in => select_in,
    inv_in => inv_in,
    alu_out => alu_out
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

  -- stimulus process, this is where you define a sequence of input signals for the simulation
  -- all signals must be defined.
  stimulus_process : PROCESS
  BEGIN
    -- hold reset state for 100 ns
    WAIT FOR 100 ns;

    -- uncomment the following (and give the clock the right name)
    -- if you want the circuit to "settle" before you assign values to the inputs
    --wait for _period*10;

    -- set input values
    sum_in <= "11000000";
    inv_in <= "00110000";
    or_in <= "00001100";
    and_in <= "00000011";
    WAIT FOR 100 ns;

    -- select sum
    select_in <= "00";
    WAIT FOR 100 ns;
    
    -- select inversion
    select_in <= "01";
    WAIT FOR 100 ns;

    -- select or
    select_in <= "10";
    WAIT FOR 100 ns;

    -- select and
    select_in <= "11";
    WAIT FOR 100 ns;

    -- select sum
    sum_in <= "00111111";
    select_in <= "00";
    WAIT FOR 100 ns;

    -- wait forever
    WAIT;
  END PROCESS;
END;