library IEEE;
use IEEE.std_logic_1164.all;

entity or8 is
port ( in_bus : in std_logic_vector(7 downto 0);
       F : out std_logic);
end or8;

architecture arc of or8 is
    proc : process (in_bus) is
    begin
        if (in_bus = "00000000") then F <= '0';
        else F <= '1';
    end process proc;
end arc;

