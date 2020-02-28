-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "12/27/2019 14:12:01"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          taxi
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY taxi_vhd_vec_tst IS
END taxi_vhd_vec_tst;
ARCHITECTURE taxi_arch OF taxi_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk_distance : STD_LOGIC;
SIGNAL clk_time : STD_LOGIC;
SIGNAL dis_decade : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL dis_hundred : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL dis_mil : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL dis_unit : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL pause : STD_LOGIC;
SIGNAL price_decade : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL price_hundred : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL price_mil : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL price_unit : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL start : STD_LOGIC;
SIGNAL stop : STD_LOGIC;
COMPONENT taxi
	PORT (
	clk_distance : IN STD_LOGIC;
	clk_time : IN STD_LOGIC;
	dis_decade : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	dis_hundred : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	dis_mil : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	dis_unit : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	pause : IN STD_LOGIC;
	price_decade : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	price_hundred : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	price_mil : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	price_unit : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	start : IN STD_LOGIC;
	stop : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : taxi
	PORT MAP (
-- list connections between master ports and signals
	clk_distance => clk_distance,
	clk_time => clk_time,
	dis_decade => dis_decade,
	dis_hundred => dis_hundred,
	dis_mil => dis_mil,
	dis_unit => dis_unit,
	pause => pause,
	price_decade => price_decade,
	price_hundred => price_hundred,
	price_mil => price_mil,
	price_unit => price_unit,
	start => start,
	stop => stop
	);

-- clk_distance
t_prcs_clk_distance: PROCESS
BEGIN
	clk_distance <= '0';
	WAIT FOR 524 ps;
	clk_distance <= '1';
	WAIT FOR 7800 ps;
	clk_distance <= '0';
	WAIT FOR 14406 ps;
	clk_distance <= '1';
	WAIT FOR 2066 ps;
	FOR i IN 1 TO 2
	LOOP
		clk_distance <= '0';
		WAIT FOR 4600 ps;
		clk_distance <= '1';
		WAIT FOR 2066 ps;
	END LOOP;
	clk_distance <= '0';
	WAIT FOR 1872 ps;
	clk_distance <= '1';
	WAIT FOR 1030 ps;
	clk_distance <= '0';
	WAIT FOR 2750 ps;
	clk_distance <= '1';
	WAIT FOR 2250 ps;
	clk_distance <= '0';
	WAIT FOR 2750 ps;
	clk_distance <= '1';
	WAIT FOR 1220 ps;
	clk_distance <= '0';
	WAIT FOR 2616 ps;
	clk_distance <= '1';
	WAIT FOR 1550 ps;
	clk_distance <= '0';
	WAIT FOR 3450 ps;
	clk_distance <= '1';
	WAIT FOR 1550 ps;
	clk_distance <= '0';
	WAIT FOR 834 ps;
	clk_distance <= '1';
	WAIT FOR 152 ps;
	clk_distance <= '0';
	WAIT FOR 5300 ps;
	clk_distance <= '1';
	WAIT FOR 4700 ps;
	clk_distance <= '0';
	WAIT FOR 5300 ps;
	clk_distance <= '1';
	WAIT FOR 4548 ps;
	clk_distance <= '0';
	WAIT FOR 1547 ps;
	clk_distance <= '1';
	WAIT FOR 9600 ps;
	clk_distance <= '0';
	WAIT FOR 11543 ps;
	clk_distance <= '1';
	WAIT FOR 2799 ps;
	FOR i IN 1 TO 2
	LOOP
		clk_distance <= '0';
		WAIT FOR 3867 ps;
		clk_distance <= '1';
		WAIT FOR 2799 ps;
	END LOOP;
	clk_distance <= '0';
	WAIT FOR 1790 ps;
	clk_distance <= '1';
	WAIT FOR 2133 ps;
	FOR i IN 1 TO 2
	LOOP
		clk_distance <= '0';
		WAIT FOR 4533 ps;
		clk_distance <= '1';
		WAIT FOR 2133 ps;
	END LOOP;
	clk_distance <= '0';
	WAIT FOR 3924 ps;
	clk_distance <= '1';
	WAIT FOR 240 ps;
	FOR i IN 1 TO 2
	LOOP
		clk_distance <= '0';
		WAIT FOR 3667 ps;
		clk_distance <= '1';
		WAIT FOR 2999 ps;
	END LOOP;
	clk_distance <= '0';
	WAIT FOR 3667 ps;
	clk_distance <= '1';
	WAIT FOR 7642 ps;
	clk_distance <= '0';
	WAIT FOR 4100 ps;
	clk_distance <= '1';
	WAIT FOR 1019 ps;
	clk_distance <= '0';
	WAIT FOR 3643 ps;
	clk_distance <= '1';
	WAIT FOR 2866 ps;
	FOR i IN 1 TO 2
	LOOP
		clk_distance <= '0';
		WAIT FOR 3800 ps;
		clk_distance <= '1';
		WAIT FOR 2866 ps;
	END LOOP;
	clk_distance <= '0';
	WAIT FOR 1663 ps;
	clk_distance <= '1';
	WAIT FOR 1733 ps;
	FOR i IN 1 TO 2
	LOOP
		clk_distance <= '0';
		WAIT FOR 1600 ps;
		clk_distance <= '1';
		WAIT FOR 1733 ps;
	END LOOP;
	clk_distance <= '0';
	WAIT FOR 97 ps;
	clk_distance <= '1';
	WAIT FOR 1898 ps;
	clk_distance <= '0';
	WAIT FOR 2600 ps;
	clk_distance <= '1';
	WAIT FOR 2400 ps;
	clk_distance <= '0';
	WAIT FOR 2600 ps;
	clk_distance <= '1';
	WAIT FOR 502 ps;
	clk_distance <= '0';
	WAIT FOR 1971 ps;
	clk_distance <= '1';
	WAIT FOR 4100 ps;
	clk_distance <= '0';
	WAIT FOR 5900 ps;
	clk_distance <= '1';
	WAIT FOR 4100 ps;
	clk_distance <= '0';
	WAIT FOR 4889 ps;
	clk_distance <= '1';
	WAIT FOR 1666 ps;
	FOR i IN 1 TO 2
	LOOP
		clk_distance <= '0';
		WAIT FOR 1667 ps;
		clk_distance <= '1';
		WAIT FOR 1666 ps;
	END LOOP;
	clk_distance <= '0';
	WAIT FOR 3343 ps;
	clk_distance <= '1';
	WAIT FOR 2250 ps;
	clk_distance <= '0';
	WAIT FOR 2750 ps;
	clk_distance <= '1';
	WAIT FOR 2250 ps;
	clk_distance <= '0';
	WAIT FOR 4174 ps;
	clk_distance <= '1';
	WAIT FOR 1999 ps;
	FOR i IN 1 TO 2
	LOOP
		clk_distance <= '0';
		WAIT FOR 4667 ps;
		clk_distance <= '1';
		WAIT FOR 1999 ps;
	END LOOP;
	clk_distance <= '0';
	WAIT FOR 1068 ps;
	clk_distance <= '1';
	WAIT FOR 3932 ps;
	FOR i IN 1 TO 2
	LOOP
		clk_distance <= '0';
		WAIT FOR 2734 ps;
		clk_distance <= '1';
		WAIT FOR 3932 ps;
	END LOOP;
	clk_distance <= '0';
	WAIT FOR 2278 ps;
	clk_distance <= '1';
	WAIT FOR 925 ps;
	clk_distance <= '0';
	WAIT FOR 6700 ps;
	clk_distance <= '1';
	WAIT FOR 3300 ps;
	clk_distance <= '0';
	WAIT FOR 6700 ps;
	clk_distance <= '1';
	WAIT FOR 4809 ps;
	clk_distance <= '0';
	WAIT FOR 2150 ps;
	clk_distance <= '1';
	WAIT FOR 2850 ps;
	clk_distance <= '0';
	WAIT FOR 2150 ps;
	clk_distance <= '1';
	WAIT FOR 1283 ps;
	clk_distance <= '0';
	WAIT FOR 3100 ps;
	clk_distance <= '1';
	WAIT FOR 1900 ps;
	clk_distance <= '0';
	WAIT FOR 3100 ps;
	clk_distance <= '1';
	WAIT FOR 1033 ps;
	clk_distance <= '0';
	WAIT FOR 1270 ps;
	clk_distance <= '1';
	WAIT FOR 4700 ps;
	clk_distance <= '0';
	WAIT FOR 4030 ps;
	clk_distance <= '1';
	WAIT FOR 2800 ps;
	clk_distance <= '0';
	WAIT FOR 2100 ps;
	clk_distance <= '1';
	WAIT FOR 2900 ps;
	clk_distance <= '0';
	WAIT FOR 2100 ps;
	clk_distance <= '1';
	WAIT FOR 360 ps;
	clk_distance <= '0';
	WAIT FOR 5900 ps;
	clk_distance <= '1';
	WAIT FOR 4685 ps;
	clk_distance <= '0';
	WAIT FOR 5700 ps;
	clk_distance <= '1';
	WAIT FOR 4300 ps;
	clk_distance <= '0';
	WAIT FOR 5700 ps;
	clk_distance <= '1';
	WAIT FOR 3455 ps;
	clk_distance <= '0';
	WAIT FOR 2514 ps;
	clk_distance <= '1';
	WAIT FOR 5000 ps;
	clk_distance <= '0';
	WAIT FOR 5000 ps;
	clk_distance <= '1';
	WAIT FOR 5000 ps;
	clk_distance <= '0';
	WAIT FOR 3953 ps;
	clk_distance <= '1';
	WAIT FOR 3199 ps;
	FOR i IN 1 TO 2
	LOOP
		clk_distance <= '0';
		WAIT FOR 3467 ps;
		clk_distance <= '1';
		WAIT FOR 3199 ps;
	END LOOP;
	clk_distance <= '0';
	WAIT FOR 4519 ps;
	clk_distance <= '1';
	WAIT FOR 3400 ps;
	clk_distance <= '0';
	WAIT FOR 11005 ps;
	clk_distance <= '1';
	WAIT FOR 6800 ps;
	clk_distance <= '0';
	WAIT FOR 6278 ps;
	clk_distance <= '1';
	WAIT FOR 374 ps;
	clk_distance <= '0';
	WAIT FOR 12200 ps;
	clk_distance <= '1';
	WAIT FOR 7426 ps;
	clk_distance <= '0';
	WAIT FOR 1589 ps;
	clk_distance <= '1';
	WAIT FOR 1099 ps;
	FOR i IN 1 TO 2
	LOOP
		clk_distance <= '0';
		WAIT FOR 2234 ps;
		clk_distance <= '1';
		WAIT FOR 1099 ps;
	END LOOP;
	clk_distance <= '0';
	WAIT FOR 646 ps;
	clk_distance <= '1';
	WAIT FOR 1429 ps;
	clk_distance <= '0';
	WAIT FOR 12400 ps;
	clk_distance <= '1';
	WAIT FOR 6171 ps;
	clk_distance <= '0';
	WAIT FOR 2231 ps;
	clk_distance <= '1';
	WAIT FOR 2300 ps;
	clk_distance <= '0';
	WAIT FOR 2700 ps;
	clk_distance <= '1';
	WAIT FOR 2300 ps;
	clk_distance <= '0';
	WAIT FOR 656 ps;
	clk_distance <= '1';
	WAIT FOR 2266 ps;
	FOR i IN 1 TO 2
	LOOP
		clk_distance <= '0';
		WAIT FOR 4400 ps;
		clk_distance <= '1';
		WAIT FOR 2266 ps;
	END LOOP;
	clk_distance <= '0';
	WAIT FOR 4215 ps;
	clk_distance <= '1';
	WAIT FOR 4048 ps;
	clk_distance <= '0';
	WAIT FOR 5500 ps;
	clk_distance <= '1';
	WAIT FOR 4500 ps;
	clk_distance <= '0';
	WAIT FOR 5500 ps;
	clk_distance <= '1';
	WAIT FOR 452 ps;
	clk_distance <= '0';
	WAIT FOR 1258 ps;
	clk_distance <= '1';
	WAIT FOR 1699 ps;
	FOR i IN 1 TO 2
	LOOP
		clk_distance <= '0';
		WAIT FOR 1634 ps;
		clk_distance <= '1';
		WAIT FOR 1699 ps;
	END LOOP;
	clk_distance <= '0';
	WAIT FOR 377 ps;
	clk_distance <= '1';
	WAIT FOR 1401 ps;
	clk_distance <= '0';
	WAIT FOR 7000 ps;
	clk_distance <= '1';
	WAIT FOR 3000 ps;
	clk_distance <= '0';
	WAIT FOR 7000 ps;
	clk_distance <= '1';
	WAIT FOR 2760 ps;
	clk_distance <= '0';
	WAIT FOR 4400 ps;
	clk_distance <= '1';
	WAIT FOR 5600 ps;
	clk_distance <= '0';
	WAIT FOR 4400 ps;
	clk_distance <= '1';
	WAIT FOR 4439 ps;
	clk_distance <= '0';
	WAIT FOR 1835 ps;
	clk_distance <= '1';
	WAIT FOR 2550 ps;
	clk_distance <= '0';
	WAIT FOR 2450 ps;
	clk_distance <= '1';
	WAIT FOR 2550 ps;
	clk_distance <= '0';
	WAIT FOR 890 ps;
	clk_distance <= '1';
	WAIT FOR 4100 ps;
	clk_distance <= '0';
	WAIT FOR 5625 ps;
	clk_distance <= '1';
	WAIT FOR 2956 ps;
	clk_distance <= '0';
	WAIT FOR 4200 ps;
	clk_distance <= '1';
	WAIT FOR 5800 ps;
	clk_distance <= '0';
	WAIT FOR 4200 ps;
	clk_distance <= '1';
	WAIT FOR 2844 ps;
	clk_distance <= '0';
	WAIT FOR 4499 ps;
	clk_distance <= '1';
	WAIT FOR 3600 ps;
	clk_distance <= '0';
	WAIT FOR 6400 ps;
	clk_distance <= '1';
	WAIT FOR 3600 ps;
	clk_distance <= '0';
	WAIT FOR 1901 ps;
	clk_distance <= '1';
	WAIT FOR 803 ps;
	FOR i IN 1 TO 2
	LOOP
		clk_distance <= '0';
		WAIT FOR 3800 ps;
		clk_distance <= '1';
		WAIT FOR 2866 ps;
	END LOOP;
	clk_distance <= '0';
	WAIT FOR 3800 ps;
	clk_distance <= '1';
	WAIT FOR 4469 ps;
	clk_distance <= '0';
	WAIT FOR 13200 ps;
	clk_distance <= '1';
	WAIT FOR 5738 ps;
	clk_distance <= '0';
	WAIT FOR 6500 ps;
	clk_distance <= '1';
	WAIT FOR 3500 ps;
	clk_distance <= '0';
	WAIT FOR 6500 ps;
	clk_distance <= '1';
	WAIT FOR 2158 ps;
	clk_distance <= '0';
	WAIT FOR 732 ps;
	clk_distance <= '1';
	WAIT FOR 1833 ps;
	FOR i IN 1 TO 2
	LOOP
		clk_distance <= '0';
		WAIT FOR 1500 ps;
		clk_distance <= '1';
		WAIT FOR 1833 ps;
	END LOOP;
	clk_distance <= '0';
	WAIT FOR 1251 ps;
	clk_distance <= '1';
	WAIT FOR 2666 ps;
	FOR i IN 1 TO 2
	LOOP
		clk_distance <= '0';
		WAIT FOR 4000 ps;
		clk_distance <= '1';
		WAIT FOR 2666 ps;
	END LOOP;
	clk_distance <= '0';
	WAIT FOR 3520 ps;
	clk_distance <= '1';
	WAIT FOR 234 ps;
	FOR i IN 1 TO 2
	LOOP
		clk_distance <= '0';
		WAIT FOR 1967 ps;
		clk_distance <= '1';
		WAIT FOR 1366 ps;
	END LOOP;
	clk_distance <= '0';
	WAIT FOR 1967 ps;
	clk_distance <= '1';
	WAIT FOR 1133 ps;
	clk_distance <= '0';
	WAIT FOR 3223 ps;
	clk_distance <= '1';
	WAIT FOR 6400 ps;
	clk_distance <= '0';
	WAIT FOR 10377 ps;
	clk_distance <= '1';
	WAIT FOR 123 ps;
	FOR i IN 1 TO 2
	LOOP
		clk_distance <= '0';
		WAIT FOR 1800 ps;
		clk_distance <= '1';
		WAIT FOR 1533 ps;
	END LOOP;
	clk_distance <= '0';
	WAIT FOR 1800 ps;
	clk_distance <= '1';
	WAIT FOR 3465 ps;
	clk_distance <= '0';
	WAIT FOR 5300 ps;
	clk_distance <= '1';
	WAIT FOR 6422 ps;
	clk_distance <= '0';
	WAIT FOR 5800 ps;
	clk_distance <= '1';
	WAIT FOR 424 ps;
	clk_distance <= '0';
	WAIT FOR 550 ps;
	clk_distance <= '1';
	WAIT FOR 3100 ps;
	clk_distance <= '0';
	WAIT FOR 6350 ps;
	clk_distance <= '1';
	WAIT FOR 2239 ps;
	clk_distance <= '0';
	WAIT FOR 6700 ps;
	clk_distance <= '1';
	WAIT FOR 3300 ps;
	clk_distance <= '0';
	WAIT FOR 6700 ps;
	clk_distance <= '1';
	WAIT FOR 4035 ps;
	clk_distance <= '0';
	WAIT FOR 6300 ps;
	clk_distance <= '1';
	WAIT FOR 3700 ps;
	clk_distance <= '0';
	WAIT FOR 6300 ps;
	clk_distance <= '1';
	WAIT FOR 2649 ps;
	clk_distance <= '0';
	WAIT FOR 4600 ps;
	clk_distance <= '1';
	WAIT FOR 2066 ps;
	clk_distance <= '0';
	WAIT FOR 4600 ps;
	clk_distance <= '1';
	WAIT FOR 2066 ps;
	clk_distance <= '0';
	WAIT FOR 4600 ps;
	clk_distance <= '1';
	WAIT FOR 145 ps;
	clk_distance <= '0';
	WAIT FOR 246 ps;
	clk_distance <= '1';
	WAIT FOR 2600 ps;
	clk_distance <= '0';
	WAIT FOR 2400 ps;
	clk_distance <= '1';
	WAIT FOR 2600 ps;
	clk_distance <= '0';
	WAIT FOR 2154 ps;
	clk_distance <= '1';
	WAIT FOR 2635 ps;
	clk_distance <= '0';
	WAIT FOR 5100 ps;
	clk_distance <= '1';
	WAIT FOR 2265 ps;
	clk_distance <= '0';
	WAIT FOR 7437 ps;
	clk_distance <= '1';
	WAIT FOR 9000 ps;
	clk_distance <= '0';
	WAIT FOR 4147 ps;
	clk_distance <= '1';
	WAIT FOR 2250 ps;
	clk_distance <= '0';
	WAIT FOR 2750 ps;
	clk_distance <= '1';
	WAIT FOR 2250 ps;
	clk_distance <= '0';
	WAIT FOR 2739 ps;
	clk_distance <= '1';
	WAIT FOR 3200 ps;
	clk_distance <= '0';
	WAIT FOR 6800 ps;
	clk_distance <= '1';
	WAIT FOR 3200 ps;
	clk_distance <= '0';
	WAIT FOR 8717 ps;
	clk_distance <= '1';
	WAIT FOR 9400 ps;
	clk_distance <= '0';
	WAIT FOR 8110 ps;
	clk_distance <= '1';
	WAIT FOR 1026 ps;
	clk_distance <= '0';
	WAIT FOR 10200 ps;
	clk_distance <= '1';
	WAIT FOR 9589 ps;
	clk_distance <= '0';
	WAIT FOR 2067 ps;
	clk_distance <= '1';
	WAIT FOR 1266 ps;
	clk_distance <= '0';
	WAIT FOR 2067 ps;
	clk_distance <= '1';
	WAIT FOR 1266 ps;
	clk_distance <= '0';
	WAIT FOR 2067 ps;
	clk_distance <= '1';
WAIT;
END PROCESS t_prcs_clk_distance;

-- clk_time
t_prcs_clk_time: PROCESS
BEGIN
	clk_time <= '0';
	WAIT FOR 3568 ps;
	clk_time <= '1';
	WAIT FOR 8000 ps;
	clk_time <= '0';
	WAIT FOR 8432 ps;
	clk_time <= '1';
	WAIT FOR 279 ps;
	FOR i IN 1 TO 2
	LOOP
		clk_time <= '0';
		WAIT FOR 1434 ps;
		clk_time <= '1';
		WAIT FOR 1899 ps;
	END LOOP;
	clk_time <= '0';
	WAIT FOR 1434 ps;
	clk_time <= '1';
	WAIT FOR 2973 ps;
	clk_time <= '0';
	WAIT FOR 4000 ps;
	clk_time <= '1';
	WAIT FOR 6000 ps;
	clk_time <= '0';
	WAIT FOR 4000 ps;
	clk_time <= '1';
	WAIT FOR 4648 ps;
	clk_time <= '0';
	WAIT FOR 2570 ps;
	clk_time <= '1';
	WAIT FOR 3133 ps;
	FOR i IN 1 TO 2
	LOOP
		clk_time <= '0';
		WAIT FOR 3533 ps;
		clk_time <= '1';
		WAIT FOR 3133 ps;
	END LOOP;
	clk_time <= '0';
	WAIT FOR 965 ps;
	clk_time <= '1';
	WAIT FOR 1876 ps;
	clk_time <= '0';
	WAIT FOR 2900 ps;
	clk_time <= '1';
	WAIT FOR 2100 ps;
	clk_time <= '0';
	WAIT FOR 2900 ps;
	clk_time <= '1';
	WAIT FOR 1388 ps;
	clk_time <= '0';
	WAIT FOR 5800 ps;
	clk_time <= '1';
	WAIT FOR 3036 ps;
	clk_time <= '0';
	WAIT FOR 1522 ps;
	clk_time <= '1';
	WAIT FOR 3066 ps;
	FOR i IN 1 TO 2
	LOOP
		clk_time <= '0';
		WAIT FOR 3600 ps;
		clk_time <= '1';
		WAIT FOR 3066 ps;
	END LOOP;
	clk_time <= '0';
	WAIT FOR 2080 ps;
	clk_time <= '1';
	WAIT FOR 3072 ps;
	clk_time <= '0';
	WAIT FOR 4600 ps;
	clk_time <= '1';
	WAIT FOR 5400 ps;
	clk_time <= '0';
	WAIT FOR 4600 ps;
	clk_time <= '1';
	WAIT FOR 2328 ps;
	clk_time <= '0';
	WAIT FOR 153 ps;
	clk_time <= '1';
	WAIT FOR 5700 ps;
	clk_time <= '0';
	WAIT FOR 4147 ps;
	clk_time <= '1';
	WAIT FOR 101 ps;
	clk_time <= '0';
	WAIT FOR 5700 ps;
	clk_time <= '1';
	WAIT FOR 4300 ps;
	clk_time <= '0';
	WAIT FOR 5700 ps;
	clk_time <= '1';
	WAIT FOR 4199 ps;
	clk_time <= '0';
	WAIT FOR 4856 ps;
	clk_time <= '1';
	WAIT FOR 8000 ps;
	clk_time <= '0';
	WAIT FOR 9429 ps;
	clk_time <= '1';
	WAIT FOR 4400 ps;
	clk_time <= '0';
	WAIT FOR 9301 ps;
	clk_time <= '1';
	WAIT FOR 3600 ps;
	clk_time <= '0';
	WAIT FOR 414 ps;
	clk_time <= '1';
	WAIT FOR 1052 ps;
	FOR i IN 1 TO 2
	LOOP
		clk_time <= '0';
		WAIT FOR 1800 ps;
		clk_time <= '1';
		WAIT FOR 1533 ps;
	END LOOP;
	clk_time <= '0';
	WAIT FOR 1800 ps;
	clk_time <= '1';
	WAIT FOR 482 ps;
	clk_time <= '0';
	WAIT FOR 1366 ps;
	clk_time <= '1';
	WAIT FOR 5100 ps;
	clk_time <= '0';
	WAIT FOR 4900 ps;
	clk_time <= '1';
	WAIT FOR 5100 ps;
	clk_time <= '0';
	WAIT FOR 4629 ps;
	clk_time <= '1';
	WAIT FOR 8000 ps;
	clk_time <= '0';
	WAIT FOR 10905 ps;
	clk_time <= '1';
	WAIT FOR 2302 ps;
	clk_time <= '0';
	WAIT FOR 2650 ps;
	clk_time <= '1';
	WAIT FOR 2350 ps;
	clk_time <= '0';
	WAIT FOR 2650 ps;
	clk_time <= '1';
	WAIT FOR 157 ps;
	clk_time <= '0';
	WAIT FOR 1534 ps;
	clk_time <= '1';
	WAIT FOR 1799 ps;
	clk_time <= '0';
	WAIT FOR 1534 ps;
	clk_time <= '1';
	WAIT FOR 1799 ps;
	clk_time <= '0';
	WAIT FOR 1534 ps;
	clk_time <= '1';
	WAIT FOR 1691 ps;
	clk_time <= '0';
	WAIT FOR 1698 ps;
	clk_time <= '1';
	WAIT FOR 2100 ps;
	clk_time <= '0';
	WAIT FOR 2900 ps;
	clk_time <= '1';
	WAIT FOR 2100 ps;
	clk_time <= '0';
	WAIT FOR 1219 ps;
	clk_time <= '1';
	WAIT FOR 3799 ps;
	FOR i IN 1 TO 2
	LOOP
		clk_time <= '0';
		WAIT FOR 2867 ps;
		clk_time <= '1';
		WAIT FOR 3799 ps;
	END LOOP;
	clk_time <= '0';
	WAIT FOR 2852 ps;
	clk_time <= '1';
	WAIT FOR 2927 ps;
	clk_time <= '0';
	WAIT FOR 6700 ps;
	clk_time <= '1';
	WAIT FOR 3300 ps;
	clk_time <= '0';
	WAIT FOR 6700 ps;
	clk_time <= '1';
	WAIT FOR 373 ps;
	clk_time <= '0';
	WAIT FOR 2852 ps;
	clk_time <= '1';
	WAIT FOR 5900 ps;
	clk_time <= '0';
	WAIT FOR 1248 ps;
	clk_time <= '1';
	WAIT FOR 1815 ps;
	FOR i IN 1 TO 2
	LOOP
		clk_time <= '0';
		WAIT FOR 4200 ps;
		clk_time <= '1';
		WAIT FOR 2466 ps;
	END LOOP;
	clk_time <= '0';
	WAIT FOR 4200 ps;
	clk_time <= '1';
	WAIT FOR 2051 ps;
	clk_time <= '0';
	WAIT FOR 1867 ps;
	clk_time <= '1';
	WAIT FOR 1466 ps;
	clk_time <= '0';
	WAIT FOR 1867 ps;
	clk_time <= '1';
	WAIT FOR 1466 ps;
	clk_time <= '0';
	WAIT FOR 1867 ps;
	clk_time <= '1';
	WAIT FOR 2327 ps;
	clk_time <= '0';
	WAIT FOR 3400 ps;
	clk_time <= '1';
	WAIT FOR 3266 ps;
	clk_time <= '0';
	WAIT FOR 3400 ps;
	clk_time <= '1';
	WAIT FOR 3266 ps;
	clk_time <= '0';
	WAIT FOR 3400 ps;
	clk_time <= '1';
	WAIT FOR 1010 ps;
	clk_time <= '0';
	WAIT FOR 882 ps;
	clk_time <= '1';
	WAIT FOR 2933 ps;
	FOR i IN 1 TO 2
	LOOP
		clk_time <= '0';
		WAIT FOR 3733 ps;
		clk_time <= '1';
		WAIT FOR 2933 ps;
	END LOOP;
	clk_time <= '0';
	WAIT FOR 7294 ps;
	clk_time <= '1';
	WAIT FOR 8200 ps;
	clk_time <= '0';
	WAIT FOR 7359 ps;
	clk_time <= '1';
	WAIT FOR 466 ps;
	clk_time <= '0';
	WAIT FOR 6300 ps;
	clk_time <= '1';
	WAIT FOR 3234 ps;
	clk_time <= '0';
	WAIT FOR 344 ps;
	clk_time <= '1';
	WAIT FOR 3666 ps;
	FOR i IN 1 TO 2
	LOOP
		clk_time <= '0';
		WAIT FOR 3000 ps;
		clk_time <= '1';
		WAIT FOR 3666 ps;
	END LOOP;
	clk_time <= '0';
	WAIT FOR 2658 ps;
	clk_time <= '1';
	WAIT FOR 1796 ps;
	clk_time <= '0';
	WAIT FOR 2500 ps;
	clk_time <= '1';
	WAIT FOR 2500 ps;
	clk_time <= '0';
	WAIT FOR 2500 ps;
	clk_time <= '1';
	WAIT FOR 2546 ps;
	clk_time <= '0';
	WAIT FOR 5700 ps;
	clk_time <= '1';
	WAIT FOR 4300 ps;
	clk_time <= '0';
	WAIT FOR 5700 ps;
	clk_time <= '1';
	WAIT FOR 2458 ps;
	clk_time <= '0';
	WAIT FOR 1252 ps;
	clk_time <= '1';
	WAIT FOR 4700 ps;
	clk_time <= '0';
	WAIT FOR 5300 ps;
	clk_time <= '1';
	WAIT FOR 4700 ps;
	clk_time <= '0';
	WAIT FOR 4823 ps;
	clk_time <= '1';
	WAIT FOR 2850 ps;
	clk_time <= '0';
	WAIT FOR 2150 ps;
	clk_time <= '1';
	WAIT FOR 2850 ps;
	clk_time <= '0';
	WAIT FOR 1818 ps;
	clk_time <= '1';
	WAIT FOR 2850 ps;
	clk_time <= '0';
	WAIT FOR 2150 ps;
	clk_time <= '1';
	WAIT FOR 2850 ps;
	clk_time <= '0';
	WAIT FOR 1707 ps;
	clk_time <= '1';
	WAIT FOR 1106 ps;
	clk_time <= '0';
	WAIT FOR 3400 ps;
	clk_time <= '1';
	WAIT FOR 1600 ps;
	clk_time <= '0';
	WAIT FOR 3400 ps;
	clk_time <= '1';
	WAIT FOR 4578 ps;
	clk_time <= '0';
	WAIT FOR 4900 ps;
	clk_time <= '1';
	WAIT FOR 5100 ps;
	clk_time <= '0';
	WAIT FOR 4900 ps;
	clk_time <= '1';
	WAIT FOR 5344 ps;
	clk_time <= '0';
	WAIT FOR 11200 ps;
	clk_time <= '1';
	WAIT FOR 4472 ps;
	clk_time <= '0';
	WAIT FOR 154 ps;
	clk_time <= '1';
	WAIT FOR 1633 ps;
	FOR i IN 1 TO 2
	LOOP
		clk_time <= '0';
		WAIT FOR 1700 ps;
		clk_time <= '1';
		WAIT FOR 1633 ps;
	END LOOP;
	clk_time <= '0';
	WAIT FOR 1547 ps;
	clk_time <= '1';
	WAIT FOR 1549 ps;
	clk_time <= '0';
	WAIT FOR 6400 ps;
	clk_time <= '1';
	WAIT FOR 2051 ps;
	clk_time <= '0';
	WAIT FOR 984 ps;
	clk_time <= '1';
	WAIT FOR 1266 ps;
	FOR i IN 1 TO 2
	LOOP
		clk_time <= '0';
		WAIT FOR 2067 ps;
		clk_time <= '1';
		WAIT FOR 1266 ps;
	END LOOP;
	clk_time <= '0';
	WAIT FOR 1084 ps;
	clk_time <= '1';
	WAIT FOR 4260 ps;
	clk_time <= '0';
	WAIT FOR 5200 ps;
	clk_time <= '1';
	WAIT FOR 4800 ps;
	clk_time <= '0';
	WAIT FOR 5200 ps;
	clk_time <= '1';
	WAIT FOR 540 ps;
	clk_time <= '0';
	WAIT FOR 2407 ps;
	clk_time <= '1';
	WAIT FOR 4500 ps;
	clk_time <= '0';
	WAIT FOR 5500 ps;
	clk_time <= '1';
	WAIT FOR 4500 ps;
	clk_time <= '0';
	WAIT FOR 3093 ps;
	clk_time <= '1';
	WAIT FOR 1936 ps;
	clk_time <= '0';
	WAIT FOR 2150 ps;
	clk_time <= '1';
	WAIT FOR 2850 ps;
	clk_time <= '0';
	WAIT FOR 2150 ps;
	clk_time <= '1';
	WAIT FOR 4339 ps;
	clk_time <= '0';
	WAIT FOR 6300 ps;
	clk_time <= '1';
	WAIT FOR 3700 ps;
	clk_time <= '0';
	WAIT FOR 6300 ps;
	clk_time <= '1';
	WAIT FOR 275 ps;
	clk_time <= '0';
	WAIT FOR 739 ps;
	clk_time <= '1';
	WAIT FOR 2333 ps;
	FOR i IN 1 TO 2
	LOOP
		clk_time <= '0';
		WAIT FOR 4333 ps;
		clk_time <= '1';
		WAIT FOR 2333 ps;
	END LOOP;
	clk_time <= '0';
	WAIT FOR 3596 ps;
	clk_time <= '1';
	WAIT FOR 1603 ps;
	clk_time <= '0';
	WAIT FOR 3300 ps;
	clk_time <= '1';
	WAIT FOR 1700 ps;
	clk_time <= '0';
	WAIT FOR 3300 ps;
	clk_time <= '1';
	WAIT FOR 957 ps;
	clk_time <= '0';
	WAIT FOR 2200 ps;
	clk_time <= '1';
	WAIT FOR 1133 ps;
	clk_time <= '0';
	WAIT FOR 2200 ps;
	clk_time <= '1';
	WAIT FOR 1133 ps;
	clk_time <= '0';
	WAIT FOR 2200 ps;
	clk_time <= '1';
	WAIT FOR 274 ps;
	clk_time <= '0';
	WAIT FOR 1058 ps;
	clk_time <= '1';
	WAIT FOR 2250 ps;
	clk_time <= '0';
	WAIT FOR 2750 ps;
	clk_time <= '1';
	WAIT FOR 2250 ps;
	clk_time <= '0';
	WAIT FOR 1692 ps;
	clk_time <= '1';
	WAIT FOR 1883 ps;
	clk_time <= '0';
	WAIT FOR 6100 ps;
	clk_time <= '1';
	WAIT FOR 3900 ps;
	clk_time <= '0';
	WAIT FOR 6100 ps;
	clk_time <= '1';
	WAIT FOR 3539 ps;
	clk_time <= '0';
	WAIT FOR 3100 ps;
	clk_time <= '1';
	WAIT FOR 1900 ps;
	clk_time <= '0';
	WAIT FOR 3100 ps;
	clk_time <= '1';
	WAIT FOR 378 ps;
	clk_time <= '0';
	WAIT FOR 3068 ps;
	clk_time <= '1';
	WAIT FOR 3600 ps;
	clk_time <= '0';
	WAIT FOR 4030 ps;
	clk_time <= '1';
	WAIT FOR 1750 ps;
	clk_time <= '0';
	WAIT FOR 3250 ps;
	clk_time <= '1';
	WAIT FOR 1750 ps;
	clk_time <= '0';
	WAIT FOR 4035 ps;
	clk_time <= '1';
	WAIT FOR 4500 ps;
	clk_time <= '0';
	WAIT FOR 7510 ps;
	clk_time <= '1';
	WAIT FOR 4200 ps;
	clk_time <= '0';
	WAIT FOR 2307 ps;
	clk_time <= '1';
	WAIT FOR 1278 ps;
	clk_time <= '0';
	WAIT FOR 4000 ps;
	clk_time <= '1';
	WAIT FOR 6000 ps;
	clk_time <= '0';
	WAIT FOR 4000 ps;
	clk_time <= '1';
	WAIT FOR 7053 ps;
	clk_time <= '0';
	WAIT FOR 5900 ps;
	clk_time <= '1';
	WAIT FOR 4100 ps;
	clk_time <= '0';
	WAIT FOR 5900 ps;
	clk_time <= '1';
	WAIT FOR 3166 ps;
	clk_time <= '0';
	WAIT FOR 6800 ps;
	clk_time <= '1';
	WAIT FOR 3200 ps;
	clk_time <= '0';
	WAIT FOR 6800 ps;
	clk_time <= '1';
	WAIT FOR 2708 ps;
	clk_time <= '0';
	WAIT FOR 4133 ps;
	clk_time <= '1';
	WAIT FOR 2533 ps;
	clk_time <= '0';
	WAIT FOR 4133 ps;
	clk_time <= '1';
	WAIT FOR 2533 ps;
	clk_time <= '0';
	WAIT FOR 4133 ps;
	clk_time <= '1';
	WAIT FOR 1630 ps;
	clk_time <= '0';
	WAIT FOR 494 ps;
	clk_time <= '1';
	WAIT FOR 1833 ps;
	FOR i IN 1 TO 2
	LOOP
		clk_time <= '0';
		WAIT FOR 1500 ps;
		clk_time <= '1';
		WAIT FOR 1833 ps;
	END LOOP;
	clk_time <= '0';
	WAIT FOR 1465 ps;
	clk_time <= '1';
	WAIT FOR 7600 ps;
	clk_time <= '0';
	WAIT FOR 12226 ps;
	clk_time <= '1';
	WAIT FOR 2350 ps;
	clk_time <= '0';
	WAIT FOR 2650 ps;
	clk_time <= '1';
	WAIT FOR 2350 ps;
	clk_time <= '0';
	WAIT FOR 2366 ps;
	clk_time <= '1';
	WAIT FOR 1652 ps;
	clk_time <= '0';
	WAIT FOR 2800 ps;
	clk_time <= '1';
	WAIT FOR 2200 ps;
	clk_time <= '0';
	WAIT FOR 2800 ps;
	clk_time <= '1';
	WAIT FOR 548 ps;
	clk_time <= '0';
	WAIT FOR 3885 ps;
	clk_time <= '1';
	WAIT FOR 7000 ps;
	clk_time <= '0';
	WAIT FOR 9115 ps;
	clk_time <= '1';
	WAIT FOR 1057 ps;
	clk_time <= '0';
	WAIT FOR 2950 ps;
	clk_time <= '1';
	WAIT FOR 2050 ps;
	clk_time <= '0';
	WAIT FOR 2950 ps;
	clk_time <= '1';
	WAIT FOR 993 ps;
	clk_time <= '0';
	WAIT FOR 3635 ps;
	clk_time <= '1';
	WAIT FOR 3400 ps;
	clk_time <= '0';
	WAIT FOR 6600 ps;
	clk_time <= '1';
	WAIT FOR 3400 ps;
	clk_time <= '0';
	WAIT FOR 4338 ps;
	clk_time <= '1';
	WAIT FOR 3700 ps;
	clk_time <= '0';
	WAIT FOR 4927 ps;
	clk_time <= '1';
	WAIT FOR 828 ps;
	FOR i IN 1 TO 2
	LOOP
		clk_time <= '0';
		WAIT FOR 2267 ps;
		clk_time <= '1';
		WAIT FOR 1066 ps;
	END LOOP;
	clk_time <= '0';
	WAIT FOR 2267 ps;
	clk_time <= '1';
	WAIT FOR 239 ps;
	clk_time <= '0';
	WAIT FOR 636 ps;
	clk_time <= '1';
	WAIT FOR 1166 ps;
	FOR i IN 1 TO 2
	LOOP
		clk_time <= '0';
		WAIT FOR 2167 ps;
		clk_time <= '1';
		WAIT FOR 1166 ps;
	END LOOP;
	clk_time <= '0';
WAIT;
END PROCESS t_prcs_clk_time;

-- start
t_prcs_start: PROCESS
BEGIN
	start <= '0';
	WAIT FOR 70000 ps;
	start <= '1';
	WAIT FOR 910000 ps;
	start <= '0';
WAIT;
END PROCESS t_prcs_start;

-- stop
t_prcs_stop: PROCESS
BEGIN
	stop <= '1';
	WAIT FOR 30000 ps;
	stop <= '0';
	WAIT FOR 720000 ps;
	stop <= '1';
	WAIT FOR 40000 ps;
	stop <= '0';
WAIT;
END PROCESS t_prcs_stop;

-- pause
t_prcs_pause: PROCESS
BEGIN
	pause <= '0';
	WAIT FOR 430000 ps;
	pause <= '1';
	WAIT FOR 160000 ps;
	pause <= '0';
WAIT;
END PROCESS t_prcs_pause;
END taxi_arch;
