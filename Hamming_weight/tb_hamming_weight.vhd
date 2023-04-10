library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity tb_hamming_weight is
    generic (M: integer :=8);
end entity tb_hamming_weight;

architecture tb_arq of tb_hamming_weight is
    signal ta: std_logic_vector(M-1 downto 0);
    signal ts: integer range 0 to M;
    begin
        uut: entity work.hamming_weight(arq)
            generic map (M)
            port map (ta,ts);
        process
            variable i: integer range 0 to 2**M-1;
        begin
            for i in 0 to 2**M-1 loop
                ta <= std_logic_vector(to_unsigned(i,M));
                wait for 10 ns;
				end loop;	
        end process;    
end architecture tb_arq;