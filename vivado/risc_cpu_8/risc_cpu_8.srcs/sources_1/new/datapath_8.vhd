LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY datapath_8 IS
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
END datapath_8;

ARCHITECTURE Structural OF datapath_8 IS 

COMPONENT mux_2_1
  PORT (
    a_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    b_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    select_in : IN STD_LOGIC;
    mux_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END COMPONENT;

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

COMPONENT alu_8
  PORT (
    a_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    b_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    select_in : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    alu_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    carry_in : IN STD_LOGIC;
    carry_out : OUT STD_LOGIC
  );
END COMPONENT;

SIGNAL data_a_conn : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL data_b_conn : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL alu_out_conn : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL mem_in_conn : STD_LOGIC_VECTOR(7 DOWNTO 0);

BEGIN
  -- wire up the alu
  alu_component : alu_8 PORT MAP (
    a_in => data_a_conn,
    b_in => data_b_conn,
    carry_in => carry_in,
    carry_out => carry_out,
    alu_out => alu_out_conn,
    select_in => alu_sel
  );

  -- wire up the memory
  memory_8_4_component : memory_8_4 PORT MAP (
    clk => clk,
    reset => reset,
    a_enable => a_enable,
    b_enable => b_enable,
    c_enable => c_enable,
    d_enable => d_enable,
    data_in => mem_in_conn,
    data_a_sel => data_a_sel,
    data_b_sel => data_b_sel,
    data_a_out => data_a_conn,
    data_b_out => data_b_conn
  );
  
  -- wire up the input mux
  mux_2_1_component : mux_2_1 PORT MAP (
    a_in => data_in,
    b_in => alu_out_conn,
    select_in => data_in_sel,
    mux_out => mem_in_conn
  );
  
  data_out <= data_a_conn;
END Structural;