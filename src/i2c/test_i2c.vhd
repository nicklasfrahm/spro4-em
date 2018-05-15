library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity test_i2c is
--  Port ( );
end test_i2c;

architecture Behavioral of test_i2c is

component i2c
    Port ( clk : in STD_LOGIC;
       scl_out : inout STD_LOGIC;
       sda_out : inout STD_LOGIC;
       done : out std_logic;
       command_in : in std_logic_vector (3 downto 0);
       data_in : in std_logic_vector (7 downto 0);
       enable : in std_logic;
       ack_out : out std_logic;
       debug : out std_logic_vector (3 downto 0)
       );
end component;

signal clk : std_logic := '0';
signal scl_out : std_logic;
signal sda_out : std_logic;
signal done : std_logic := '0';
signal command_in : std_logic_vector (3 downto 0) := X"0";
signal data_in : std_logic_vector (7 downto 0):= X"00";
signal enable : std_logic := '0';
signal ack_out : std_logic := '0';
signal debug : std_logic_vector (3 downto 0);

constant clk_period: time := 20.833 ns; --48MHz

begin
uut: i2c port map(
    clk => clk,
    scl_out => scl_out,
    sda_out => sda_out,
    done => done,
    command_in => command_in,
    data_in => data_in,
    enable => enable,
    ack_out => ack_out,
    debug => debug
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
sda_out <= 'Z';
command_in <= X"0"; --start
wait for 100ns;
enable <= '1';
--wait for 13us;
wait until rising_edge(done);
data_in <= "00101010";
command_in <= X"1"; --write
wait for 87us;
sda_out <= '0';
--wait for 7us;
wait until rising_edge(done);
sda_out <= 'Z';
command_in <= X"2"; --stop
--wait for 13us;
wait until rising_edge(done);
enable <= '0';

wait;
end process;

end Behavioral;
