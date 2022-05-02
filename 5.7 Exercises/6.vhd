library IEEE;
use IEEE.std_logic_1164.all;

entity mux8_1 is
port ( in_bus : in std_logic_vector(7 downto 0);
       Sel : in std_logic_vector(2 downto 0);
       F : out std_logic);
end mux8_1;

architecture arc of mux8_1 is
    proc : process (Sel) is
    begin
        if (Sel = "000") then F <= in_bus(0);
        elsif (Sel = "001") then F <= in_bus(1);
        elsif (Sel = "010") then F <= in_bus(2);
        elsif (Sel = "011") then F <= in_bus(3);
        elsif (Sel = "100") then F <= in_bus(4);
        elsif (Sel = "101") then F <= in_bus(5);
        elsif (Sel = "110") then F <= in_bus(6);
        elsif (Sel = "111") then F <= in_bus(7);
        else F <= '0';
    end process proc;
--    begin
--        case (Sel) is
--            when "000" => F <= in_bus(0);
--            when "001" => F <= in_bus(1);
--            when "010" => F <= in_bus(2);
--            when "011" => F <= in_bus(3);
--            when "100" => F <= in_bus(4);
--            when "101" => F <= in_bus(5);
--            when "110" => F <= in_bus(6);
--           when "111" => F <= in_bus(7);
--            when others => F <= '0';
--        end case;
--    end process proc;
end arc;
