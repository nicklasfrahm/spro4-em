LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY mux_4_1 IS
  PORT (
    a_in : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
    b_in : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
    c_in : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
    d_in : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
    select_in : IN STD_LOGIC_VECTOR (1 DOWNTO 0);
    mux_out : OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
  );
END mux_4_1;

ARCHITECTURE Behavioral OF mux_4_1 IS
BEGIN
  PROCESS (a_in, b_in, c_in, d_in, select_in)
  BEGIN
    CASE select_in IS
      WHEN "00" => mux_out <= a_in;
      WHEN "01" => mux_out <= b_in;
      WHEN "10" => mux_out <= c_in;
      WHEN "11" => mux_out <= d_in;
      WHEN OTHERS => NULL;
    END CASE;
  END PROCESS;
END Behavioral;