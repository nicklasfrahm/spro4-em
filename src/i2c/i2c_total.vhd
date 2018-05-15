library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity i2c_total is
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
end i2c_total;

architecture Structural of i2c_total is

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

component i2c_ctrl
    Port ( clk : in std_logic;
       handshake : in STD_LOGIC;
       command : out STD_LOGIC_VECTOR (3 downto 0);
       data_out : out STD_LOGIC_VECTOR (7 downto 0);
       enable_out : out std_logic;
       ack : in std_logic;
       flag_debug : out std_logic;
       ready_debug : out std_logic;
       clk_debug : out std_logic_vector (23 downto 0)
      );
end component;

signal handshake_conn : std_logic;
signal command_conn : std_logic_vector (3 downto 0);
signal data_conn : std_logic_vector (7 downto 0);
signal enable_conn : std_logic;
signal ack_conn : std_logic;

begin
i2c_component: i2c port map (
    clk => clk,
    scl_out => scl,
    sda_out => sda,
    done => handshake_conn,
    command_in => command_conn,
    data_in => data_conn,
    enable => enable_conn,
    ack_out => ack_conn,
    debug => debug
);
i2c_ctrl_component: i2c_ctrl port map (
    clk => clk,
    handshake => handshake_conn,
    command => command_conn,
    data_out => data_conn,
    enable_out => enable_conn,
    ack => ack_conn,
    flag_debug => flag_debug,
    ready_debug => ready_debug,
    clk_debug => clk_debug
);
handshake_debug <= handshake_conn;
enable_debug <= enable_conn;
command_debug <= command_conn;

end Structural;
