
library IEEE;
use IEEE.std_logic_1164.all;

entity 8or is
port ( in_vec : in std_logic_vector(7 downto 0);
       F : out std_logic);
end 8or;

architecture arc of 8or is
-------begin of conditional-----------------------------------------------------------------------------
begin
    F <= '0' when (in_vec(0) = '0' and in_vec(1) = '0' and in_vec(2) = '0' and in_vec(3) = '0' and
                   in_vec(4) = '0' and in_vec(5) = '0' and in_vec(6) = '0' and in_vec(7) = '0') else
         '1';
end arc;
-------end of conditional-------------------------------------------------------------------------------
-------begin of concurrent------------------------------------------------------------------------------
--begin
--    F <= in_vec(0) or in_vec(1) or in_vec(2) or in_vec(3) or in_vec(4) or in_vec(5) or in_vec(6) or in_vec(7);
--end arc;
-------end of concurrent--------------------------------------------------------------------------------
-------begin of select signal---------------------------------------------------------------------------
--    signal vector_in : std_logic;
--begin
--    vector_int <= (in_vec(0) & in_vec(1) & in_vec(2) & in_vec(3) & in_vec(4) & in_vec(5) & in_vec(6) & in_vec(7));
--    with (vector_in) select
--        F <= '0' when "00000000",
--             '1' when others;
--end arc;
-------end of select signal-----------------------------------------------------------------------------
