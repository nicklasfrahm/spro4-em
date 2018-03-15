LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY memory_8_4 IS
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
END memory_8_4;

ARCHITECTURE Structural OF memory_8_4 IS 

COMPONENT mux_4_1
  PORT (
    a_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    b_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    c_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    d_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    select_in : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    mux_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END COMPONENT;

COMPONENT register_8
  PORT (
    clk : IN STD_LOGIC;
    reset : IN STD_LOGIC;
    enable : IN STD_LOGIC;
    reg_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    reg_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END COMPONENT;

SIGNAL data_a_conn : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL data_b_conn : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL data_c_conn : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL data_d_conn : STD_LOGIC_VECTOR(7 DOWNTO 0);

BEGIN
  -- wire up the register a
  register_8_a : register_8 PORT MAP (
    clk => clk,
    reset => reset,
    enable => a_enable,
    reg_in => data_in,
    reg_out => data_a_conn
  );

  -- wire up the register b
  register_8_b : register_8 PORT MAP (
    clk => clk,
    reset => reset,
    enable => b_enable,
    reg_in => data_in,
    reg_out => data_b_conn
  );
  
  -- wire up the register c
  register_8_c : register_8 PORT MAP (
    clk => clk,
    reset => reset,
    enable => c_enable,
    reg_in => data_in,
    reg_out => data_c_conn
  );
  
  -- wire up the register d
  register_8_d : register_8 PORT MAP (
    clk => clk,
    reset => reset,
    enable => d_enable,
    reg_in => data_in,
    reg_out => data_d_conn
  );

  -- wire up the mux a
  mux_4_1_a : mux_4_1 PORT MAP (
    a_in => data_a_conn,
    b_in => data_b_conn,
    c_in => data_c_conn,
    d_in => data_d_conn,
    select_in => data_a_sel,
    mux_out => data_a_out
  );

  -- wire up the mux b
  mux_4_1_b : mux_4_1 PORT MAP (
    a_in => data_a_conn,
    b_in => data_b_conn,
    c_in => data_c_conn,
    d_in => data_d_conn,
    select_in => data_b_sel,
    mux_out => data_b_out
  );
END Structural;