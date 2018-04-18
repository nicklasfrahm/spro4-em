----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 16.04.2018 16:46:59
-- Design Name: 
-- Module Name: test_SIPO - Behavioral
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

entity test_SIPO is
--  Port ( );
end test_SIPO;

architecture Behavioral of test_SIPO is
component SIPO
    Port ( clk : in STD_LOGIC;
       Bclk : in STD_LOGIC;
       LRclk : in STD_LOGIC;
       SData : in STD_LOGIC;
       PLData : out STD_LOGIC_VECTOR (23 downto 0);
       PRData : out STD_LOGIC_VECTOR (23 downto 0)
--       debug : out std_logic_vector (63 downto 0)
      );
end component;

signal clk : std_logic := '0';
signal Bclk : std_logic := '0';
signal LRclk : STD_LOGIC := '1';
signal SData : STD_LOGIC := '0';

signal PLData : STD_LOGIC_VECTOR (23 downto 0);
signal PRData : STD_LOGIC_VECTOR (23 downto 0);
--signal debug : std_logic_vector (63 downto 0);

constant Bclk_period : time := 325.52 ns; --48kHz * 64bit signal length = 3.07MHz
constant clk_period : time := 20.83 ns; --48MHz

begin
uut: SIPO port map(
    clk => clk,
    Bclk => Bclk,
    LRclk => LRclk,
    SData => SData,
    PLData => PLData,
    PRData => PRData
--    debug => debug
);

clk_process: process
begin
    clk <= '0';
    wait for clk_period/2;
    clk <= '1';
    wait for clk_period/2;
end process;

Bclk_process: process
begin
    Bclk <= '0';
    wait for Bclk_period/2;
    Bclk <= '1';
    wait for Bclk_period/2;
end process;

stim_proc: process
variable temp : std_logic_vector (63 downto 0);
begin
wait for Bclk_period * 10;
--test values are Left: 0xF8C10D Right: 0x48FD36 .. Left: 0x49AB2C Right: 0x0E4B17
temp := '0' & X"F8C10D" & "00000000" & X"48FD36" & "0000000";
LRclk <= '0';
for n in 0 to 31 loop
    SData <= temp(63-n);
    wait for Bclk_period;
end loop;
LRclk <= '1';
for n in 0 to 31 loop
    SData <= temp(31-n);
    wait for Bclk_period;
end loop;

temp := '0' & X"49AB2C" & "00000000" & X"0E4B17" & "0000000";
for n in 0 to 63 loop
    if n = 0 then
        LRclk <= '0';
    elsif n = 32 then
        LRclk <= '1';
    end if;
    SData <= temp(63-n);
    wait for Bclk_period;
end loop;
LRclk <= '0';
wait;
end process;

end Behavioral;
