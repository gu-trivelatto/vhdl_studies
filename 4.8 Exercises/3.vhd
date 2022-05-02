library IEEE;
use IEEE.std_logic_1164.all;

entity 8and is
port ( in_vec : in std_logic_vector(7 downto 0);
       F : out std_logic);
end 8and;

architecture arc of 8and is
-------begin of conditional-----------------------------------------------------------------------------
begin
    F <= '1' when (in_vec(0) = '1' and in_vec(1) = '1' and in_vec(2) = '1' and in_vec(3) = '1' and
                   in_vec(4) = '1' and in_vec(5) = '1' and in_vec(6) = '1' and in_vec(7) = '1') else
         '0';
end arc;
-------end of conditional-------------------------------------------------------------------------------
-------begin of concurrent------------------------------------------------------------------------------
--begin
--    F <= in_vec(0) and in_vec(1) and in_vec(2) and in_vec(3) and in_vec(4) and in_vec(5) and in_vec(6) and in_vec(7);
--end arc;
-------end of concurrent--------------------------------------------------------------------------------
-------begin of select signal---------------------------------------------------------------------------
--    signal vector_in : std_logic;
--begin
--    vector_int <= (in_vec(0) & in_vec(1) & in_vec(2) & in_vec(3) & in_vec(4) & in_vec(5) & in_vec(6) & in_vec(7));
--    with (vector_in) select
--        F <= '1' when "11111111",
--             '0' when others;
--end arc;
-------end of select signal-----------------------------------------------------------------------------
