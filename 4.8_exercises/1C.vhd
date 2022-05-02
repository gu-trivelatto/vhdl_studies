library IEEE;
use IEEE.std_logic_1164.all;

entity funcao is
port ( A,B,C,D : in std_logic;
       F : out std_logic);
end funcao;

architecture arc of funcao is
    signal sig1,sig2,sig3 : std_logic;
begin
    sig1 <= (not A) or B;
    sig2 <= (not B) or C or (not D);
    sig3 <= (not A) or D;
    F <= sig1 and sig2 and sig3;
end arc;
