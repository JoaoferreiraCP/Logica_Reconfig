library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_circuito_multiplicador is
        generic(M: integer := 2);
end entity tb_circuito_multiplicador;

architecture tb_arq of tb_circuito_multiplicador is
        signal ta, tb: std_logic_vector(M-1 downto 0);
        signal ts: std_logic_vector ((M*2)-1 downto 0);
        component circuito_multiplicador is
                port (a, b: in std_logic_vector(1 downto 0);
                      s: out std_logic_vector(M*2 downto 0));
        end component;
        begin
            uut: circuito_multiplicador port map (ta,tb,ts);
            process
                variable i,j: integer range 0 to 2**M-1;
                begin
                    for i in 0 to 2**M-1 loop
                        for j in 0 to 2**M-1 loop
                            ta <= std_logic_vector(to_unsigned(i,M));
                            tb <= std_logic_vector(to_unsigned(j,M));
                            wait for 10 ns;
                        end loop;
                    end loop;
            end process;
end architecture tb_arq;
