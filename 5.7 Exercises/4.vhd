library IEEE;
use IEEE.std_logic_1164.all;

entity and8 is
port ( in_bus : in std_logic_vector(7 downto 0);
       F : out std_logic);
end and8;

architecture arc of and8 is
    proc : process (in_bus) is
    begin
        if (in_bus = "11111111") then F <= '1';
        else F <= '0';
    end process proc;
end arc;
