library IEEE;
use IEEE.std_logic_1164.all;

entity funcao is
port ( A,B,C,D : in std_logic;
       F : out std_logic);
end funcao;

architecture arc of funcao is
    signal sig1,sig2,sig3 : std_logic;
begin
    sig1 <= (not A) and C and (not D);
    sig2 <= (not B) and C;
    sig3 <= B and C and (not D);
    F <= sig1 or sig2 or sig3;
end arc;
