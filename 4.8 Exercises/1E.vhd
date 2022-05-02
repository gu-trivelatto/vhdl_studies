library IEEE;
use IEEE.std_logic_1164.all;

entity funcao is
port ( A,B,C : in std_logic;
       F : out std_logic);
end funcao;

architecture arc of funcao is
    signal sig5,sig1,sig4,sig3 : std_logic;
begin
    sig5 <= (not A) or B or (not C);
    sig1 <= A or B or (not C);
    sig4 <= (not A) or B or C;
    sig3 <= A or (not B) or (not C);
    F <= sig5 and sig1 and sig4 and sig3;
end arc;
