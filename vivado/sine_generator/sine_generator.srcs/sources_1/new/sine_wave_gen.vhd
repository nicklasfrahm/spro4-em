LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY sine_wave_gen IS
  PORT (
    -- actual inputs and outputs
    clk : IN STD_LOGIC;
    reset : IN STD_LOGIC;
    dip_sw0_in : IN STD_LOGIC;
    dip_sw1_in : IN STD_LOGIC;
    dip_sw2_in : IN STD_LOGIC;
    dip_sw3_in : IN STD_LOGIC;
    dip_sw4_in : IN STD_LOGIC;
    dip_sw5_in : IN STD_LOGIC;
    dip_sw6_in : IN STD_LOGIC;
    dip_sw7_in : IN STD_LOGIC;
    -- debug sine wave
    sine_debug : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);    
    pwm_out : OUT STD_LOGIC
  );
END sine_wave_gen;

ARCHITECTURE Structural OF sine_wave_gen IS 

COMPONENT rom_8_32
  PORT (
    adr_in : IN STD_LOGIC_VECTOR (4 DOWNTO 0);
    rom_out : OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
  );
END COMPONENT;

COMPONENT pwm_8_1
  PORT (
    clk : IN STD_LOGIC;
    data_in : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
    reset : IN STD_LOGIC;
    pwm_out : OUT STD_LOGIC
  );
END COMPONENT;

COMPONENT frequency_select
  PORT (
    clk : IN STD_LOGIC;
    dip_sw_in : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
    addr_out : OUT STD_LOGIC_VECTOR (4 DOWNTO 0)
  );
END COMPONENT;

COMPONENT dip_sw_8
  PORT (
    clk : IN STD_LOGIC;
    dip_sw0_in : IN STD_LOGIC;
    dip_sw1_in : IN STD_LOGIC;
    dip_sw2_in : IN STD_LOGIC;
    dip_sw3_in : IN STD_LOGIC;
    dip_sw4_in : IN STD_LOGIC;
    dip_sw5_in : IN STD_LOGIC;
    dip_sw6_in : IN STD_LOGIC;
    dip_sw7_in : IN STD_LOGIC;
    dip_sw_out : OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
  );
END COMPONENT;

SIGNAL sw_conn : STD_LOGIC_VECTOR (7 DOWNTO 0);
SIGNAL addr_conn : STD_LOGIC_VECTOR (4 DOWNTO 0);
SIGNAL rom_out_conn : STD_LOGIC_VECTOR (7 DOWNTO 0);

BEGIN
  
  dip_sw_8_component : dip_sw_8 PORT MAP (
    clk => clk,
    dip_sw0_in => dip_sw0_in,
    dip_sw1_in => dip_sw1_in,
    dip_sw2_in => dip_sw2_in,
    dip_sw3_in => dip_sw3_in,
    dip_sw4_in => dip_sw4_in,
    dip_sw5_in => dip_sw5_in,
    dip_sw6_in => dip_sw6_in,
    dip_sw7_in => dip_sw7_in,
    dip_sw_out => sw_conn
  );

  -- wire up the risc controller
  frequency_select_component : frequency_select PORT MAP (
    clk => clk,
    dip_sw_in => sw_conn,
    addr_out => addr_conn
  );

  rom_8_32_component : rom_8_32 PORT MAP (
    adr_in => addr_conn,
    rom_out => rom_out_conn
  );

  pwm_8_1_component : pwm_8_1 PORT MAP (
    clk => clk,
    reset => reset,
    data_in => rom_out_conn,
    pwm_out => pwm_out
  );

sine_debug <= rom_out_conn;

END Structural;