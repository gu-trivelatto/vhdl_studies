library IEEE;
use IEEE.std_logic_1164.all;

entity funcao is
port ( A,B,C,D : in std_logic;
       F : out std_logic);
end funcao;

architecture arc of funcao is
begin
    F <= '0' when (A = '1' and B = '0') else
         '0' when (B = '1' and C = '0' and D = '1') else
         '0' when (A = '1' and D = '0') else
         '1';
end arc;
--begin
--    with (A = '1' and B = '0') or (B = '1' and C = '0' and D = '1') or (A = '1' and D = '0') select
--        F <= '1' when '0',
--             '0' when '1',
--             '0' when others;
--end arc;
