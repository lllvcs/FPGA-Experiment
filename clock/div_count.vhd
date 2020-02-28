LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY div_count IS
    PORT (
        clk : IN std_logic;
        outclk : OUT std_logic);
END ENTITY div_count;

ARCHITECTURE behav OF div_count IS
    SIGNAL count : std_logic_vector(32 DOWNTO 0);
    SIGNAL x : std_logic;

BEGIN
    PROCESS (clk)
    BEGIN
        IF clk'event AND clk = '1' THEN
            count <= count + 1;
            IF count = 100000 THEN
                count <= (OTHERS => '0');
                x <= NOT x;
            END IF;
        END IF;
    END PROCESS;
    outclk <= x;
END;