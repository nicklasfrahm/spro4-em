----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 18.04.2018 10:27:13
-- Design Name: 
-- Module Name: PISO - Behavioral
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

entity PISO is
    Port ( clk : in STD_LOGIC;
           Bclk : in STD_LOGIC;
           LRclk : in STD_LOGIC;
           PLData : in STD_LOGIC_VECTOR (23 downto 0);
           PRData : in STD_LOGIC_VECTOR (23 downto 0);
           SData : out STD_LOGIC);
end PISO;

architecture Behavioral of PISO is
    signal LRclk_prev : std_logic := '0';
    signal data_storage : std_logic_vector(63 downto 0) := (others => '0');
    signal Bclk_storage : std_logic_vector(3 downto 0) := (others => '0');
begin

process(clk)
begin
    if rising_edge(clk) then
        if Bclk_storage(3 downto 0) = "1000" then --if falling Bclk edge 3 clks ago
            if (LRclk = '0' and LRclk_prev = '1') then --start of cycle detection
                -- sample input and put into output storage
                --data_storage <= '0' & PLData & "00000000" & PRData & "0000000";
                data_storage <= PLData & "00000000" & PRData & "00000000";
            else
                data_storage <= data_storage(62 downto 0) & '0';
            end if;
            SData <= data_storage(63);
            LRclk_prev <= LRclk;
        end if;
        Bclk_storage <= Bclk_storage(2 downto 0) & Bclk;
    end if;
end process;

end Behavioral;
