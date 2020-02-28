LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY div IS
    PORT (
        clk : IN std_logic;
        outclk1 : OUT std_logic;
        outclk2 : OUT std_logic);
END ENTITY div;

ARCHITECTURE behav OF div IS
    SIGNAL count1 : std_logic_vector(32 DOWNTO 0);
    SIGNAL count2 : std_logic_vector(32 DOWNTO 0);
    SIGNAL x : std_logic;
    SIGNAL y : std_logic;

BEGIN
    PROCESS (clk)
    BEGIN
        IF clk'event AND clk = '1' THEN
            count1 <= count1 + 1;
            count2 <= count2 + 1;
            IF (count1 >= 50000000 )THEN
                count1 <= (OTHERS => '0');
                x <= '1';
					 else
					 x<= '0';
            END IF;
				IF (count2 >= 1000000) THEN
                count2 <= (OTHERS => '0');
                y <= '1';
					 else
					 y <= '0';
            END IF;
        END IF;
    END PROCESS;
    outclk1 <= x;
    outclk2 <= y;
END;