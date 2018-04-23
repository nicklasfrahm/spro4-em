-- clock divider
-- divides incoming clock by 2
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY clock_divider_1_2 IS
  PORT (
    clk_in : IN STD_LOGIC;
    clock_out : OUT STD_LOGIC
  );
END clock_divider_1_2;

ARCHITECTURE Behavioral OF clock_divider_1_2 IS
SIGNAL clk : STD_LOGIC := '0';
BEGIN
  clk_out <= clk;
   
  PROCESS (clk_in)
  BEGIN
    IF RISING_EDGE(clk_out)
    THEN
      clk <= NOT clk;
    END IF;
  END PROCESS;
END Behavioral;

