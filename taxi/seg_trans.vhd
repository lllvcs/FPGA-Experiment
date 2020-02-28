LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY seg_trans IS
    PORT (
        input : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
        output : OUT STD_LOGIC_VECTOR(6 DOWNTO 0));
END ENTITY seg_trans;

ARCHITECTURE behav OF seg_trans IS
BEGIN
    PROCESS (input) BEGIN
        CASE input(3 DOWNTO 0) IS
            WHEN "0000" => output<="0000001" ; -- 0
            WHEN "0001" => output<="1001111" ; -- 1
            WHEN "0010" => output<="0010010" ; -- 2
            WHEN "0011" => output<="0000110" ; -- 3
            WHEN "0100" => output<="1001100" ; -- 4
            WHEN "0101" => output<="0100100" ; -- 5
            WHEN "0110" => output<="0100000" ; -- 6
            WHEN "0111" => output<="0001111" ; -- 7
            WHEN "1000" => output<="0000000" ; -- 8
            WHEN "1001" => output<="0000100" ; -- 9 
            WHEN OTHERS => output<="1111111" ; -- NULL;
        END CASE;
    END PROCESS;
END ARCHITECTURE behav;
