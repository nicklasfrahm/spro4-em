LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY mux_2_1 IS
  PORT (
    a_in : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
    b_in : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
    select_in : IN STD_LOGIC;
    mux_out : OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
  );
END mux_2_1;

ARCHITECTURE Behavioral OF mux_2_1 IS
BEGIN
  PROCESS (a_in, b_in, select_in)
  BEGIN
    CASE select_in IS
      WHEN '0' => mux_out <= a_in;
      WHEN '1' => mux_out <= b_in;
      WHEN OTHERS => NULL;
    END CASE;
  END PROCESS;
END Behavioral;