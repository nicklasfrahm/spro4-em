library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity i2c is
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
end i2c;

architecture Behavioral of i2c is
    signal clock_count : std_logic_vector (7 downto 0) := (others => '0');
    signal clk_400khz : std_logic := '0';
    
    signal state : std_logic_vector (3 downto 0) := X"0"; -- might not need 4bit
    signal bitcount : integer range 0 to 8 := 0;
    signal scl : std_logic := '1';
    signal sda : std_logic := '1';
    signal data : std_logic_vector (7 downto 0) := (others => '0');
    signal idle : std_logic := '1';
    signal command : std_logic_vector (3 downto 0) := X"0";

begin
debug <= state;
sda_out <= 'Z' when sda = '1' else '0';
scl_out <= 'Z' when scl = '1' else '0';
done <= idle;
i2c_proc: process (clk_400khz)
begin
    if rising_edge(clk_400khz) then
        if enable = '1' then
            if idle = '1' then
                idle <= '0';
                state <= X"0";
                bitcount <= 0;
                command <= command_in;
                data <= data_in;
            else
                case state is --goes through state 0 to 3 every scl period
                    when X"0" => --mid of low scl
                        state <= X"1";
                        case command is
                            when X"0" => --start
                                sda <= '1';
                                scl <= '1';
                                bitcount <= 0;
                            when X"1" => --write
                                if bitcount = 8 then --acknowledge
                                    sda <= '1';
                                else
                                    sda <= data(7-bitcount);
                                end if;
                                scl <= '0';
                            when X"2" => --stop
                                sda <= '0';
                                scl <= '0';
                            when others =>
                                state <= X"F";
                        end case;
                    when X"1" => --rising edge scl
                        state <= X"2";
                        case command is
                            when X"0" => --start
                                sda <= '1';
                                scl <= '1';
                            when X"1" => --write
                                scl <= '1';
                                --sda keeps the value from state 0
                            when X"2" => --stop
                                sda <= '0';
                                scl <= '1';
                            when others =>
                                state <= X"F";
                        end case;
                    when X"2" => --mid of high scl
                        state <= X"3";
                        case command is
                            when X"0" => --start
                                sda <= '0';
                                scl <= '1';
                            when X"1" => --write
                                scl <= '1';
                                if bitcount = 8 then
                                    --read acknowledge from slave
                                    ack_out <= sda_out;
                                end if;
                            when X"2" => --stop
                                sda <= '1';
                                scl <= '1';
                            when others =>
                                state <= X"F";
                        end case;
                    when X"3" => --falling edge scl
                        case command is
                            when X"0" => --start
                                sda <= '0';
                                scl <= '0';
                            when X"1" => --write
                                scl <= '0';
                            when X"2" => --stop
                                sda <= '1';
                                scl <= '1';
                            when others =>
                                state <= X"F";
                        end case;
                        if command = X"0" or command = X"2" or bitcount = 8 then
                            state <= X"A"; --idle
                        else
                            bitcount <= bitcount + 1;
                            state <= X"0";
                        end if;
                    when X"A" =>
                        idle <= '1';
                    when X"F" =>
                        sda <= '1';
                        scl <= '1';
                    when others =>
                        state <= X"F"; --fail state
                end case;
            end if;
        else
            scl <= '1';
            sda <= '1';
        end if;
    end if;
end process;

clk_400khz_proc: process(clk)
begin
    if rising_edge(clk) then
        if clock_count = "01110111" then --count to 119
            clock_count <= (others => '0');
            clk_400khz <= '0';
        else
            if clock_count = "00111011" then --count 59
                clk_400khz <= '1';
            end if;
            clock_count <= clock_count + 1;
        end if;
    end if;
end process;

end Behavioral;
