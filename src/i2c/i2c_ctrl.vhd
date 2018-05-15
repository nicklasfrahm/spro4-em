library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity i2c_ctrl is
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
end i2c_ctrl;

architecture Behavioral of i2c_ctrl is
    signal rom_index : integer range 0 to 14 := 0; --not sure how far up we count yet
    signal ready : std_logic := '0';
    signal flag : std_logic := '0';
    signal clk_count : std_logic_vector (23 downto 0) := X"000000";
    signal enable : std_logic := '0';
begin

enable_out <= '1' when enable = '1' else '0';
i2c_ctrl_proc: process (clk)
    type rom_type is array (0 to 14) of std_logic_vector (11 downto 0);
    variable rom : rom_type := (
        X"A00", X"000", X"142", X"200", X"A00",
        X"000", X"1CD", X"153", X"1B7", X"200",
        X"000", X"1EE", X"199", X"200", X"F00"
    );
begin
    if rising_edge(clk) then
        if handshake = '1' and flag = '0' then 
            flag <= '1';
            ready <= '1';
        elsif handshake = '0' and flag = '1' then
            flag <= '0';
            if rom_index < 14 then
                rom_index <= rom_index + 1;
            end if;
        elsif ready = '1' then
            case rom(rom_index)(11 downto 8) is
                when X"0" =>
                    --start
                    enable <= '1';
                    ready <= '0';
                    command <= X"0";
                when X"1" =>
                    --write
                    ready <= '0';
                    command <= X"1";
                    data_out <= rom(rom_index)(7 downto 0);
                when X"2" =>
                    --stop
                    --enable <= '0';
                    ready <= '0';
                    command <= X"2";
                when X"A" =>
                    enable <= '0';
                    --command <= X"A"; --for testing
                    --wait a bit for clocks to settle
                    --if clk_count = X"249F00" then
                    if clk_count = X"000FFF" then
                        clk_count <= X"000000";
                        --flag <= '0';
                        --ready <= '0';
                        rom_index <= rom_index + 1;
                    else
                        clk_count <= clk_count + 1;
                    end if;
                when X"F" =>
                    --done, wait forever
                    enable <= '0';
                when others =>
                    rom_index <= 0;
            end case;
        end if;
    end if;
end process;

flag_debug <= flag;
ready_debug <= ready;
clk_debug <= clk_count;

end Behavioral;
