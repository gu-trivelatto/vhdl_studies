library IEEE;
use IEEE.std_logic_1164.all;

entity decoder3x8 is
port ( in_bus : in std_logic_vector(2 downto 0);
       en : in std_logic;
       out_bus : out std_logic_vector(7 downto 0));
end decoder3x8;

architecture arc of decoder3x8 is
------------begin conditional-----------------------------------------------------------------------------
begin
    out_bus(0) <= '1' when (in_bus(2) = '0' and in_bus(1) = '0' and in_bus(0) = '0' and en = '1') else '0';
    out_bus(1) <= '1' when (in_bus(2) = '0' and in_bus(1) = '0' and in_bus(0) = '1' and en = '1') else '0';
    out_bus(2) <= '1' when (in_bus(2) = '0' and in_bus(1) = '1' and in_bus(0) = '0' and en = '1') else '0';
    out_bus(3) <= '1' when (in_bus(2) = '0' and in_bus(1) = '1' and in_bus(0) = '1' and en = '1') else '0';
    out_bus(4) <= '1' when (in_bus(2) = '1' and in_bus(1) = '0' and in_bus(0) = '0' and en = '1') else '0';
    out_bus(5) <= '1' when (in_bus(2) = '1' and in_bus(1) = '0' and in_bus(0) = '1' and en = '1') else '0';
    out_bus(6) <= '1' when (in_bus(2) = '1' and in_bus(1) = '1' and in_bus(0) = '0' and en = '1') else '0';
    out_bus(7) <= '1' when (in_bus(2) = '1' and in_bus(1) = '1' and in_bus(0) = '1' and en = '1') else '0';
end arc;
------------end conditional-------------------------------------------------------------------------------
------------begin select signal---------------------------------------------------------------------------
--    signal sig_bus : std_logic;
--begin
--    sig_bus <= (in_bus(2) & in_bus(1) & in_bus(2) & en);
--   when (sig_bus) select
--        out_bus(0) <= '1' when "0001", '0' when others;
--        out_bus(1) <= '1' when "0011", '0' when others;
--        out_bus(2) <= '1' when "0101", '0' when others;
--        out_bus(3) <= '1' when "0111", '0' when others;
--        out_bus(4) <= '1' when "1001", '0' when others;
--        out_bus(5) <= '1' when "1011", '0' when others;
--        out_bus(6) <= '1' when "1101", '0' when others;
--        out_bus(7) <= '1' when "1111", '0' when others;
--end arc;
------------end select signal-----------------------------------------------------------------------------
