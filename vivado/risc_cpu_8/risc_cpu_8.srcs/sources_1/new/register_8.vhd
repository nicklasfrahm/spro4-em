LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY register_8 IS
  PORT (
    clk : IN STD_LOGIC;
    reset : IN STD_LOGIC;
    enable : IN STD_LOGIC;
    reg_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    reg_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END register_8;

ARCHITECTURE Behavioral OF register_8 IS
BEGIN
  PROCESS (clk)
  BEGIN
    IF (RISING_EDGE(clk))
    THEN
      IF (reset = '1')
      THEN
        reg_out <= "00000000";
      ELSIF (enable = '1')
      THEN
        reg_out <= reg_in;
      END IF;
    END IF;
  END PROCESS;
END Behavioral;
