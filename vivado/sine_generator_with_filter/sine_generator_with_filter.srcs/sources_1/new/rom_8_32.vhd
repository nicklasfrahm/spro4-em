LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY rom_8_32 IS
  PORT (
    adr_in : IN STD_LOGIC_VECTOR (4 DOWNTO 0);
    rom_out : OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
  );
END rom_8_32;

ARCHITECTURE Behavioral OF rom_8_32 IS
BEGIN
  PROCESS (adr_in)

  TYPE ROM_TYPE IS ARRAY (0 TO 31) OF STD_LOGIC_VECTOR(7 DOWNTO 0);
  -- square wave
  --VARIABLE rom : ROM_TYPE := (
  --  X"FF", X"FF", X"FF", X"FF", X"FF", X"FF", X"FF", X"FF",
  --  X"FF", X"FF", X"FF", X"FF", X"FF", X"FF", X"FF", X"FF",
  --  X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
  --  X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00"
  --);
  -- sine wave        
  VARIABLE rom : ROM_TYPE := (
    X"80", X"98", X"B0", X"C6", X"DA", X"EA", X"F5", X"FD",
    X"FF", X"FD", X"F5", X"EA", X"DA", X"C6", X"B0", X"98",
    X"80", X"67", X"4F", X"39", X"25", X"15", X"0A", X"02",
    X"00", X"02", X"0A", X"15", X"25", X"39", X"4F", X"67"
  );
  BEGIN
    rom_out <= rom(CONV_INTEGER(adr_in));
  END PROCESS;
END Behavioral;