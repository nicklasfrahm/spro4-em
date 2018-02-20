LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY logic_8 IS
  PORT (
    a_in : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
    b_in : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
    inv_out : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
    and_out : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
    or_out : OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
  );
END logic_8;

ARCHITECTURE Behavioral OF logic_8 IS
BEGIN
  PROCESS(a_in, b_in)
  BEGIN
    inv_out <= NOT a_in;
	and_out <= a_in AND b_in;
	or_out <= a_in OR b_in;    
  END PROCESS;

END Behavioral;
