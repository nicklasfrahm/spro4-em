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
    a_in : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
    b_in : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
    c_in : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
    d_in : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
    select_in : IN STD_LOGIC_VECTOR (1 DOWNTO 0);
    mux_out : OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
  );
END COMPONENT;

-- declare the local signals to assign values to and for observation
-- these will normally be the same as the signals in the port definition
-- of the component - reflecting the inputs and outputs of the UUT

-- inputs
-- initiated to zero - but this will not be the case in a real world application
SIGNAL a_in : STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0');
SIGNAL b_in : STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0');
SIGNAL c_in : STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0');
SIGNAL d_in : STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0');
SIGNAL select_in : STD_LOGIC_VECTOR(1 DOWNTO 0) := (OTHERS => '0');

-- outputs
SIGNAL mux_out : STD_LOGIC_VECTOR(7 DOWNTO 0);

-- if you need a clock input signal, the clock period can be declared this way
-- (delete the -- and use the right name for clock)
--constant _period : time := 10 ns;

-- create an instance of the UUT and "connect it" to the defined input and output signals
BEGIN
  uut : mux_4_1 PORT MAP(
    a_in => a_in,
    b_in => b_in,
    c_in => c_in,
    d_in => d_in,
    select_in => select_in,
    mux_out => mux_out
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

    -- set input values
    a_in <= "11000000";
    b_in <= "00110000";
    c_in <= "00001100";
    d_in <= "00000011";
    WAIT FOR 100 ns;
    -- expect: mux_out = 0b11000000 = 0xC0

    -- select a
    select_in <= "00";
    WAIT FOR 100 ns;
    -- expect: mux_out = 0b11000000 = 0xC0
    
    -- select b
    select_in <= "01";
    WAIT FOR 100 ns;
    -- expect: mux_out = 0b00110000 = 0x30

    -- select c
    select_in <= "10";
    WAIT FOR 100 ns;
    -- expect: mux_out = 0b00001100 = 0x0C

    -- select d
    select_in <= "11";
    WAIT FOR 100 ns;
    -- expect: mux_out = 0b00000011 = 0x03

    -- select a
    a_in <= "00111111";
    select_in <= "00";
    WAIT FOR 100 ns;
    -- expect: mux_out = 0b00111111 = 0x3F

  END PROCESS;
END Behavioral;