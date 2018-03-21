LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY risc_cpu_8 IS
  PORT (
    -- actual inputs and outputs
    clk : IN STD_LOGIC;
    reset : IN STD_LOGIC;
    data_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    data_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
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
END risc_cpu_8;

ARCHITECTURE Structural OF risc_cpu_8 IS 

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

COMPONENT risc_controller_8
  PORT (
    ---- actual inputs and outputs
    clk : IN STD_LOGIC;
    reset : IN STD_LOGIC;
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

SIGNAL clk_conn : STD_LOGIC;
SIGNAL reset_conn : STD_LOGIC;
SIGNAL carry_out_conn : STD_LOGIC;
SIGNAL carry_in_conn : STD_LOGIC;
SIGNAL data_in_sel_conn : STD_LOGIC;
SIGNAL alu_sel_conn : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL a_enable_conn : STD_LOGIC;
SIGNAL b_enable_conn : STD_LOGIC;
SIGNAL c_enable_conn : STD_LOGIC;
SIGNAL d_enable_conn : STD_LOGIC;
SIGNAL data_a_sel_conn : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL data_b_sel_conn : STD_LOGIC_VECTOR(1 DOWNTO 0);

BEGIN
  -- wire up the datapath
  datapath_8_component : datapath_8 PORT MAP (
    clk => clk_conn,
    reset => reset_conn,
    a_enable => a_enable_conn,
    b_enable => b_enable_conn,
    c_enable => c_enable_conn,
    d_enable => d_enable_conn,
    carry_out => carry_out_conn,
    carry_in => carry_in_conn,
    data_in_sel => data_in_sel_conn,
    alu_sel => alu_sel_conn,
    data_a_sel => data_a_sel_conn,
    data_b_sel => data_b_sel_conn,
    data_in => data_in,
    data_out => data_out
  );

  -- wire up the risc controller
  risc_controller_8_component : risc_controller_8 PORT MAP (
    clk => clk_conn,
    reset => reset_conn,
    a_enable => a_enable_conn,
    b_enable => b_enable_conn,
    c_enable => c_enable_conn,
    d_enable => d_enable_conn,
    data_a_sel => data_a_sel_conn,
    data_b_sel => data_b_sel_conn,
    data_in_sel => data_in_sel_conn,
    alu_sel => alu_sel_conn,
    carry_in => carry_in_conn,
    carry_out => carry_out_conn,
    state_debug => state_debug,
    pc_debug => pc_debug,
    opcode_debug => opcode_debug,
    operation_debug => operation_debug
  );

  reset_conn <= reset;
  clk_conn <= clk;
END Structural;