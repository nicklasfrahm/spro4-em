LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY i2c_initializer IS
  PORT (
    clk : IN STD_LOGIC;
    i2c_sda_i : IN STD_LOGIC;      
    i2c_sda_o : OUT STD_LOGIC;      
    i2c_sda_t : OUT STD_LOGIC;      
    i2c_scl : OUT STD_LOGIC
  );
END i2c_initializer;

ARCHITECTURE Structural OF i2c_initializer IS
	COMPONENT i2c_controller
    GENERIC (
      clk_divide : STD_LOGIC_VECTOR(7 DOWNTO 0)
    );
	  
    PORT (
      clk : IN  std_logic;
      i2c_sda_i : IN  std_logic;      
      i2c_sda_o : OUT std_logic;      
      i2c_sda_t : OUT std_logic;      
      i2c_scl : OUT std_logic;
      inst_data : IN  std_logic_vector(8 DOWNTO 0);
      inputs : IN  std_logic_vector(15 DOWNTO 0);    
      inst_address : OUT std_logic_vector(9 DOWNTO 0);
      debug_sda : OUT std_logic;      
      debug_scl : OUT std_logic;
      outputs : OUT std_logic_vector(15 DOWNTO 0);
      reg_addr : OUT std_logic_vector(4 DOWNTO 0);
      reg_data : OUT std_logic_vector(7 DOWNTO 0);
      reg_write : OUT std_logic;
      error : OUT std_logic
		);
	END COMPONENT;

	COMPONENT i2c_instruction_rom
	PORT(
		clk : IN std_logic;
		addr_in : IN std_logic_vector(9 downto 0);          
		data_out : OUT std_logic_vector(8 downto 0)
		);
	END COMPONENT;
   
   signal inst_address : std_logic_vector(9 downto 0);          
   signal inst_data    : std_logic_vector(8 downto 0);
   signal debug_big    : std_logic_vector(15 downto 0);
begin

	Inst_adau1761_configuraiton_data: adau1761_configuraiton_data PORT MAP(
		clk     => clk,
		address => inst_address,
		data    => inst_data
	);

	Inst_i3c2: i3c2 GENERIC MAP (
      clk_divide => "01111000"   -- 120 (48,000/120 = 400kHz I2C clock)
   ) PORT MAP(
		clk => clk,
		inst_address => inst_address,
		inst_data    => inst_data,
		i2c_scl      => i2c_scl,
		i2c_sda_i      => i2c_sda_i,
		i2c_sda_o      => i2c_sda_o,
		i2c_sda_t      => i2c_sda_t,
		inputs       => (others => '0'),
		outputs      => debug_big,
		reg_addr     => open,
		reg_data     => open,
		reg_write    => open,
      debug_scl    => open,
      debug_sda    => open,
		error        => open
	);

end Structural;