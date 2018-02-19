-- library declarations
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- empty entity , there is no interface to the surroundings because the unit under test (uut)
-- and the tester is all integrated into the same module
entity alu_8_test is
end alu_8_test;

-- component declaration for the unit under test (UUT) - the lower level entity (the entity of the uut)
architecture Structural of alu_8_test is
component alu_8
    port (
        a_in : in STD_LOGIC_VECTOR(7 downto 0);
        b_in : in STD_LOGIC_VECTOR(7 downto 0);
        carry_in : in STD_LOGIC;
        carry_out : out STD_LOGIC;
        alu_out : out STD_LOGIC_VECTOR(7 downto 0);
        select_in : in STD_LOGIC_VECTOR(1 downto 0)
    );
end component;

-- declare the local signals to assign values to and for observation.
-- these will normally be the same as the signals in the port definition
-- of the component - reflecting the inputs and outputs of the UUT.

-- inputs, (initiated to zero - but this will not be the case in a real world application!)
signal a_in : std_logic_vector(7 downto 0) := (others => '0');
signal b_in : std_logic_vector(7 downto 0) := (others => '0');
signal select_in : std_logic_vector(1 downto 0) := (others => '0');
signal carry_in : std_logic := '0';

-- outputs
signal carry_out : std_logic;
signal alu_out : std_logic_vector(7 downto 0);

-- if you need a clock input signal, the clock period can be declared this way
-- (delete the -- and use the right name for clock)
--constant <clock>_period : time := 10 ns;

begin
    -- create an instance of the unit under test (UUT) and "connect it" to the defined input and output signals
    uut: alu_8 PORT MAP (
        a_in => a_in,
        b_in => b_in,
        carry_in => carry_in,
        carry_out => carry_out,
        alu_out => alu_out,
        select_in => select_in
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
        a_in <= "00011100";
        b_in <= "11011000";
        select_in <= "00";
        carry_in <= '0';
        wait for 100 ns;
        -- expect: "11110100" -> 0xF4
        
        a_in <= "11110000";
        b_in <= "00001110";
        select_in <= "00";
        carry_in <= '1';
        wait for 100 ns;
        -- expect: "11111111" -> 0xFF
                
        a_in <= "10000000";
        b_in <= "10000000";
        select_in <= "00";
        carry_in <= '0';
        wait for 100 ns;
        -- expect: carry_out: '1', alu_out: "00000000" -> 0x00
        
        a_in <= "11110000";
        b_in <= "00000000";
        select_in <= "01";
        carry_in <= '0';
        wait for 100 ns;
        -- expect: "00001111" -> 0x0F
                
        a_in <= "11000000";
        b_in <= "00001100";
        select_in <= "10";
        carry_in <= '0';
        wait for 100 ns;
        -- expect: "11001100" -> 0x33
                        
        a_in <= "11110000";
        b_in <= "11111111";
        select_in <= "11";
        carry_in <= '0';
        wait for 100 ns;
        -- expect: "11110000" -> 0xF0
    
        wait; -- wait forever
    end process;
end;