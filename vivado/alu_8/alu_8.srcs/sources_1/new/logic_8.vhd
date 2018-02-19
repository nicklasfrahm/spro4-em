----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.02.2018 14:11:35
-- Design Name: 
-- Module Name: logic_8 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity logic_8 is
    Port (
           a_in : in STD_LOGIC_VECTOR (7 downto 0);
           b_in : in STD_LOGIC_VECTOR (7 downto 0);
           inv_out : out STD_LOGIC_VECTOR (7 downto 0);
           and_out : out STD_LOGIC_VECTOR (7 downto 0);
           or_out : out STD_LOGIC_VECTOR (7 downto 0)
    );
end logic_8;

architecture Behavioral of logic_8 is
begin
    
    process(a_in, b_in)
	begin
       inv_out <= not a_in;
	   and_out <= a_in and b_in;
	   or_out <= a_in or b_in;        
    end process;


end Behavioral;
