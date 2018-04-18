LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY pwm_8_1 IS
  PORT (
    clk : IN STD_LOGIC;
    data_in : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
    reset : IN STD_LOGIC;
    pwm_out : OUT STD_LOGIC
  );
END pwm_8_1;

ARCHITECTURE Structural OF pwm_8_1 IS 

COMPONENT comparator_8_1
  PORT (
    clk : IN STD_LOGIC;
    reset : IN STD_LOGIC;
    a_in : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
    b_in : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
    comp_out : OUT STD_LOGIC
  );
END COMPONENT;

COMPONENT counter_8
  PORT (
    clk : IN STD_LOGIC;
    reset : IN STD_LOGIC;
    q_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END COMPONENT;

SIGNAL counter_conn : STD_LOGIC_VECTOR (7 DOWNTO 0);

BEGIN
  -- wire up the comparator
  comparator_8_1_component : comparator_8_1 PORT MAP (
    clk => clk,
    reset => reset,
    a_in => counter_conn,
    b_in => data_in,
    comp_out => pwm_out
  );

  -- wire up the counter
  counter_8_component : counter_8 PORT MAP (
    clk => clk,
    reset => reset,
    q_out => counter_conn
  );
  
END Structural;