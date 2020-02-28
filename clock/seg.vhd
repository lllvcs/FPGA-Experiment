LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY seg IS
    PORT (
        CLK : IN STD_LOGIC;
        Q : OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
END ENTITY seg;

ARCHITECTURE behav OF seg IS
BEGIN
    PROCESS (CLK)
        VARIABLE count : STD_LOGIC_VECTOR(3 DOWNTO 0);
    BEGIN
        IF CLK'EVENT AND CLK = '1' THEN
            IF count(3 DOWNTO 0) < 7 THEN
                count := count + 1;
            ELSE
                count := "0000";
            END IF;
        END IF;
        Q <= count;
    END PROCESS;
END behav;