LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY alu_8 IS
  PORT (
    a_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    b_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    select_in : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    alu_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    carry_in : IN STD_LOGIC;
    carry_out : OUT STD_LOGIC
  );
END alu_8;

ARCHITECTURE Structural OF alu_8 IS 

COMPONENT adder_8
  PORT (
    a_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    b_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    sum_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    carry_in : IN STD_LOGIC;
    carry_out : OUT STD_LOGIC
  );
END COMPONENT;

COMPONENT logic_8
  PORT (
    a_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    b_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    and_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    inv_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    or_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END COMPONENT;

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

SIGNAL sum_conn : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL or_conn : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL inv_conn : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL and_conn : STD_LOGIC_VECTOR(7 DOWNTO 0);

BEGIN
  -- wire up the adder
  adder_8_component : adder_8 PORT MAP (
    a_in => a_in,
    b_in => b_in,
    carry_in => carry_in,
    sum_out => sum_conn,
    carry_out => carry_out
  );

  -- wire up the logic
  logic_8_component : logic_8 PORT MAP (
    a_in => a_in,
    b_in => b_in,
    inv_out => inv_conn,
    and_out => and_conn,
    or_out => or_conn
  );

  -- wire up the mux
  mux_4_1_component : mux_4_1 PORT MAP (
    a_in => sum_conn,
    b_in => inv_conn,
    c_in => or_conn,
    d_in => and_conn,
    select_in => select_in,
    mux_out => alu_out
  );
END Structural;