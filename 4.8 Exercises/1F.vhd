library IEEE;
use IEEE.std_logic_1164.all;

entity funcao is
port ( A,B,C,D : in std_logic;
       F : out std_logic);
end funcao;

architecture arc of funcao is
begin
    F <= ((not A) and (not B) and (not C) and D) or ((not A) and (not B) and C and (not D));
end arc;
