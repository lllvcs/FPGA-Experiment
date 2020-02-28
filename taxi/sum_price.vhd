LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY sum_price IS
    PORT (
        clk2 : IN std_logic;
        distance_price, time_price : IN INTEGER RANGE 0 TO 5000;
        total_price : OUT INTEGER RANGE 0 TO 5000);
END ENTITY sum_price;

ARCHITECTURE behav OF sum_price IS
    signal price : INTEGER RANGE 0 TO 5000;
BEGIN
    PROCESS (clk2, time_price, distance_price) BEGIN
        IF (clk2'event AND clk2 = '1') THEN
            price <= time_price + distance_price;
        END IF;
        total_price <= price;
    END PROCESS;
END ARCHITECTURE behav;