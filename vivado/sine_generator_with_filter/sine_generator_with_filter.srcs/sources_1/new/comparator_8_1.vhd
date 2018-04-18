LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY comparator_8_1 IS
  PORT (
    clk : IN STD_LOGIC;
    reset : IN STD_LOGIC;
    a_in : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
    b_in : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
    comp_out : OUT STD_LOGIC
  );
END comparator_8_1;

ARCHITECTURE Behavioral OF comparator_8_1 IS
BEGIN
  PROCESS (clk)
  BEGIN
    IF (FALLING_EDGE(clk))
    THEN
      IF (reset = '1')
      THEN
        comp_out <= '0';
      ELSE
        IF (a_in <= b_in)
        THEN
          comp_out <= '1';
        ELSE
          comp_out <= '0';
        END IF;
      END IF;
    END IF;
  END PROCESS;
END Behavioral;