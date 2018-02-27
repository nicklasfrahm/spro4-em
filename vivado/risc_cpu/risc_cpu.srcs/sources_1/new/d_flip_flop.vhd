LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY d_flip_flop IS
  PORT (
    clk : IN STD_LOGIC;
    reset : IN STD_LOGIC;
    preset : IN STD_LOGIC;
    d_in : IN STD_LOGIC;
    q_out : OUT STD_LOGIC
  );
END d_flip_flop;

ARCHITECTURE Behavioral OF d_flip_flop IS
BEGIN
  PROCESS (clk)
  BEGIN
    IF (rising_edge(clk))
    THEN
      IF (reset = '1')
      THEN
        q_out <= '0';
      ELSIF (preset = '1')
      THEN
        q_out <= '1';
      ELSE
        q_out <= d_in;
      END IF;
    END IF;
  END PROCESS;
END Behavioral;
