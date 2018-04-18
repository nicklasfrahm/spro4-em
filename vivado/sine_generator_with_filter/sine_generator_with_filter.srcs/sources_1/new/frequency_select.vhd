LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY frequency_select IS
  PORT (
    clk : IN STD_LOGIC;
    dip_sw_in : IN STD_LOGIC_VECTOR (3 DOWNTO 0);
    addr_out : OUT STD_LOGIC_VECTOR (4 DOWNTO 0);
    data_ready: OUT STD_LOGIC;
    reset : IN STD_LOGIC
  );
END frequency_select;

ARCHITECTURE Behavioral OF frequency_select IS

BEGIN
  PROCESS (clk)
  VARIABLE timer_count : STD_LOGIC_VECTOR (11 DOWNTO 0) := (OTHERS => '0');
  VARIABLE timer_comp : STD_LOGIC_VECTOR (11 DOWNTO 0);
  VARIABLE addr : STD_LOGIC_VECTOR (4 DOWNTO 0);
  
  BEGIN
    timer_comp(11 DOWNTO 8) := dip_sw_in;
    timer_comp(7 DOWNTO 0) := X"FF";
    IF (RISING_EDGE(clk))
    THEN 
      IF (reset = '1') 
      THEN
        addr := (OTHERS => '0');
        timer_count := (OTHERS => '0');
      ELSE
        IF (timer_count = timer_comp)
        THEN
          addr := addr + 1;
          timer_count := (OTHERS => '0');
          data_ready <= '1';
        ELSE
          timer_count := timer_count + 1;
          data_ready <= '0';
        END IF;
      END IF;
    addr_out <= addr;
    END IF;
  END PROCESS;
END Behavioral;