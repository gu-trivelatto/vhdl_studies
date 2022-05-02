library IEEE;
use IEEE.std_logic_1164.all;

entity mux8 is
port ( in_vec : in std_logic_vector(7 downto 0);
       sel : in std_logic_vector(2 downto 0);
       F : out std_logic);
end mux8;

architecture arc of mux8 is
-------begin of conditional----------------------------------------------------------
begin
    F <= in_vec(0) when (sel = "000") else
         in_vec(1) when (sel = "001") else
         in_vec(2) when (sel = "010") else
         in_vec(3) when (sel = "011") else
         in_vec(4) when (sel = "100") else
         in_vec(5) when (sel = "101") else
         in_vec(6) when (sel = "110") else
         in_vec(7) when (sel = "111") else
         '0';
end arc;
-------end of conditional------------------------------------------------------------
-------begin of select signal--------------------------------------------------------
--    signal sig : std_logic;
--begin
--    sig <= (sel(0) & sel(1) & sel(2));
--    when (sig) select
--        F <= in_vec(0) when "000",
--             in_vec(1) when "001",
--             in_vec(2) when "010",
--             in_vec(3) when "011",
--             in_vec(4) when "100",
--             in_vec(5) when "101",
--             in_vec(6) when "110",
--             in_vec(7) when "111",
--            '0' when others;
-------end of select signal----------------------------------------------------------
