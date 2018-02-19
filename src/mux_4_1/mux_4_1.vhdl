----------------------------------------------------------------------------------
-- Company: SDU
-- Engineer: Nicklas Frahm
-- 
-- design name: mux_4_1
-- module name: mux_4_1 - Behavioral
-- project name: alu_8
-- target devices: ZedBoard Zynq
----------------------------------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY mux_4_1 IS
	PORT (
		sum_in : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		inv_in : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		and_in : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		or_in : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		select_in : IN STD_LOGIC_VECTOR (1 DOWNTO 0);
		alu_out : OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
	);
END mux_4_1;

ARCHITECTURE Behavioral OF mux_4_1 IS

BEGIN PROCESS (sum_in, and_in, inv_in, or_in, select_in)

BEGIN CASE select_in IS
	WHEN "00" => alu_out <= sum_in;
	WHEN "01" => alu_out <= inv_in;
	WHEN "10" => alu_out <= or_in;
	WHEN "11" => alu_out <= and_in;
	WHEN OTHERS => NULL;
END CASE;

END PROCESS;

END Behavioral;