library IEEE;
use IEEE.std_logic_1164.all;

entity funcao is
port ( A,B,C,D : in std_logic;
       F : out std_logic);
end funcao;

architecture arc of funcao is
signal sig : std_logic;
    proc : process (A,B,C,D,sig) is
    begin
        if (A = '0' and C = '1' and D = '0') then F <= '1';
        elsif (B = '0' and C = '1') then F <= '1';
        elsif (B = '1' and C = '1' and D = '0') then F <= '1';
        else F <= '0';
    end process proc;
--    begin
--       sig <= (A & B & C & D);
--        case (sig) is
--            when "0-10" => F <= '1';
--            when "-01-" => F <= '1';
--            when "-010" => F <= '1';
--            when others => F <= '0';
--        end case;
--    end process proc;
end arc;
