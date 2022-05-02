library IEEE;
use IEEE.std_logic_1164.all;

entity funcao is
port ( A,B,C,D : in std_logic;
       F : out std_logic);
end funcao;

architecture arc of funcao is
begin
    F <= (A or B or (not C) or D) and (A or B or (not C) or (not D));
end arc;
