LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY hour IS
    PORT (
        clk, clr : IN std_logic;
        seg0, seg1 : OUT std_logic_vector(3 DOWNTO 0);
        outclk : OUT std_logic);

END hour;

ARCHITECTURE behav OF hour IS
    SIGNAL cnt1, cnt0 : std_logic_vector(3 DOWNTO 0);
BEGIN
    PROCESS (clk)
    BEGIN
        IF (clr = '0') THEN
            cnt0 <= "0000";
            cnt1 <= "0000";
        ELSIF (clk'event AND clk = '1') THEN
            IF cnt1 = "0010" AND cnt0 = "0011" THEN
                outclk <= '1';
                cnt0 <= "0000";
                cnt1 <= "0000";
            ELSIF cnt0 = "1001" THEN
                cnt1 <= (cnt1 + 1);
                cnt0 <= "0000";
                outclk <= '0';
            ELSE
                cnt0 <= (cnt0 + 1);
                outclk <= '0';
            END IF;
        END IF;
        seg1 <= cnt1;
        seg0 <= cnt0;
    END PROCESS;
END behav;