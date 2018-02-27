-- library declarations
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

-- empty entity
-- there is no interface to the surroundings because the unit under test (UUT)
-- and the tester is all integrated into the same module
ENTITY logic_8_test IS
END logic_8_test;

-- component declaration for the UUT - the lower level entity (the entity of the uut)
ARCHITECTURE Behavioral OF logic_8_test IS

COMPONENT logic_8
  PORT (
    a_in : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
    b_in : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
    inv_out : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
    and_out : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
    or_out : OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
  );
END COMPONENT;

-- declare the local signals to assign values to and for observation
-- these will normally be the same as the signals in the port definition
-- of the component - reflecting the inputs and outputs of the UUT

-- inputs
-- initiated to zero - but this will not be the case in a real world application
SIGNAL a_in : STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0');
SIGNAL b_in : STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0');

-- outputs
SIGNAL inv_out : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL and_out : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL or_out : STD_LOGIC_VECTOR(7 DOWNTO 0);

-- if you need a clock input signal, the clock period can be declared this way
-- (delete the -- and use the right name for clock)
--constant <clock>_period : time := 10 ns;


BEGIN
  -- create an instance of the UUT and connect it to the defined input and output signals
  uut: logic_8 PORT MAP (
    a_in => a_in,
    b_in => b_in,
    or_out => or_out,
    and_out => and_out,
    inv_out => inv_out
  );

  -- clock process definitions
  -- uncomment these process statements if you need a clock generation process and give clock the right name
  -- this process will run in parallel with the stimulus process
  -- <clock>_process :process
  --begin
    --<clock> <= '0';
    --wait for <clock>_period/2;
    --<clock> <= '1';
    --wait for <clock>_period/2;
  --end process;
 
  -- stimulus process, this is where you define a sequence of input signals for the simulation.
  -- all signals must be defined.
  stimulus_process: PROCESS
  BEGIN
    -- hold reset state for 100 ns
    WAIT FOR 100 ns;
  
    -- uncomment the following (and give the clock the right name)
    -- if you want the circuit to "settle" before you assign values to the inputs
    --wait for <clock>_period*10;
  
    -- test invert
    a_in <= "11110000";
    b_in <= "00000000";
    WAIT FOR 100 ns;
    -- expect: inv_out = 0b00001111 = 0x0F
    -- expect: or_out = 0b11110000 = 0xF0
    -- expect: and_out = 0b00000000 = 0x00
  
    -- test and
    a_in <= "11110000";
    b_in <= "11111111";
    WAIT FOR 100 ns;
    -- expect: inv_out = 0b00001111 = 0x0F
    -- expect: or_out = 0b11111111 = 0xFF
    -- expect: and_out = 0b11110000 = 0xF0
    
    -- test or
    a_in <= "11110000";
    b_in <= "00110011";
    WAIT FOR 100 ns;
    -- expect: inv_out = 0b00001111 = 0x0F
    -- expect: or_out = 0b11110011 = 0xF3
    -- expect: and_out = 0b00110000 = 0x30
  
    -- wait forever
    WAIT;
  END PROCESS;
END Behavioral;