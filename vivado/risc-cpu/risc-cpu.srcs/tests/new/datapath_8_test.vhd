-- library declarations
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

-- empty entity
-- there is no interface to the surroundings because the unit under test (UUT)
-- and the tester is all integrated into the same module
ENTITY datapath_8_test IS
END datapath_8_test;

-- component declaration for the UUT - the lower level entity (the entity of the uut)
ARCHITECTURE Structural OF datapath_8_test IS

COMPONENT datapath_8
  PORT (
    clk : IN STD_LOGIC;
    reset : IN STD_LOGIC;
    a_enable : IN STD_LOGIC;
    b_enable : IN STD_LOGIC;
    c_enable : IN STD_LOGIC;
    d_enable : IN STD_LOGIC;
    carry_in : IN STD_LOGIC;
    carry_out : OUT STD_LOGIC;
    data_in_sel : IN STD_LOGIC;
    alu_sel : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    data_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    data_a_sel : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    data_b_sel : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    data_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
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
 SIGNAL carry_in : STD_LOGIC := '0';
 SIGNAL data_in_sel : STD_LOGIC := '0';
 SIGNAL alu_sel : STD_LOGIC_VECTOR(1 DOWNTO 0) := (OTHERS => '0');
 SIGNAL data_in : STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0');
 SIGNAL data_a_sel : STD_LOGIC_VECTOR(1 DOWNTO 0) := (OTHERS => '0');
 SIGNAL data_b_sel :STD_LOGIC_VECTOR(1 DOWNTO 0) := (OTHERS => '0');


-- outputs
 SIGNAL carry_out : STD_LOGIC;
 SIGNAL data_out : STD_LOGIC_VECTOR(7 DOWNTO 0);

-- if you need a clock input signal, the clock period can be declared this way
-- (delete the -- and use the right name for clock)
constant clk_period : time := 20 ns;

BEGIN
  -- create an instance of the UUT and connect it to the defined input and output signals
  uut : datapath_8 PORT MAP (
    clk => clk,
    reset => reset,
    a_enable => a_enable,
    b_enable => b_enable,
    c_enable => c_enable,
    d_enable => d_enable,
    carry_in => carry_in,
    carry_out => carry_out,
    data_in_sel => data_in_sel,
    alu_sel => alu_sel,
    data_in => data_in,
    data_a_sel => data_a_sel,
    data_b_sel => data_b_sel,
    data_out => data_out
  );

  -- clock process definitions
  -- uncomment these process statements if you need a clock generation process and give clock the right name
  -- this process will run in parallel with the stimulus process.
   clk_process :process
  begin
    clk <= '0';
    wait for clk_period/2;
    clk <= '1';
    wait for clk_period/2;
  end process;
 
  -- stimulus process, this is where you define a sequence of input signals for the simulation
  -- all signals must be defined
  stimulus_process : PROCESS
  BEGIN
    -- hold reset state for 100 ns
    WAIT FOR 100 ns;
  
    -- uncomment the following (and give the clock the right name)
    -- if you want the circuit to "settle" before you assign values to the inputs
    --wait for <clock>_period*10;
  
    -- test cases
    data_in <= "00101010";
    b_enable <= '1';
    data_a_sel <= "01";
    WAIT FOR 100 ns;
    -- expect: data_out = 0b00101010 = 0x2A
    
    -- wait forever
    WAIT;
  END PROCESS;
END Structural;