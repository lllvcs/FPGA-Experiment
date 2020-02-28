LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY count_select IS
    PORT (
        clk : IN STD_LOGIC;
        output : OUT STD_LOGIC_VECTOR(2 DOWNTO 0));
END ENTITY count_select;

ARCHITECTURE behav OF count_select IS
BEGIN
    PROCESS(clk)
    VARIABLE count :STD_LOGIC_VECTOR(2 DOWNTO 0);
    BEGIN
        IF clk'EVENT AND CLK='1' THEN
            IF count(2 DOWNTO 0) < 7 THEN
                count := count + 1 ;
            ELSE
                count := "000" ;
            END IF;
        END IF;
        output <= count;
    END PROCESS;
END;
