LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY main IS
    PORT (
        A0 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
        A1 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
        A2 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
        A3 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
        A4 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
        A5 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
        SEL : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
        output : OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
END ENTITY main;

ARCHITECTURE behav OF main IS
BEGIN
    PROCESS (SEL) BEGIN
        CASE SEL(2 DOWNTO 0) IS
            WHEN "000" => output <= A0;
            WHEN "001" => output <= A1;
            WHEN "010" => output <= A2;
            WHEN "011" => output <= A3;
            WHEN "100" => output <= A4;
            WHEN "101" => output <= A5;
            WHEN OTHERS => NULL;
        END CASE;
    END PROCESS;
END ARCHITECTURE behav;
