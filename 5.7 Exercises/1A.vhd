library IEEE;
use IEEE.std_logic_1164.all;

entity funcao is
port ( A,B : in std_logic;
       F : out std_logic);
end funcao;

architecture arc of funcao is
signal sig : std_logic;
    proc : process (A,B,sig) is
    begin
        sig <= (A & B);
        if (sig = "01") then F <= '1';
        elsif (sig = "10") then F <= '1';
        elsif (A = '1') then F <= '1';
        else F <= '0';
    end process proc;
--    begin
--        sig <= (A & B);
--        case (sig) is
--            when "01" => F <= '1';
--            when "10" => F <= '1';
--            when "11" => F <= '1';
--            when others => F <= '0';
--        end case;
--    end process proc;
end arc;


