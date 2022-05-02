library IEEE;
use IEEE.std_logic_1164.all;

entity sistema is
port ( A_1,A_2,B_1,B_2,D_1 : in std_logic;
       E_out : out std_logic);
end sistema;

architecture arc of sistema is
signal A_out,B_out,D_out,C_out : std_logic;
    A : process (A_1,A_2) is
        if (A_1 = '1' and A_2 = '1') then A_out <= '1';
        else A_out <= '0';
    end process A;
    B : process (B_1,B_2) is
        if (B_1 = '1') then B_out <= '1';
        elsif (B_2 = '1') then B_out <= '1';
        else B_out <= '0';
    end process B;
    D : process (D_1) is
        if (D_1 = '0') then D_out <= '1';
        else D_out <= '0';
    end process D;
    C : process (B_2,D_out) is
        if (B_2 = '1' and D_out = '1') then C_out => '1';
        else D_out => '0';
    end process C;
    E : process (A_out,B_out,C_out) is
        if (A_out = '1') then E_out => '1';
        elsif (B_out = '1') then E_out => '1';
        elsif (C_out = '1') then E_out => '1';
        else E_out => '0';
    end process E;
end arc;
--    A : process (A_1,A_2) is
--        case (A_1 = '1' and A_2 = '1') is
--            when '1' => A_out <= '1';
--            when others => A_out <= '0';
--        end case;
--   end process A;
--    B : process (B_1,B_2) is
--        case (B_1 = '1' or B_2 = '1') is
--            when '1' => B_out <= '1';
--            when others => B_out <= '0';
--        end case;
--    end process B;
--    D : process (D_1) is
--        case (D_1 = '1') is
--            when '0' => D_out <= '1';
--            when others => D_out <= '0';
--        end case;
--    end process D;
--    C : process (B_2,D_out) is
--        case (B_2 = '1' and D_out = '0') is
--            when '1' => C_out <= '1';
--            when others => C_out <= '0';
--        end case;
--   end process C;
--    E : process (A_out,B_out,C_out) is
--        case (A_out = '1' or B_out = '1' or C_out = '1') is
--            when '1' => E_out <= '1';
--            when others => E_out <= '0';
--        end case;
--    end process E;
--end arc;
--------exercicio 3---------------------------------------------
--begin
--    A_out <= A_1 and A_2;
--    B_out <= B_1 or B_2;
--    D_out <= not D_1;
--    C_out <= B_2 and D_out;
--    E_out <= A_out or B_out or C_out;
--end arc;
