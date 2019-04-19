library ieee;
use ieee.std_logic_1164.all;

entity shift_reg is
	generic ( N : natural := 4);
	port(
		D : in std_logic;
		Reloj : in std_logic;
		Q : out std_logic
	);
end shift_reg;