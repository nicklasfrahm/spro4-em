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
    pwm_out_sine : OUT STD_LOGIC;
    pwm_out_fir : OUT STD_LOGIC;
    -- debug outputs
    sine_debug_rom : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    sine_debug_fir : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    data_ready_debug : OUT STD_LOGIC
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
    dip_sw_in : IN STD_LOGIC_VECTOR (3 DOWNTO 0);
    addr_out : OUT STD_LOGIC_VECTOR (4 DOWNTO 0);
    data_ready : OUT STD_LOGIC;
    reset : IN STD_LOGIC
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

COMPONENT moving_average
  PORT (
    data_ready : IN STD_LOGIC;
    dip_sw_in : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    data_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    fir_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END COMPONENT;

SIGNAL sw_conn : STD_LOGIC_VECTOR (7 DOWNTO 0);
SIGNAL addr_conn : STD_LOGIC_VECTOR (4 DOWNTO 0);
SIGNAL rom_out_conn : STD_LOGIC_VECTOR (7 DOWNTO 0);
SIGNAL fir_out_conn : STD_LOGIC_VECTOR (7 DOWNTO 0);
SIGNAL data_ready_conn : STD_LOGIC;

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
    dip_sw_in => sw_conn(7 DOWNTO 4),
    addr_out => addr_conn,
    reset => reset,
    data_ready => data_ready_conn
  );

  rom_8_32_component : rom_8_32 PORT MAP (
    adr_in => addr_conn,
    rom_out => rom_out_conn
  );

  pwm_8_1_component_sine : pwm_8_1 PORT MAP (
    clk => clk,
    reset => reset,
    data_in => rom_out_conn,
    pwm_out => pwm_out_sine
  );
  
  pwm_8_1_component_fir : pwm_8_1 PORT MAP (
    clk => clk,
    reset => reset,
    data_in => fir_out_conn,
    pwm_out => pwm_out_fir
  );
  
  moving_average_component : moving_average PORT MAP (
    data_ready => data_ready_conn,
    dip_sw_in => sw_conn(3 DOWNTO 0),
    data_in => rom_out_conn,
    fir_out => fir_out_conn
  );

  sine_debug_rom <= rom_out_conn;
  sine_debug_fir <= fir_out_conn;
  data_ready_debug <= data_ready_conn;

END Structural;