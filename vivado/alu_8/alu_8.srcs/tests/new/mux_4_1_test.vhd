-- library declarations
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- empty entity , there is no interface to the surroundings because the unit under test (uut)
-- and the tester is all integrated into the same module
entity mux_4_1_test is
end mux_4_1_test;

-- component declaration for the unit under test (UUT) - the lower level entity (the entity of the uut)
architecture Behavioral of mux_4_1_test is
component mux_4_1
    port (
        sum_in : in STD_LOGIC_VECTOR (7 downto 0);
        inv_in : in STD_LOGIC_VECTOR (7 downto 0);
        and_in : in STD_LOGIC_VECTOR (7 downto 0);
        or_in : in STD_LOGIC_VECTOR (7 downto 0);
        select_in : in STD_LOGIC_VECTOR (1 downto 0);
        alu_out : out STD_LOGIC_VECTOR (7 downto 0)
    );
end component;

-- declare the local signals to assign values to and for observation.
-- these will normally be the same as the signals in the port definition
-- of the component - reflecting the inputs and outputs of the UUT.

-- inputs, (initiated to zero - but this will not be the case in a real world application!)
signal sum_in : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
signal inv_in : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
signal or_in : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
signal and_in : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
signal select_in : STD_LOGIC_VECTOR(1 downto 0) := (others => '0');

-- outputs
signal alu_out : std_logic_vector(7 downto 0);

-- if you need a clock input signal, the clock period can be declared this way
-- (delete the -- and use the right name for clock)
--constant <clock>_period : time := 10 ns;

-- create an instance of the unit under test (UUT) and "connect it" to the defined input and output signals
begin
uut: mux_4_1 port map (
    sum_in => sum_in,
    and_in => and_in,
    or_in => or_in,
    select_in => select_in,
    inv_in => inv_in,
    alu_out => alu_out
);

    -- clock process definitions, uncomment these process statements if you need a clock generation process and give clock the right name. This process will run in parallel with the stimulus process.
    -- <clock>_process :process
    --begin
        --<clock> <= '0';
        --wait for <clock>_period/2;
        --<clock> <= '1';
        --wait for <clock>_period/2;
    --end process;
 
    -- stimulus process, this is where you define a sequence of input signals for the simulation.
    -- all signals must be defined.
    stim_proc: process
    begin
        wait for 100 ns; -- hold reset state for 100 ns.
    
        -- uncomment the following (and give the clock the right name)
        -- if you want the circuit to "settle" before you assign values to the inputs.
        --wait for <clock>_period*10;
    
        -- now insert the stimulus here, for example like this:
        sum_in <= "11000000";
        inv_in <= "00110000";
        or_in <= "00001100";
        and_in <= "00000011";
        select_in <= "00";
        wait for 100 ns;
        
        select_in <= "01";
        wait for 100 ns;
        
        select_in <= "10";
        wait for 100 ns;
        
        select_in <= "11";
        wait for 100 ns;
        
        sum_in <= "00111111";
        select_in <= "00";
        wait for 100 ns;
    
        wait; -- wait forever
    end process;
end;