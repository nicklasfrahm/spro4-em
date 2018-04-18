LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY shift_right_8 IS
  PORT (
    data_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    data_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    factor_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END shift_right_8;

ARCHITECTURE Behavioral OF moving_average IS
BEGIN
  PROCESS (data_ready)
  BEGIN
    IF (FALLING_EDGE(data_ready))
    THEN
      -- do magic
      fir_out <= data_in;
    END IF;
  END PROCESS;
END Behavioral;