LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY seg_trans_point IS
    PORT (
        input : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
        output : OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
END ENTITY seg_trans_point;

ARCHITECTURE behav OF seg_trans_point IS
BEGIN
    PROCESS (input) BEGIN
        CASE input(3 DOWNTO 0) IS
            WHEN "0000" => output<="00000010" ; -- 0
            WHEN "0001" => output<="10011110" ; -- 1
            WHEN "0010" => output<="00100100" ; -- 2
            WHEN "0011" => output<="00001100" ; -- 3
            WHEN "0100" => output<="10011000" ; -- 4
            WHEN "0101" => output<="01001000" ; -- 5
            WHEN "0110" => output<="01000000" ; -- 6
            WHEN "0111" => output<="00011110" ; -- 7
            WHEN "1000" => output<="00000000" ; -- 8
            WHEN "1001" => output<="00010000" ; -- 9 
            WHEN OTHERS => NULL ; -- NULL;
        END CASE;
    END PROCESS;
END ARCHITECTURE behav;
