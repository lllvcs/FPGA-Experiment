LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY trans IS
    PORT (
        clk2 : IN std_logic;
        price, distance : IN INTEGER RANGE 0 TO 5000;
        distance_hundred, distance_decade, distance_unit, distance_mil, price_hundred, price_decade, price_unit, price_mil : OUT std_logic_vector(3 DOWNTO 0));
END ENTITY trans;

ARCHITECTURE behav OF trans IS
        signal tmp, tmp2, comb1_hundred, comb1_decade, comb1_unit, comb1_mil, comb2_hundred, comb2_decade, comb2_unit, comb2_mil: INTEGER RANGE 0 TO 5000;
BEGIN
    PROCESS (clk2, distance)
    BEGIN
        IF (clk2'event AND clk2 = '1') THEN
            tmp <= distance;
            comb1_hundred <= tmp/1000;
            comb1_decade <= tmp/100;
            comb1_unit <= tmp/10;
            comb1_mil <= tmp;

        END IF;
        distance_hundred <= conv_std_logic_vector(comb1_hundred REM 10, 4);
        distance_decade <= conv_std_logic_vector(comb1_decade REM 10, 4);
        distance_unit <= conv_std_logic_vector(comb1_unit REM 10, 4);
        distance_mil <= conv_std_logic_vector(comb1_mil REM 10, 4);

    END PROCESS;
    PROCESS (clk2, price)
    BEGIN
        IF (clk2'event AND clk2 = '1') THEN
            tmp2 <= price;
            comb2_hundred <= tmp2/1000;
            comb2_decade <= tmp2/100;
            comb2_unit <= tmp2/10;
            comb2_mil <= tmp2;
        END IF;
        price_hundred <= conv_std_logic_vector(comb2_hundred REM 10, 4);
        price_decade <= conv_std_logic_vector(comb2_decade REM 10, 4);
        price_unit <= conv_std_logic_vector(comb2_unit REM 10, 4);
        price_mil <= conv_std_logic_vector(comb2_mil REM 10, 4);

    END PROCESS;

END ARCHITECTURE behav;