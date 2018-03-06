LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY counter_8 IS
  PORT (
    clk : IN STD_LOGIC;
    reset : IN STD_LOGIC;
    direction : IN STD_LOGIC;
    q_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END counter_8;

ARCHITECTURE Behavioral OF counter_8 IS
  SIGNAL tmp : STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0');
BEGIN
  PROCESS (clk)
  BEGIN
    IF (RISING_EDGE(clk))
    THEN
      IF (reset = '1')
      THEN
        tmp <= "00000000";
      ELSIF (direction = '1')
      THEN
        tmp <= tmp + 1;
      ELSE
        tmp <= tmp - 1;
      END IF;
    END IF;
  END PROCESS;

  q_out <= tmp;

END Behavioral;