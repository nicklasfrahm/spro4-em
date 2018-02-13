-- library declarations
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- empty entity , there is no interface to the surroundings because the unit under test (uut)
-- and the tester is all integrated into the same module
entity adder_8_test is
end adder_8_test;

-- component declaration for the unit under test (UUT) - the lower level entity (the entity of the uut)
architecture Behavioral of adder_8_test is
component adder_8
    port (
        a_in : in STD_LOGIC_VECTOR(7 downto 0);
        b_in : in STD_LOGIC_VECTOR(7 downto 0);
        carry_in : in STD_LOGIC;
        carry_out : out STD_LOGIC;
        sum_out : out STD_LOGIC_VECTOR(7 downto 0)
    );
end component;

-- declare the local signals to assign values to and for observation.
-- these will normally be the same as the signals in the port definition
-- of the component - reflecting the inputs and outputs of the UUT.

-- inputs, (initiated to zero - but this will not be the case in a real world application!)
signal a_in : std_logic_vector(7 downto 0) := (others => '0');
signal b_in : std_logic_vector(7 downto 0) := (others => '0');
signal carry_in : std_logic := '0';

-- outputs
signal carry_out : std_logic;
signal sum_out : std_logic_vector(7 downto 0);

-- if you need a clock input signal, the clock period can be declared this way
-- (delete the -- and use the right name for clock)
--constant <clock>_period : time := 10 ns;

begin
    -- create an instance of the unit under test (UUT) and "connect it" to the defined input and output signals
    uut: adder_8 PORT MAP (
        a_in => a_in,
        b_in => b_in,
        carry_in => carry_in,
        carry_out => carry_out,
        sum_out => sum_out
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
        a_in <= "00001111";
        b_in <= "01010101";
        carry_in <= '0';
        wait for 100 ns;
    
        a_in <= "00000000";
        b_in <= "01010101";
        carry_in <= '0';
        wait for 100 ns;
    
        a_in <= "11110000";
        b_in <= "01010101";
        carry_in <= '0';
        wait for 100 ns;
    
        a_in <= "00001111";
        b_in <= "01010101";
        carry_in <= '1';
        wait for 100 ns;
    
        wait; -- wait forever
    end process;
end;