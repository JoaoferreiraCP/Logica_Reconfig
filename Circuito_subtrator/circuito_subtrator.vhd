library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity circuito_subtrator is
		generic (N: integer:=2); 
		port (a,b: in std_logic_vector(N-1 downto 0);
				s: out std_logic_vector(N downto 0));
end circuito_subtrator;

architecture arq of circuito_subtrator is
		signal ia, ib: integer range 0 to 2**N-1;
		begin
				 ia <= to_integer(unsigned(a));
				 ib <= to_integer(unsigned(b));
				 s <= std_logic_vector(to_signed(ia-ib, N+1));
end arq;