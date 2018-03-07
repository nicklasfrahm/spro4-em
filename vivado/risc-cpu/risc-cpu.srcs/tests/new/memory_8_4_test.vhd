-- library declarations
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

-- empty entity
-- there is no interface to the surroundings because the unit under test (UUT)
-- and the tester is all integrated into the same module
ENTITY memory_8_4_test IS
END memory_8_4_test;

-- component declaration for the UUT - the lower level entity (the entity of the uut)
ARCHITECTURE Behavioral OF memory_8_4_test IS

COMPONENT memory_8_4
  PORT (
    clk : IN STD_LOGIC;
    reset : IN STD_LOGIC;
    a_enable : IN STD_LOGIC;
    b_enable : IN STD_LOGIC;
    c_enable : IN STD_LOGIC;
    d_enable : IN STD_LOGIC;
    data_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    data_a_sel : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    data_b_sel : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    data_a_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    data_b_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END COMPONENT;

-- declare the local signals to assign values to and for observation
-- these will normally be the same as the signals in the port definition
-- of the component - reflecting the inputs and outputs of the UUT

-- inputs
-- initiated to zero - but this will not be the case in a real world application
SIGNAL clk : STD_LOGIC := '0';
SIGNAL reset : STD_LOGIC := '0';
SIGNAL a_enable : STD_LOGIC := '0';
SIGNAL b_enable : STD_LOGIC := '0';
SIGNAL c_enable : STD_LOGIC := '0';
SIGNAL d_enable : STD_LOGIC := '0';
SIGNAL data_in : STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0');
SIGNAL data_a_sel : STD_LOGIC_VECTOR(1 DOWNTO 0) := (OTHERS => '0');
SIGNAL data_b_sel : STD_LOGIC_VECTOR(1 DOWNTO 0) := (OTHERS => '0');

-- outputs
SIGNAL data_a_out : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL data_b_out : STD_LOGIC_VECTOR(7 DOWNTO 0);

-- if you need a clock input signal, the clock period can be declared this way
-- (delete the -- and use the right name for clock)
CONSTANT clk_period : time := 10 ns;

BEGIN
  -- create an instance of the UUT and connect it to the defined input and output signals
  uut : memory_8_4 PORT MAP (
    clk => clk,
    reset => reset,
    a_enable => a_enable,
    b_enable => b_enable,
    c_enable => c_enable,
    d_enable => d_enable,
    data_in => data_in,
    data_a_sel => data_a_sel,
    data_b_sel => data_b_sel,
    data_a_out => data_a_out,
    data_b_out => data_b_out
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
  
    -- test enable
    data_in <= "11000000";
    WAIT FOR clk_period * 10;
    -- expect: data_a_out = 0b00000000 = 0x00
    -- expect: data_b_out = 0b00000000 = 0x00
  
    -- test a sampling and multiplexing
    a_enable <= '1';
    WAIT FOR clk_period * 10;
    -- expect: data_a_out = 0b11000000 = 0xC0
    -- expect: data_b_out = 0b11000000 = 0xC0

    -- test a storage
    a_enable <= '0';
    WAIT FOR clk_period * 10;
    -- expect: data_a_out = 0b11000000 = 0xC0
    -- expect: data_b_out = 0b11000000 = 0xC0
  
    -- test b sampling and multiplexing
    data_in <= "00110000";
    b_enable <= '1';
    data_a_sel <= "01";
    data_b_sel <= "01";
    WAIT FOR clk_period * 10;
    -- expect: data_a_out = 0b00110000 = 0x30
    -- expect: data_b_out = 0b00110000 = 0x30

    -- test b storage
    b_enable <= '0';
    WAIT FOR clk_period * 10;
    -- expect: data_a_out = 0b00110000 = 0x30
    -- expect: data_b_out = 0b00110000 = 0x30
  
    -- test c sampling and multiplexing
    data_in <= "00001100";
    c_enable <= '1';
    data_a_sel <= "10";
    data_b_sel <= "10";
    WAIT FOR clk_period * 10;
    -- expect: data_a_out = 0b00001100 = 0x0C
    -- expect: data_b_out = 0b00001100 = 0x0C

    -- test c storage
    c_enable <= '0';
    WAIT FOR clk_period * 10;
    -- expect: data_a_out = 0b00001100 = 0x0C
    -- expect: data_b_out = 0b00001100 = 0x0C
  
    -- test d sampling and multiplexing
    data_in <= "00000011";
    d_enable <= '1';
    data_a_sel <= "11";
    data_b_sel <= "11";
    WAIT FOR clk_period * 10;
    -- expect: data_a_out = 0b00000011 = 0x03
    -- expect: data_b_out = 0b00000011 = 0x03

    -- test d storage
    d_enable <= '0';
    WAIT FOR clk_period * 10;
    -- expect: data_a_out = 0b00000011 = 0x03
    -- expect: data_b_out = 0b00000011 = 0x03

    -- test a and b on output
    data_a_sel <= "00";
    data_b_sel <= "01";
    WAIT FOR clk_period * 10;
    -- expect: data_a_out = 0b11000000 = 0xC0
    -- expect: data_b_out = 0b00110000 = 0x30

    -- test c and d on output
    data_a_sel <= "10";
    data_b_sel <= "11";
    WAIT FOR clk_period * 10;
    -- expect: data_a_out = 0b00001100 = 0x0C
    -- expect: data_b_out = 0b00000011 = 0x03
    
    -- test reset
    reset <= '1';
    data_a_sel <= "00";
    data_b_sel <= "00";
    data_in <= "11111111";
    WAIT FOR clk_period * 10;
    -- expect: data_a_out = 0b00000000 = 0x00
    -- expect: data_b_out = 0b00000000 = 0x00

  END PROCESS;
END Behavioral;