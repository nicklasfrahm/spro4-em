LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY adder_8 IS
  PORT (
    a_in : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
    b_in : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
    carry_in : IN STD_LOGIC;
    carry_out : OUT STD_LOGIC;
    sum_out : OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
  );
END adder_8;

ARCHITECTURE Behavioral OF adder_8 IS
BEGIN
  PROCESS (a_in, b_in, carry_in)

  VARIABLE vsum : std_logic_vector (7 DOWNTO 0);
  VARIABLE carry : std_logic;

  BEGIN
    carry := carry_in;
    
    FOR i IN 0 TO 7 LOOP
      vsum(i) := (a_in(i) XOR b_in(i)) XOR carry;
      carry := ((a_in(i) XOR b_in(i)) AND carry) OR (a_in(i) AND b_in(i));
    END LOOP;

    sum_out <= vsum;
    carry_out <= carry;
  END PROCESS;
END Behavioral;