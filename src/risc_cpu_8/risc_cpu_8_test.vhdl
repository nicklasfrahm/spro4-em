-- library declarations
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

-- empty entity
-- there is no interface to the surroundings because the unit under test (UUT)
-- and the tester is all integrated into the same module
ENTITY risc_cpu_8_test IS
END risc_cpu_8_test;

-- component declaration for the UUT - the lower level entity (the entity of the uut)
ARCHITECTURE Structural OF risc_cpu_8_test IS

COMPONENT risc_cpu_8
  PORT (
    -- actual inputs and outputs
    clk : IN STD_LOGIC;
    reset : IN STD_LOGIC;
    data_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    data_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    ---- debug outputs for testing
    -- debug current state
    state_debug : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    -- debug program counter value
    pc_debug : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    -- debug operation being executed
    operation_debug : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    -- debug opcode
    opcode_debug : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
  );
END COMPONENT;

-- declare the local signals to assign values to and for observation
-- these will normally be the same as the signals in the port definition
-- of the component - reflecting the inputs and outputs of the UUT

-- inputs
-- initiated to zero - but this will not be the case in a real world application
SIGNAL clk : STD_LOGIC := '0';
SIGNAL reset : STD_LOGIC := '0';
SIGNAL data_in : STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0'); 

-- outputs
SIGNAL data_out : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL state_debug : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL pc_debug : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL operation_debug : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL opcode_debug : STD_LOGIC_VECTOR(3 DOWNTO 0);

-- if you need a clock input signal, the clock period can be declared this way
-- (delete the -- and use the right name for clock)
CONSTANT clk_period : time := 50 ns;

BEGIN
  -- create an instance of the UUT and connect it to the defined input and output signals
  uut : risc_cpu_8 PORT MAP (
    clk => clk,
    reset => reset,
    data_in => data_in,
    data_out => data_out,
    state_debug => state_debug,
    pc_debug => pc_debug,
    operation_debug => operation_debug,
    opcode_debug => opcode_debug
  );

  -- clock process definitions
  -- uncomment these process statements if you need a clock generation process and give clock the right name
  -- this process will run in parallel with the stimulus process.
  clk_process : PROCESS
  BEGIN
    clk <= '0';
    WAIT FOR clk_period / 2;
    clk <= '1';
    WAIT FOR clk_period / 2;
  END PROCESS;

  stimulus_process : PROCESS
  BEGIN
    -- hold reset state
    WAIT FOR clk_period * 2;
    reset <= '1';
    WAIT FOR clk_period * 2 - clk_period / 2 - clk_period / 4;
    reset <= '0';
    WAIT FOR clk_period / 2;
    data_in <= "00000010";
    WAIT;
  END PROCESS;
END Structural;