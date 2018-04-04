-- library declarations
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

-- empty entity
-- there is no interface to the surroundings because the unit under test (UUT)
-- and the tester is all integrated into the same module
ENTITY rom_8_32_test IS
END rom_8_32_test;

-- component declaration for the UUT - the lower level entity (the entity of the uut)
ARCHITECTURE Behavioral OF rom_8_32_test IS

COMPONENT rom_8_32
  PORT (
    adr_in : IN STD_LOGIC_VECTOR (4 DOWNTO 0);
    rom_out : OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
  );
END COMPONENT;

-- declare the local signals to assign values to and for observation
-- these will normally be the same as the signals in the port definition
-- of the component - reflecting the inputs and outputs of the UUT

-- inputs
-- initiated to zero - but this will not be the case in a real world application
SIGNAL adr_in : STD_LOGIC_VECTOR (4 DOWNTO 0) := (OTHERS => '0');

-- outputs
SIGNAL rom_out : STD_LOGIC_VECTOR (7 DOWNTO 0);


BEGIN
  -- create an instance of the UUT and connect it to the defined input and output signals
  uut : rom_8_32 PORT MAP (
    adr_in => adr_in,
    rom_out => rom_out
  );
 
  -- stimulus process, this is where you define a sequence of input signals for the simulation.
  -- all signals must be defined.
  stimulus_process : PROCESS
  BEGIN
    -- hold reset state for 100 ns
    WAIT FOR 100 ns;
     
    FOR i IN 0 TO 31 LOOP
    
      adr_in <= STD_LOGIC_VECTOR(TO_UNSIGNED(i, adr_in'LENGTH));
      WAIT FOR 10 ns;

    END LOOP;

    FOR i IN 0 TO 31 LOOP
    
      adr_in <= STD_LOGIC_VECTOR(TO_UNSIGNED(i, adr_in'LENGTH));
      WAIT FOR 10 ns;

    END LOOP;
    
    WAIT;
  END PROCESS;
END Behavioral;