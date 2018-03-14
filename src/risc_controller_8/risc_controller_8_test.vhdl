-- library declarations
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

-- empty entity
-- there is no interface to the surroundings because the unit under test (UUT)
-- and the tester is all integrated into the same module
ENTITY risc_controller_8_test IS
END risc_controller_8_test;

-- component declaration for the UUT - the lower level entity (the entity of the uut)
ARCHITECTURE Structural OF risc_controller_8_test IS

COMPONENT risc_controller_8
  PORT (
    ---- actual inputs and outputs
    reset : IN STD_LOGIC;
    clk : IN STD_LOGIC;
    carry_out : IN STD_LOGIC;
    carry_in : OUT STD_LOGIC;
    data_in_sel : OUT STD_LOGIC;
    alu_sel : OUT STD_LOGIC_VECTOR (1 DOWNTO 0);
    a_enable : OUT STD_LOGIC;
    b_enable : OUT STD_LOGIC;
    c_enable : OUT STD_LOGIC;
    d_enable : OUT STD_LOGIC;
    data_a_sel : OUT STD_LOGIC_VECTOR (1 DOWNTO 0);
    data_b_sel : OUT STD_LOGIC_VECTOR (1 DOWNTO 0);
    ---- debug outputs for testing
    -- debug current state
    state_debug : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    -- debug program counter value
    pc_debug : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    -- debug operation being executed
    operation_debug : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    -- debug opcode
    opcode_debug : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
  );
END COMPONENT;

-- declare the local signals to assign values to and for observation
-- these will normally be the same as the signals in the port definition
-- of the component - reflecting the inputs and outputs of the UUT

-- inputs
-- initiated to zero - but this will not be the case in a real world application
SIGNAL clk : STD_LOGIC := '0';
SIGNAL reset : STD_LOGIC := '0';
SIGNAL carry_out : STD_LOGIC := '0'; 

-- outputs
SIGNAL a_enable : STD_LOGIC;
SIGNAL b_enable : STD_LOGIC;
SIGNAL c_enable : STD_LOGIC;
SIGNAL d_enable : STD_LOGIC;
SIGNAL carry_in : STD_LOGIC;
SIGNAL data_in_sel : STD_LOGIC;
SIGNAL alu_sel : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL data_a_sel : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL data_b_sel : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL state_debug : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL pc_debug : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL operation_debug : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL opcode_debug : STD_LOGIC_VECTOR(3 DOWNTO 0);

-- if you need a clock input signal, the clock period can be declared this way
-- (delete the -- and use the right name for clock)
CONSTANT clk_period : time := 50 ns;

BEGIN
  -- create an instance of the UUT and connect it to the defined input and output signals
  uut : risc_controller_8 PORT MAP (
    clk => clk,
    reset => reset,
    carry_out => carry_out,
    a_enable => a_enable,
    b_enable => b_enable,
    c_enable => c_enable,
    d_enable => d_enable,
    carry_in => carry_in,
    data_in_sel => data_in_sel,
    alu_sel => alu_sel,
    data_a_sel => data_a_sel,
    data_b_sel => data_b_sel,
    state_debug => state_debug,
    pc_debug => pc_debug,
    operation_debug => operation_debug,
    opcode_debug => opcode_debug
  );

  -- clock process definitions
  -- uncomment these process statements if you need a clock generation process and give clock the right name
  -- this process will run in parallel with the stimulus process.
  clk_process : PROCESS
  BEGIN
    clk <= '0';
    WAIT FOR clk_period / 2;
    clk <= '1';
    WAIT FOR clk_period / 2;
  END PROCESS;

  stimulus_process : PROCESS
  BEGIN
    -- hold reset state
    WAIT FOR clk_period * 2;
    reset <= '1';
    WAIT FOR clk_period * 2;
    reset <= '0';
    WAIT;
  END PROCESS;
END Structural;