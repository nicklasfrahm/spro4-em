----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 16.04.2018 14:51:20
-- Design Name: 
-- Module Name: SIPO - Behavioral
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

entity SIPO is
    Port ( clk : in STD_LOGIC;
           Bclk : in STD_LOGIC;
           LRclk : in STD_LOGIC;
           SData : in STD_LOGIC;
           PLData : out STD_LOGIC_VECTOR (23 downto 0);
           PRData : out STD_LOGIC_VECTOR (23 downto 0)
--           debug : out STD_LOGIC_VECTOR (63 downto 0)
          );
end SIPO;

architecture Behavioral of SIPO is
    signal LRclk_prev : std_logic := '0';
    signal data_storage : std_logic_vector(63 downto 0) := (others => '0');
    signal Bclk_storage : std_logic_vector(3 downto 0) := (others => '0');
begin

process(clk)
begin
    if rising_edge(clk) then
        if Bclk_storage(3 downto 0) = "0111" then --if rising Bclk edge 3 clks ago
            data_storage <= data_storage (62 downto 0) & SData;
        end if;
        if Bclk_storage(3 downto 0) = "1000" then --if falling Bclk edge 3 clks ago
            if (LRclk = '0' and LRclk_prev = '1') then --start of cycle detection
                --update output registers
                PLData <= data_storage(63-1 downto 63-1-23);
                PRData <= data_storage(31-1 downto 31-1-23);
            end if;
            LRclk_prev <= LRclk;
        end if;
        Bclk_storage <= Bclk_storage(2 downto 0) & Bclk;
    end if;
end process;

--process(Bclk)
--    begin
--        if rising_edge(Bclk) then --sample data on rising
--            data_storage <= data_storage(62 downto 0) & SData;
--        end if;
--        if falling_edge(Bclk) then
--            if (LRclk = '0' and LRclk_prev = '1') then --start of cycle detection
--                --update output registers
--                PLData <= data_storage(63-1 downto 63-1-23);
--                PRData <= data_storage(31-1 downto 31-1-23);
--            end if;
--            LRclk_prev <= LRclk;
--        end if;
--    end process;

--    debug <= data_storage;
end Behavioral;
