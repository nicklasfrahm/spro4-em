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

entity test_PISO is
--  Port ( );
end test_PISO;

architecture Behavioral of test_PISO is
component PISO
    Port ( clk : in STD_LOGIC;
       Bclk : in STD_LOGIC;
       LRclk : in STD_LOGIC;
       SData : out STD_LOGIC;
       PLData : in STD_LOGIC_VECTOR (23 downto 0);
       PRData : in STD_LOGIC_VECTOR (23 downto 0)
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
constant LRclk_period : time := 20.83 us; --48kHz

begin
uut: PISO port map(
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

LRclk_process: process
begin
    LRclk <= '0';
    wait for LRclk_period/2;
    LRclk <= '1';
    wait for LRclk_period/2;
end process;

stim_proc: process
variable temp : std_logic_vector (63 downto 0);
begin
--test values are Left: 0xF8C10D Right: 0x48FD36 .. Left: 0x49AB2C Right: 0x0E4B17
wait for LRclk_period/2;
PLData <= X"F8C10D";
PRData <= X"48FD36";
wait for LRclk_period;
PLData <= X"49AB2C";
PRData <= X"0E4B17";

wait;
end process;

end Behavioral;
