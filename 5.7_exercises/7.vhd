library IEEE;
use IEEE.std_logic_1164.all;

entity dec3x8 is
port ( sel : in std_logic_vector(2 downto 0);
       F : out std_logic_vector(7 downto 0));
end dec3x8;

architecture arc of dec3x8 is
    proc : process (sel) is
    begin
        if (sel = "000") then F => "00000001";
        elsif (sel = "001") then F => "00000010";
        elsif (sel = "010") then F => "00000100";
        elsif (sel = "011") then F => "00001000";
        elsif (sel = "100") then F => "00010000";
        elsif (sel = "101") then F => "00100000";
        elsif (sel = "110") then F => "01000000";
        elsif (sel = "111") then F => "10000000";
        else F => "00000000";
    end process proc;
--    begin
--        case (sel) is
--            when "000" => F <= "00000001";
--           when "001" => F <= "00000010";
--            when "010" => F <= "00000100";
--            when "011" => F <= "00001000";
--            when "100" => F <= "00010000";
--            when "101" => F <= "00100000";
--            when "110" => F <= "01000000";
--            when "111" => F <= "10000000";
--        end case;
--    end process proc;
end arc;
