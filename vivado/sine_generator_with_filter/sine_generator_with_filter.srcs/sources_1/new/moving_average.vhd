LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY moving_average IS
  PORT (
    data_ready : IN STD_LOGIC;
    dip_sw_in : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    data_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    fir_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END moving_average;

ARCHITECTURE Behavioral OF moving_average IS
BEGIN
  PROCESS (data_ready)
  BEGIN
    IF (FALLING_EDGE(data_ready))
    THEN
      FOR 
      -- do magic
      fir_out <= data_in;
    END IF;
  END PROCESS;
END Behavioral;