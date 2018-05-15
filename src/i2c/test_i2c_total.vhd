library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity test_i2c_total is
--  Port ( );
end test_i2c_total;

architecture Behavioral of test_i2c_total is

component i2c_total
    Port ( clk : in STD_LOGIC;
       sda : inout STD_LOGIC;
       scl : inout STD_LOGIC;
       debug : out std_logic_vector (3 downto 0);
       handshake_debug : out std_logic;
       enable_debug : out std_logic;
       flag_debug : out std_logic;
       ready_debug : out std_logic;
       clk_debug : out std_logic_vector (23 downto 0);
       command_debug : out std_logic_vector (3 downto 0)
      );
end component;

signal clk : std_logic := '0';
signal sda : std_logic := 'Z';
signal scl : std_logic := 'Z';
signal handshake_debug : std_logic;
signal debug : std_logic_vector (3 downto 0);
signal enable_debug : std_logic;
signal flag_debug : std_logic;
signal ready_debug : std_logic;
signal clk_debug : std_logic_vector (23 downto 0);
signal command_debug : std_logic_vector (3 downto 0);

constant clk_period: time := 20.833 ns; --48MHz

begin
uut: i2c_total port map(
    clk => clk,
    sda => sda,
    scl => scl,
    handshake_debug => handshake_debug,
    debug => debug,
    enable_debug => enable_debug,
    flag_debug => flag_debug,
    ready_debug => ready_debug,
    clk_debug => clk_debug,
    command_debug => command_debug
);

clk_process :process
begin
clk <= '0';
wait for clk_period/2;
clk <= '1';
wait for clk_period/2;
end process;

stim_process: process
begin
wait for 100ns;

wait;
end process;

end Behavioral;
