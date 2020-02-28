LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
---计费规则,起步价10元3km,10km内0.2元100m,超过10km加收50%回程费，车辆暂停等待每10秒0.5元
ENTITY time_price IS
	PORT (
		clk2, start, stop, pause : IN std_logic;
		price_time : OUT INTEGER range 0 to 5000);
END ENTITY time_price;

ARCHITECTURE behav OF time_price IS
	signal count, price : INTEGER range 0 to 5000;
BEGIN
	PROCESS (clk2, start, stop, pause) BEGIN
		IF (clk2'event AND clk2 = '1') THEN
			IF (stop = '1' OR start = '0') THEN
				count <= 0;
				price <= 0;
			ELSIF (start = '1' AND pause = '1') then
				count <= count + 1;
				else
				count <= count;
				price <= price;
			END IF;
			IF (count > 10) THEN
				price <= price + 5;
				count <= 0;
			END IF;
		END IF;
		price_time <= price;

	END PROCESS;
END ARCHITECTURE behav;