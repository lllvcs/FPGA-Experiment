LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY decode38 IS
    PORT (
        input : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
        output : OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
END ENTITY decode38;

ARCHITECTURE behav OF decode38 IS
BEGIN
    PROCESS (input) BEGIN
        CASE input(2 DOWNTO 0) IS
            WHEN "000" => output<="01111111" ; -- 0
            WHEN "001" => output<="10111111" ; -- 1
            WHEN "010" => output<="11011111" ; -- 2
            WHEN "011" => output<="11101111" ; -- 3
            WHEN "100" => output<="11110111" ; -- 4
            WHEN "101" => output<="11111011" ; -- 5
            WHEN "110" => output<="11111101" ; -- 6
            WHEN "111" => output<="11111110" ; -- 7
            WHEN OTHERS => NULL ; -- NULL
        END CASE ;
    END PROCESS ;
END ARCHITECTURE behav ;