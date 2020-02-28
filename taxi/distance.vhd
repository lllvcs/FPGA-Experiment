LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
---计费规则,起步价10元3km,10km内0.2元100m,超过10km加收50%回程费，车辆暂停等待每10秒0.5元
ENTITY distance IS
    PORT (
        clk1 : IN std_logic;
        start, stop, pause : IN std_logic;
        price_distance, real_distance : OUT INTEGER RANGE 0 TO 5000);

END ENTITY distance;

ARCHITECTURE behav OF distance IS
    SIGNAL count, miles, price : INTEGER RANGE 0 TO 5000;
    SIGNAL count2 : std_logic;
BEGIN
    PROCESS (clk1, start, stop, pause)
    BEGIN
        IF (clk1'event AND clk1 = '1') THEN
            IF (stop = '1') THEN
                count <= 0;
                miles <= 0;
                price <= 0;
                count2 <= '0';
            ELSIF (start = '0') THEN
                count <= 0;
                price <= 0;
                miles <= 0;
                count2 <= '0';
            ELSIF (start = '1'AND pause = '0') THEN
                IF (count > 2) THEN
                    miles <= miles + 1;
                    count <= 0;
                    count2 <= '1';
                ELSE
                    count <= count + 1;
                    count2 <= '0';
                END IF;
            END IF;

            IF (miles < 30) THEN
                price <= 100;
                count2 <= '0';

            ELSIF (miles < 100 AND miles >= 30 AND count2 = '1') THEN
                price <= price + 2;
                count2 <= '0';

            ELSIF (miles >= 100 AND count2 = '1') THEN
                price <= price + 3;
                count2 <= '0';
            ELSE
                price <= price;
            END IF;

        END IF;
        price_distance <= price;
        real_distance <= miles;
    END PROCESS;

END ARCHITECTURE behav;