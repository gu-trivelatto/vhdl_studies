library IEEE;
use IEEE.std_logic_1164.all;

entity funcao is
    port ( A,B : in std_logic;
           F   : out std_logic);
end funcao;

architecture arc of funcao is
begin
    F <= ((not A) and B) or A or (A and (not B));
end arc;
