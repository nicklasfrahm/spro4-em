-- program memory
-- sends opcodes for the i2c controller
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY i2c_instruction_rom IS
  PORT (
    clk : IN STD_LOGIC;
    addr_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    data_out : OUT STD_LOGIC_VECTOR(11 DOWNTO 0)
  );
END i2c_instruction_rom;

-- instruction set
-- 0x0NN -- JUMP N -- set program counter to N
-- 0x1NN -- SKIPCLEAR N -- skip if input N is clear
-- 0x2NN -- SKIPSET N -- skip if input N is set
-- 0x3NN -- CLEAR N -- clear output N
-- 0x4NN -- SET N -- set output N
-- 0x5NN -- READ N -- read from the i2c bus to register N
-- 0X6NN -- DELAY M -- delay M clock cycles (N = log2(M))
-- 0x7NN -- SKIPNACK -- skip if NACK is set
-- 0x8NN -- SKIPACK -- skip if ACK is set
-- 0x9NN -- WRITELOW -- write inputs 7 downto 0 to the i2c bus
-- 0xANN -- WRITEHIGH -- write inputs 15 downto 8 to the i2c bus
-- 0xBNN -- MASTERACK -- send a master ACK with the next read
-- 0xCNN -- NOP -- no operation, do nothing
-- 0xDNN -- STOP -- send stop on i2c bus
-- 0xENN -- WRITE N -- output N on i2c bus

ARCHITECTURE Behavioral OF i2c_instruction_rom IS
BEGIN
  PROCESS (clk)
  TYPE ROM_TYPE IS ARRAY (0 TO 121) OF STD_LOGIC_VECTOR(8 DOWNTO 0);
  VARIABLE rom : ROM_TYPE := (
    -- wait for the FPGA clock to settle
    X"60F", -- DELAY 32768
    -- turn PLL off to configure it
    X"E76", -- WRITE 0x76 -- i2c device address
    X"E40", -- WRITE 0x40 -- register MSB
    X"E00", -- WRITE 0x00 -- register LSB
    X"E0E",
    X"D00", -- STOP
    -- configure the PLL
    X"E76",
    X"E40",
    X"E02",
    X"E00",
    X"E7D",
    X"E00",
    X"E0C",
    X"E23",
    X"E01",
    X"D00",
    -- wait for the CODEC to be ready
    X"60F",
    -- enable core
    X"E76",
    X"E40",
    X"E00",
    X"E0F",
    X"D00",
    -- wait for core to power up
    X"60F",
    -- become I2S master
    X"E76",
    X"E40",
    X"E15", -- R15 -- serial port 0
    X"E01",
    X"D00",
    -- set up input mixers
    X"E76",
    X"E40",
    X"E0A",
    X"E01",
    X"D00",
    --
    X"E76",
    X"E40",
    X"E0B",
    X"E05",
    X"D00",
    --
    X"E76",
    X"E40",
    X"E0C",
    X"E01",
    X"D00",
    --
    X"E76",
    X"E40",
    X"E0D",
    X"E05",
    X"D00",
    -- set up output mixers
    X"E76",
    X"E40",
    X"E1C",
    X"E21",
    X"D00",
    --
    X"E76",
    X"E40",
    X"E1E",
    X"E41",
    X"D00",
    --
    X"E76",
    X"E40",
    X"E23",
    X"EE7",
    X"D00",
    --
    X"E76",
    X"E40",
    X"E24",
    X"EE7",
    X"D00",
    --
    X"E76",
    X"E40",
    X"E25",
    X"EE7",
    X"D00",
    --
    X"E76",
    X"E40",
    X"E26",
    X"EE7",
    X"D00",
    -- set up the ADC
    X"E76",
    X"E40",
    X"E19",
    X"E03",
    X"D00",
    -- set up the DAC
    X"E76",
    X"E40",
    X"E29",
    X"E03",
    X"D00",
    --
    X"E76",
    X"E40",
    X"E2A",
    X"E03",
    X"D00",
    -- set up the signal routing
    X"E76",
    X"E40",
    X"EF2",
    X"E01",
    X"D00",
    -- power up core components
    X"E76",
    X"E40",
    X"EF3",
    X"E01",
    X"D00",
    --
    X"E76",
    X"E40",
    X"EF9",
    X"E7F",
    X"D00",
    --
    X"E76",
    X"E40",
    X"EFA",
    X"E03",
    X"D00",
    -- do nothing
    X"C00",
    X"C00",
    X"C00",
    X"C00",
    X"C00",
    X"C00",
    X"C00",
    X"60F", -- DELAY 32768
    X"00F", -- JUMP 120
  );
  BEGIN
    IF (RISING_EDGE(clk))
    THEN
      rom_out <= rom(CONV_INTEGER(adr_in));
    END IF;
  END PROCESS;
END Behavioral;
