----------------------------------------------------------------------------------
-- Company: SDU
-- Engineer: Nicklas Frahm
-- 
-- design name: mux_4_1
-- module name: mux_4_1 - Behavioral
-- project name: alu_8
-- target devices: ZedBoard Zynq
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_4_1 is
    port (
        sum_in : in STD_LOGIC_VECTOR (7 downto 0);
        inv_in : in STD_LOGIC_VECTOR (7 downto 0);
        and_in : in STD_LOGIC_VECTOR (7 downto 0);
        or_in : in STD_LOGIC_VECTOR (7 downto 0);
        select_in : in STD_LOGIC_VECTOR (1 downto 0);
        alu_out : out STD_LOGIC_VECTOR (7 downto 0)
    );
end mux_4_1;

architecture Behavioral of mux_4_1 is

    begin process(sum_in, and_in, inv_in, or_in, select_in)
	   
        begin case select_in is
            when "00" => alu_out <= sum_in;
            when "01" => alu_out <= inv_in;
            when "10" => alu_out <= or_in;
            when "11" => alu_out <= and_in;
            when others => null;
        end case;
        
    end process;

end Behavioral;
