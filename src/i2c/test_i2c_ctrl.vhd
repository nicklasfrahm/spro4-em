library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity test_i2c_ctrl is
--  Port ( );
end test_i2c_ctrl;

architecture Behavioral of test_i2c_ctrl is

component i2c_ctrl
    Port ( clk : in std_logic;
       handshake : in STD_LOGIC;
       command : out STD_LOGIC_VECTOR (3 downto 0);
       data_out : out STD_LOGIC_VECTOR (7 downto 0);
       enable_out : out std_logic;
       ack : in std_logic
      );
end component;

signal clk : std_logic := '0';
signal handshake : std_logic := '0';
signal command : std_logic_vector (3 downto 0) := X"0";
signal data_out : std_logic_vector (7 downto 0):= X"00";
signal enable_out : std_logic := '0';
signal ack : std_logic := '0';

constant clk_period: time := 20.833 ns; --48MHz

begin
uut: i2c_ctrl port map(
    clk => clk,
    handshake => handshake,
    command => command,
    data_out => data_out,
    enable_out => enable_out,
    ack => ack
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

for i in 0 to 15 loop
    handshake <= '1';
    wait for 2.5us;
    handshake <= '0';
    wait for 100us;
end loop;

wait;
end process;

end Behavioral;
