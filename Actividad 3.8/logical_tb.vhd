library ieee;
use ieee.std_logic_1164.all;

entity logical_tb is
end;

architecture rtl of logical_tb is
  signal a, b, c, x : std_logic := '0';
  signal y : std_logic;

  begin
    circuito: process (a,b,c,x) is
    begin
      x <= a nand b after 1.5 ns; -- intertial por defecto
      y <= x and c after 1.8 ns;
    end process;

    estimulos : process is
    begin
      a <= '1' after 30 ns, '0' after 31.5 ns, '1' after 40 ns, '0' after 60 ns, '1' after 80 ns;
      b <= '1' after 20 ns, '0' after 60 ns;
      c <= '1' after 20 ns;
      wait;
    end process;

end rtl;
