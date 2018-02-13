----------------------------------------------------------------------------------
-- Company: SDU
-- Engineer: Nicklas Frahm
-- 
-- Design Name: adder_8
-- Module Name: adder_8 - Behavioral
-- Project Name: alu_8
-- Target Devices: ZedBoard Zynq
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity adder_8 is
    Port ( a_in : in STD_LOGIC_VECTOR (7 downto 0);
           b_in : in STD_LOGIC_VECTOR (7 downto 0);
           carry_in : in STD_LOGIC;
           carry_out : out STD_LOGIC;
           sum_out : out STD_LOGIC_VECTOR (7 downto 0));
end adder_8;

architecture Behavioral of adder_8 is

  begin
  process(a_in, b_in, carry_in)
		
	variable vsum: std_logic_vector(7 downto 0);
	variable carry: std_logic;

		begin
		carry := carry_in;
		for i in 0 to 7 loop
			vsum(i) := (a_in(i) xor b_in(i)) xor carry;
			carry := ((a_in(i) xor b_in(i)) and carry) or (a_in(i) and b_in(i));
		end loop;
		
		sum_out <= vsum;
		carry_out <= carry;

  end process;

end Behavioral;
