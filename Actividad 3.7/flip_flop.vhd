library ieee;
use ieee.std_logic_1164.all;

entity FF is
	port(
		Q : out std_logic;
		Reloj :in std_logic;
		D :in  std_logic
	);
end FF;

architecture Behavioral of FF is
begin
	process(Reloj)
	begin
		if(rising_edge(Reloj)) then
			Q <= D;
		end if;
	end process;
end Behavioral;