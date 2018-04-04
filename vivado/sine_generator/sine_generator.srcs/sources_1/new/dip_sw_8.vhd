LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY dip_sw_8 IS
  PORT (
    clk : IN STD_LOGIC;
    dip_sw0_in : IN STD_LOGIC;
    dip_sw1_in : IN STD_LOGIC;
    dip_sw2_in : IN STD_LOGIC;
    dip_sw3_in : IN STD_LOGIC;
    dip_sw4_in : IN STD_LOGIC;
    dip_sw5_in : IN STD_LOGIC;
    dip_sw6_in : IN STD_LOGIC;
    dip_sw7_in : IN STD_LOGIC;
    dip_sw_out : OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
  );
END dip_sw_8;

ARCHITECTURE Behavioral OF dip_sw_8 IS
BEGIN
  PROCESS (clk)
  BEGIN
    IF (FALLING_EDGE(clk))
    THEN
      dip_sw_out(0) <= dip_sw0_in;
      dip_sw_out(1) <= dip_sw1_in;
      dip_sw_out(2) <= dip_sw2_in;
      dip_sw_out(3) <= dip_sw3_in;
      dip_sw_out(4) <= dip_sw4_in;
      dip_sw_out(5) <= dip_sw5_in;
      dip_sw_out(6) <= dip_sw6_in;
      dip_sw_out(7) <= dip_sw7_in;
    END IF;
  END PROCESS;
END Behavioral;