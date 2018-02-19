library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity alu_8 is
    PORT (
        a_in : in STD_LOGIC_VECTOR(7 downto 0);
        b_in : in STD_LOGIC_VECTOR(7 downto 0);
        select_in : in STD_LOGIC_VECTOR(1 downto 0);
        alu_out : out STD_LOGIC_VECTOR(7 downto 0);
        carry_in : in STD_LOGIC;
        carry_out : out STD_LOGIC
    );
end alu_8;

architecture Structural of alu_8 is 

COMPONENT adder_8
    PORT (
        a_in : in STD_LOGIC_VECTOR(7 downto 0);
        b_in : in STD_LOGIC_VECTOR(7 downto 0);
        sum_out : out STD_LOGIC_VECTOR(7 downto 0);
        carry_in : in STD_LOGIC;
        carry_out : out STD_LOGIC
    );
END COMPONENT;


COMPONENT logic_8
    PORT (
        a_in : in STD_LOGIC_VECTOR(7 downto 0);
        b_in : in STD_LOGIC_VECTOR(7 downto 0);
        and_out : out STD_LOGIC_VECTOR(7 downto 0);
        inv_out : out STD_LOGIC_VECTOR(7 downto 0);
        or_out : out STD_LOGIC_VECTOR(7 downto 0)
    );
END COMPONENT;


COMPONENT mux_4_1
    PORT (
        and_in : in STD_LOGIC_VECTOR(7 downto 0);
        or_in : in STD_LOGIC_VECTOR(7 downto 0);
        inv_in : in STD_LOGIC_VECTOR(7 downto 0);
        sum_in : in STD_LOGIC_VECTOR(7 downto 0);
        select_in : in STD_LOGIC_VECTOR(1 downto 0);
        alu_out : out STD_LOGIC_VECTOR(7 downto 0)
    );
END COMPONENT;

signal sum_conn : STD_LOGIC_VECTOR(7 downto 0);
signal or_conn : STD_LOGIC_VECTOR(7 downto 0);
signal inv_conn : STD_LOGIC_VECTOR(7 downto 0);
signal and_conn : STD_LOGIC_VECTOR(7 downto 0);

begin

adder_8_component : adder_8 PORT MAP (
    a_in => a_in,
    b_in => b_in,
    carry_in => carry_in,
    sum_out => sum_conn,
    carry_out => carry_out
);

logic_8_component : logic_8 PORT MAP(
    a_in => a_in,
    b_in => b_in,
    inv_out => inv_conn,
    and_out => and_conn,
    or_out => or_conn
);

mux_4_1_component : mux_4_1 PORT MAP(
    sum_in => sum_conn,
    inv_in => inv_conn,
    or_in => or_conn,
    and_in => and_conn,
    select_in => select_in,
    alu_out => alu_out    
);

end Structural;