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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "12/27/2019 14:12:02"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	taxi IS
    PORT (
	dis_decade : OUT std_logic_vector(6 DOWNTO 0);
	clk_time : IN std_logic;
	clk_distance : IN std_logic;
	start : IN std_logic;
	stop : IN std_logic;
	pause : IN std_logic;
	dis_hundred : OUT std_logic_vector(6 DOWNTO 0);
	dis_mil : OUT std_logic_vector(6 DOWNTO 0);
	dis_unit : OUT std_logic_vector(6 DOWNTO 0);
	price_decade : OUT std_logic_vector(6 DOWNTO 0);
	price_hundred : OUT std_logic_vector(6 DOWNTO 0);
	price_mil : OUT std_logic_vector(6 DOWNTO 0);
	price_unit : OUT std_logic_vector(6 DOWNTO 0)
	);
END taxi;

-- Design Ports Information
-- dis_decade[6]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dis_decade[5]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dis_decade[4]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dis_decade[3]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dis_decade[2]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dis_decade[1]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dis_decade[0]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dis_hundred[6]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dis_hundred[5]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dis_hundred[4]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dis_hundred[3]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dis_hundred[2]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dis_hundred[1]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dis_hundred[0]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dis_mil[6]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dis_mil[5]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dis_mil[4]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dis_mil[3]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dis_mil[2]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dis_mil[1]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dis_mil[0]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dis_unit[6]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dis_unit[5]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dis_unit[4]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dis_unit[3]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dis_unit[2]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dis_unit[1]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dis_unit[0]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price_decade[6]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price_decade[5]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price_decade[4]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price_decade[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price_decade[2]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price_decade[1]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price_decade[0]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price_hundred[6]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price_hundred[5]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price_hundred[4]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price_hundred[3]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price_hundred[2]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price_hundred[1]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price_hundred[0]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price_mil[6]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price_mil[5]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price_mil[4]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price_mil[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price_mil[2]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price_mil[1]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price_mil[0]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price_unit[6]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price_unit[5]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price_unit[4]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price_unit[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price_unit[2]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price_unit[1]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- price_unit[0]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_distance	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stop	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pause	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_time	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF taxi IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_dis_decade : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_clk_time : std_logic;
SIGNAL ww_clk_distance : std_logic;
SIGNAL ww_start : std_logic;
SIGNAL ww_stop : std_logic;
SIGNAL ww_pause : std_logic;
SIGNAL ww_dis_hundred : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_dis_mil : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_dis_unit : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_price_decade : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_price_hundred : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_price_mil : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_price_unit : std_logic_vector(6 DOWNTO 0);
SIGNAL \clk_time~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst12|x~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dis_decade[6]~output_o\ : std_logic;
SIGNAL \dis_decade[5]~output_o\ : std_logic;
SIGNAL \dis_decade[4]~output_o\ : std_logic;
SIGNAL \dis_decade[3]~output_o\ : std_logic;
SIGNAL \dis_decade[2]~output_o\ : std_logic;
SIGNAL \dis_decade[1]~output_o\ : std_logic;
SIGNAL \dis_decade[0]~output_o\ : std_logic;
SIGNAL \dis_hundred[6]~output_o\ : std_logic;
SIGNAL \dis_hundred[5]~output_o\ : std_logic;
SIGNAL \dis_hundred[4]~output_o\ : std_logic;
SIGNAL \dis_hundred[3]~output_o\ : std_logic;
SIGNAL \dis_hundred[2]~output_o\ : std_logic;
SIGNAL \dis_hundred[1]~output_o\ : std_logic;
SIGNAL \dis_hundred[0]~output_o\ : std_logic;
SIGNAL \dis_mil[6]~output_o\ : std_logic;
SIGNAL \dis_mil[5]~output_o\ : std_logic;
SIGNAL \dis_mil[4]~output_o\ : std_logic;
SIGNAL \dis_mil[3]~output_o\ : std_logic;
SIGNAL \dis_mil[2]~output_o\ : std_logic;
SIGNAL \dis_mil[1]~output_o\ : std_logic;
SIGNAL \dis_mil[0]~output_o\ : std_logic;
SIGNAL \dis_unit[6]~output_o\ : std_logic;
SIGNAL \dis_unit[5]~output_o\ : std_logic;
SIGNAL \dis_unit[4]~output_o\ : std_logic;
SIGNAL \dis_unit[3]~output_o\ : std_logic;
SIGNAL \dis_unit[2]~output_o\ : std_logic;
SIGNAL \dis_unit[1]~output_o\ : std_logic;
SIGNAL \dis_unit[0]~output_o\ : std_logic;
SIGNAL \price_decade[6]~output_o\ : std_logic;
SIGNAL \price_decade[5]~output_o\ : std_logic;
SIGNAL \price_decade[4]~output_o\ : std_logic;
SIGNAL \price_decade[3]~output_o\ : std_logic;
SIGNAL \price_decade[2]~output_o\ : std_logic;
SIGNAL \price_decade[1]~output_o\ : std_logic;
SIGNAL \price_decade[0]~output_o\ : std_logic;
SIGNAL \price_hundred[6]~output_o\ : std_logic;
SIGNAL \price_hundred[5]~output_o\ : std_logic;
SIGNAL \price_hundred[4]~output_o\ : std_logic;
SIGNAL \price_hundred[3]~output_o\ : std_logic;
SIGNAL \price_hundred[2]~output_o\ : std_logic;
SIGNAL \price_hundred[1]~output_o\ : std_logic;
SIGNAL \price_hundred[0]~output_o\ : std_logic;
SIGNAL \price_mil[6]~output_o\ : std_logic;
SIGNAL \price_mil[5]~output_o\ : std_logic;
SIGNAL \price_mil[4]~output_o\ : std_logic;
SIGNAL \price_mil[3]~output_o\ : std_logic;
SIGNAL \price_mil[2]~output_o\ : std_logic;
SIGNAL \price_mil[1]~output_o\ : std_logic;
SIGNAL \price_mil[0]~output_o\ : std_logic;
SIGNAL \price_unit[6]~output_o\ : std_logic;
SIGNAL \price_unit[5]~output_o\ : std_logic;
SIGNAL \price_unit[4]~output_o\ : std_logic;
SIGNAL \price_unit[3]~output_o\ : std_logic;
SIGNAL \price_unit[2]~output_o\ : std_logic;
SIGNAL \price_unit[1]~output_o\ : std_logic;
SIGNAL \price_unit[0]~output_o\ : std_logic;
SIGNAL \clk_time~input_o\ : std_logic;
SIGNAL \clk_time~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst12|count1[0]~27_combout\ : std_logic;
SIGNAL \inst12|count1[0]~28\ : std_logic;
SIGNAL \inst12|count1[1]~29_combout\ : std_logic;
SIGNAL \inst12|count1[1]~30\ : std_logic;
SIGNAL \inst12|count1[2]~31_combout\ : std_logic;
SIGNAL \inst12|count1[2]~32\ : std_logic;
SIGNAL \inst12|count1[3]~33_combout\ : std_logic;
SIGNAL \inst12|count1[3]~34\ : std_logic;
SIGNAL \inst12|count1[4]~35_combout\ : std_logic;
SIGNAL \inst12|count1[4]~36\ : std_logic;
SIGNAL \inst12|count1[5]~37_combout\ : std_logic;
SIGNAL \inst12|count1[5]~38\ : std_logic;
SIGNAL \inst12|count1[6]~39_combout\ : std_logic;
SIGNAL \inst12|count1[6]~40\ : std_logic;
SIGNAL \inst12|count1[7]~41_combout\ : std_logic;
SIGNAL \inst12|count1[7]~42\ : std_logic;
SIGNAL \inst12|count1[8]~43_combout\ : std_logic;
SIGNAL \inst12|count1[8]~44\ : std_logic;
SIGNAL \inst12|count1[9]~45_combout\ : std_logic;
SIGNAL \inst12|count1[9]~46\ : std_logic;
SIGNAL \inst12|count1[10]~47_combout\ : std_logic;
SIGNAL \inst12|count1[10]~48\ : std_logic;
SIGNAL \inst12|count1[11]~49_combout\ : std_logic;
SIGNAL \inst12|count1[11]~50\ : std_logic;
SIGNAL \inst12|count1[12]~51_combout\ : std_logic;
SIGNAL \inst12|count1[12]~52\ : std_logic;
SIGNAL \inst12|count1[13]~53_combout\ : std_logic;
SIGNAL \inst12|count1[13]~54\ : std_logic;
SIGNAL \inst12|count1[14]~55_combout\ : std_logic;
SIGNAL \inst12|count1[14]~56\ : std_logic;
SIGNAL \inst12|count1[15]~57_combout\ : std_logic;
SIGNAL \inst12|count1[15]~58\ : std_logic;
SIGNAL \inst12|count1[16]~59_combout\ : std_logic;
SIGNAL \inst12|count1[16]~60\ : std_logic;
SIGNAL \inst12|count1[17]~61_combout\ : std_logic;
SIGNAL \inst12|count1[17]~62\ : std_logic;
SIGNAL \inst12|count1[18]~63_combout\ : std_logic;
SIGNAL \inst12|count1[18]~64\ : std_logic;
SIGNAL \inst12|count1[19]~65_combout\ : std_logic;
SIGNAL \inst12|count1[19]~66\ : std_logic;
SIGNAL \inst12|count1[20]~67_combout\ : std_logic;
SIGNAL \inst12|count1[20]~68\ : std_logic;
SIGNAL \inst12|count1[21]~69_combout\ : std_logic;
SIGNAL \inst12|count1[21]~70\ : std_logic;
SIGNAL \inst12|count1[22]~71_combout\ : std_logic;
SIGNAL \inst12|count1[22]~72\ : std_logic;
SIGNAL \inst12|count1[23]~73_combout\ : std_logic;
SIGNAL \inst12|count1[23]~74\ : std_logic;
SIGNAL \inst12|count1[24]~75_combout\ : std_logic;
SIGNAL \inst12|count1[24]~76\ : std_logic;
SIGNAL \inst12|count1[25]~77_combout\ : std_logic;
SIGNAL \inst12|count1[25]~78\ : std_logic;
SIGNAL \inst12|count1[26]~79_combout\ : std_logic;
SIGNAL \inst12|LessThan0~4_combout\ : std_logic;
SIGNAL \inst12|LessThan0~1_combout\ : std_logic;
SIGNAL \inst12|LessThan0~0_combout\ : std_logic;
SIGNAL \inst12|LessThan0~2_combout\ : std_logic;
SIGNAL \inst12|LessThan0~3_combout\ : std_logic;
SIGNAL \inst12|LessThan0~5_combout\ : std_logic;
SIGNAL \inst12|LessThan0~6_combout\ : std_logic;
SIGNAL \inst12|x~feeder_combout\ : std_logic;
SIGNAL \inst12|x~q\ : std_logic;
SIGNAL \inst12|x~clkctrl_outclk\ : std_logic;
SIGNAL \clk_distance~input_o\ : std_logic;
SIGNAL \inst|miles[0]~15_combout\ : std_logic;
SIGNAL \start~input_o\ : std_logic;
SIGNAL \stop~input_o\ : std_logic;
SIGNAL \inst|miles[5]~31_combout\ : std_logic;
SIGNAL \pause~input_o\ : std_logic;
SIGNAL \inst|count[0]~15_combout\ : std_logic;
SIGNAL \inst|count[3]~42_combout\ : std_logic;
SIGNAL \inst|count[3]~21_combout\ : std_logic;
SIGNAL \inst|count[0]~16\ : std_logic;
SIGNAL \inst|count[1]~17_combout\ : std_logic;
SIGNAL \inst|count[1]~18\ : std_logic;
SIGNAL \inst|count[2]~19_combout\ : std_logic;
SIGNAL \inst|count[2]~20\ : std_logic;
SIGNAL \inst|count[3]~22_combout\ : std_logic;
SIGNAL \inst|count[3]~23\ : std_logic;
SIGNAL \inst|count[4]~24_combout\ : std_logic;
SIGNAL \inst|count[4]~25\ : std_logic;
SIGNAL \inst|count[5]~26_combout\ : std_logic;
SIGNAL \inst|count[5]~27\ : std_logic;
SIGNAL \inst|count[6]~28_combout\ : std_logic;
SIGNAL \inst|count[6]~29\ : std_logic;
SIGNAL \inst|count[7]~30_combout\ : std_logic;
SIGNAL \inst|count[7]~31\ : std_logic;
SIGNAL \inst|count[8]~32_combout\ : std_logic;
SIGNAL \inst|count[8]~33\ : std_logic;
SIGNAL \inst|count[9]~34_combout\ : std_logic;
SIGNAL \inst|count[9]~35\ : std_logic;
SIGNAL \inst|count[10]~36_combout\ : std_logic;
SIGNAL \inst|count[10]~37\ : std_logic;
SIGNAL \inst|count[11]~38_combout\ : std_logic;
SIGNAL \inst|LessThan0~2_combout\ : std_logic;
SIGNAL \inst|count[11]~39\ : std_logic;
SIGNAL \inst|count[12]~40_combout\ : std_logic;
SIGNAL \inst|LessThan0~1_combout\ : std_logic;
SIGNAL \inst|LessThan0~0_combout\ : std_logic;
SIGNAL \inst|LessThan0~3_combout\ : std_logic;
SIGNAL \inst|miles[5]~42_combout\ : std_logic;
SIGNAL \inst|miles[0]~16\ : std_logic;
SIGNAL \inst|miles[1]~17_combout\ : std_logic;
SIGNAL \inst|miles[1]~18\ : std_logic;
SIGNAL \inst|miles[2]~19_combout\ : std_logic;
SIGNAL \inst|miles[2]~20\ : std_logic;
SIGNAL \inst|miles[3]~21_combout\ : std_logic;
SIGNAL \inst|miles[3]~22\ : std_logic;
SIGNAL \inst|miles[4]~23_combout\ : std_logic;
SIGNAL \inst|miles[4]~24\ : std_logic;
SIGNAL \inst|miles[5]~25_combout\ : std_logic;
SIGNAL \inst|miles[5]~26\ : std_logic;
SIGNAL \inst|miles[6]~27_combout\ : std_logic;
SIGNAL \inst|miles[6]~28\ : std_logic;
SIGNAL \inst|miles[7]~29_combout\ : std_logic;
SIGNAL \inst|miles[7]~30\ : std_logic;
SIGNAL \inst|miles[8]~32_combout\ : std_logic;
SIGNAL \inst|miles[8]~33\ : std_logic;
SIGNAL \inst|miles[9]~34_combout\ : std_logic;
SIGNAL \inst|miles[9]~35\ : std_logic;
SIGNAL \inst|miles[10]~36_combout\ : std_logic;
SIGNAL \inst|miles[10]~37\ : std_logic;
SIGNAL \inst|miles[11]~38_combout\ : std_logic;
SIGNAL \inst|miles[11]~39\ : std_logic;
SIGNAL \inst|miles[12]~40_combout\ : std_logic;
SIGNAL \inst21|tmp[6]~feeder_combout\ : std_logic;
SIGNAL \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~1_cout\ : std_logic;
SIGNAL \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~3\ : std_logic;
SIGNAL \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~5\ : std_logic;
SIGNAL \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~7\ : std_logic;
SIGNAL \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~9\ : std_logic;
SIGNAL \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~11\ : std_logic;
SIGNAL \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~13\ : std_logic;
SIGNAL \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~14_combout\ : std_logic;
SIGNAL \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~8_combout\ : std_logic;
SIGNAL \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[106]~3_combout\ : std_logic;
SIGNAL \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~6_combout\ : std_logic;
SIGNAL \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[105]~4_combout\ : std_logic;
SIGNAL \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~4_combout\ : std_logic;
SIGNAL \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[104]~5_combout\ : std_logic;
SIGNAL \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~2_combout\ : std_logic;
SIGNAL \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[103]~0_combout\ : std_logic;
SIGNAL \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~1_cout\ : std_logic;
SIGNAL \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~3\ : std_logic;
SIGNAL \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~5\ : std_logic;
SIGNAL \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~7\ : std_logic;
SIGNAL \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~9\ : std_logic;
SIGNAL \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~10_combout\ : std_logic;
SIGNAL \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~12_combout\ : std_logic;
SIGNAL \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[108]~1_combout\ : std_logic;
SIGNAL \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~10_combout\ : std_logic;
SIGNAL \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[107]~2_combout\ : std_logic;
SIGNAL \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~11\ : std_logic;
SIGNAL \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~13\ : std_logic;
SIGNAL \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~15_cout\ : std_logic;
SIGNAL \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16_combout\ : std_logic;
SIGNAL \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[118]~9_combout\ : std_logic;
SIGNAL \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~8_combout\ : std_logic;
SIGNAL \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[117]~10_combout\ : std_logic;
SIGNAL \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~6_combout\ : std_logic;
SIGNAL \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[116]~11_combout\ : std_logic;
SIGNAL \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~4_combout\ : std_logic;
SIGNAL \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[115]~6_combout\ : std_logic;
SIGNAL \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~2_combout\ : std_logic;
SIGNAL \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[114]~7_combout\ : std_logic;
SIGNAL \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~1_cout\ : std_logic;
SIGNAL \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~3\ : std_logic;
SIGNAL \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~5\ : std_logic;
SIGNAL \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~7\ : std_logic;
SIGNAL \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~9\ : std_logic;
SIGNAL \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~11\ : std_logic;
SIGNAL \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~12_combout\ : std_logic;
SIGNAL \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~12_combout\ : std_logic;
SIGNAL \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[119]~8_combout\ : std_logic;
SIGNAL \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~13\ : std_logic;
SIGNAL \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~15_cout\ : std_logic;
SIGNAL \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\ : std_logic;
SIGNAL \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[130]~15_combout\ : std_logic;
SIGNAL \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~10_combout\ : std_logic;
SIGNAL \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[129]~16_combout\ : std_logic;
SIGNAL \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~8_combout\ : std_logic;
SIGNAL \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[128]~17_combout\ : std_logic;
SIGNAL \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~6_combout\ : std_logic;
SIGNAL \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[127]~12_combout\ : std_logic;
SIGNAL \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~4_combout\ : std_logic;
SIGNAL \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[126]~13_combout\ : std_logic;
SIGNAL \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~2_combout\ : std_logic;
SIGNAL \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[125]~14_combout\ : std_logic;
SIGNAL \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~1_cout\ : std_logic;
SIGNAL \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~3\ : std_logic;
SIGNAL \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~5\ : std_logic;
SIGNAL \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~7\ : std_logic;
SIGNAL \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~9\ : std_logic;
SIGNAL \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~11\ : std_logic;
SIGNAL \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~13\ : std_logic;
SIGNAL \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~15_cout\ : std_logic;
SIGNAL \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~16_combout\ : std_logic;
SIGNAL \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~10_combout\ : std_logic;
SIGNAL \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[140]~22_combout\ : std_logic;
SIGNAL \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~8_combout\ : std_logic;
SIGNAL \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[139]~18_combout\ : std_logic;
SIGNAL \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~6_combout\ : std_logic;
SIGNAL \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[138]~19_combout\ : std_logic;
SIGNAL \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~4_combout\ : std_logic;
SIGNAL \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[137]~20_combout\ : std_logic;
SIGNAL \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~1_cout\ : std_logic;
SIGNAL \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~3\ : std_logic;
SIGNAL \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~5\ : std_logic;
SIGNAL \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~6_combout\ : std_logic;
SIGNAL \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~12_combout\ : std_logic;
SIGNAL \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[141]~21_combout\ : std_logic;
SIGNAL \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~7\ : std_logic;
SIGNAL \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~9\ : std_logic;
SIGNAL \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~10_combout\ : std_logic;
SIGNAL \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[53]~3_combout\ : std_logic;
SIGNAL \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~4_combout\ : std_logic;
SIGNAL \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[52]~0_combout\ : std_logic;
SIGNAL \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~2_combout\ : std_logic;
SIGNAL \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[51]~1_combout\ : std_logic;
SIGNAL \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~2_combout\ : std_logic;
SIGNAL \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[136]~23_combout\ : std_logic;
SIGNAL \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~1_cout\ : std_logic;
SIGNAL \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~3\ : std_logic;
SIGNAL \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~5\ : std_logic;
SIGNAL \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~7\ : std_logic;
SIGNAL \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~8_combout\ : std_logic;
SIGNAL \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~8_combout\ : std_logic;
SIGNAL \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[54]~2_combout\ : std_logic;
SIGNAL \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~9\ : std_logic;
SIGNAL \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~11_cout\ : std_logic;
SIGNAL \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~12_combout\ : std_logic;
SIGNAL \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[62]~7_combout\ : std_logic;
SIGNAL \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~6_combout\ : std_logic;
SIGNAL \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[61]~4_combout\ : std_logic;
SIGNAL \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~4_combout\ : std_logic;
SIGNAL \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[60]~5_combout\ : std_logic;
SIGNAL \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~2_combout\ : std_logic;
SIGNAL \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[59]~6_combout\ : std_logic;
SIGNAL \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~1_cout\ : std_logic;
SIGNAL \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~3\ : std_logic;
SIGNAL \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~5\ : std_logic;
SIGNAL \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~7\ : std_logic;
SIGNAL \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~9\ : std_logic;
SIGNAL \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~11_cout\ : std_logic;
SIGNAL \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~12_combout\ : std_logic;
SIGNAL \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~8_combout\ : std_logic;
SIGNAL \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[70]~8_combout\ : std_logic;
SIGNAL \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~6_combout\ : std_logic;
SIGNAL \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[69]~9_combout\ : std_logic;
SIGNAL \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~4_combout\ : std_logic;
SIGNAL \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[68]~10_combout\ : std_logic;
SIGNAL \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~2_combout\ : std_logic;
SIGNAL \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[67]~11_combout\ : std_logic;
SIGNAL \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[135]~24_combout\ : std_logic;
SIGNAL \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~1_cout\ : std_logic;
SIGNAL \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~3\ : std_logic;
SIGNAL \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~5\ : std_logic;
SIGNAL \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~7\ : std_logic;
SIGNAL \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~9\ : std_logic;
SIGNAL \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~11_cout\ : std_logic;
SIGNAL \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~12_combout\ : std_logic;
SIGNAL \inst27|WideOr0~combout\ : std_logic;
SIGNAL \inst27|WideOr1~2_combout\ : std_logic;
SIGNAL \inst27|WideOr2~combout\ : std_logic;
SIGNAL \inst27|WideOr3~0_combout\ : std_logic;
SIGNAL \inst27|WideOr4~combout\ : std_logic;
SIGNAL \inst27|WideOr5~combout\ : std_logic;
SIGNAL \inst25|WideOr0~combout\ : std_logic;
SIGNAL \inst25|WideOr1~2_combout\ : std_logic;
SIGNAL \inst25|WideOr2~combout\ : std_logic;
SIGNAL \inst25|WideOr3~0_combout\ : std_logic;
SIGNAL \inst25|WideOr4~combout\ : std_logic;
SIGNAL \inst25|WideOr5~combout\ : std_logic;
SIGNAL \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[74]~12_combout\ : std_logic;
SIGNAL \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~8_combout\ : std_logic;
SIGNAL \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[78]~13_combout\ : std_logic;
SIGNAL \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~6_combout\ : std_logic;
SIGNAL \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[77]~14_combout\ : std_logic;
SIGNAL \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~4_combout\ : std_logic;
SIGNAL \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[76]~15_combout\ : std_logic;
SIGNAL \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~2_combout\ : std_logic;
SIGNAL \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[75]~16_combout\ : std_logic;
SIGNAL \inst20|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[22]~0_combout\ : std_logic;
SIGNAL \inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~0_combout\ : std_logic;
SIGNAL \inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~0_combout\ : std_logic;
SIGNAL \inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~1_combout\ : std_logic;
SIGNAL \inst20|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[26]~3_combout\ : std_logic;
SIGNAL \inst21|tmp[1]~feeder_combout\ : std_logic;
SIGNAL \inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~2_combout\ : std_logic;
SIGNAL \inst20|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[27]~1_combout\ : std_logic;
SIGNAL \inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~2_combout\ : std_logic;
SIGNAL \inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~3_combout\ : std_logic;
SIGNAL \inst20|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[32]~4_combout\ : std_logic;
SIGNAL \inst20|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[31]~2_combout\ : std_logic;
SIGNAL \inst21|tmp[0]~feeder_combout\ : std_logic;
SIGNAL \inst20|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[33]~5_combout\ : std_logic;
SIGNAL \inst31|Mux0~0_combout\ : std_logic;
SIGNAL \inst31|Mux1~0_combout\ : std_logic;
SIGNAL \inst31|Mux2~0_combout\ : std_logic;
SIGNAL \inst31|Mux3~0_combout\ : std_logic;
SIGNAL \inst31|Mux4~0_combout\ : std_logic;
SIGNAL \inst31|Mux5~0_combout\ : std_logic;
SIGNAL \inst31|Mux6~0_combout\ : std_logic;
SIGNAL \inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~0_combout\ : std_logic;
SIGNAL \inst29|Mux0~0_combout\ : std_logic;
SIGNAL \inst29|Mux1~0_combout\ : std_logic;
SIGNAL \inst29|Mux2~0_combout\ : std_logic;
SIGNAL \inst29|Mux3~0_combout\ : std_logic;
SIGNAL \inst29|Mux4~0_combout\ : std_logic;
SIGNAL \inst29|Mux5~0_combout\ : std_logic;
SIGNAL \inst29|Mux6~0_combout\ : std_logic;
SIGNAL \inst|LessThan3~2_combout\ : std_logic;
SIGNAL \inst|LessThan3~4_combout\ : std_logic;
SIGNAL \inst|LessThan3~5_combout\ : std_logic;
SIGNAL \inst|LessThan3~6_combout\ : std_logic;
SIGNAL \inst|LessThan3~3_combout\ : std_logic;
SIGNAL \inst|count2~0_combout\ : std_logic;
SIGNAL \inst|count2~1_combout\ : std_logic;
SIGNAL \inst|count2~2_combout\ : std_logic;
SIGNAL \inst|count2~q\ : std_logic;
SIGNAL \inst|LessThan4~0_combout\ : std_logic;
SIGNAL \inst|process_0~0_combout\ : std_logic;
SIGNAL \inst|process_0~1_combout\ : std_logic;
SIGNAL \inst|Add3~0_combout\ : std_logic;
SIGNAL \inst|price~0_combout\ : std_logic;
SIGNAL \inst|price~1_combout\ : std_logic;
SIGNAL \inst|Add3~1\ : std_logic;
SIGNAL \inst|Add3~2_combout\ : std_logic;
SIGNAL \inst|Add2~0_combout\ : std_logic;
SIGNAL \inst|Add2~20_combout\ : std_logic;
SIGNAL \inst|Add3~3\ : std_logic;
SIGNAL \inst|Add3~4_combout\ : std_logic;
SIGNAL \inst|Add2~1\ : std_logic;
SIGNAL \inst|Add2~2_combout\ : std_logic;
SIGNAL \inst|Add2~19_combout\ : std_logic;
SIGNAL \inst|Add2~3\ : std_logic;
SIGNAL \inst|Add2~4_combout\ : std_logic;
SIGNAL \inst|Add3~5\ : std_logic;
SIGNAL \inst|Add3~6_combout\ : std_logic;
SIGNAL \inst|Add2~18_combout\ : std_logic;
SIGNAL \inst|Add2~5\ : std_logic;
SIGNAL \inst|Add2~6_combout\ : std_logic;
SIGNAL \inst|Add3~7\ : std_logic;
SIGNAL \inst|Add3~8_combout\ : std_logic;
SIGNAL \inst|Add2~17_combout\ : std_logic;
SIGNAL \inst|Add2~7\ : std_logic;
SIGNAL \inst|Add2~8_combout\ : std_logic;
SIGNAL \inst|Add3~9\ : std_logic;
SIGNAL \inst|Add3~10_combout\ : std_logic;
SIGNAL \inst|Add2~16_combout\ : std_logic;
SIGNAL \inst|Add2~9\ : std_logic;
SIGNAL \inst|Add2~10_combout\ : std_logic;
SIGNAL \inst|Add3~11\ : std_logic;
SIGNAL \inst|Add3~12_combout\ : std_logic;
SIGNAL \inst|Add2~15_combout\ : std_logic;
SIGNAL \inst|Add2~11\ : std_logic;
SIGNAL \inst|Add2~12_combout\ : std_logic;
SIGNAL \inst|Add3~13\ : std_logic;
SIGNAL \inst|Add3~14_combout\ : std_logic;
SIGNAL \inst|Add2~14_combout\ : std_logic;
SIGNAL \inst|Add3~15\ : std_logic;
SIGNAL \inst|Add3~16_combout\ : std_logic;
SIGNAL \inst|Add2~13\ : std_logic;
SIGNAL \inst|Add2~21_combout\ : std_logic;
SIGNAL \inst|Add2~35_combout\ : std_logic;
SIGNAL \inst|Add2~22\ : std_logic;
SIGNAL \inst|Add2~23_combout\ : std_logic;
SIGNAL \inst|Add3~17\ : std_logic;
SIGNAL \inst|Add3~18_combout\ : std_logic;
SIGNAL \inst|Add2~34_combout\ : std_logic;
SIGNAL \inst|Add2~24\ : std_logic;
SIGNAL \inst|Add2~25_combout\ : std_logic;
SIGNAL \inst|Add3~19\ : std_logic;
SIGNAL \inst|Add3~20_combout\ : std_logic;
SIGNAL \inst|Add2~33_combout\ : std_logic;
SIGNAL \inst|Add3~21\ : std_logic;
SIGNAL \inst|Add3~22_combout\ : std_logic;
SIGNAL \inst|Add2~26\ : std_logic;
SIGNAL \inst|Add2~27_combout\ : std_logic;
SIGNAL \inst|Add2~32_combout\ : std_logic;
SIGNAL \inst|Add2~28\ : std_logic;
SIGNAL \inst|Add2~29_combout\ : std_logic;
SIGNAL \inst|Add3~23\ : std_logic;
SIGNAL \inst|Add3~24_combout\ : std_logic;
SIGNAL \inst|Add2~31_combout\ : std_logic;
SIGNAL \inst1|price[0]~13_combout\ : std_logic;
SIGNAL \inst1|Add0~0_combout\ : std_logic;
SIGNAL \inst1|count~37_combout\ : std_logic;
SIGNAL \inst1|LessThan0~2_combout\ : std_logic;
SIGNAL \inst1|Add0~17\ : std_logic;
SIGNAL \inst1|Add0~18_combout\ : std_logic;
SIGNAL \inst1|count~33_combout\ : std_logic;
SIGNAL \inst1|Add0~19\ : std_logic;
SIGNAL \inst1|Add0~20_combout\ : std_logic;
SIGNAL \inst1|count~34_combout\ : std_logic;
SIGNAL \inst1|Add0~21\ : std_logic;
SIGNAL \inst1|Add0~22_combout\ : std_logic;
SIGNAL \inst1|count[11]~25_combout\ : std_logic;
SIGNAL \inst1|Add0~23\ : std_logic;
SIGNAL \inst1|Add0~24_combout\ : std_logic;
SIGNAL \inst1|count[12]~26_combout\ : std_logic;
SIGNAL \inst1|count[11]~28_combout\ : std_logic;
SIGNAL \inst1|LessThan0~0_combout\ : std_logic;
SIGNAL \inst1|count[11]~24_combout\ : std_logic;
SIGNAL \inst1|Add0~1\ : std_logic;
SIGNAL \inst1|Add0~2_combout\ : std_logic;
SIGNAL \inst1|count~38_combout\ : std_logic;
SIGNAL \inst1|Add0~3\ : std_logic;
SIGNAL \inst1|Add0~4_combout\ : std_logic;
SIGNAL \inst1|count~36_combout\ : std_logic;
SIGNAL \inst1|Add0~5\ : std_logic;
SIGNAL \inst1|Add0~6_combout\ : std_logic;
SIGNAL \inst1|count~35_combout\ : std_logic;
SIGNAL \inst1|Add0~7\ : std_logic;
SIGNAL \inst1|Add0~8_combout\ : std_logic;
SIGNAL \inst1|count~27_combout\ : std_logic;
SIGNAL \inst1|Add0~9\ : std_logic;
SIGNAL \inst1|Add0~10_combout\ : std_logic;
SIGNAL \inst1|count~29_combout\ : std_logic;
SIGNAL \inst1|Add0~11\ : std_logic;
SIGNAL \inst1|Add0~12_combout\ : std_logic;
SIGNAL \inst1|count~30_combout\ : std_logic;
SIGNAL \inst1|Add0~13\ : std_logic;
SIGNAL \inst1|Add0~14_combout\ : std_logic;
SIGNAL \inst1|count~31_combout\ : std_logic;
SIGNAL \inst1|Add0~15\ : std_logic;
SIGNAL \inst1|Add0~16_combout\ : std_logic;
SIGNAL \inst1|count~32_combout\ : std_logic;
SIGNAL \inst1|LessThan0~1_combout\ : std_logic;
SIGNAL \inst1|LessThan0~3_combout\ : std_logic;
SIGNAL \inst1|price[1]~29_combout\ : std_logic;
SIGNAL \inst1|price[1]~30_combout\ : std_logic;
SIGNAL \inst1|price[0]~14\ : std_logic;
SIGNAL \inst1|price[1]~15_combout\ : std_logic;
SIGNAL \inst1|price[1]~16\ : std_logic;
SIGNAL \inst1|price[2]~17_combout\ : std_logic;
SIGNAL \inst1|price[2]~18\ : std_logic;
SIGNAL \inst1|price[3]~19_combout\ : std_logic;
SIGNAL \inst1|price[3]~20\ : std_logic;
SIGNAL \inst1|price[4]~21_combout\ : std_logic;
SIGNAL \inst1|price[4]~22\ : std_logic;
SIGNAL \inst1|price[5]~23_combout\ : std_logic;
SIGNAL \inst1|price[5]~24\ : std_logic;
SIGNAL \inst1|price[6]~25_combout\ : std_logic;
SIGNAL \inst1|price[6]~26\ : std_logic;
SIGNAL \inst1|price[7]~27_combout\ : std_logic;
SIGNAL \inst1|price[7]~28\ : std_logic;
SIGNAL \inst1|price[8]~31_combout\ : std_logic;
SIGNAL \inst1|price[8]~32\ : std_logic;
SIGNAL \inst1|price[9]~33_combout\ : std_logic;
SIGNAL \inst1|price[9]~34\ : std_logic;
SIGNAL \inst1|price[10]~35_combout\ : std_logic;
SIGNAL \inst1|price[10]~36\ : std_logic;
SIGNAL \inst1|price[11]~37_combout\ : std_logic;
SIGNAL \inst1|price[11]~38\ : std_logic;
SIGNAL \inst1|price[12]~39_combout\ : std_logic;
SIGNAL \inst2|price[0]~14\ : std_logic;
SIGNAL \inst2|price[1]~16\ : std_logic;
SIGNAL \inst2|price[2]~18\ : std_logic;
SIGNAL \inst2|price[3]~20\ : std_logic;
SIGNAL \inst2|price[4]~22\ : std_logic;
SIGNAL \inst2|price[5]~24\ : std_logic;
SIGNAL \inst2|price[6]~26\ : std_logic;
SIGNAL \inst2|price[7]~28\ : std_logic;
SIGNAL \inst2|price[8]~30\ : std_logic;
SIGNAL \inst2|price[9]~32\ : std_logic;
SIGNAL \inst2|price[10]~34\ : std_logic;
SIGNAL \inst2|price[11]~36\ : std_logic;
SIGNAL \inst2|price[12]~37_combout\ : std_logic;
SIGNAL \inst2|price[11]~35_combout\ : std_logic;
SIGNAL \inst2|price[10]~33_combout\ : std_logic;
SIGNAL \inst2|price[9]~31_combout\ : std_logic;
SIGNAL \inst2|price[8]~29_combout\ : std_logic;
SIGNAL \inst2|price[7]~27_combout\ : std_logic;
SIGNAL \inst2|price[6]~25_combout\ : std_logic;
SIGNAL \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~1_cout\ : std_logic;
SIGNAL \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~3\ : std_logic;
SIGNAL \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~5\ : std_logic;
SIGNAL \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~7\ : std_logic;
SIGNAL \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~9\ : std_logic;
SIGNAL \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~11\ : std_logic;
SIGNAL \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~13\ : std_logic;
SIGNAL \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~14_combout\ : std_logic;
SIGNAL \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~4_combout\ : std_logic;
SIGNAL \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[104]~5_combout\ : std_logic;
SIGNAL \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~12_combout\ : std_logic;
SIGNAL \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[108]~1_combout\ : std_logic;
SIGNAL \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~10_combout\ : std_logic;
SIGNAL \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[107]~2_combout\ : std_logic;
SIGNAL \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~8_combout\ : std_logic;
SIGNAL \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[106]~3_combout\ : std_logic;
SIGNAL \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~6_combout\ : std_logic;
SIGNAL \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[105]~4_combout\ : std_logic;
SIGNAL \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~2_combout\ : std_logic;
SIGNAL \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[103]~0_combout\ : std_logic;
SIGNAL \inst2|price[5]~23_combout\ : std_logic;
SIGNAL \inst21|tmp2[5]~feeder_combout\ : std_logic;
SIGNAL \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~1_cout\ : std_logic;
SIGNAL \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~3\ : std_logic;
SIGNAL \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~5\ : std_logic;
SIGNAL \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~7\ : std_logic;
SIGNAL \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~9\ : std_logic;
SIGNAL \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~11\ : std_logic;
SIGNAL \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~13\ : std_logic;
SIGNAL \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~15_cout\ : std_logic;
SIGNAL \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16_combout\ : std_logic;
SIGNAL \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~6_combout\ : std_logic;
SIGNAL \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[116]~11_combout\ : std_logic;
SIGNAL \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~4_combout\ : std_logic;
SIGNAL \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[115]~6_combout\ : std_logic;
SIGNAL \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~2_combout\ : std_logic;
SIGNAL \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[114]~7_combout\ : std_logic;
SIGNAL \inst2|price[4]~21_combout\ : std_logic;
SIGNAL \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~1_cout\ : std_logic;
SIGNAL \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~3\ : std_logic;
SIGNAL \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~5\ : std_logic;
SIGNAL \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~7\ : std_logic;
SIGNAL \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~8_combout\ : std_logic;
SIGNAL \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~12_combout\ : std_logic;
SIGNAL \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[119]~8_combout\ : std_logic;
SIGNAL \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~10_combout\ : std_logic;
SIGNAL \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[118]~9_combout\ : std_logic;
SIGNAL \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~8_combout\ : std_logic;
SIGNAL \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[117]~10_combout\ : std_logic;
SIGNAL \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~9\ : std_logic;
SIGNAL \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~11\ : std_logic;
SIGNAL \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~13\ : std_logic;
SIGNAL \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~15_cout\ : std_logic;
SIGNAL \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\ : std_logic;
SIGNAL \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[128]~17_combout\ : std_logic;
SIGNAL \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~6_combout\ : std_logic;
SIGNAL \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[127]~12_combout\ : std_logic;
SIGNAL \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~4_combout\ : std_logic;
SIGNAL \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[126]~13_combout\ : std_logic;
SIGNAL \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~2_combout\ : std_logic;
SIGNAL \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[125]~14_combout\ : std_logic;
SIGNAL \inst2|price[3]~19_combout\ : std_logic;
SIGNAL \inst21|tmp2[3]~feeder_combout\ : std_logic;
SIGNAL \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~1_cout\ : std_logic;
SIGNAL \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~3\ : std_logic;
SIGNAL \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~5\ : std_logic;
SIGNAL \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~7\ : std_logic;
SIGNAL \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~9\ : std_logic;
SIGNAL \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~10_combout\ : std_logic;
SIGNAL \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~12_combout\ : std_logic;
SIGNAL \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[130]~15_combout\ : std_logic;
SIGNAL \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~10_combout\ : std_logic;
SIGNAL \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[129]~16_combout\ : std_logic;
SIGNAL \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~11\ : std_logic;
SIGNAL \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~13\ : std_logic;
SIGNAL \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~15_cout\ : std_logic;
SIGNAL \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~16_combout\ : std_logic;
SIGNAL \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[140]~22_combout\ : std_logic;
SIGNAL \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~8_combout\ : std_logic;
SIGNAL \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[139]~18_combout\ : std_logic;
SIGNAL \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~6_combout\ : std_logic;
SIGNAL \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[138]~19_combout\ : std_logic;
SIGNAL \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~4_combout\ : std_logic;
SIGNAL \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[137]~20_combout\ : std_logic;
SIGNAL \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~1_cout\ : std_logic;
SIGNAL \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~3\ : std_logic;
SIGNAL \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~5\ : std_logic;
SIGNAL \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~6_combout\ : std_logic;
SIGNAL \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~12_combout\ : std_logic;
SIGNAL \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[141]~21_combout\ : std_logic;
SIGNAL \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~7\ : std_logic;
SIGNAL \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~9\ : std_logic;
SIGNAL \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~10_combout\ : std_logic;
SIGNAL \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[53]~3_combout\ : std_logic;
SIGNAL \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~4_combout\ : std_logic;
SIGNAL \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[52]~0_combout\ : std_logic;
SIGNAL \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~2_combout\ : std_logic;
SIGNAL \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[51]~1_combout\ : std_logic;
SIGNAL \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~2_combout\ : std_logic;
SIGNAL \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[136]~23_combout\ : std_logic;
SIGNAL \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~1_cout\ : std_logic;
SIGNAL \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~3\ : std_logic;
SIGNAL \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~5\ : std_logic;
SIGNAL \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~7\ : std_logic;
SIGNAL \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~8_combout\ : std_logic;
SIGNAL \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~8_combout\ : std_logic;
SIGNAL \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[54]~2_combout\ : std_logic;
SIGNAL \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~9\ : std_logic;
SIGNAL \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~11_cout\ : std_logic;
SIGNAL \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~12_combout\ : std_logic;
SIGNAL \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[62]~7_combout\ : std_logic;
SIGNAL \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~6_combout\ : std_logic;
SIGNAL \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[61]~4_combout\ : std_logic;
SIGNAL \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~4_combout\ : std_logic;
SIGNAL \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[60]~5_combout\ : std_logic;
SIGNAL \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~2_combout\ : std_logic;
SIGNAL \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[59]~6_combout\ : std_logic;
SIGNAL \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~1_cout\ : std_logic;
SIGNAL \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~3\ : std_logic;
SIGNAL \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~5\ : std_logic;
SIGNAL \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~7\ : std_logic;
SIGNAL \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~9\ : std_logic;
SIGNAL \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~11_cout\ : std_logic;
SIGNAL \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~12_combout\ : std_logic;
SIGNAL \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~8_combout\ : std_logic;
SIGNAL \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[70]~8_combout\ : std_logic;
SIGNAL \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~6_combout\ : std_logic;
SIGNAL \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[69]~9_combout\ : std_logic;
SIGNAL \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~4_combout\ : std_logic;
SIGNAL \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[68]~10_combout\ : std_logic;
SIGNAL \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~2_combout\ : std_logic;
SIGNAL \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[67]~11_combout\ : std_logic;
SIGNAL \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[135]~24_combout\ : std_logic;
SIGNAL \inst2|price[2]~17_combout\ : std_logic;
SIGNAL \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~1_cout\ : std_logic;
SIGNAL \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~3\ : std_logic;
SIGNAL \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~5\ : std_logic;
SIGNAL \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~7\ : std_logic;
SIGNAL \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~9\ : std_logic;
SIGNAL \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~11_cout\ : std_logic;
SIGNAL \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~12_combout\ : std_logic;
SIGNAL \inst28|WideOr0~combout\ : std_logic;
SIGNAL \inst28|WideOr1~2_combout\ : std_logic;
SIGNAL \inst28|WideOr2~combout\ : std_logic;
SIGNAL \inst28|WideOr3~0_combout\ : std_logic;
SIGNAL \inst28|WideOr4~combout\ : std_logic;
SIGNAL \inst28|WideOr5~combout\ : std_logic;
SIGNAL \inst26|WideOr0~combout\ : std_logic;
SIGNAL \inst26|WideOr1~2_combout\ : std_logic;
SIGNAL \inst26|WideOr2~combout\ : std_logic;
SIGNAL \inst26|WideOr3~0_combout\ : std_logic;
SIGNAL \inst26|WideOr4~combout\ : std_logic;
SIGNAL \inst26|WideOr5~combout\ : std_logic;
SIGNAL \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~6_combout\ : std_logic;
SIGNAL \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[77]~14_combout\ : std_logic;
SIGNAL \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~4_combout\ : std_logic;
SIGNAL \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[76]~15_combout\ : std_logic;
SIGNAL \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~2_combout\ : std_logic;
SIGNAL \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[75]~16_combout\ : std_logic;
SIGNAL \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~8_combout\ : std_logic;
SIGNAL \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[78]~13_combout\ : std_logic;
SIGNAL \inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~0_combout\ : std_logic;
SIGNAL \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[74]~12_combout\ : std_logic;
SIGNAL \inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~0_combout\ : std_logic;
SIGNAL \inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~1_combout\ : std_logic;
SIGNAL \inst24|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[22]~0_combout\ : std_logic;
SIGNAL \inst24|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[26]~3_combout\ : std_logic;
SIGNAL \inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~2_combout\ : std_logic;
SIGNAL \inst2|price[1]~15_combout\ : std_logic;
SIGNAL \inst21|tmp2[1]~feeder_combout\ : std_logic;
SIGNAL \inst24|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[27]~1_combout\ : std_logic;
SIGNAL \inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~2_combout\ : std_logic;
SIGNAL \inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~3_combout\ : std_logic;
SIGNAL \inst24|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[32]~4_combout\ : std_logic;
SIGNAL \inst24|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[31]~2_combout\ : std_logic;
SIGNAL \inst2|price[0]~13_combout\ : std_logic;
SIGNAL \inst2|price[0]~feeder_combout\ : std_logic;
SIGNAL \inst21|tmp2[0]~feeder_combout\ : std_logic;
SIGNAL \inst24|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[33]~5_combout\ : std_logic;
SIGNAL \inst32|Mux0~0_combout\ : std_logic;
SIGNAL \inst32|Mux1~0_combout\ : std_logic;
SIGNAL \inst32|Mux2~0_combout\ : std_logic;
SIGNAL \inst32|Mux3~0_combout\ : std_logic;
SIGNAL \inst32|Mux4~0_combout\ : std_logic;
SIGNAL \inst32|Mux5~0_combout\ : std_logic;
SIGNAL \inst32|Mux6~0_combout\ : std_logic;
SIGNAL \inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~0_combout\ : std_logic;
SIGNAL \inst30|Mux0~0_combout\ : std_logic;
SIGNAL \inst30|Mux1~0_combout\ : std_logic;
SIGNAL \inst30|Mux2~0_combout\ : std_logic;
SIGNAL \inst30|Mux3~0_combout\ : std_logic;
SIGNAL \inst30|Mux4~0_combout\ : std_logic;
SIGNAL \inst30|Mux5~0_combout\ : std_logic;
SIGNAL \inst30|Mux6~0_combout\ : std_logic;
SIGNAL \inst12|count1\ : std_logic_vector(26 DOWNTO 0);
SIGNAL \inst27|output\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst|miles\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst|price\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst2|price\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst21|tmp2\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst|count\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst1|price\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst21|tmp\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst1|count\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst25|output\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst28|output\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst26|output\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst29|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \inst31|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \inst31|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \inst25|ALT_INV_WideOr3~0_combout\ : std_logic;
SIGNAL \inst27|ALT_INV_WideOr3~0_combout\ : std_logic;
SIGNAL \inst30|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \inst32|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \inst32|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \inst26|ALT_INV_WideOr3~0_combout\ : std_logic;
SIGNAL \inst28|ALT_INV_WideOr3~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

dis_decade <= ww_dis_decade;
ww_clk_time <= clk_time;
ww_clk_distance <= clk_distance;
ww_start <= start;
ww_stop <= stop;
ww_pause <= pause;
dis_hundred <= ww_dis_hundred;
dis_mil <= ww_dis_mil;
dis_unit <= ww_dis_unit;
price_decade <= ww_price_decade;
price_hundred <= ww_price_hundred;
price_mil <= ww_price_mil;
price_unit <= ww_price_unit;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk_time~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_time~input_o\);

\inst12|x~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst12|x~q\);
\inst29|ALT_INV_Mux6~0_combout\ <= NOT \inst29|Mux6~0_combout\;
\inst31|ALT_INV_Mux5~0_combout\ <= NOT \inst31|Mux5~0_combout\;
\inst31|ALT_INV_Mux2~0_combout\ <= NOT \inst31|Mux2~0_combout\;
\inst25|ALT_INV_WideOr3~0_combout\ <= NOT \inst25|WideOr3~0_combout\;
\inst27|ALT_INV_WideOr3~0_combout\ <= NOT \inst27|WideOr3~0_combout\;
\inst30|ALT_INV_Mux6~0_combout\ <= NOT \inst30|Mux6~0_combout\;
\inst32|ALT_INV_Mux5~0_combout\ <= NOT \inst32|Mux5~0_combout\;
\inst32|ALT_INV_Mux2~0_combout\ <= NOT \inst32|Mux2~0_combout\;
\inst26|ALT_INV_WideOr3~0_combout\ <= NOT \inst26|WideOr3~0_combout\;
\inst28|ALT_INV_WideOr3~0_combout\ <= NOT \inst28|WideOr3~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X89_Y0_N23
\dis_decade[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst27|WideOr0~combout\,
	devoe => ww_devoe,
	o => \dis_decade[6]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\dis_decade[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst27|WideOr1~2_combout\,
	devoe => ww_devoe,
	o => \dis_decade[5]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\dis_decade[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst27|output\(4),
	devoe => ww_devoe,
	o => \dis_decade[4]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\dis_decade[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst27|WideOr2~combout\,
	devoe => ww_devoe,
	o => \dis_decade[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\dis_decade[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst27|ALT_INV_WideOr3~0_combout\,
	devoe => ww_devoe,
	o => \dis_decade[2]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\dis_decade[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst27|WideOr4~combout\,
	devoe => ww_devoe,
	o => \dis_decade[1]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\dis_decade[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst27|WideOr5~combout\,
	devoe => ww_devoe,
	o => \dis_decade[0]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\dis_hundred[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst25|WideOr0~combout\,
	devoe => ww_devoe,
	o => \dis_hundred[6]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\dis_hundred[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst25|WideOr1~2_combout\,
	devoe => ww_devoe,
	o => \dis_hundred[5]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\dis_hundred[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst25|output\(4),
	devoe => ww_devoe,
	o => \dis_hundred[4]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\dis_hundred[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst25|WideOr2~combout\,
	devoe => ww_devoe,
	o => \dis_hundred[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\dis_hundred[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst25|ALT_INV_WideOr3~0_combout\,
	devoe => ww_devoe,
	o => \dis_hundred[2]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\dis_hundred[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst25|WideOr4~combout\,
	devoe => ww_devoe,
	o => \dis_hundred[1]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\dis_hundred[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst25|WideOr5~combout\,
	devoe => ww_devoe,
	o => \dis_hundred[0]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\dis_mil[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst31|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \dis_mil[6]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\dis_mil[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst31|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \dis_mil[5]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\dis_mil[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst31|ALT_INV_Mux2~0_combout\,
	devoe => ww_devoe,
	o => \dis_mil[4]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\dis_mil[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst31|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \dis_mil[3]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\dis_mil[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst31|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \dis_mil[2]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\dis_mil[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst31|ALT_INV_Mux5~0_combout\,
	devoe => ww_devoe,
	o => \dis_mil[1]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\dis_mil[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst31|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \dis_mil[0]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\dis_unit[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst29|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \dis_unit[6]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\dis_unit[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst29|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \dis_unit[5]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\dis_unit[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst29|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \dis_unit[4]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\dis_unit[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst29|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \dis_unit[3]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\dis_unit[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst29|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \dis_unit[2]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\dis_unit[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst29|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \dis_unit[1]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\dis_unit[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst29|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \dis_unit[0]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\price_decade[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst28|WideOr0~combout\,
	devoe => ww_devoe,
	o => \price_decade[6]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\price_decade[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst28|WideOr1~2_combout\,
	devoe => ww_devoe,
	o => \price_decade[5]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\price_decade[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst28|output\(4),
	devoe => ww_devoe,
	o => \price_decade[4]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\price_decade[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst28|WideOr2~combout\,
	devoe => ww_devoe,
	o => \price_decade[3]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\price_decade[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst28|ALT_INV_WideOr3~0_combout\,
	devoe => ww_devoe,
	o => \price_decade[2]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\price_decade[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst28|WideOr4~combout\,
	devoe => ww_devoe,
	o => \price_decade[1]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\price_decade[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst28|WideOr5~combout\,
	devoe => ww_devoe,
	o => \price_decade[0]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\price_hundred[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst26|WideOr0~combout\,
	devoe => ww_devoe,
	o => \price_hundred[6]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\price_hundred[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst26|WideOr1~2_combout\,
	devoe => ww_devoe,
	o => \price_hundred[5]~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\price_hundred[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst26|output\(4),
	devoe => ww_devoe,
	o => \price_hundred[4]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\price_hundred[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst26|WideOr2~combout\,
	devoe => ww_devoe,
	o => \price_hundred[3]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\price_hundred[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst26|ALT_INV_WideOr3~0_combout\,
	devoe => ww_devoe,
	o => \price_hundred[2]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\price_hundred[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst26|WideOr4~combout\,
	devoe => ww_devoe,
	o => \price_hundred[1]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\price_hundred[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst26|WideOr5~combout\,
	devoe => ww_devoe,
	o => \price_hundred[0]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\price_mil[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst32|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \price_mil[6]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\price_mil[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst32|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \price_mil[5]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\price_mil[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst32|ALT_INV_Mux2~0_combout\,
	devoe => ww_devoe,
	o => \price_mil[4]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\price_mil[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst32|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \price_mil[3]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\price_mil[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst32|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \price_mil[2]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\price_mil[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst32|ALT_INV_Mux5~0_combout\,
	devoe => ww_devoe,
	o => \price_mil[1]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\price_mil[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst32|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \price_mil[0]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\price_unit[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst30|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \price_unit[6]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\price_unit[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst30|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \price_unit[5]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\price_unit[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst30|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \price_unit[4]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\price_unit[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst30|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \price_unit[3]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\price_unit[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst30|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \price_unit[2]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\price_unit[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst30|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \price_unit[1]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\price_unit[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst30|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \price_unit[0]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\clk_time~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_time,
	o => \clk_time~input_o\);

-- Location: CLKCTRL_G4
\clk_time~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_time~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_time~inputclkctrl_outclk\);

-- Location: LCCOMB_X55_Y72_N6
\inst12|count1[0]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|count1[0]~27_combout\ = \inst12|count1\(0) $ (VCC)
-- \inst12|count1[0]~28\ = CARRY(\inst12|count1\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|count1\(0),
	datad => VCC,
	combout => \inst12|count1[0]~27_combout\,
	cout => \inst12|count1[0]~28\);

-- Location: FF_X55_Y72_N7
\inst12|count1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_time~inputclkctrl_outclk\,
	d => \inst12|count1[0]~27_combout\,
	sclr => \inst12|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|count1\(0));

-- Location: LCCOMB_X55_Y72_N8
\inst12|count1[1]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|count1[1]~29_combout\ = (\inst12|count1\(1) & (!\inst12|count1[0]~28\)) # (!\inst12|count1\(1) & ((\inst12|count1[0]~28\) # (GND)))
-- \inst12|count1[1]~30\ = CARRY((!\inst12|count1[0]~28\) # (!\inst12|count1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|count1\(1),
	datad => VCC,
	cin => \inst12|count1[0]~28\,
	combout => \inst12|count1[1]~29_combout\,
	cout => \inst12|count1[1]~30\);

-- Location: FF_X55_Y72_N9
\inst12|count1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_time~inputclkctrl_outclk\,
	d => \inst12|count1[1]~29_combout\,
	sclr => \inst12|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|count1\(1));

-- Location: LCCOMB_X55_Y72_N10
\inst12|count1[2]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|count1[2]~31_combout\ = (\inst12|count1\(2) & (\inst12|count1[1]~30\ $ (GND))) # (!\inst12|count1\(2) & (!\inst12|count1[1]~30\ & VCC))
-- \inst12|count1[2]~32\ = CARRY((\inst12|count1\(2) & !\inst12|count1[1]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|count1\(2),
	datad => VCC,
	cin => \inst12|count1[1]~30\,
	combout => \inst12|count1[2]~31_combout\,
	cout => \inst12|count1[2]~32\);

-- Location: FF_X55_Y72_N11
\inst12|count1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_time~inputclkctrl_outclk\,
	d => \inst12|count1[2]~31_combout\,
	sclr => \inst12|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|count1\(2));

-- Location: LCCOMB_X55_Y72_N12
\inst12|count1[3]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|count1[3]~33_combout\ = (\inst12|count1\(3) & (!\inst12|count1[2]~32\)) # (!\inst12|count1\(3) & ((\inst12|count1[2]~32\) # (GND)))
-- \inst12|count1[3]~34\ = CARRY((!\inst12|count1[2]~32\) # (!\inst12|count1\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|count1\(3),
	datad => VCC,
	cin => \inst12|count1[2]~32\,
	combout => \inst12|count1[3]~33_combout\,
	cout => \inst12|count1[3]~34\);

-- Location: FF_X55_Y72_N13
\inst12|count1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_time~inputclkctrl_outclk\,
	d => \inst12|count1[3]~33_combout\,
	sclr => \inst12|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|count1\(3));

-- Location: LCCOMB_X55_Y72_N14
\inst12|count1[4]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|count1[4]~35_combout\ = (\inst12|count1\(4) & (\inst12|count1[3]~34\ $ (GND))) # (!\inst12|count1\(4) & (!\inst12|count1[3]~34\ & VCC))
-- \inst12|count1[4]~36\ = CARRY((\inst12|count1\(4) & !\inst12|count1[3]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|count1\(4),
	datad => VCC,
	cin => \inst12|count1[3]~34\,
	combout => \inst12|count1[4]~35_combout\,
	cout => \inst12|count1[4]~36\);

-- Location: FF_X55_Y72_N15
\inst12|count1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_time~inputclkctrl_outclk\,
	d => \inst12|count1[4]~35_combout\,
	sclr => \inst12|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|count1\(4));

-- Location: LCCOMB_X55_Y72_N16
\inst12|count1[5]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|count1[5]~37_combout\ = (\inst12|count1\(5) & (!\inst12|count1[4]~36\)) # (!\inst12|count1\(5) & ((\inst12|count1[4]~36\) # (GND)))
-- \inst12|count1[5]~38\ = CARRY((!\inst12|count1[4]~36\) # (!\inst12|count1\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|count1\(5),
	datad => VCC,
	cin => \inst12|count1[4]~36\,
	combout => \inst12|count1[5]~37_combout\,
	cout => \inst12|count1[5]~38\);

-- Location: FF_X55_Y72_N17
\inst12|count1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_time~inputclkctrl_outclk\,
	d => \inst12|count1[5]~37_combout\,
	sclr => \inst12|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|count1\(5));

-- Location: LCCOMB_X55_Y72_N18
\inst12|count1[6]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|count1[6]~39_combout\ = (\inst12|count1\(6) & (\inst12|count1[5]~38\ $ (GND))) # (!\inst12|count1\(6) & (!\inst12|count1[5]~38\ & VCC))
-- \inst12|count1[6]~40\ = CARRY((\inst12|count1\(6) & !\inst12|count1[5]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|count1\(6),
	datad => VCC,
	cin => \inst12|count1[5]~38\,
	combout => \inst12|count1[6]~39_combout\,
	cout => \inst12|count1[6]~40\);

-- Location: FF_X55_Y72_N19
\inst12|count1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_time~inputclkctrl_outclk\,
	d => \inst12|count1[6]~39_combout\,
	sclr => \inst12|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|count1\(6));

-- Location: LCCOMB_X55_Y72_N20
\inst12|count1[7]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|count1[7]~41_combout\ = (\inst12|count1\(7) & (!\inst12|count1[6]~40\)) # (!\inst12|count1\(7) & ((\inst12|count1[6]~40\) # (GND)))
-- \inst12|count1[7]~42\ = CARRY((!\inst12|count1[6]~40\) # (!\inst12|count1\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|count1\(7),
	datad => VCC,
	cin => \inst12|count1[6]~40\,
	combout => \inst12|count1[7]~41_combout\,
	cout => \inst12|count1[7]~42\);

-- Location: FF_X55_Y72_N21
\inst12|count1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_time~inputclkctrl_outclk\,
	d => \inst12|count1[7]~41_combout\,
	sclr => \inst12|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|count1\(7));

-- Location: LCCOMB_X55_Y72_N22
\inst12|count1[8]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|count1[8]~43_combout\ = (\inst12|count1\(8) & (\inst12|count1[7]~42\ $ (GND))) # (!\inst12|count1\(8) & (!\inst12|count1[7]~42\ & VCC))
-- \inst12|count1[8]~44\ = CARRY((\inst12|count1\(8) & !\inst12|count1[7]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|count1\(8),
	datad => VCC,
	cin => \inst12|count1[7]~42\,
	combout => \inst12|count1[8]~43_combout\,
	cout => \inst12|count1[8]~44\);

-- Location: FF_X55_Y72_N23
\inst12|count1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_time~inputclkctrl_outclk\,
	d => \inst12|count1[8]~43_combout\,
	sclr => \inst12|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|count1\(8));

-- Location: LCCOMB_X55_Y72_N24
\inst12|count1[9]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|count1[9]~45_combout\ = (\inst12|count1\(9) & (!\inst12|count1[8]~44\)) # (!\inst12|count1\(9) & ((\inst12|count1[8]~44\) # (GND)))
-- \inst12|count1[9]~46\ = CARRY((!\inst12|count1[8]~44\) # (!\inst12|count1\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|count1\(9),
	datad => VCC,
	cin => \inst12|count1[8]~44\,
	combout => \inst12|count1[9]~45_combout\,
	cout => \inst12|count1[9]~46\);

-- Location: FF_X55_Y72_N25
\inst12|count1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_time~inputclkctrl_outclk\,
	d => \inst12|count1[9]~45_combout\,
	sclr => \inst12|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|count1\(9));

-- Location: LCCOMB_X55_Y72_N26
\inst12|count1[10]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|count1[10]~47_combout\ = (\inst12|count1\(10) & (\inst12|count1[9]~46\ $ (GND))) # (!\inst12|count1\(10) & (!\inst12|count1[9]~46\ & VCC))
-- \inst12|count1[10]~48\ = CARRY((\inst12|count1\(10) & !\inst12|count1[9]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|count1\(10),
	datad => VCC,
	cin => \inst12|count1[9]~46\,
	combout => \inst12|count1[10]~47_combout\,
	cout => \inst12|count1[10]~48\);

-- Location: FF_X55_Y72_N27
\inst12|count1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_time~inputclkctrl_outclk\,
	d => \inst12|count1[10]~47_combout\,
	sclr => \inst12|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|count1\(10));

-- Location: LCCOMB_X55_Y72_N28
\inst12|count1[11]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|count1[11]~49_combout\ = (\inst12|count1\(11) & (!\inst12|count1[10]~48\)) # (!\inst12|count1\(11) & ((\inst12|count1[10]~48\) # (GND)))
-- \inst12|count1[11]~50\ = CARRY((!\inst12|count1[10]~48\) # (!\inst12|count1\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|count1\(11),
	datad => VCC,
	cin => \inst12|count1[10]~48\,
	combout => \inst12|count1[11]~49_combout\,
	cout => \inst12|count1[11]~50\);

-- Location: FF_X55_Y72_N29
\inst12|count1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_time~inputclkctrl_outclk\,
	d => \inst12|count1[11]~49_combout\,
	sclr => \inst12|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|count1\(11));

-- Location: LCCOMB_X55_Y72_N30
\inst12|count1[12]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|count1[12]~51_combout\ = (\inst12|count1\(12) & (\inst12|count1[11]~50\ $ (GND))) # (!\inst12|count1\(12) & (!\inst12|count1[11]~50\ & VCC))
-- \inst12|count1[12]~52\ = CARRY((\inst12|count1\(12) & !\inst12|count1[11]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|count1\(12),
	datad => VCC,
	cin => \inst12|count1[11]~50\,
	combout => \inst12|count1[12]~51_combout\,
	cout => \inst12|count1[12]~52\);

-- Location: FF_X55_Y72_N31
\inst12|count1[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_time~inputclkctrl_outclk\,
	d => \inst12|count1[12]~51_combout\,
	sclr => \inst12|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|count1\(12));

-- Location: LCCOMB_X55_Y71_N0
\inst12|count1[13]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|count1[13]~53_combout\ = (\inst12|count1\(13) & (!\inst12|count1[12]~52\)) # (!\inst12|count1\(13) & ((\inst12|count1[12]~52\) # (GND)))
-- \inst12|count1[13]~54\ = CARRY((!\inst12|count1[12]~52\) # (!\inst12|count1\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|count1\(13),
	datad => VCC,
	cin => \inst12|count1[12]~52\,
	combout => \inst12|count1[13]~53_combout\,
	cout => \inst12|count1[13]~54\);

-- Location: FF_X56_Y72_N27
\inst12|count1[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_time~inputclkctrl_outclk\,
	asdata => \inst12|count1[13]~53_combout\,
	sclr => \inst12|LessThan0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|count1\(13));

-- Location: LCCOMB_X55_Y71_N2
\inst12|count1[14]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|count1[14]~55_combout\ = (\inst12|count1\(14) & (\inst12|count1[13]~54\ $ (GND))) # (!\inst12|count1\(14) & (!\inst12|count1[13]~54\ & VCC))
-- \inst12|count1[14]~56\ = CARRY((\inst12|count1\(14) & !\inst12|count1[13]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|count1\(14),
	datad => VCC,
	cin => \inst12|count1[13]~54\,
	combout => \inst12|count1[14]~55_combout\,
	cout => \inst12|count1[14]~56\);

-- Location: FF_X56_Y72_N23
\inst12|count1[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_time~inputclkctrl_outclk\,
	asdata => \inst12|count1[14]~55_combout\,
	sclr => \inst12|LessThan0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|count1\(14));

-- Location: LCCOMB_X55_Y71_N4
\inst12|count1[15]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|count1[15]~57_combout\ = (\inst12|count1\(15) & (!\inst12|count1[14]~56\)) # (!\inst12|count1\(15) & ((\inst12|count1[14]~56\) # (GND)))
-- \inst12|count1[15]~58\ = CARRY((!\inst12|count1[14]~56\) # (!\inst12|count1\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|count1\(15),
	datad => VCC,
	cin => \inst12|count1[14]~56\,
	combout => \inst12|count1[15]~57_combout\,
	cout => \inst12|count1[15]~58\);

-- Location: FF_X56_Y72_N25
\inst12|count1[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_time~inputclkctrl_outclk\,
	asdata => \inst12|count1[15]~57_combout\,
	sclr => \inst12|LessThan0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|count1\(15));

-- Location: LCCOMB_X55_Y71_N6
\inst12|count1[16]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|count1[16]~59_combout\ = (\inst12|count1\(16) & (\inst12|count1[15]~58\ $ (GND))) # (!\inst12|count1\(16) & (!\inst12|count1[15]~58\ & VCC))
-- \inst12|count1[16]~60\ = CARRY((\inst12|count1\(16) & !\inst12|count1[15]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|count1\(16),
	datad => VCC,
	cin => \inst12|count1[15]~58\,
	combout => \inst12|count1[16]~59_combout\,
	cout => \inst12|count1[16]~60\);

-- Location: FF_X56_Y72_N1
\inst12|count1[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_time~inputclkctrl_outclk\,
	asdata => \inst12|count1[16]~59_combout\,
	sclr => \inst12|LessThan0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|count1\(16));

-- Location: LCCOMB_X55_Y71_N8
\inst12|count1[17]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|count1[17]~61_combout\ = (\inst12|count1\(17) & (!\inst12|count1[16]~60\)) # (!\inst12|count1\(17) & ((\inst12|count1[16]~60\) # (GND)))
-- \inst12|count1[17]~62\ = CARRY((!\inst12|count1[16]~60\) # (!\inst12|count1\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|count1\(17),
	datad => VCC,
	cin => \inst12|count1[16]~60\,
	combout => \inst12|count1[17]~61_combout\,
	cout => \inst12|count1[17]~62\);

-- Location: FF_X56_Y72_N15
\inst12|count1[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_time~inputclkctrl_outclk\,
	asdata => \inst12|count1[17]~61_combout\,
	sclr => \inst12|LessThan0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|count1\(17));

-- Location: LCCOMB_X55_Y71_N10
\inst12|count1[18]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|count1[18]~63_combout\ = (\inst12|count1\(18) & (\inst12|count1[17]~62\ $ (GND))) # (!\inst12|count1\(18) & (!\inst12|count1[17]~62\ & VCC))
-- \inst12|count1[18]~64\ = CARRY((\inst12|count1\(18) & !\inst12|count1[17]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|count1\(18),
	datad => VCC,
	cin => \inst12|count1[17]~62\,
	combout => \inst12|count1[18]~63_combout\,
	cout => \inst12|count1[18]~64\);

-- Location: FF_X56_Y72_N21
\inst12|count1[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_time~inputclkctrl_outclk\,
	asdata => \inst12|count1[18]~63_combout\,
	sclr => \inst12|LessThan0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|count1\(18));

-- Location: LCCOMB_X55_Y71_N12
\inst12|count1[19]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|count1[19]~65_combout\ = (\inst12|count1\(19) & (!\inst12|count1[18]~64\)) # (!\inst12|count1\(19) & ((\inst12|count1[18]~64\) # (GND)))
-- \inst12|count1[19]~66\ = CARRY((!\inst12|count1[18]~64\) # (!\inst12|count1\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|count1\(19),
	datad => VCC,
	cin => \inst12|count1[18]~64\,
	combout => \inst12|count1[19]~65_combout\,
	cout => \inst12|count1[19]~66\);

-- Location: FF_X55_Y71_N13
\inst12|count1[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_time~inputclkctrl_outclk\,
	d => \inst12|count1[19]~65_combout\,
	sclr => \inst12|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|count1\(19));

-- Location: LCCOMB_X55_Y71_N14
\inst12|count1[20]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|count1[20]~67_combout\ = (\inst12|count1\(20) & (\inst12|count1[19]~66\ $ (GND))) # (!\inst12|count1\(20) & (!\inst12|count1[19]~66\ & VCC))
-- \inst12|count1[20]~68\ = CARRY((\inst12|count1\(20) & !\inst12|count1[19]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|count1\(20),
	datad => VCC,
	cin => \inst12|count1[19]~66\,
	combout => \inst12|count1[20]~67_combout\,
	cout => \inst12|count1[20]~68\);

-- Location: FF_X55_Y71_N15
\inst12|count1[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_time~inputclkctrl_outclk\,
	d => \inst12|count1[20]~67_combout\,
	sclr => \inst12|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|count1\(20));

-- Location: LCCOMB_X55_Y71_N16
\inst12|count1[21]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|count1[21]~69_combout\ = (\inst12|count1\(21) & (!\inst12|count1[20]~68\)) # (!\inst12|count1\(21) & ((\inst12|count1[20]~68\) # (GND)))
-- \inst12|count1[21]~70\ = CARRY((!\inst12|count1[20]~68\) # (!\inst12|count1\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|count1\(21),
	datad => VCC,
	cin => \inst12|count1[20]~68\,
	combout => \inst12|count1[21]~69_combout\,
	cout => \inst12|count1[21]~70\);

-- Location: FF_X55_Y71_N17
\inst12|count1[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_time~inputclkctrl_outclk\,
	d => \inst12|count1[21]~69_combout\,
	sclr => \inst12|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|count1\(21));

-- Location: LCCOMB_X55_Y71_N18
\inst12|count1[22]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|count1[22]~71_combout\ = (\inst12|count1\(22) & (\inst12|count1[21]~70\ $ (GND))) # (!\inst12|count1\(22) & (!\inst12|count1[21]~70\ & VCC))
-- \inst12|count1[22]~72\ = CARRY((\inst12|count1\(22) & !\inst12|count1[21]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|count1\(22),
	datad => VCC,
	cin => \inst12|count1[21]~70\,
	combout => \inst12|count1[22]~71_combout\,
	cout => \inst12|count1[22]~72\);

-- Location: FF_X55_Y71_N19
\inst12|count1[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_time~inputclkctrl_outclk\,
	d => \inst12|count1[22]~71_combout\,
	sclr => \inst12|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|count1\(22));

-- Location: LCCOMB_X55_Y71_N20
\inst12|count1[23]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|count1[23]~73_combout\ = (\inst12|count1\(23) & (!\inst12|count1[22]~72\)) # (!\inst12|count1\(23) & ((\inst12|count1[22]~72\) # (GND)))
-- \inst12|count1[23]~74\ = CARRY((!\inst12|count1[22]~72\) # (!\inst12|count1\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|count1\(23),
	datad => VCC,
	cin => \inst12|count1[22]~72\,
	combout => \inst12|count1[23]~73_combout\,
	cout => \inst12|count1[23]~74\);

-- Location: FF_X55_Y71_N21
\inst12|count1[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_time~inputclkctrl_outclk\,
	d => \inst12|count1[23]~73_combout\,
	sclr => \inst12|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|count1\(23));

-- Location: LCCOMB_X55_Y71_N22
\inst12|count1[24]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|count1[24]~75_combout\ = (\inst12|count1\(24) & (\inst12|count1[23]~74\ $ (GND))) # (!\inst12|count1\(24) & (!\inst12|count1[23]~74\ & VCC))
-- \inst12|count1[24]~76\ = CARRY((\inst12|count1\(24) & !\inst12|count1[23]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|count1\(24),
	datad => VCC,
	cin => \inst12|count1[23]~74\,
	combout => \inst12|count1[24]~75_combout\,
	cout => \inst12|count1[24]~76\);

-- Location: FF_X55_Y71_N23
\inst12|count1[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_time~inputclkctrl_outclk\,
	d => \inst12|count1[24]~75_combout\,
	sclr => \inst12|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|count1\(24));

-- Location: LCCOMB_X55_Y71_N24
\inst12|count1[25]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|count1[25]~77_combout\ = (\inst12|count1\(25) & (!\inst12|count1[24]~76\)) # (!\inst12|count1\(25) & ((\inst12|count1[24]~76\) # (GND)))
-- \inst12|count1[25]~78\ = CARRY((!\inst12|count1[24]~76\) # (!\inst12|count1\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|count1\(25),
	datad => VCC,
	cin => \inst12|count1[24]~76\,
	combout => \inst12|count1[25]~77_combout\,
	cout => \inst12|count1[25]~78\);

-- Location: FF_X55_Y71_N25
\inst12|count1[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_time~inputclkctrl_outclk\,
	d => \inst12|count1[25]~77_combout\,
	sclr => \inst12|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|count1\(25));

-- Location: LCCOMB_X55_Y71_N26
\inst12|count1[26]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|count1[26]~79_combout\ = \inst12|count1\(26) $ (!\inst12|count1[25]~78\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|count1\(26),
	cin => \inst12|count1[25]~78\,
	combout => \inst12|count1[26]~79_combout\);

-- Location: FF_X55_Y71_N27
\inst12|count1[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_time~inputclkctrl_outclk\,
	d => \inst12|count1[26]~79_combout\,
	sclr => \inst12|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|count1\(26));

-- Location: LCCOMB_X55_Y71_N28
\inst12|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|LessThan0~4_combout\ = (((!\inst12|count1\(22)) # (!\inst12|count1\(20))) # (!\inst12|count1\(21))) # (!\inst12|count1\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|count1\(19),
	datab => \inst12|count1\(21),
	datac => \inst12|count1\(20),
	datad => \inst12|count1\(22),
	combout => \inst12|LessThan0~4_combout\);

-- Location: LCCOMB_X55_Y72_N4
\inst12|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|LessThan0~1_combout\ = (!\inst12|count1\(8) & (!\inst12|count1\(7) & (!\inst12|count1\(10) & !\inst12|count1\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|count1\(8),
	datab => \inst12|count1\(7),
	datac => \inst12|count1\(10),
	datad => \inst12|count1\(9),
	combout => \inst12|LessThan0~1_combout\);

-- Location: LCCOMB_X56_Y72_N18
\inst12|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|LessThan0~0_combout\ = (((!\inst12|count1\(12)) # (!\inst12|count1\(14))) # (!\inst12|count1\(15))) # (!\inst12|count1\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|count1\(13),
	datab => \inst12|count1\(15),
	datac => \inst12|count1\(14),
	datad => \inst12|count1\(12),
	combout => \inst12|LessThan0~0_combout\);

-- Location: LCCOMB_X56_Y72_N28
\inst12|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|LessThan0~2_combout\ = (!\inst12|count1\(16) & ((\inst12|LessThan0~0_combout\) # ((!\inst12|count1\(11) & \inst12|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|count1\(16),
	datab => \inst12|count1\(11),
	datac => \inst12|LessThan0~1_combout\,
	datad => \inst12|LessThan0~0_combout\,
	combout => \inst12|LessThan0~2_combout\);

-- Location: LCCOMB_X56_Y72_N10
\inst12|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|LessThan0~3_combout\ = (!\inst12|count1\(18) & ((\inst12|LessThan0~2_combout\) # (!\inst12|count1\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|count1\(18),
	datac => \inst12|count1\(17),
	datad => \inst12|LessThan0~2_combout\,
	combout => \inst12|LessThan0~3_combout\);

-- Location: LCCOMB_X56_Y72_N12
\inst12|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|LessThan0~5_combout\ = (!\inst12|count1\(24) & (((\inst12|LessThan0~4_combout\) # (\inst12|LessThan0~3_combout\)) # (!\inst12|count1\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|count1\(23),
	datab => \inst12|count1\(24),
	datac => \inst12|LessThan0~4_combout\,
	datad => \inst12|LessThan0~3_combout\,
	combout => \inst12|LessThan0~5_combout\);

-- Location: LCCOMB_X56_Y72_N30
\inst12|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|LessThan0~6_combout\ = (\inst12|count1\(26)) # ((\inst12|count1\(25) & !\inst12|LessThan0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|count1\(25),
	datab => \inst12|count1\(26),
	datad => \inst12|LessThan0~5_combout\,
	combout => \inst12|LessThan0~6_combout\);

-- Location: LCCOMB_X56_Y72_N16
\inst12|x~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|x~feeder_combout\ = \inst12|LessThan0~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|LessThan0~6_combout\,
	combout => \inst12|x~feeder_combout\);

-- Location: FF_X56_Y72_N17
\inst12|x\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_time~inputclkctrl_outclk\,
	d => \inst12|x~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|x~q\);

-- Location: CLKCTRL_G10
\inst12|x~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst12|x~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst12|x~clkctrl_outclk\);

-- Location: IOIBUF_X115_Y40_N8
\clk_distance~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_distance,
	o => \clk_distance~input_o\);

-- Location: LCCOMB_X106_Y29_N2
\inst|miles[0]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|miles[0]~15_combout\ = \inst|miles\(0) $ (VCC)
-- \inst|miles[0]~16\ = CARRY(\inst|miles\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|miles\(0),
	datad => VCC,
	combout => \inst|miles[0]~15_combout\,
	cout => \inst|miles[0]~16\);

-- Location: IOIBUF_X115_Y14_N1
\start~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start,
	o => \start~input_o\);

-- Location: IOIBUF_X115_Y17_N1
\stop~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_stop,
	o => \stop~input_o\);

-- Location: LCCOMB_X107_Y30_N24
\inst|miles[5]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|miles[5]~31_combout\ = (\stop~input_o\) # (!\start~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \start~input_o\,
	datad => \stop~input_o\,
	combout => \inst|miles[5]~31_combout\);

-- Location: IOIBUF_X115_Y15_N8
\pause~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pause,
	o => \pause~input_o\);

-- Location: LCCOMB_X108_Y30_N2
\inst|count[0]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|count[0]~15_combout\ = \inst|count\(0) $ (VCC)
-- \inst|count[0]~16\ = CARRY(\inst|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|count\(0),
	datad => VCC,
	combout => \inst|count[0]~15_combout\,
	cout => \inst|count[0]~16\);

-- Location: LCCOMB_X107_Y30_N18
\inst|count[3]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|count[3]~42_combout\ = (\stop~input_o\) # ((\inst|LessThan0~3_combout\) # (!\start~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stop~input_o\,
	datac => \start~input_o\,
	datad => \inst|LessThan0~3_combout\,
	combout => \inst|count[3]~42_combout\);

-- Location: LCCOMB_X107_Y30_N16
\inst|count[3]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|count[3]~21_combout\ = ((\stop~input_o\) # (!\start~input_o\)) # (!\pause~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pause~input_o\,
	datac => \start~input_o\,
	datad => \stop~input_o\,
	combout => \inst|count[3]~21_combout\);

-- Location: FF_X108_Y30_N3
\inst|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_distance~input_o\,
	d => \inst|count[0]~15_combout\,
	sclr => \inst|count[3]~42_combout\,
	ena => \inst|count[3]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(0));

-- Location: LCCOMB_X108_Y30_N4
\inst|count[1]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|count[1]~17_combout\ = (\inst|count\(1) & (!\inst|count[0]~16\)) # (!\inst|count\(1) & ((\inst|count[0]~16\) # (GND)))
-- \inst|count[1]~18\ = CARRY((!\inst|count[0]~16\) # (!\inst|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(1),
	datad => VCC,
	cin => \inst|count[0]~16\,
	combout => \inst|count[1]~17_combout\,
	cout => \inst|count[1]~18\);

-- Location: FF_X108_Y30_N5
\inst|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_distance~input_o\,
	d => \inst|count[1]~17_combout\,
	sclr => \inst|count[3]~42_combout\,
	ena => \inst|count[3]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(1));

-- Location: LCCOMB_X108_Y30_N6
\inst|count[2]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|count[2]~19_combout\ = (\inst|count\(2) & (\inst|count[1]~18\ $ (GND))) # (!\inst|count\(2) & (!\inst|count[1]~18\ & VCC))
-- \inst|count[2]~20\ = CARRY((\inst|count\(2) & !\inst|count[1]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(2),
	datad => VCC,
	cin => \inst|count[1]~18\,
	combout => \inst|count[2]~19_combout\,
	cout => \inst|count[2]~20\);

-- Location: FF_X108_Y30_N7
\inst|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_distance~input_o\,
	d => \inst|count[2]~19_combout\,
	sclr => \inst|count[3]~42_combout\,
	ena => \inst|count[3]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(2));

-- Location: LCCOMB_X108_Y30_N8
\inst|count[3]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|count[3]~22_combout\ = (\inst|count\(3) & (!\inst|count[2]~20\)) # (!\inst|count\(3) & ((\inst|count[2]~20\) # (GND)))
-- \inst|count[3]~23\ = CARRY((!\inst|count[2]~20\) # (!\inst|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(3),
	datad => VCC,
	cin => \inst|count[2]~20\,
	combout => \inst|count[3]~22_combout\,
	cout => \inst|count[3]~23\);

-- Location: FF_X108_Y30_N9
\inst|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_distance~input_o\,
	d => \inst|count[3]~22_combout\,
	sclr => \inst|count[3]~42_combout\,
	ena => \inst|count[3]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(3));

-- Location: LCCOMB_X108_Y30_N10
\inst|count[4]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|count[4]~24_combout\ = (\inst|count\(4) & (\inst|count[3]~23\ $ (GND))) # (!\inst|count\(4) & (!\inst|count[3]~23\ & VCC))
-- \inst|count[4]~25\ = CARRY((\inst|count\(4) & !\inst|count[3]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count\(4),
	datad => VCC,
	cin => \inst|count[3]~23\,
	combout => \inst|count[4]~24_combout\,
	cout => \inst|count[4]~25\);

-- Location: FF_X108_Y30_N11
\inst|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_distance~input_o\,
	d => \inst|count[4]~24_combout\,
	sclr => \inst|count[3]~42_combout\,
	ena => \inst|count[3]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(4));

-- Location: LCCOMB_X108_Y30_N12
\inst|count[5]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|count[5]~26_combout\ = (\inst|count\(5) & (!\inst|count[4]~25\)) # (!\inst|count\(5) & ((\inst|count[4]~25\) # (GND)))
-- \inst|count[5]~27\ = CARRY((!\inst|count[4]~25\) # (!\inst|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count\(5),
	datad => VCC,
	cin => \inst|count[4]~25\,
	combout => \inst|count[5]~26_combout\,
	cout => \inst|count[5]~27\);

-- Location: FF_X108_Y30_N13
\inst|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_distance~input_o\,
	d => \inst|count[5]~26_combout\,
	sclr => \inst|count[3]~42_combout\,
	ena => \inst|count[3]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(5));

-- Location: LCCOMB_X108_Y30_N14
\inst|count[6]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|count[6]~28_combout\ = (\inst|count\(6) & (\inst|count[5]~27\ $ (GND))) # (!\inst|count\(6) & (!\inst|count[5]~27\ & VCC))
-- \inst|count[6]~29\ = CARRY((\inst|count\(6) & !\inst|count[5]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count\(6),
	datad => VCC,
	cin => \inst|count[5]~27\,
	combout => \inst|count[6]~28_combout\,
	cout => \inst|count[6]~29\);

-- Location: FF_X108_Y30_N15
\inst|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_distance~input_o\,
	d => \inst|count[6]~28_combout\,
	sclr => \inst|count[3]~42_combout\,
	ena => \inst|count[3]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(6));

-- Location: LCCOMB_X108_Y30_N16
\inst|count[7]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|count[7]~30_combout\ = (\inst|count\(7) & (!\inst|count[6]~29\)) # (!\inst|count\(7) & ((\inst|count[6]~29\) # (GND)))
-- \inst|count[7]~31\ = CARRY((!\inst|count[6]~29\) # (!\inst|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count\(7),
	datad => VCC,
	cin => \inst|count[6]~29\,
	combout => \inst|count[7]~30_combout\,
	cout => \inst|count[7]~31\);

-- Location: FF_X108_Y30_N17
\inst|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_distance~input_o\,
	d => \inst|count[7]~30_combout\,
	sclr => \inst|count[3]~42_combout\,
	ena => \inst|count[3]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(7));

-- Location: LCCOMB_X108_Y30_N18
\inst|count[8]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|count[8]~32_combout\ = (\inst|count\(8) & (\inst|count[7]~31\ $ (GND))) # (!\inst|count\(8) & (!\inst|count[7]~31\ & VCC))
-- \inst|count[8]~33\ = CARRY((\inst|count\(8) & !\inst|count[7]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(8),
	datad => VCC,
	cin => \inst|count[7]~31\,
	combout => \inst|count[8]~32_combout\,
	cout => \inst|count[8]~33\);

-- Location: FF_X108_Y30_N19
\inst|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_distance~input_o\,
	d => \inst|count[8]~32_combout\,
	sclr => \inst|count[3]~42_combout\,
	ena => \inst|count[3]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(8));

-- Location: LCCOMB_X108_Y30_N20
\inst|count[9]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|count[9]~34_combout\ = (\inst|count\(9) & (!\inst|count[8]~33\)) # (!\inst|count\(9) & ((\inst|count[8]~33\) # (GND)))
-- \inst|count[9]~35\ = CARRY((!\inst|count[8]~33\) # (!\inst|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count\(9),
	datad => VCC,
	cin => \inst|count[8]~33\,
	combout => \inst|count[9]~34_combout\,
	cout => \inst|count[9]~35\);

-- Location: FF_X108_Y30_N21
\inst|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_distance~input_o\,
	d => \inst|count[9]~34_combout\,
	sclr => \inst|count[3]~42_combout\,
	ena => \inst|count[3]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(9));

-- Location: LCCOMB_X108_Y30_N22
\inst|count[10]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|count[10]~36_combout\ = (\inst|count\(10) & (\inst|count[9]~35\ $ (GND))) # (!\inst|count\(10) & (!\inst|count[9]~35\ & VCC))
-- \inst|count[10]~37\ = CARRY((\inst|count\(10) & !\inst|count[9]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(10),
	datad => VCC,
	cin => \inst|count[9]~35\,
	combout => \inst|count[10]~36_combout\,
	cout => \inst|count[10]~37\);

-- Location: FF_X108_Y30_N23
\inst|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_distance~input_o\,
	d => \inst|count[10]~36_combout\,
	sclr => \inst|count[3]~42_combout\,
	ena => \inst|count[3]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(10));

-- Location: LCCOMB_X108_Y30_N24
\inst|count[11]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|count[11]~38_combout\ = (\inst|count\(11) & (!\inst|count[10]~37\)) # (!\inst|count\(11) & ((\inst|count[10]~37\) # (GND)))
-- \inst|count[11]~39\ = CARRY((!\inst|count[10]~37\) # (!\inst|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count\(11),
	datad => VCC,
	cin => \inst|count[10]~37\,
	combout => \inst|count[11]~38_combout\,
	cout => \inst|count[11]~39\);

-- Location: FF_X108_Y30_N25
\inst|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_distance~input_o\,
	d => \inst|count[11]~38_combout\,
	sclr => \inst|count[3]~42_combout\,
	ena => \inst|count[3]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(11));

-- Location: LCCOMB_X108_Y30_N30
\inst|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~2_combout\ = (\inst|count\(10)) # ((\inst|count\(9)) # ((\inst|count\(8)) # (\inst|count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(10),
	datab => \inst|count\(9),
	datac => \inst|count\(8),
	datad => \inst|count\(11),
	combout => \inst|LessThan0~2_combout\);

-- Location: LCCOMB_X108_Y30_N26
\inst|count[12]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|count[12]~40_combout\ = \inst|count\(12) $ (!\inst|count[11]~39\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(12),
	cin => \inst|count[11]~39\,
	combout => \inst|count[12]~40_combout\);

-- Location: FF_X108_Y30_N27
\inst|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_distance~input_o\,
	d => \inst|count[12]~40_combout\,
	sclr => \inst|count[3]~42_combout\,
	ena => \inst|count[3]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(12));

-- Location: LCCOMB_X108_Y30_N0
\inst|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~1_combout\ = (\inst|count\(5)) # ((\inst|count\(7)) # ((\inst|count\(6)) # (\inst|count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(5),
	datab => \inst|count\(7),
	datac => \inst|count\(6),
	datad => \inst|count\(4),
	combout => \inst|LessThan0~1_combout\);

-- Location: LCCOMB_X108_Y30_N28
\inst|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~0_combout\ = (\inst|count\(2)) # ((\inst|count\(3)) # ((\inst|count\(1) & \inst|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(2),
	datab => \inst|count\(3),
	datac => \inst|count\(1),
	datad => \inst|count\(0),
	combout => \inst|LessThan0~0_combout\);

-- Location: LCCOMB_X107_Y30_N10
\inst|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~3_combout\ = (\inst|LessThan0~2_combout\) # ((\inst|count\(12)) # ((\inst|LessThan0~1_combout\) # (\inst|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan0~2_combout\,
	datab => \inst|count\(12),
	datac => \inst|LessThan0~1_combout\,
	datad => \inst|LessThan0~0_combout\,
	combout => \inst|LessThan0~3_combout\);

-- Location: LCCOMB_X107_Y30_N20
\inst|miles[5]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|miles[5]~42_combout\ = ((\stop~input_o\) # ((!\pause~input_o\ & \inst|LessThan0~3_combout\))) # (!\start~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start~input_o\,
	datab => \stop~input_o\,
	datac => \pause~input_o\,
	datad => \inst|LessThan0~3_combout\,
	combout => \inst|miles[5]~42_combout\);

-- Location: FF_X106_Y29_N3
\inst|miles[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_distance~input_o\,
	d => \inst|miles[0]~15_combout\,
	sclr => \inst|miles[5]~31_combout\,
	ena => \inst|miles[5]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|miles\(0));

-- Location: LCCOMB_X106_Y29_N4
\inst|miles[1]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|miles[1]~17_combout\ = (\inst|miles\(1) & (!\inst|miles[0]~16\)) # (!\inst|miles\(1) & ((\inst|miles[0]~16\) # (GND)))
-- \inst|miles[1]~18\ = CARRY((!\inst|miles[0]~16\) # (!\inst|miles\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|miles\(1),
	datad => VCC,
	cin => \inst|miles[0]~16\,
	combout => \inst|miles[1]~17_combout\,
	cout => \inst|miles[1]~18\);

-- Location: FF_X106_Y29_N5
\inst|miles[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_distance~input_o\,
	d => \inst|miles[1]~17_combout\,
	sclr => \inst|miles[5]~31_combout\,
	ena => \inst|miles[5]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|miles\(1));

-- Location: LCCOMB_X106_Y29_N6
\inst|miles[2]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|miles[2]~19_combout\ = (\inst|miles\(2) & (\inst|miles[1]~18\ $ (GND))) # (!\inst|miles\(2) & (!\inst|miles[1]~18\ & VCC))
-- \inst|miles[2]~20\ = CARRY((\inst|miles\(2) & !\inst|miles[1]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|miles\(2),
	datad => VCC,
	cin => \inst|miles[1]~18\,
	combout => \inst|miles[2]~19_combout\,
	cout => \inst|miles[2]~20\);

-- Location: FF_X106_Y29_N7
\inst|miles[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_distance~input_o\,
	d => \inst|miles[2]~19_combout\,
	sclr => \inst|miles[5]~31_combout\,
	ena => \inst|miles[5]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|miles\(2));

-- Location: LCCOMB_X106_Y29_N8
\inst|miles[3]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|miles[3]~21_combout\ = (\inst|miles\(3) & (!\inst|miles[2]~20\)) # (!\inst|miles\(3) & ((\inst|miles[2]~20\) # (GND)))
-- \inst|miles[3]~22\ = CARRY((!\inst|miles[2]~20\) # (!\inst|miles\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|miles\(3),
	datad => VCC,
	cin => \inst|miles[2]~20\,
	combout => \inst|miles[3]~21_combout\,
	cout => \inst|miles[3]~22\);

-- Location: FF_X106_Y29_N9
\inst|miles[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_distance~input_o\,
	d => \inst|miles[3]~21_combout\,
	sclr => \inst|miles[5]~31_combout\,
	ena => \inst|miles[5]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|miles\(3));

-- Location: LCCOMB_X106_Y29_N10
\inst|miles[4]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|miles[4]~23_combout\ = (\inst|miles\(4) & (\inst|miles[3]~22\ $ (GND))) # (!\inst|miles\(4) & (!\inst|miles[3]~22\ & VCC))
-- \inst|miles[4]~24\ = CARRY((\inst|miles\(4) & !\inst|miles[3]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|miles\(4),
	datad => VCC,
	cin => \inst|miles[3]~22\,
	combout => \inst|miles[4]~23_combout\,
	cout => \inst|miles[4]~24\);

-- Location: FF_X106_Y29_N11
\inst|miles[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_distance~input_o\,
	d => \inst|miles[4]~23_combout\,
	sclr => \inst|miles[5]~31_combout\,
	ena => \inst|miles[5]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|miles\(4));

-- Location: LCCOMB_X106_Y29_N12
\inst|miles[5]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|miles[5]~25_combout\ = (\inst|miles\(5) & (!\inst|miles[4]~24\)) # (!\inst|miles\(5) & ((\inst|miles[4]~24\) # (GND)))
-- \inst|miles[5]~26\ = CARRY((!\inst|miles[4]~24\) # (!\inst|miles\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|miles\(5),
	datad => VCC,
	cin => \inst|miles[4]~24\,
	combout => \inst|miles[5]~25_combout\,
	cout => \inst|miles[5]~26\);

-- Location: FF_X106_Y29_N13
\inst|miles[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_distance~input_o\,
	d => \inst|miles[5]~25_combout\,
	sclr => \inst|miles[5]~31_combout\,
	ena => \inst|miles[5]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|miles\(5));

-- Location: LCCOMB_X106_Y29_N14
\inst|miles[6]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|miles[6]~27_combout\ = (\inst|miles\(6) & (\inst|miles[5]~26\ $ (GND))) # (!\inst|miles\(6) & (!\inst|miles[5]~26\ & VCC))
-- \inst|miles[6]~28\ = CARRY((\inst|miles\(6) & !\inst|miles[5]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|miles\(6),
	datad => VCC,
	cin => \inst|miles[5]~26\,
	combout => \inst|miles[6]~27_combout\,
	cout => \inst|miles[6]~28\);

-- Location: FF_X106_Y29_N15
\inst|miles[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_distance~input_o\,
	d => \inst|miles[6]~27_combout\,
	sclr => \inst|miles[5]~31_combout\,
	ena => \inst|miles[5]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|miles\(6));

-- Location: LCCOMB_X106_Y29_N16
\inst|miles[7]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|miles[7]~29_combout\ = (\inst|miles\(7) & (!\inst|miles[6]~28\)) # (!\inst|miles\(7) & ((\inst|miles[6]~28\) # (GND)))
-- \inst|miles[7]~30\ = CARRY((!\inst|miles[6]~28\) # (!\inst|miles\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|miles\(7),
	datad => VCC,
	cin => \inst|miles[6]~28\,
	combout => \inst|miles[7]~29_combout\,
	cout => \inst|miles[7]~30\);

-- Location: FF_X106_Y29_N17
\inst|miles[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_distance~input_o\,
	d => \inst|miles[7]~29_combout\,
	sclr => \inst|miles[5]~31_combout\,
	ena => \inst|miles[5]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|miles\(7));

-- Location: LCCOMB_X106_Y29_N18
\inst|miles[8]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|miles[8]~32_combout\ = (\inst|miles\(8) & (\inst|miles[7]~30\ $ (GND))) # (!\inst|miles\(8) & (!\inst|miles[7]~30\ & VCC))
-- \inst|miles[8]~33\ = CARRY((\inst|miles\(8) & !\inst|miles[7]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|miles\(8),
	datad => VCC,
	cin => \inst|miles[7]~30\,
	combout => \inst|miles[8]~32_combout\,
	cout => \inst|miles[8]~33\);

-- Location: FF_X106_Y29_N19
\inst|miles[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_distance~input_o\,
	d => \inst|miles[8]~32_combout\,
	sclr => \inst|miles[5]~31_combout\,
	ena => \inst|miles[5]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|miles\(8));

-- Location: LCCOMB_X106_Y29_N20
\inst|miles[9]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|miles[9]~34_combout\ = (\inst|miles\(9) & (!\inst|miles[8]~33\)) # (!\inst|miles\(9) & ((\inst|miles[8]~33\) # (GND)))
-- \inst|miles[9]~35\ = CARRY((!\inst|miles[8]~33\) # (!\inst|miles\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|miles\(9),
	datad => VCC,
	cin => \inst|miles[8]~33\,
	combout => \inst|miles[9]~34_combout\,
	cout => \inst|miles[9]~35\);

-- Location: FF_X106_Y29_N21
\inst|miles[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_distance~input_o\,
	d => \inst|miles[9]~34_combout\,
	sclr => \inst|miles[5]~31_combout\,
	ena => \inst|miles[5]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|miles\(9));

-- Location: LCCOMB_X106_Y29_N22
\inst|miles[10]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|miles[10]~36_combout\ = (\inst|miles\(10) & (\inst|miles[9]~35\ $ (GND))) # (!\inst|miles\(10) & (!\inst|miles[9]~35\ & VCC))
-- \inst|miles[10]~37\ = CARRY((\inst|miles\(10) & !\inst|miles[9]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|miles\(10),
	datad => VCC,
	cin => \inst|miles[9]~35\,
	combout => \inst|miles[10]~36_combout\,
	cout => \inst|miles[10]~37\);

-- Location: FF_X106_Y29_N23
\inst|miles[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_distance~input_o\,
	d => \inst|miles[10]~36_combout\,
	sclr => \inst|miles[5]~31_combout\,
	ena => \inst|miles[5]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|miles\(10));

-- Location: LCCOMB_X106_Y29_N24
\inst|miles[11]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|miles[11]~38_combout\ = (\inst|miles\(11) & (!\inst|miles[10]~37\)) # (!\inst|miles\(11) & ((\inst|miles[10]~37\) # (GND)))
-- \inst|miles[11]~39\ = CARRY((!\inst|miles[10]~37\) # (!\inst|miles\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|miles\(11),
	datad => VCC,
	cin => \inst|miles[10]~37\,
	combout => \inst|miles[11]~38_combout\,
	cout => \inst|miles[11]~39\);

-- Location: FF_X106_Y29_N25
\inst|miles[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_distance~input_o\,
	d => \inst|miles[11]~38_combout\,
	sclr => \inst|miles[5]~31_combout\,
	ena => \inst|miles[5]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|miles\(11));

-- Location: LCCOMB_X106_Y29_N26
\inst|miles[12]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|miles[12]~40_combout\ = \inst|miles[11]~39\ $ (!\inst|miles\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|miles\(12),
	cin => \inst|miles[11]~39\,
	combout => \inst|miles[12]~40_combout\);

-- Location: FF_X106_Y29_N27
\inst|miles[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_distance~input_o\,
	d => \inst|miles[12]~40_combout\,
	sclr => \inst|miles[5]~31_combout\,
	ena => \inst|miles[5]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|miles\(12));

-- Location: FF_X105_Y29_N1
\inst21|tmp[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|x~clkctrl_outclk\,
	asdata => \inst|miles\(12),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|tmp\(12));

-- Location: FF_X105_Y29_N3
\inst21|tmp[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|x~clkctrl_outclk\,
	asdata => \inst|miles\(11),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|tmp\(11));

-- Location: FF_X105_Y29_N29
\inst21|tmp[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|x~clkctrl_outclk\,
	asdata => \inst|miles\(10),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|tmp\(10));

-- Location: FF_X105_Y29_N31
\inst21|tmp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|x~clkctrl_outclk\,
	asdata => \inst|miles\(9),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|tmp\(9));

-- Location: FF_X105_Y29_N5
\inst21|tmp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|x~clkctrl_outclk\,
	asdata => \inst|miles\(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|tmp\(8));

-- Location: FF_X105_Y29_N9
\inst21|tmp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|x~clkctrl_outclk\,
	asdata => \inst|miles\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|tmp\(7));

-- Location: LCCOMB_X105_Y29_N6
\inst21|tmp[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst21|tmp[6]~feeder_combout\ = \inst|miles\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|miles\(6),
	combout => \inst21|tmp[6]~feeder_combout\);

-- Location: FF_X105_Y29_N7
\inst21|tmp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|x~clkctrl_outclk\,
	d => \inst21|tmp[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|tmp\(6));

-- Location: LCCOMB_X105_Y29_N12
\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~1_cout\ = CARRY(\inst21|tmp\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|tmp\(6),
	datad => VCC,
	cout => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~1_cout\);

-- Location: LCCOMB_X105_Y29_N14
\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~2_combout\ = (\inst21|tmp\(7) & (\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~1_cout\ & VCC)) # (!\inst21|tmp\(7) & 
-- (!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~1_cout\))
-- \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~3\ = CARRY((!\inst21|tmp\(7) & !\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst21|tmp\(7),
	datad => VCC,
	cin => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~1_cout\,
	combout => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~2_combout\,
	cout => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~3\);

-- Location: LCCOMB_X105_Y29_N16
\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~4_combout\ = (\inst21|tmp\(8) & (\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~3\ $ (GND))) # (!\inst21|tmp\(8) & 
-- (!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~3\ & VCC))
-- \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~5\ = CARRY((\inst21|tmp\(8) & !\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst21|tmp\(8),
	datad => VCC,
	cin => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~3\,
	combout => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~4_combout\,
	cout => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~5\);

-- Location: LCCOMB_X105_Y29_N18
\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~6_combout\ = (\inst21|tmp\(9) & (!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~5\)) # (!\inst21|tmp\(9) & 
-- ((\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~5\) # (GND)))
-- \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~7\ = CARRY((!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~5\) # (!\inst21|tmp\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|tmp\(9),
	datad => VCC,
	cin => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~5\,
	combout => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~6_combout\,
	cout => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~7\);

-- Location: LCCOMB_X105_Y29_N20
\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~8_combout\ = (\inst21|tmp\(10) & (\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~7\ $ (GND))) # (!\inst21|tmp\(10) & 
-- (!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~7\ & VCC))
-- \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~9\ = CARRY((\inst21|tmp\(10) & !\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst21|tmp\(10),
	datad => VCC,
	cin => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~7\,
	combout => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~8_combout\,
	cout => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~9\);

-- Location: LCCOMB_X105_Y29_N22
\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~10_combout\ = (\inst21|tmp\(11) & (!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~9\)) # (!\inst21|tmp\(11) & 
-- ((\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~9\) # (GND)))
-- \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~11\ = CARRY((!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~9\) # (!\inst21|tmp\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst21|tmp\(11),
	datad => VCC,
	cin => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~9\,
	combout => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~10_combout\,
	cout => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~11\);

-- Location: LCCOMB_X105_Y29_N24
\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~12_combout\ = (\inst21|tmp\(12) & (\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~11\ $ (GND))) # (!\inst21|tmp\(12) & 
-- (!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~11\ & VCC))
-- \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~13\ = CARRY((\inst21|tmp\(12) & !\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst21|tmp\(12),
	datad => VCC,
	cin => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~11\,
	combout => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~12_combout\,
	cout => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~13\);

-- Location: LCCOMB_X105_Y29_N26
\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~14_combout\ = !\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~13\,
	combout => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~14_combout\);

-- Location: LCCOMB_X105_Y29_N28
\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[106]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[106]~3_combout\ = (\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~14_combout\ & (\inst21|tmp\(10))) # 
-- (!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~14_combout\ & ((\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~14_combout\,
	datac => \inst21|tmp\(10),
	datad => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~8_combout\,
	combout => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[106]~3_combout\);

-- Location: LCCOMB_X105_Y29_N30
\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[105]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[105]~4_combout\ = (\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~14_combout\ & ((\inst21|tmp\(9)))) # 
-- (!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~14_combout\ & (\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~14_combout\,
	datab => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~6_combout\,
	datac => \inst21|tmp\(9),
	combout => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[105]~4_combout\);

-- Location: LCCOMB_X105_Y29_N4
\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[104]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[104]~5_combout\ = (\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~14_combout\ & (\inst21|tmp\(8))) # 
-- (!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~14_combout\ & ((\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~14_combout\,
	datac => \inst21|tmp\(8),
	datad => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~4_combout\,
	combout => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[104]~5_combout\);

-- Location: LCCOMB_X105_Y29_N8
\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[103]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[103]~0_combout\ = (\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~14_combout\ & ((\inst21|tmp\(7)))) # 
-- (!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~14_combout\ & (\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~14_combout\,
	datab => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~2_combout\,
	datac => \inst21|tmp\(7),
	combout => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[103]~0_combout\);

-- Location: FF_X107_Y29_N29
\inst21|tmp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|x~clkctrl_outclk\,
	asdata => \inst|miles\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|tmp\(5));

-- Location: LCCOMB_X105_Y25_N6
\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~1_cout\ = CARRY(\inst21|tmp\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst21|tmp\(5),
	datad => VCC,
	cout => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~1_cout\);

-- Location: LCCOMB_X105_Y25_N8
\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~2_combout\ = (\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~1_cout\ & ((\inst21|tmp\(6) $ 
-- (!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~14_combout\)))) # (!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~1_cout\ & (\inst21|tmp\(6) $ 
-- ((\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~14_combout\))))
-- \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~3\ = CARRY((!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~1_cout\ & (\inst21|tmp\(6) $ (\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|tmp\(6),
	datab => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~14_combout\,
	datad => VCC,
	cin => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~1_cout\,
	combout => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~2_combout\,
	cout => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~3\);

-- Location: LCCOMB_X105_Y25_N10
\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~4_combout\ = (\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[103]~0_combout\ & (\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~3\ $ (GND))) # 
-- (!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[103]~0_combout\ & (!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~3\ & VCC))
-- \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~5\ = CARRY((\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[103]~0_combout\ & !\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[103]~0_combout\,
	datad => VCC,
	cin => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~3\,
	combout => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~4_combout\,
	cout => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~5\);

-- Location: LCCOMB_X105_Y25_N12
\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~6_combout\ = (\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[104]~5_combout\ & (!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~5\)) # 
-- (!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[104]~5_combout\ & ((\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~5\) # (GND)))
-- \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~7\ = CARRY((!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~5\) # (!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[104]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[104]~5_combout\,
	datad => VCC,
	cin => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~5\,
	combout => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~6_combout\,
	cout => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~7\);

-- Location: LCCOMB_X105_Y25_N14
\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~8_combout\ = (\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[105]~4_combout\ & (\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~7\ $ (GND))) # 
-- (!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[105]~4_combout\ & (!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~7\ & VCC))
-- \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~9\ = CARRY((\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[105]~4_combout\ & !\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[105]~4_combout\,
	datad => VCC,
	cin => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~7\,
	combout => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~8_combout\,
	cout => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~9\);

-- Location: LCCOMB_X105_Y25_N16
\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~10_combout\ = (\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[106]~3_combout\ & (!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~9\)) # 
-- (!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[106]~3_combout\ & ((\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~9\) # (GND)))
-- \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~11\ = CARRY((!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~9\) # (!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[106]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[106]~3_combout\,
	datad => VCC,
	cin => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~9\,
	combout => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~10_combout\,
	cout => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~11\);

-- Location: LCCOMB_X105_Y29_N0
\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[108]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[108]~1_combout\ = (\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~14_combout\ & (\inst21|tmp\(12))) # 
-- (!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~14_combout\ & ((\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~14_combout\,
	datac => \inst21|tmp\(12),
	datad => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~12_combout\,
	combout => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[108]~1_combout\);

-- Location: LCCOMB_X105_Y29_N2
\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[107]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[107]~2_combout\ = (\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~14_combout\ & (\inst21|tmp\(11))) # 
-- (!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~14_combout\ & ((\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~14_combout\,
	datac => \inst21|tmp\(11),
	datad => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~10_combout\,
	combout => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[107]~2_combout\);

-- Location: LCCOMB_X105_Y25_N18
\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~12_combout\ = (\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[107]~2_combout\ & (\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~11\ $ (GND))) # 
-- (!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[107]~2_combout\ & (!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~11\ & VCC))
-- \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~13\ = CARRY((\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[107]~2_combout\ & !\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[107]~2_combout\,
	datad => VCC,
	cin => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~11\,
	combout => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~12_combout\,
	cout => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~13\);

-- Location: LCCOMB_X105_Y25_N20
\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~15_cout\ = CARRY((!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[108]~1_combout\ & !\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[108]~1_combout\,
	datad => VCC,
	cin => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~13\,
	cout => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~15_cout\);

-- Location: LCCOMB_X105_Y25_N22
\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16_combout\ = \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~15_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~15_cout\,
	combout => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16_combout\);

-- Location: LCCOMB_X105_Y25_N28
\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[118]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[118]~9_combout\ = (\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16_combout\ & 
-- ((\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[106]~3_combout\))) # (!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16_combout\ & (\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~10_combout\,
	datac => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16_combout\,
	datad => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[106]~3_combout\,
	combout => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[118]~9_combout\);

-- Location: LCCOMB_X105_Y25_N2
\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[117]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[117]~10_combout\ = (\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16_combout\ & 
-- ((\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[105]~4_combout\))) # (!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16_combout\ & (\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~8_combout\,
	datac => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16_combout\,
	datad => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[105]~4_combout\,
	combout => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[117]~10_combout\);

-- Location: LCCOMB_X105_Y25_N0
\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[116]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[116]~11_combout\ = (\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16_combout\ & (\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[104]~5_combout\)) 
-- # (!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16_combout\ & ((\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[104]~5_combout\,
	datac => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16_combout\,
	datad => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~6_combout\,
	combout => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[116]~11_combout\);

-- Location: LCCOMB_X105_Y25_N4
\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[115]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[115]~6_combout\ = (\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16_combout\ & 
-- ((\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[103]~0_combout\))) # (!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16_combout\ & (\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~4_combout\,
	datac => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16_combout\,
	datad => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[103]~0_combout\,
	combout => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[115]~6_combout\);

-- Location: LCCOMB_X105_Y25_N26
\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[114]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[114]~7_combout\ = (\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16_combout\ & (\inst21|tmp\(6) $ 
-- (((!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~14_combout\))))) # (!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16_combout\ & (((\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|tmp\(6),
	datab => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~2_combout\,
	datac => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16_combout\,
	datad => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~14_combout\,
	combout => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[114]~7_combout\);

-- Location: FF_X107_Y29_N7
\inst21|tmp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|x~clkctrl_outclk\,
	asdata => \inst|miles\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|tmp\(4));

-- Location: LCCOMB_X103_Y25_N6
\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~1_cout\ = CARRY(\inst21|tmp\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|tmp\(4),
	datad => VCC,
	cout => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~1_cout\);

-- Location: LCCOMB_X103_Y25_N8
\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~2_combout\ = (\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~1_cout\ & ((\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16_combout\ $ 
-- (!\inst21|tmp\(5))))) # (!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~1_cout\ & (\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16_combout\ $ ((\inst21|tmp\(5)))))
-- \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~3\ = CARRY((!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~1_cout\ & (\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16_combout\ $ (\inst21|tmp\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16_combout\,
	datab => \inst21|tmp\(5),
	datad => VCC,
	cin => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~1_cout\,
	combout => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~2_combout\,
	cout => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~3\);

-- Location: LCCOMB_X103_Y25_N10
\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~4_combout\ = (\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[114]~7_combout\ & (\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~3\ $ (GND))) # 
-- (!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[114]~7_combout\ & (!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~3\ & VCC))
-- \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~5\ = CARRY((\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[114]~7_combout\ & !\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[114]~7_combout\,
	datad => VCC,
	cin => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~3\,
	combout => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~4_combout\,
	cout => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~5\);

-- Location: LCCOMB_X103_Y25_N12
\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~6_combout\ = (\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[115]~6_combout\ & (!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~5\)) # 
-- (!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[115]~6_combout\ & ((\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~5\) # (GND)))
-- \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~7\ = CARRY((!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~5\) # (!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[115]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[115]~6_combout\,
	datad => VCC,
	cin => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~5\,
	combout => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~6_combout\,
	cout => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~7\);

-- Location: LCCOMB_X103_Y25_N14
\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~8_combout\ = (\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[116]~11_combout\ & (\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~7\ $ (GND))) # 
-- (!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[116]~11_combout\ & (!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~7\ & VCC))
-- \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~9\ = CARRY((\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[116]~11_combout\ & !\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[116]~11_combout\,
	datad => VCC,
	cin => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~7\,
	combout => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~8_combout\,
	cout => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~9\);

-- Location: LCCOMB_X103_Y25_N16
\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~10_combout\ = (\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[117]~10_combout\ & (!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~9\)) # 
-- (!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[117]~10_combout\ & ((\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~9\) # (GND)))
-- \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~11\ = CARRY((!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~9\) # (!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[117]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[117]~10_combout\,
	datad => VCC,
	cin => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~9\,
	combout => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~10_combout\,
	cout => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~11\);

-- Location: LCCOMB_X103_Y25_N18
\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~12_combout\ = (\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[118]~9_combout\ & (\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~11\ $ (GND))) # 
-- (!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[118]~9_combout\ & (!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~11\ & VCC))
-- \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~13\ = CARRY((\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[118]~9_combout\ & !\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[118]~9_combout\,
	datad => VCC,
	cin => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~11\,
	combout => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~12_combout\,
	cout => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~13\);

-- Location: LCCOMB_X105_Y25_N24
\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[119]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[119]~8_combout\ = (\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16_combout\ & 
-- ((\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[107]~2_combout\))) # (!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16_combout\ & (\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16_combout\,
	datab => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~12_combout\,
	datac => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[107]~2_combout\,
	combout => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[119]~8_combout\);

-- Location: LCCOMB_X103_Y25_N20
\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~15_cout\ = CARRY((!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[119]~8_combout\ & !\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[119]~8_combout\,
	datad => VCC,
	cin => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~13\,
	cout => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~15_cout\);

-- Location: LCCOMB_X103_Y25_N22
\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\ = \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~15_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~15_cout\,
	combout => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\);

-- Location: LCCOMB_X103_Y25_N0
\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[130]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[130]~15_combout\ = (\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\ & 
-- ((\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[118]~9_combout\))) # (!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\ & (\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~12_combout\,
	datac => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\,
	datad => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[118]~9_combout\,
	combout => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[130]~15_combout\);

-- Location: LCCOMB_X103_Y25_N2
\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[129]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[129]~16_combout\ = (\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\ & 
-- ((\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[117]~10_combout\))) # (!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\ & (\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~10_combout\,
	datac => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\,
	datad => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[117]~10_combout\,
	combout => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[129]~16_combout\);

-- Location: LCCOMB_X103_Y25_N28
\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[128]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[128]~17_combout\ = (\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\ & 
-- ((\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[116]~11_combout\))) # (!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\ & (\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~8_combout\,
	datac => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\,
	datad => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[116]~11_combout\,
	combout => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[128]~17_combout\);

-- Location: LCCOMB_X103_Y25_N4
\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[127]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[127]~12_combout\ = (\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\ & (\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[115]~6_combout\)) 
-- # (!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\ & ((\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\,
	datac => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[115]~6_combout\,
	datad => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~6_combout\,
	combout => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[127]~12_combout\);

-- Location: LCCOMB_X103_Y25_N30
\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[126]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[126]~13_combout\ = (\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\ & (\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[114]~7_combout\)) 
-- # (!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\ & ((\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\,
	datac => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[114]~7_combout\,
	datad => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~4_combout\,
	combout => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[126]~13_combout\);

-- Location: LCCOMB_X103_Y25_N24
\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[125]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[125]~14_combout\ = (\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\ & ((\inst21|tmp\(5) $ 
-- (!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16_combout\)))) # (!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\ & (\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\,
	datab => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~2_combout\,
	datac => \inst21|tmp\(5),
	datad => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16_combout\,
	combout => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[125]~14_combout\);

-- Location: FF_X107_Y29_N17
\inst21|tmp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|x~clkctrl_outclk\,
	asdata => \inst|miles\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|tmp\(3));

-- Location: LCCOMB_X102_Y25_N8
\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~1_cout\ = CARRY(\inst21|tmp\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst21|tmp\(3),
	datad => VCC,
	cout => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~1_cout\);

-- Location: LCCOMB_X102_Y25_N10
\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~2_combout\ = (\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~1_cout\ & ((\inst21|tmp\(4) $ 
-- (!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\)))) # (!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~1_cout\ & (\inst21|tmp\(4) $ 
-- ((\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\))))
-- \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~3\ = CARRY((!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~1_cout\ & (\inst21|tmp\(4) $ (\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|tmp\(4),
	datab => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\,
	datad => VCC,
	cin => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~1_cout\,
	combout => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~2_combout\,
	cout => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~3\);

-- Location: LCCOMB_X102_Y25_N12
\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~4_combout\ = (\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[125]~14_combout\ & (\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~3\ $ (GND))) # 
-- (!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[125]~14_combout\ & (!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~3\ & VCC))
-- \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~5\ = CARRY((\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[125]~14_combout\ & !\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[125]~14_combout\,
	datad => VCC,
	cin => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~3\,
	combout => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~4_combout\,
	cout => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~5\);

-- Location: LCCOMB_X102_Y25_N14
\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~6_combout\ = (\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[126]~13_combout\ & (!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~5\)) # 
-- (!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[126]~13_combout\ & ((\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~5\) # (GND)))
-- \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~7\ = CARRY((!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~5\) # (!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[126]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[126]~13_combout\,
	datad => VCC,
	cin => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~5\,
	combout => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~6_combout\,
	cout => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~7\);

-- Location: LCCOMB_X102_Y25_N16
\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~8_combout\ = (\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[127]~12_combout\ & (\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~7\ $ (GND))) # 
-- (!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[127]~12_combout\ & (!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~7\ & VCC))
-- \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~9\ = CARRY((\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[127]~12_combout\ & !\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[127]~12_combout\,
	datad => VCC,
	cin => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~7\,
	combout => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~8_combout\,
	cout => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~9\);

-- Location: LCCOMB_X102_Y25_N18
\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~10_combout\ = (\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[128]~17_combout\ & (!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~9\)) # 
-- (!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[128]~17_combout\ & ((\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~9\) # (GND)))
-- \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~11\ = CARRY((!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~9\) # (!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[128]~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[128]~17_combout\,
	datad => VCC,
	cin => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~9\,
	combout => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~10_combout\,
	cout => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~11\);

-- Location: LCCOMB_X102_Y25_N20
\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~12_combout\ = (\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[129]~16_combout\ & (\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~11\ $ (GND))) # 
-- (!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[129]~16_combout\ & (!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~11\ & VCC))
-- \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~13\ = CARRY((\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[129]~16_combout\ & !\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[129]~16_combout\,
	datad => VCC,
	cin => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~11\,
	combout => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~12_combout\,
	cout => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~13\);

-- Location: LCCOMB_X102_Y25_N22
\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~15_cout\ = CARRY((!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[130]~15_combout\ & !\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[130]~15_combout\,
	datad => VCC,
	cin => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~13\,
	cout => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~15_cout\);

-- Location: LCCOMB_X102_Y25_N24
\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~16_combout\ = \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~15_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~15_cout\,
	combout => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~16_combout\);

-- Location: LCCOMB_X102_Y25_N26
\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[140]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[140]~22_combout\ = (\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~16_combout\ & 
-- ((\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[128]~17_combout\))) # (!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~16_combout\ & (\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~16_combout\,
	datac => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~10_combout\,
	datad => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[128]~17_combout\,
	combout => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[140]~22_combout\);

-- Location: LCCOMB_X102_Y25_N4
\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[139]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[139]~18_combout\ = (\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~16_combout\ & 
-- (\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[127]~12_combout\)) # (!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~16_combout\ & ((\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[127]~12_combout\,
	datab => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~8_combout\,
	datad => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~16_combout\,
	combout => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[139]~18_combout\);

-- Location: LCCOMB_X102_Y25_N30
\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[138]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[138]~19_combout\ = (\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~16_combout\ & 
-- (\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[126]~13_combout\)) # (!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~16_combout\ & ((\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[126]~13_combout\,
	datab => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~16_combout\,
	datac => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~6_combout\,
	combout => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[138]~19_combout\);

-- Location: LCCOMB_X102_Y25_N0
\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[137]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[137]~20_combout\ = (\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~16_combout\ & 
-- ((\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[125]~14_combout\))) # (!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~16_combout\ & (\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~4_combout\,
	datab => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~16_combout\,
	datad => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[125]~14_combout\,
	combout => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[137]~20_combout\);

-- Location: LCCOMB_X102_Y21_N20
\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~1_cout\ = CARRY(\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[137]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[137]~20_combout\,
	datad => VCC,
	cout => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~1_cout\);

-- Location: LCCOMB_X102_Y21_N22
\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~2_combout\ = (\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[138]~19_combout\ & (\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~1_cout\ & VCC)) # 
-- (!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[138]~19_combout\ & (!\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~1_cout\))
-- \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~3\ = CARRY((!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[138]~19_combout\ & !\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[138]~19_combout\,
	datad => VCC,
	cin => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~1_cout\,
	combout => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~2_combout\,
	cout => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~3\);

-- Location: LCCOMB_X102_Y21_N24
\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~4_combout\ = (\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[139]~18_combout\ & ((GND) # (!\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~3\))) # 
-- (!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[139]~18_combout\ & (\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~3\ $ (GND)))
-- \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~5\ = CARRY((\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[139]~18_combout\) # (!\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[139]~18_combout\,
	datad => VCC,
	cin => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~3\,
	combout => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~4_combout\,
	cout => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~5\);

-- Location: LCCOMB_X102_Y21_N26
\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~6_combout\ = (\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[140]~22_combout\ & (!\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~5\)) # 
-- (!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[140]~22_combout\ & ((\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~5\) # (GND)))
-- \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~7\ = CARRY((!\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~5\) # (!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[140]~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[140]~22_combout\,
	datad => VCC,
	cin => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~5\,
	combout => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~6_combout\,
	cout => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~7\);

-- Location: LCCOMB_X102_Y25_N2
\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[141]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[141]~21_combout\ = (\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~16_combout\ & 
-- (\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[129]~16_combout\)) # (!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~16_combout\ & ((\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[129]~16_combout\,
	datab => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~12_combout\,
	datad => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~16_combout\,
	combout => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[141]~21_combout\);

-- Location: LCCOMB_X102_Y21_N28
\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~8_combout\ = (\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[141]~21_combout\ & (\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~7\ $ (GND))) # 
-- (!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[141]~21_combout\ & (!\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~7\ & VCC))
-- \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~9\ = CARRY((\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[141]~21_combout\ & !\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[141]~21_combout\,
	datad => VCC,
	cin => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~7\,
	combout => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~8_combout\,
	cout => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~9\);

-- Location: LCCOMB_X102_Y21_N30
\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~10_combout\ = !\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~9\,
	combout => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~10_combout\);

-- Location: LCCOMB_X102_Y21_N12
\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[53]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[53]~3_combout\ = (\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~10_combout\ & 
-- ((\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[140]~22_combout\))) # (!\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~10_combout\ & (\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~6_combout\,
	datac => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~10_combout\,
	datad => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[140]~22_combout\,
	combout => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[53]~3_combout\);

-- Location: LCCOMB_X102_Y21_N0
\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[52]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[52]~0_combout\ = (\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~10_combout\ & 
-- ((\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[139]~18_combout\))) # (!\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~10_combout\ & (\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~4_combout\,
	datac => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~10_combout\,
	datad => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[139]~18_combout\,
	combout => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[52]~0_combout\);

-- Location: LCCOMB_X102_Y22_N20
\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[51]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[51]~1_combout\ = (\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~10_combout\ & 
-- ((\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[138]~19_combout\))) # (!\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~10_combout\ & (\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~10_combout\,
	datac => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~2_combout\,
	datad => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[138]~19_combout\,
	combout => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[51]~1_combout\);

-- Location: LCCOMB_X102_Y25_N28
\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[136]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[136]~23_combout\ = (\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~16_combout\ & (\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\ $ 
-- (((!\inst21|tmp\(4)))))) # (!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~16_combout\ & (((\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\,
	datab => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~16_combout\,
	datac => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~2_combout\,
	datad => \inst21|tmp\(4),
	combout => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[136]~23_combout\);

-- Location: LCCOMB_X102_Y22_N4
\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~1_cout\ = CARRY(\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[136]~23_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[136]~23_combout\,
	datad => VCC,
	cout => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~1_cout\);

-- Location: LCCOMB_X102_Y22_N6
\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~2_combout\ = (\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~1_cout\ & ((\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~10_combout\ $ 
-- (!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[137]~20_combout\)))) # (!\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~1_cout\ & (\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~10_combout\ $ 
-- ((\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[137]~20_combout\))))
-- \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~3\ = CARRY((!\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~1_cout\ & (\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~10_combout\ $ 
-- (\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[137]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~10_combout\,
	datab => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[137]~20_combout\,
	datad => VCC,
	cin => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~1_cout\,
	combout => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~2_combout\,
	cout => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~3\);

-- Location: LCCOMB_X102_Y22_N8
\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~4_combout\ = (\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[51]~1_combout\ & ((GND) # (!\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~3\))) # 
-- (!\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[51]~1_combout\ & (\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~3\ $ (GND)))
-- \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~5\ = CARRY((\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[51]~1_combout\) # (!\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[51]~1_combout\,
	datad => VCC,
	cin => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~3\,
	combout => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~4_combout\,
	cout => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~5\);

-- Location: LCCOMB_X102_Y22_N10
\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~6_combout\ = (\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[52]~0_combout\ & (!\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~5\)) # 
-- (!\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[52]~0_combout\ & ((\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~5\) # (GND)))
-- \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~7\ = CARRY((!\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~5\) # (!\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[52]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[52]~0_combout\,
	datad => VCC,
	cin => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~5\,
	combout => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~6_combout\,
	cout => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~7\);

-- Location: LCCOMB_X102_Y22_N12
\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~8_combout\ = (\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[53]~3_combout\ & (\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~7\ $ (GND))) # 
-- (!\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[53]~3_combout\ & (!\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~7\ & VCC))
-- \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~9\ = CARRY((\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[53]~3_combout\ & !\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[53]~3_combout\,
	datad => VCC,
	cin => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~7\,
	combout => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~8_combout\,
	cout => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~9\);

-- Location: LCCOMB_X102_Y21_N14
\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[54]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[54]~2_combout\ = (\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~10_combout\ & 
-- ((\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[141]~21_combout\))) # (!\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~10_combout\ & (\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~10_combout\,
	datab => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~8_combout\,
	datac => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[141]~21_combout\,
	combout => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[54]~2_combout\);

-- Location: LCCOMB_X102_Y22_N14
\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~11_cout\ = CARRY((!\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[54]~2_combout\ & !\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[54]~2_combout\,
	datad => VCC,
	cin => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~9\,
	cout => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~11_cout\);

-- Location: LCCOMB_X102_Y22_N16
\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~12_combout\ = \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~11_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~11_cout\,
	combout => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~12_combout\);

-- Location: LCCOMB_X102_Y22_N22
\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[62]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[62]~7_combout\ = (\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~12_combout\ & ((\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[53]~3_combout\))) 
-- # (!\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~12_combout\ & (\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~8_combout\,
	datac => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[53]~3_combout\,
	datad => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~12_combout\,
	combout => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[62]~7_combout\);

-- Location: LCCOMB_X102_Y22_N26
\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[61]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[61]~4_combout\ = (\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~12_combout\ & ((\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[52]~0_combout\))) 
-- # (!\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~12_combout\ & (\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~6_combout\,
	datab => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[52]~0_combout\,
	datad => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~12_combout\,
	combout => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[61]~4_combout\);

-- Location: LCCOMB_X102_Y22_N2
\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[60]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[60]~5_combout\ = (\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~12_combout\ & (\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[51]~1_combout\)) # 
-- (!\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~12_combout\ & ((\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[51]~1_combout\,
	datac => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~4_combout\,
	datad => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~12_combout\,
	combout => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[60]~5_combout\);

-- Location: LCCOMB_X102_Y22_N28
\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[59]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[59]~6_combout\ = (\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~12_combout\ & (\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~10_combout\ $ 
-- ((!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[137]~20_combout\)))) # (!\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~12_combout\ & 
-- (((\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~10_combout\,
	datab => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~12_combout\,
	datac => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[137]~20_combout\,
	datad => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~2_combout\,
	combout => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[59]~6_combout\);

-- Location: LCCOMB_X103_Y22_N12
\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~1_cout\ = CARRY(\inst21|tmp\(3) $ (!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|tmp\(3),
	datab => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~16_combout\,
	datad => VCC,
	cout => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~1_cout\);

-- Location: LCCOMB_X103_Y22_N14
\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~2_combout\ = (\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~1_cout\ & ((\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~12_combout\ $ 
-- (!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[136]~23_combout\)))) # (!\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~1_cout\ & (\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~12_combout\ $ 
-- ((\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[136]~23_combout\))))
-- \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~3\ = CARRY((!\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~1_cout\ & (\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~12_combout\ $ 
-- (\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[136]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~12_combout\,
	datab => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[136]~23_combout\,
	datad => VCC,
	cin => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~1_cout\,
	combout => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~2_combout\,
	cout => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~3\);

-- Location: LCCOMB_X103_Y22_N16
\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~4_combout\ = (\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[59]~6_combout\ & ((GND) # (!\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~3\))) # 
-- (!\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[59]~6_combout\ & (\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~3\ $ (GND)))
-- \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~5\ = CARRY((\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[59]~6_combout\) # (!\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[59]~6_combout\,
	datad => VCC,
	cin => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~3\,
	combout => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~4_combout\,
	cout => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~5\);

-- Location: LCCOMB_X103_Y22_N18
\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~6_combout\ = (\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[60]~5_combout\ & (!\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~5\)) # 
-- (!\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[60]~5_combout\ & ((\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~5\) # (GND)))
-- \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~7\ = CARRY((!\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~5\) # (!\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[60]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[60]~5_combout\,
	datad => VCC,
	cin => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~5\,
	combout => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~6_combout\,
	cout => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~7\);

-- Location: LCCOMB_X103_Y22_N20
\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~8_combout\ = (\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[61]~4_combout\ & (\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~7\ $ (GND))) # 
-- (!\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[61]~4_combout\ & (!\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~7\ & VCC))
-- \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~9\ = CARRY((\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[61]~4_combout\ & !\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[61]~4_combout\,
	datad => VCC,
	cin => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~7\,
	combout => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~8_combout\,
	cout => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~9\);

-- Location: LCCOMB_X103_Y22_N22
\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~11_cout\ = CARRY((!\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[62]~7_combout\ & !\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[62]~7_combout\,
	datad => VCC,
	cin => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~9\,
	cout => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~11_cout\);

-- Location: LCCOMB_X103_Y22_N24
\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~12_combout\ = \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~11_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~11_cout\,
	combout => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~12_combout\);

-- Location: LCCOMB_X103_Y22_N4
\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[70]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[70]~8_combout\ = (\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~12_combout\ & ((\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[61]~4_combout\))) 
-- # (!\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~12_combout\ & (\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~8_combout\,
	datac => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[61]~4_combout\,
	datad => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~12_combout\,
	combout => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[70]~8_combout\);

-- Location: LCCOMB_X103_Y22_N6
\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[69]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[69]~9_combout\ = (\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~12_combout\ & (\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[60]~5_combout\)) # 
-- (!\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~12_combout\ & ((\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[60]~5_combout\,
	datab => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~6_combout\,
	datad => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~12_combout\,
	combout => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[69]~9_combout\);

-- Location: LCCOMB_X103_Y22_N0
\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[68]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[68]~10_combout\ = (\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~12_combout\ & ((\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[59]~6_combout\))) 
-- # (!\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~12_combout\ & (\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~4_combout\,
	datac => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~12_combout\,
	datad => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[59]~6_combout\,
	combout => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[68]~10_combout\);

-- Location: LCCOMB_X103_Y22_N10
\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[67]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[67]~11_combout\ = (\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~12_combout\ & (\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~12_combout\ $ 
-- ((!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[136]~23_combout\)))) # (!\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~12_combout\ & 
-- (((\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~12_combout\,
	datab => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[136]~23_combout\,
	datac => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~2_combout\,
	datad => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~12_combout\,
	combout => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[67]~11_combout\);

-- Location: LCCOMB_X103_Y22_N28
\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[135]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[135]~24_combout\ = \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~16_combout\ $ (\inst21|tmp\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~16_combout\,
	datad => \inst21|tmp\(3),
	combout => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[135]~24_combout\);

-- Location: FF_X107_Y29_N23
\inst21|tmp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|x~clkctrl_outclk\,
	asdata => \inst|miles\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|tmp\(2));

-- Location: LCCOMB_X105_Y22_N8
\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~1_cout\ = CARRY(\inst21|tmp\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|tmp\(2),
	datad => VCC,
	cout => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~1_cout\);

-- Location: LCCOMB_X105_Y22_N10
\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~2_combout\ = (\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~1_cout\ & ((\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[135]~24_combout\ $ 
-- (\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~12_combout\)))) # (!\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~1_cout\ & (\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[135]~24_combout\ $ 
-- ((!\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~12_combout\))))
-- \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~3\ = CARRY((!\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~1_cout\ & (\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[135]~24_combout\ $ 
-- (!\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[135]~24_combout\,
	datab => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~12_combout\,
	datad => VCC,
	cin => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~1_cout\,
	combout => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~2_combout\,
	cout => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~3\);

-- Location: LCCOMB_X105_Y22_N12
\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~4_combout\ = (\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[67]~11_combout\ & ((GND) # (!\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~3\))) # 
-- (!\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[67]~11_combout\ & (\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~3\ $ (GND)))
-- \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~5\ = CARRY((\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[67]~11_combout\) # (!\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[67]~11_combout\,
	datad => VCC,
	cin => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~3\,
	combout => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~4_combout\,
	cout => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~5\);

-- Location: LCCOMB_X105_Y22_N14
\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~6_combout\ = (\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[68]~10_combout\ & (!\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~5\)) # 
-- (!\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[68]~10_combout\ & ((\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~5\) # (GND)))
-- \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~7\ = CARRY((!\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~5\) # (!\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[68]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[68]~10_combout\,
	datad => VCC,
	cin => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~5\,
	combout => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~6_combout\,
	cout => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~7\);

-- Location: LCCOMB_X105_Y22_N16
\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~8_combout\ = (\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[69]~9_combout\ & (\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~7\ $ (GND))) # 
-- (!\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[69]~9_combout\ & (!\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~7\ & VCC))
-- \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~9\ = CARRY((\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[69]~9_combout\ & !\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[69]~9_combout\,
	datad => VCC,
	cin => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~7\,
	combout => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~8_combout\,
	cout => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~9\);

-- Location: LCCOMB_X105_Y22_N18
\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~11_cout\ = CARRY((!\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[70]~8_combout\ & !\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[70]~8_combout\,
	datad => VCC,
	cin => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~9\,
	cout => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~11_cout\);

-- Location: LCCOMB_X105_Y22_N20
\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~12_combout\ = \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~11_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~11_cout\,
	combout => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~12_combout\);

-- Location: LCCOMB_X102_Y21_N18
\inst27|WideOr0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst27|WideOr0~combout\ = (\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~12_combout\ & (\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~12_combout\ $ 
-- (((\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~12_combout\) # (!\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~10_combout\))))) # (!\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~12_combout\ & 
-- (((!\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011110000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~12_combout\,
	datab => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~12_combout\,
	datac => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~10_combout\,
	datad => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~12_combout\,
	combout => \inst27|WideOr0~combout\);

-- Location: LCCOMB_X102_Y21_N16
\inst27|WideOr1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst27|WideOr1~2_combout\ = (\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~12_combout\ & (!\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~12_combout\ & 
-- (!\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~10_combout\))) # (!\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~12_combout\ & ((\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~12_combout\ $ 
-- (\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~12_combout\)) # (!\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011100100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~12_combout\,
	datab => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~12_combout\,
	datac => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~10_combout\,
	datad => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~12_combout\,
	combout => \inst27|WideOr1~2_combout\);

-- Location: LCCOMB_X102_Y21_N2
\inst27|output[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst27|output\(4) = (\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~12_combout\ & (!\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~12_combout\ & 
-- ((\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~12_combout\) # (!\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~10_combout\)))) # (!\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~12_combout\ & 
-- (((!\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~12_combout\,
	datab => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~12_combout\,
	datac => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~10_combout\,
	datad => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~12_combout\,
	combout => \inst27|output\(4));

-- Location: LCCOMB_X102_Y21_N4
\inst27|WideOr2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst27|WideOr2~combout\ = (\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~12_combout\ & (\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~12_combout\ $ 
-- (((\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~12_combout\) # (!\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~10_combout\))))) # (!\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~12_combout\ & 
-- (((!\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~12_combout\ & !\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~12_combout\)) # (!\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011110010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~12_combout\,
	datab => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~12_combout\,
	datac => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~10_combout\,
	datad => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~12_combout\,
	combout => \inst27|WideOr2~combout\);

-- Location: LCCOMB_X102_Y21_N10
\inst27|WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst27|WideOr3~0_combout\ = (\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~12_combout\ & ((\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~12_combout\ & 
-- (\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~12_combout\)) # (!\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~12_combout\ & ((\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~12_combout\,
	datab => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~12_combout\,
	datac => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~10_combout\,
	datad => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~12_combout\,
	combout => \inst27|WideOr3~0_combout\);

-- Location: LCCOMB_X102_Y21_N8
\inst27|WideOr4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst27|WideOr4~combout\ = (\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~12_combout\ & (((\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~10_combout\ & 
-- !\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~12_combout\)) # (!\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~12_combout\))) # (!\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~12_combout\ & 
-- (((!\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~12_combout\ & !\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~12_combout\)) # (!\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011111010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~12_combout\,
	datab => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~12_combout\,
	datac => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~10_combout\,
	datad => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~12_combout\,
	combout => \inst27|WideOr4~combout\);

-- Location: LCCOMB_X102_Y21_N6
\inst27|WideOr5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst27|WideOr5~combout\ = (\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~12_combout\ & (\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~12_combout\ $ 
-- ((!\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~10_combout\)))) # (!\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~12_combout\ & (((!\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~12_combout\ & 
-- !\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~12_combout\)) # (!\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011110010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~12_combout\,
	datab => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~12_combout\,
	datac => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~10_combout\,
	datad => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~12_combout\,
	combout => \inst27|WideOr5~combout\);

-- Location: LCCOMB_X74_Y4_N12
\inst25|WideOr0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|WideOr0~combout\ = (\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\ & (\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16_combout\ $ 
-- (((\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~16_combout\) # (!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~14_combout\))))) # (!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\ & 
-- (((!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\,
	datab => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16_combout\,
	datac => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~16_combout\,
	datad => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~14_combout\,
	combout => \inst25|WideOr0~combout\);

-- Location: LCCOMB_X74_Y4_N26
\inst25|WideOr1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|WideOr1~2_combout\ = (\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16_combout\ & (!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\ & 
-- ((!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~14_combout\)))) # (!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16_combout\ & ((\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\ $ 
-- (\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~16_combout\)) # (!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\,
	datab => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16_combout\,
	datac => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~16_combout\,
	datad => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~14_combout\,
	combout => \inst25|WideOr1~2_combout\);

-- Location: LCCOMB_X74_Y4_N28
\inst25|output[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|output\(4) = (\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16_combout\ & (!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\ & 
-- ((\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~16_combout\) # (!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~14_combout\)))) # (!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16_combout\ & 
-- (((!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\,
	datab => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16_combout\,
	datac => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~16_combout\,
	datad => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~14_combout\,
	combout => \inst25|output\(4));

-- Location: LCCOMB_X74_Y4_N22
\inst25|WideOr2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|WideOr2~combout\ = (\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\ & (\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16_combout\ $ 
-- (((\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~16_combout\) # (!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~14_combout\))))) # (!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\ & 
-- (((!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16_combout\ & !\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~16_combout\)) # (!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\,
	datab => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16_combout\,
	datac => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~16_combout\,
	datad => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~14_combout\,
	combout => \inst25|WideOr2~combout\);

-- Location: LCCOMB_X74_Y4_N24
\inst25|WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|WideOr3~0_combout\ = (\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~16_combout\ & ((\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\ & 
-- (\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16_combout\)) # (!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\ & ((\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\,
	datab => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16_combout\,
	datac => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~16_combout\,
	datad => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~14_combout\,
	combout => \inst25|WideOr3~0_combout\);

-- Location: LCCOMB_X74_Y4_N14
\inst25|WideOr4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|WideOr4~combout\ = (\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16_combout\ & (((!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~16_combout\ & 
-- \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~14_combout\)) # (!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\))) # (!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16_combout\ & 
-- (((!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\ & !\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~16_combout\)) # (!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\,
	datab => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16_combout\,
	datac => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~16_combout\,
	datad => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~14_combout\,
	combout => \inst25|WideOr4~combout\);

-- Location: LCCOMB_X74_Y4_N4
\inst25|WideOr5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|WideOr5~combout\ = (\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\ & (\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16_combout\ $ 
-- (((!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~14_combout\))))) # (!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\ & (((!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16_combout\ & 
-- !\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~16_combout\)) # (!\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\,
	datab => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16_combout\,
	datac => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~16_combout\,
	datad => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~14_combout\,
	combout => \inst25|WideOr5~combout\);

-- Location: LCCOMB_X106_Y22_N12
\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[74]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[74]~12_combout\ = \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~12_combout\ $ (\inst21|tmp\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~12_combout\,
	datad => \inst21|tmp\(2),
	combout => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[74]~12_combout\);

-- Location: LCCOMB_X105_Y22_N24
\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[78]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[78]~13_combout\ = (\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~12_combout\ & ((\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[69]~9_combout\))) 
-- # (!\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~12_combout\ & (\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~8_combout\,
	datac => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[69]~9_combout\,
	datad => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~12_combout\,
	combout => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[78]~13_combout\);

-- Location: LCCOMB_X105_Y22_N6
\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[77]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[77]~14_combout\ = (\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~12_combout\ & (\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[68]~10_combout\)) 
-- # (!\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~12_combout\ & ((\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[68]~10_combout\,
	datac => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~6_combout\,
	datad => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~12_combout\,
	combout => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[77]~14_combout\);

-- Location: LCCOMB_X105_Y22_N4
\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[76]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[76]~15_combout\ = (\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~12_combout\ & (\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[67]~11_combout\)) 
-- # (!\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~12_combout\ & ((\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[67]~11_combout\,
	datab => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~12_combout\,
	datad => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~4_combout\,
	combout => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[76]~15_combout\);

-- Location: LCCOMB_X105_Y22_N22
\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[75]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[75]~16_combout\ = (\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~12_combout\ & ((\inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[135]~24_combout\ 
-- $ (\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~12_combout\)))) # (!\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~12_combout\ & (\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~2_combout\,
	datab => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~12_combout\,
	datac => \inst18|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[135]~24_combout\,
	datad => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~12_combout\,
	combout => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[75]~16_combout\);

-- Location: LCCOMB_X106_Y22_N28
\inst20|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[22]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst20|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[22]~0_combout\ = (\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[78]~13_combout\ & 
-- (!\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[76]~15_combout\ & ((\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[77]~14_combout\) # 
-- (!\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[75]~16_combout\)))) # (!\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[78]~13_combout\ & 
-- (\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[76]~15_combout\ & ((\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[75]~16_combout\) # 
-- (!\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[77]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[78]~13_combout\,
	datab => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[77]~14_combout\,
	datac => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[76]~15_combout\,
	datad => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[75]~16_combout\,
	combout => \inst20|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[22]~0_combout\);

-- Location: LCCOMB_X106_Y22_N30
\inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~0_combout\ = (\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[77]~14_combout\ & (!\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[75]~16_combout\ & 
-- (\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[78]~13_combout\ $ (!\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[76]~15_combout\)))) # 
-- (!\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[77]~14_combout\ & (\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[78]~13_combout\ & 
-- (!\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[76]~15_combout\ & \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[75]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[78]~13_combout\,
	datab => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[77]~14_combout\,
	datac => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[76]~15_combout\,
	datad => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[75]~16_combout\,
	combout => \inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~0_combout\);

-- Location: LCCOMB_X106_Y22_N16
\inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~0_combout\ = (\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[78]~13_combout\ & ((\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[77]~14_combout\ & 
-- (\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[76]~15_combout\ & \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[75]~16_combout\)) # 
-- (!\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[77]~14_combout\ & (!\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[76]~15_combout\)))) # 
-- (!\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[78]~13_combout\ & (\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[77]~14_combout\ & 
-- ((\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[76]~15_combout\) # (\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[75]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[78]~13_combout\,
	datab => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[77]~14_combout\,
	datac => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[76]~15_combout\,
	datad => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[75]~16_combout\,
	combout => \inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~0_combout\);

-- Location: LCCOMB_X106_Y22_N18
\inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~1_combout\ = (\inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~0_combout\ & ((\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~12_combout\ $ 
-- (!\inst21|tmp\(2))) # (!\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[75]~16_combout\))) # (!\inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~0_combout\ & 
-- ((\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[75]~16_combout\) # (\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~12_combout\ $ (!\inst21|tmp\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011111101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~0_combout\,
	datab => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~12_combout\,
	datac => \inst21|tmp\(2),
	datad => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[75]~16_combout\,
	combout => \inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~1_combout\);

-- Location: LCCOMB_X106_Y22_N10
\inst20|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[26]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst20|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[26]~3_combout\ = \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[74]~12_combout\ $ (((\inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~0_combout\) # 
-- ((\inst20|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[22]~0_combout\ & \inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[74]~12_combout\,
	datab => \inst20|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[22]~0_combout\,
	datac => \inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~0_combout\,
	datad => \inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~1_combout\,
	combout => \inst20|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[26]~3_combout\);

-- Location: LCCOMB_X105_Y29_N10
\inst21|tmp[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst21|tmp[1]~feeder_combout\ = \inst|miles\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|miles\(1),
	combout => \inst21|tmp[1]~feeder_combout\);

-- Location: FF_X105_Y29_N11
\inst21|tmp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|x~clkctrl_outclk\,
	d => \inst21|tmp[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|tmp\(1));

-- Location: LCCOMB_X106_Y22_N22
\inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~2_combout\ = (\inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~0_combout\) # ((\inst20|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[22]~0_combout\ & 
-- \inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst20|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[22]~0_combout\,
	datac => \inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~0_combout\,
	datad => \inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~1_combout\,
	combout => \inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~2_combout\);

-- Location: LCCOMB_X106_Y22_N4
\inst20|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[27]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst20|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[27]~1_combout\ = \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[75]~16_combout\ $ (\inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~0_combout\ $ 
-- (((\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[74]~12_combout\ & \inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[74]~12_combout\,
	datab => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[75]~16_combout\,
	datac => \inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~2_combout\,
	datad => \inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~0_combout\,
	combout => \inst20|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[27]~1_combout\);

-- Location: LCCOMB_X106_Y22_N26
\inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~2_combout\ = (\inst20|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[27]~1_combout\ & ((\inst21|tmp\(1)) # 
-- (\inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~2_combout\ $ (!\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[74]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~2_combout\,
	datab => \inst20|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[27]~1_combout\,
	datac => \inst21|tmp\(1),
	datad => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[74]~12_combout\,
	combout => \inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~2_combout\);

-- Location: LCCOMB_X106_Y22_N20
\inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~3_combout\ = (\inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~2_combout\) # ((\inst20|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[22]~0_combout\ & 
-- ((!\inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~1_combout\))) # (!\inst20|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[22]~0_combout\ & (\inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~0_combout\ & 
-- \inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~2_combout\,
	datab => \inst20|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[22]~0_combout\,
	datac => \inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~0_combout\,
	datad => \inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~1_combout\,
	combout => \inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~3_combout\);

-- Location: LCCOMB_X106_Y22_N8
\inst20|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[32]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst20|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[32]~4_combout\ = \inst20|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[26]~3_combout\ $ (((\inst21|tmp\(1)) # 
-- (!\inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[26]~3_combout\,
	datac => \inst21|tmp\(1),
	datad => \inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~3_combout\,
	combout => \inst20|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[32]~4_combout\);

-- Location: LCCOMB_X106_Y22_N24
\inst20|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[31]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst20|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[31]~2_combout\ = \inst21|tmp\(1) $ (\inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst21|tmp\(1),
	datad => \inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~3_combout\,
	combout => \inst20|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[31]~2_combout\);

-- Location: LCCOMB_X107_Y29_N12
\inst21|tmp[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst21|tmp[0]~feeder_combout\ = \inst|miles\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|miles\(0),
	combout => \inst21|tmp[0]~feeder_combout\);

-- Location: FF_X107_Y29_N13
\inst21|tmp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|x~clkctrl_outclk\,
	d => \inst21|tmp[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|tmp\(0));

-- Location: LCCOMB_X106_Y22_N14
\inst20|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[33]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst20|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[33]~5_combout\ = \inst20|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[27]~1_combout\ $ (((\inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~3_combout\ & 
-- ((\inst21|tmp\(1)) # (!\inst20|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[26]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[26]~3_combout\,
	datab => \inst20|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[27]~1_combout\,
	datac => \inst21|tmp\(1),
	datad => \inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~3_combout\,
	combout => \inst20|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[33]~5_combout\);

-- Location: LCCOMB_X107_Y22_N20
\inst31|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|Mux0~0_combout\ = (\inst20|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[31]~2_combout\ & (((\inst20|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[33]~5_combout\)))) # 
-- (!\inst20|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[31]~2_combout\ & (\inst20|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[32]~4_combout\ $ (((\inst21|tmp\(0) & 
-- !\inst20|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[33]~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[32]~4_combout\,
	datab => \inst20|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[31]~2_combout\,
	datac => \inst21|tmp\(0),
	datad => \inst20|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[33]~5_combout\,
	combout => \inst31|Mux0~0_combout\);

-- Location: LCCOMB_X107_Y22_N18
\inst31|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|Mux1~0_combout\ = (\inst20|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[32]~4_combout\ & ((\inst20|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[33]~5_combout\) # 
-- (\inst20|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[31]~2_combout\ $ (\inst21|tmp\(0))))) # (!\inst20|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[32]~4_combout\ & 
-- (\inst20|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[31]~2_combout\ & ((\inst20|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[33]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[32]~4_combout\,
	datab => \inst20|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[31]~2_combout\,
	datac => \inst21|tmp\(0),
	datad => \inst20|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[33]~5_combout\,
	combout => \inst31|Mux1~0_combout\);

-- Location: LCCOMB_X107_Y22_N12
\inst31|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|Mux2~0_combout\ = (\inst20|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[32]~4_combout\ & (((!\inst20|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[33]~5_combout\)))) # 
-- (!\inst20|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[32]~4_combout\ & (((\inst21|tmp\(0) & !\inst20|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[33]~5_combout\)) # 
-- (!\inst20|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[31]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[32]~4_combout\,
	datab => \inst20|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[31]~2_combout\,
	datac => \inst21|tmp\(0),
	datad => \inst20|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[33]~5_combout\,
	combout => \inst31|Mux2~0_combout\);

-- Location: LCCOMB_X107_Y22_N14
\inst31|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|Mux3~0_combout\ = (\inst20|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[31]~2_combout\ & ((\inst20|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[33]~5_combout\) # 
-- ((\inst20|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[32]~4_combout\ & \inst21|tmp\(0))))) # (!\inst20|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[31]~2_combout\ & 
-- (\inst20|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[32]~4_combout\ $ (((\inst21|tmp\(0) & !\inst20|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[33]~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[32]~4_combout\,
	datab => \inst20|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[31]~2_combout\,
	datac => \inst21|tmp\(0),
	datad => \inst20|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[33]~5_combout\,
	combout => \inst31|Mux3~0_combout\);

-- Location: LCCOMB_X107_Y22_N4
\inst31|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|Mux4~0_combout\ = (\inst21|tmp\(0)) # ((\inst20|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[31]~2_combout\ & ((\inst20|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[33]~5_combout\))) # 
-- (!\inst20|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[31]~2_combout\ & (\inst20|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[32]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[32]~4_combout\,
	datab => \inst20|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[31]~2_combout\,
	datac => \inst21|tmp\(0),
	datad => \inst20|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[33]~5_combout\,
	combout => \inst31|Mux4~0_combout\);

-- Location: LCCOMB_X107_Y22_N30
\inst31|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|Mux5~0_combout\ = (\inst20|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[32]~4_combout\ & (!\inst20|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[33]~5_combout\ & ((!\inst21|tmp\(0)) # 
-- (!\inst20|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[31]~2_combout\)))) # (!\inst20|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[32]~4_combout\ & 
-- (!\inst20|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[31]~2_combout\ & ((\inst20|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[33]~5_combout\) # (!\inst21|tmp\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[32]~4_combout\,
	datab => \inst20|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[31]~2_combout\,
	datac => \inst21|tmp\(0),
	datad => \inst20|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[33]~5_combout\,
	combout => \inst31|Mux5~0_combout\);

-- Location: LCCOMB_X107_Y22_N0
\inst31|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|Mux6~0_combout\ = (\inst20|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[32]~4_combout\ & ((\inst20|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[33]~5_combout\) # 
-- ((\inst20|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[31]~2_combout\ & \inst21|tmp\(0))))) # (!\inst20|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[32]~4_combout\ & 
-- (\inst20|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[31]~2_combout\ $ (((!\inst20|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[33]~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[32]~4_combout\,
	datab => \inst20|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[31]~2_combout\,
	datac => \inst21|tmp\(0),
	datad => \inst20|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[33]~5_combout\,
	combout => \inst31|Mux6~0_combout\);

-- Location: LCCOMB_X105_Y22_N26
\inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~0_combout\ = (\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[78]~13_combout\ & ((\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[77]~14_combout\) # 
-- (\inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[76]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[77]~14_combout\,
	datac => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[76]~15_combout\,
	datad => \inst19|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[78]~13_combout\,
	combout => \inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~0_combout\);

-- Location: LCCOMB_X92_Y4_N4
\inst29|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux0~0_combout\ = (\inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~2_combout\ & (((\inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~0_combout\)))) # 
-- (!\inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~2_combout\ & (\inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~0_combout\ $ (((\inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~3_combout\ & 
-- !\inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~0_combout\,
	datab => \inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~3_combout\,
	datac => \inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~0_combout\,
	datad => \inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~2_combout\,
	combout => \inst29|Mux0~0_combout\);

-- Location: LCCOMB_X92_Y4_N30
\inst29|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux1~0_combout\ = (\inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~0_combout\ & ((\inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~0_combout\) # 
-- (\inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~3_combout\ $ (\inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~2_combout\)))) # (!\inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~0_combout\ & 
-- (((\inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~0_combout\ & \inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~0_combout\,
	datab => \inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~3_combout\,
	datac => \inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~0_combout\,
	datad => \inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~2_combout\,
	combout => \inst29|Mux1~0_combout\);

-- Location: LCCOMB_X92_Y4_N12
\inst29|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux2~0_combout\ = (\inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~0_combout\ & (((\inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~0_combout\)))) # 
-- (!\inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~0_combout\ & (\inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~2_combout\ & ((\inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~0_combout\) # 
-- (!\inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~0_combout\,
	datab => \inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~3_combout\,
	datac => \inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~0_combout\,
	datad => \inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~2_combout\,
	combout => \inst29|Mux2~0_combout\);

-- Location: LCCOMB_X92_Y4_N22
\inst29|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux3~0_combout\ = (\inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~2_combout\ & ((\inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~0_combout\) # 
-- ((\inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~0_combout\ & \inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~3_combout\)))) # (!\inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~2_combout\ & 
-- (\inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~0_combout\ $ (((\inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~3_combout\ & !\inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~0_combout\,
	datab => \inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~3_combout\,
	datac => \inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~0_combout\,
	datad => \inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~2_combout\,
	combout => \inst29|Mux3~0_combout\);

-- Location: LCCOMB_X92_Y4_N24
\inst29|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux4~0_combout\ = (\inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~3_combout\) # ((\inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~2_combout\ & 
-- ((\inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~0_combout\))) # (!\inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~2_combout\ & (\inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~0_combout\,
	datab => \inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~3_combout\,
	datac => \inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~0_combout\,
	datad => \inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~2_combout\,
	combout => \inst29|Mux4~0_combout\);

-- Location: LCCOMB_X92_Y4_N10
\inst29|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux5~0_combout\ = (\inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~0_combout\ & ((\inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~0_combout\) # 
-- ((\inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~3_combout\ & \inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~2_combout\)))) # (!\inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~0_combout\ & 
-- ((\inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~2_combout\) # ((\inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~3_combout\ & !\inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~0_combout\,
	datab => \inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~3_combout\,
	datac => \inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~0_combout\,
	datad => \inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~2_combout\,
	combout => \inst29|Mux5~0_combout\);

-- Location: LCCOMB_X92_Y4_N28
\inst29|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux6~0_combout\ = (\inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~0_combout\ & (!\inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~0_combout\ & 
-- ((!\inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~2_combout\) # (!\inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~3_combout\)))) # (!\inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~0_combout\ & 
-- ((\inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~0_combout\ $ (\inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~0_combout\,
	datab => \inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~3_combout\,
	datac => \inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~0_combout\,
	datad => \inst20|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~2_combout\,
	combout => \inst29|Mux6~0_combout\);

-- Location: LCCOMB_X106_Y29_N0
\inst|LessThan3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan3~2_combout\ = (!\inst|miles\(7) & (!\inst|miles\(8) & !\inst|miles\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|miles\(7),
	datac => \inst|miles\(8),
	datad => \inst|miles\(9),
	combout => \inst|LessThan3~2_combout\);

-- Location: LCCOMB_X106_Y29_N30
\inst|LessThan3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan3~4_combout\ = (((!\inst|miles\(4)) # (!\inst|miles\(3))) # (!\inst|miles\(1))) # (!\inst|miles\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|miles\(2),
	datab => \inst|miles\(1),
	datac => \inst|miles\(3),
	datad => \inst|miles\(4),
	combout => \inst|LessThan3~4_combout\);

-- Location: LCCOMB_X107_Y29_N28
\inst|LessThan3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan3~5_combout\ = (\inst|LessThan3~2_combout\ & (!\inst|miles\(6) & (!\inst|miles\(5) & \inst|LessThan3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan3~2_combout\,
	datab => \inst|miles\(6),
	datac => \inst|miles\(5),
	datad => \inst|LessThan3~4_combout\,
	combout => \inst|LessThan3~5_combout\);

-- Location: LCCOMB_X107_Y29_N10
\inst|LessThan3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan3~6_combout\ = (!\inst|miles\(12) & (!\inst|miles\(11) & (!\inst|miles\(10) & \inst|LessThan3~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|miles\(12),
	datab => \inst|miles\(11),
	datac => \inst|miles\(10),
	datad => \inst|LessThan3~5_combout\,
	combout => \inst|LessThan3~6_combout\);

-- Location: LCCOMB_X106_Y29_N28
\inst|LessThan3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan3~3_combout\ = (!\inst|miles\(10) & (!\inst|miles\(12) & !\inst|miles\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|miles\(10),
	datac => \inst|miles\(12),
	datad => \inst|miles\(11),
	combout => \inst|LessThan3~3_combout\);

-- Location: LCCOMB_X107_Y29_N22
\inst|count2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|count2~0_combout\ = (\inst|miles\(6)) # ((\inst|miles\(5)) # (!\inst|LessThan3~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|miles\(6),
	datab => \inst|miles\(5),
	datad => \inst|LessThan3~3_combout\,
	combout => \inst|count2~0_combout\);

-- Location: LCCOMB_X107_Y29_N2
\inst|count2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|count2~1_combout\ = (\inst|count2~q\) # ((\inst|LessThan3~2_combout\ & (\inst|LessThan3~4_combout\ & !\inst|count2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan3~2_combout\,
	datab => \inst|LessThan3~4_combout\,
	datac => \inst|count2~0_combout\,
	datad => \inst|count2~q\,
	combout => \inst|count2~1_combout\);

-- Location: LCCOMB_X107_Y30_N30
\inst|count2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|count2~2_combout\ = (!\inst|miles[5]~31_combout\ & (!\pause~input_o\ & (\inst|LessThan0~3_combout\ & !\inst|count2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|miles[5]~31_combout\,
	datab => \pause~input_o\,
	datac => \inst|LessThan0~3_combout\,
	datad => \inst|count2~1_combout\,
	combout => \inst|count2~2_combout\);

-- Location: FF_X107_Y30_N31
\inst|count2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_distance~input_o\,
	d => \inst|count2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count2~q\);

-- Location: LCCOMB_X107_Y29_N6
\inst|LessThan4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan4~0_combout\ = ((!\inst|miles\(3) & (!\inst|miles\(2) & !\inst|miles\(4)))) # (!\inst|miles\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|miles\(3),
	datab => \inst|miles\(2),
	datac => \inst|miles\(4),
	datad => \inst|miles\(5),
	combout => \inst|LessThan4~0_combout\);

-- Location: LCCOMB_X107_Y29_N18
\inst|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~0_combout\ = (\inst|LessThan3~3_combout\ & (\inst|LessThan3~2_combout\ & ((\inst|LessThan4~0_combout\) # (!\inst|miles\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|miles\(6),
	datab => \inst|LessThan3~3_combout\,
	datac => \inst|LessThan3~2_combout\,
	datad => \inst|LessThan4~0_combout\,
	combout => \inst|process_0~0_combout\);

-- Location: LCCOMB_X107_Y29_N24
\inst|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~1_combout\ = (!\inst|LessThan3~5_combout\ & (\inst|count2~q\ & \inst|process_0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|LessThan3~5_combout\,
	datac => \inst|count2~q\,
	datad => \inst|process_0~0_combout\,
	combout => \inst|process_0~1_combout\);

-- Location: LCCOMB_X108_Y29_N4
\inst|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add3~0_combout\ = \inst|price\(0) $ (VCC)
-- \inst|Add3~1\ = CARRY(\inst|price\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|price\(0),
	datad => VCC,
	combout => \inst|Add3~0_combout\,
	cout => \inst|Add3~1\);

-- Location: LCCOMB_X107_Y29_N8
\inst|price~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|price~0_combout\ = (\inst|count2~q\ & ((\inst|process_0~0_combout\ & ((\inst|price\(0)))) # (!\inst|process_0~0_combout\ & (\inst|Add3~0_combout\)))) # (!\inst|count2~q\ & (((\inst|price\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add3~0_combout\,
	datab => \inst|price\(0),
	datac => \inst|count2~q\,
	datad => \inst|process_0~0_combout\,
	combout => \inst|price~0_combout\);

-- Location: LCCOMB_X107_Y29_N16
\inst|price~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|price~1_combout\ = (\inst|price~0_combout\ & !\inst|LessThan3~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|price~0_combout\,
	datad => \inst|LessThan3~6_combout\,
	combout => \inst|price~1_combout\);

-- Location: FF_X108_Y29_N11
\inst|price[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_distance~input_o\,
	asdata => \inst|price~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|price\(0));

-- Location: LCCOMB_X108_Y29_N6
\inst|Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add3~2_combout\ = (\inst|price\(1) & (\inst|Add3~1\ & VCC)) # (!\inst|price\(1) & (!\inst|Add3~1\))
-- \inst|Add3~3\ = CARRY((!\inst|price\(1) & !\inst|Add3~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|price\(1),
	datad => VCC,
	cin => \inst|Add3~1\,
	combout => \inst|Add3~2_combout\,
	cout => \inst|Add3~3\);

-- Location: LCCOMB_X109_Y29_N2
\inst|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~0_combout\ = \inst|price\(1) $ (VCC)
-- \inst|Add2~1\ = CARRY(\inst|price\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|price\(1),
	datad => VCC,
	combout => \inst|Add2~0_combout\,
	cout => \inst|Add2~1\);

-- Location: LCCOMB_X109_Y29_N30
\inst|Add2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~20_combout\ = (!\inst|LessThan3~6_combout\ & ((\inst|process_0~1_combout\ & ((\inst|Add2~0_combout\))) # (!\inst|process_0~1_combout\ & (\inst|Add3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add3~2_combout\,
	datab => \inst|Add2~0_combout\,
	datac => \inst|LessThan3~6_combout\,
	datad => \inst|process_0~1_combout\,
	combout => \inst|Add2~20_combout\);

-- Location: FF_X109_Y29_N31
\inst|price[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_distance~input_o\,
	d => \inst|Add2~20_combout\,
	ena => \inst|count2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|price\(1));

-- Location: LCCOMB_X108_Y29_N8
\inst|Add3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add3~4_combout\ = (\inst|price\(2) & (\inst|Add3~3\ $ (GND))) # (!\inst|price\(2) & (!\inst|Add3~3\ & VCC))
-- \inst|Add3~5\ = CARRY((\inst|price\(2) & !\inst|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|price\(2),
	datad => VCC,
	cin => \inst|Add3~3\,
	combout => \inst|Add3~4_combout\,
	cout => \inst|Add3~5\);

-- Location: LCCOMB_X109_Y29_N4
\inst|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~2_combout\ = (\inst|price\(2) & (!\inst|Add2~1\)) # (!\inst|price\(2) & ((\inst|Add2~1\) # (GND)))
-- \inst|Add2~3\ = CARRY((!\inst|Add2~1\) # (!\inst|price\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|price\(2),
	datad => VCC,
	cin => \inst|Add2~1\,
	combout => \inst|Add2~2_combout\,
	cout => \inst|Add2~3\);

-- Location: LCCOMB_X109_Y29_N0
\inst|Add2~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~19_combout\ = (\inst|LessThan3~6_combout\) # ((\inst|process_0~1_combout\ & ((\inst|Add2~2_combout\))) # (!\inst|process_0~1_combout\ & (\inst|Add3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add3~4_combout\,
	datab => \inst|Add2~2_combout\,
	datac => \inst|process_0~1_combout\,
	datad => \inst|LessThan3~6_combout\,
	combout => \inst|Add2~19_combout\);

-- Location: FF_X109_Y29_N1
\inst|price[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_distance~input_o\,
	d => \inst|Add2~19_combout\,
	ena => \inst|count2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|price\(2));

-- Location: LCCOMB_X109_Y29_N6
\inst|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~4_combout\ = (\inst|price\(3) & (\inst|Add2~3\ $ (GND))) # (!\inst|price\(3) & (!\inst|Add2~3\ & VCC))
-- \inst|Add2~5\ = CARRY((\inst|price\(3) & !\inst|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|price\(3),
	datad => VCC,
	cin => \inst|Add2~3\,
	combout => \inst|Add2~4_combout\,
	cout => \inst|Add2~5\);

-- Location: LCCOMB_X108_Y29_N10
\inst|Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add3~6_combout\ = (\inst|price\(3) & (!\inst|Add3~5\)) # (!\inst|price\(3) & ((\inst|Add3~5\) # (GND)))
-- \inst|Add3~7\ = CARRY((!\inst|Add3~5\) # (!\inst|price\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|price\(3),
	datad => VCC,
	cin => \inst|Add3~5\,
	combout => \inst|Add3~6_combout\,
	cout => \inst|Add3~7\);

-- Location: LCCOMB_X107_Y29_N0
\inst|Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~18_combout\ = (!\inst|LessThan3~6_combout\ & ((\inst|process_0~1_combout\ & (\inst|Add2~4_combout\)) # (!\inst|process_0~1_combout\ & ((\inst|Add3~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan3~6_combout\,
	datab => \inst|process_0~1_combout\,
	datac => \inst|Add2~4_combout\,
	datad => \inst|Add3~6_combout\,
	combout => \inst|Add2~18_combout\);

-- Location: FF_X107_Y29_N1
\inst|price[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_distance~input_o\,
	d => \inst|Add2~18_combout\,
	ena => \inst|count2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|price\(3));

-- Location: LCCOMB_X109_Y29_N8
\inst|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~6_combout\ = (\inst|price\(4) & (!\inst|Add2~5\)) # (!\inst|price\(4) & ((\inst|Add2~5\) # (GND)))
-- \inst|Add2~7\ = CARRY((!\inst|Add2~5\) # (!\inst|price\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|price\(4),
	datad => VCC,
	cin => \inst|Add2~5\,
	combout => \inst|Add2~6_combout\,
	cout => \inst|Add2~7\);

-- Location: LCCOMB_X108_Y29_N12
\inst|Add3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add3~8_combout\ = (\inst|price\(4) & (\inst|Add3~7\ $ (GND))) # (!\inst|price\(4) & (!\inst|Add3~7\ & VCC))
-- \inst|Add3~9\ = CARRY((\inst|price\(4) & !\inst|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|price\(4),
	datad => VCC,
	cin => \inst|Add3~7\,
	combout => \inst|Add3~8_combout\,
	cout => \inst|Add3~9\);

-- Location: LCCOMB_X108_Y29_N0
\inst|Add2~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~17_combout\ = (!\inst|LessThan3~6_combout\ & ((\inst|process_0~1_combout\ & (\inst|Add2~6_combout\)) # (!\inst|process_0~1_combout\ & ((\inst|Add3~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan3~6_combout\,
	datab => \inst|Add2~6_combout\,
	datac => \inst|process_0~1_combout\,
	datad => \inst|Add3~8_combout\,
	combout => \inst|Add2~17_combout\);

-- Location: FF_X108_Y29_N1
\inst|price[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_distance~input_o\,
	d => \inst|Add2~17_combout\,
	ena => \inst|count2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|price\(4));

-- Location: LCCOMB_X109_Y29_N10
\inst|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~8_combout\ = (\inst|price\(5) & (\inst|Add2~7\ $ (GND))) # (!\inst|price\(5) & (!\inst|Add2~7\ & VCC))
-- \inst|Add2~9\ = CARRY((\inst|price\(5) & !\inst|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|price\(5),
	datad => VCC,
	cin => \inst|Add2~7\,
	combout => \inst|Add2~8_combout\,
	cout => \inst|Add2~9\);

-- Location: LCCOMB_X108_Y29_N14
\inst|Add3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add3~10_combout\ = (\inst|price\(5) & (!\inst|Add3~9\)) # (!\inst|price\(5) & ((\inst|Add3~9\) # (GND)))
-- \inst|Add3~11\ = CARRY((!\inst|Add3~9\) # (!\inst|price\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|price\(5),
	datad => VCC,
	cin => \inst|Add3~9\,
	combout => \inst|Add3~10_combout\,
	cout => \inst|Add3~11\);

-- Location: LCCOMB_X107_Y29_N26
\inst|Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~16_combout\ = (\inst|LessThan3~6_combout\) # ((\inst|process_0~1_combout\ & (\inst|Add2~8_combout\)) # (!\inst|process_0~1_combout\ & ((\inst|Add3~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan3~6_combout\,
	datab => \inst|Add2~8_combout\,
	datac => \inst|Add3~10_combout\,
	datad => \inst|process_0~1_combout\,
	combout => \inst|Add2~16_combout\);

-- Location: FF_X107_Y29_N27
\inst|price[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_distance~input_o\,
	d => \inst|Add2~16_combout\,
	ena => \inst|count2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|price\(5));

-- Location: LCCOMB_X109_Y29_N12
\inst|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~10_combout\ = (\inst|price\(6) & (!\inst|Add2~9\)) # (!\inst|price\(6) & ((\inst|Add2~9\) # (GND)))
-- \inst|Add2~11\ = CARRY((!\inst|Add2~9\) # (!\inst|price\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|price\(6),
	datad => VCC,
	cin => \inst|Add2~9\,
	combout => \inst|Add2~10_combout\,
	cout => \inst|Add2~11\);

-- Location: LCCOMB_X108_Y29_N16
\inst|Add3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add3~12_combout\ = (\inst|price\(6) & (\inst|Add3~11\ $ (GND))) # (!\inst|price\(6) & (!\inst|Add3~11\ & VCC))
-- \inst|Add3~13\ = CARRY((\inst|price\(6) & !\inst|Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|price\(6),
	datad => VCC,
	cin => \inst|Add3~11\,
	combout => \inst|Add3~12_combout\,
	cout => \inst|Add3~13\);

-- Location: LCCOMB_X107_Y29_N20
\inst|Add2~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~15_combout\ = (\inst|LessThan3~6_combout\) # ((\inst|process_0~1_combout\ & (\inst|Add2~10_combout\)) # (!\inst|process_0~1_combout\ & ((\inst|Add3~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan3~6_combout\,
	datab => \inst|process_0~1_combout\,
	datac => \inst|Add2~10_combout\,
	datad => \inst|Add3~12_combout\,
	combout => \inst|Add2~15_combout\);

-- Location: FF_X107_Y29_N21
\inst|price[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_distance~input_o\,
	d => \inst|Add2~15_combout\,
	ena => \inst|count2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|price\(6));

-- Location: LCCOMB_X109_Y29_N14
\inst|Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~12_combout\ = (\inst|price\(7) & (\inst|Add2~11\ $ (GND))) # (!\inst|price\(7) & (!\inst|Add2~11\ & VCC))
-- \inst|Add2~13\ = CARRY((\inst|price\(7) & !\inst|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|price\(7),
	datad => VCC,
	cin => \inst|Add2~11\,
	combout => \inst|Add2~12_combout\,
	cout => \inst|Add2~13\);

-- Location: LCCOMB_X108_Y29_N18
\inst|Add3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add3~14_combout\ = (\inst|price\(7) & (!\inst|Add3~13\)) # (!\inst|price\(7) & ((\inst|Add3~13\) # (GND)))
-- \inst|Add3~15\ = CARRY((!\inst|Add3~13\) # (!\inst|price\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|price\(7),
	datad => VCC,
	cin => \inst|Add3~13\,
	combout => \inst|Add3~14_combout\,
	cout => \inst|Add3~15\);

-- Location: LCCOMB_X107_Y29_N14
\inst|Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~14_combout\ = (!\inst|LessThan3~6_combout\ & ((\inst|process_0~1_combout\ & (\inst|Add2~12_combout\)) # (!\inst|process_0~1_combout\ & ((\inst|Add3~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan3~6_combout\,
	datab => \inst|process_0~1_combout\,
	datac => \inst|Add2~12_combout\,
	datad => \inst|Add3~14_combout\,
	combout => \inst|Add2~14_combout\);

-- Location: FF_X107_Y29_N15
\inst|price[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_distance~input_o\,
	d => \inst|Add2~14_combout\,
	ena => \inst|count2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|price\(7));

-- Location: LCCOMB_X108_Y29_N20
\inst|Add3~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add3~16_combout\ = (\inst|price\(8) & (\inst|Add3~15\ $ (GND))) # (!\inst|price\(8) & (!\inst|Add3~15\ & VCC))
-- \inst|Add3~17\ = CARRY((\inst|price\(8) & !\inst|Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|price\(8),
	datad => VCC,
	cin => \inst|Add3~15\,
	combout => \inst|Add3~16_combout\,
	cout => \inst|Add3~17\);

-- Location: LCCOMB_X109_Y29_N16
\inst|Add2~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~21_combout\ = (\inst|price\(8) & (!\inst|Add2~13\)) # (!\inst|price\(8) & ((\inst|Add2~13\) # (GND)))
-- \inst|Add2~22\ = CARRY((!\inst|Add2~13\) # (!\inst|price\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|price\(8),
	datad => VCC,
	cin => \inst|Add2~13\,
	combout => \inst|Add2~21_combout\,
	cout => \inst|Add2~22\);

-- Location: LCCOMB_X107_Y29_N4
\inst|Add2~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~35_combout\ = (!\inst|LessThan3~6_combout\ & ((\inst|process_0~1_combout\ & ((\inst|Add2~21_combout\))) # (!\inst|process_0~1_combout\ & (\inst|Add3~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan3~6_combout\,
	datab => \inst|process_0~1_combout\,
	datac => \inst|Add3~16_combout\,
	datad => \inst|Add2~21_combout\,
	combout => \inst|Add2~35_combout\);

-- Location: FF_X107_Y29_N5
\inst|price[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_distance~input_o\,
	d => \inst|Add2~35_combout\,
	ena => \inst|count2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|price\(8));

-- Location: LCCOMB_X109_Y29_N18
\inst|Add2~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~23_combout\ = (\inst|price\(9) & (\inst|Add2~22\ $ (GND))) # (!\inst|price\(9) & (!\inst|Add2~22\ & VCC))
-- \inst|Add2~24\ = CARRY((\inst|price\(9) & !\inst|Add2~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|price\(9),
	datad => VCC,
	cin => \inst|Add2~22\,
	combout => \inst|Add2~23_combout\,
	cout => \inst|Add2~24\);

-- Location: LCCOMB_X108_Y29_N22
\inst|Add3~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add3~18_combout\ = (\inst|price\(9) & (!\inst|Add3~17\)) # (!\inst|price\(9) & ((\inst|Add3~17\) # (GND)))
-- \inst|Add3~19\ = CARRY((!\inst|Add3~17\) # (!\inst|price\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|price\(9),
	datad => VCC,
	cin => \inst|Add3~17\,
	combout => \inst|Add3~18_combout\,
	cout => \inst|Add3~19\);

-- Location: LCCOMB_X107_Y29_N30
\inst|Add2~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~34_combout\ = (!\inst|LessThan3~6_combout\ & ((\inst|process_0~1_combout\ & (\inst|Add2~23_combout\)) # (!\inst|process_0~1_combout\ & ((\inst|Add3~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan3~6_combout\,
	datab => \inst|process_0~1_combout\,
	datac => \inst|Add2~23_combout\,
	datad => \inst|Add3~18_combout\,
	combout => \inst|Add2~34_combout\);

-- Location: FF_X107_Y29_N31
\inst|price[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_distance~input_o\,
	d => \inst|Add2~34_combout\,
	ena => \inst|count2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|price\(9));

-- Location: LCCOMB_X109_Y29_N20
\inst|Add2~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~25_combout\ = (\inst|price\(10) & (!\inst|Add2~24\)) # (!\inst|price\(10) & ((\inst|Add2~24\) # (GND)))
-- \inst|Add2~26\ = CARRY((!\inst|Add2~24\) # (!\inst|price\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|price\(10),
	datad => VCC,
	cin => \inst|Add2~24\,
	combout => \inst|Add2~25_combout\,
	cout => \inst|Add2~26\);

-- Location: LCCOMB_X108_Y29_N24
\inst|Add3~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add3~20_combout\ = (\inst|price\(10) & (\inst|Add3~19\ $ (GND))) # (!\inst|price\(10) & (!\inst|Add3~19\ & VCC))
-- \inst|Add3~21\ = CARRY((\inst|price\(10) & !\inst|Add3~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|price\(10),
	datad => VCC,
	cin => \inst|Add3~19\,
	combout => \inst|Add3~20_combout\,
	cout => \inst|Add3~21\);

-- Location: LCCOMB_X108_Y29_N2
\inst|Add2~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~33_combout\ = (!\inst|LessThan3~6_combout\ & ((\inst|process_0~1_combout\ & (\inst|Add2~25_combout\)) # (!\inst|process_0~1_combout\ & ((\inst|Add3~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add2~25_combout\,
	datab => \inst|LessThan3~6_combout\,
	datac => \inst|process_0~1_combout\,
	datad => \inst|Add3~20_combout\,
	combout => \inst|Add2~33_combout\);

-- Location: FF_X108_Y29_N3
\inst|price[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_distance~input_o\,
	d => \inst|Add2~33_combout\,
	ena => \inst|count2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|price\(10));

-- Location: LCCOMB_X108_Y29_N26
\inst|Add3~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add3~22_combout\ = (\inst|price\(11) & (!\inst|Add3~21\)) # (!\inst|price\(11) & ((\inst|Add3~21\) # (GND)))
-- \inst|Add3~23\ = CARRY((!\inst|Add3~21\) # (!\inst|price\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|price\(11),
	datad => VCC,
	cin => \inst|Add3~21\,
	combout => \inst|Add3~22_combout\,
	cout => \inst|Add3~23\);

-- Location: LCCOMB_X109_Y29_N22
\inst|Add2~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~27_combout\ = (\inst|price\(11) & (\inst|Add2~26\ $ (GND))) # (!\inst|price\(11) & (!\inst|Add2~26\ & VCC))
-- \inst|Add2~28\ = CARRY((\inst|price\(11) & !\inst|Add2~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|price\(11),
	datad => VCC,
	cin => \inst|Add2~26\,
	combout => \inst|Add2~27_combout\,
	cout => \inst|Add2~28\);

-- Location: LCCOMB_X108_Y29_N30
\inst|Add2~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~32_combout\ = (!\inst|LessThan3~6_combout\ & ((\inst|process_0~1_combout\ & ((\inst|Add2~27_combout\))) # (!\inst|process_0~1_combout\ & (\inst|Add3~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add3~22_combout\,
	datab => \inst|LessThan3~6_combout\,
	datac => \inst|process_0~1_combout\,
	datad => \inst|Add2~27_combout\,
	combout => \inst|Add2~32_combout\);

-- Location: FF_X108_Y29_N31
\inst|price[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_distance~input_o\,
	d => \inst|Add2~32_combout\,
	ena => \inst|count2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|price\(11));

-- Location: LCCOMB_X109_Y29_N24
\inst|Add2~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~29_combout\ = \inst|Add2~28\ $ (\inst|price\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|price\(12),
	cin => \inst|Add2~28\,
	combout => \inst|Add2~29_combout\);

-- Location: LCCOMB_X108_Y29_N28
\inst|Add3~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add3~24_combout\ = \inst|Add3~23\ $ (!\inst|price\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|price\(12),
	cin => \inst|Add3~23\,
	combout => \inst|Add3~24_combout\);

-- Location: LCCOMB_X109_Y29_N28
\inst|Add2~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~31_combout\ = (!\inst|LessThan3~6_combout\ & ((\inst|process_0~1_combout\ & (\inst|Add2~29_combout\)) # (!\inst|process_0~1_combout\ & ((\inst|Add3~24_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan3~6_combout\,
	datab => \inst|Add2~29_combout\,
	datac => \inst|process_0~1_combout\,
	datad => \inst|Add3~24_combout\,
	combout => \inst|Add2~31_combout\);

-- Location: FF_X109_Y29_N29
\inst|price[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_distance~input_o\,
	d => \inst|Add2~31_combout\,
	ena => \inst|count2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|price\(12));

-- Location: LCCOMB_X110_Y27_N4
\inst1|price[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|price[0]~13_combout\ = \inst1|price\(0) $ (VCC)
-- \inst1|price[0]~14\ = CARRY(\inst1|price\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|price\(0),
	datad => VCC,
	combout => \inst1|price[0]~13_combout\,
	cout => \inst1|price[0]~14\);

-- Location: LCCOMB_X109_Y23_N6
\inst1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~0_combout\ = \inst1|count\(0) $ (VCC)
-- \inst1|Add0~1\ = CARRY(\inst1|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|count\(0),
	datad => VCC,
	combout => \inst1|Add0~0_combout\,
	cout => \inst1|Add0~1\);

-- Location: LCCOMB_X110_Y23_N30
\inst1|count~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|count~37_combout\ = (\start~input_o\ & (\inst1|Add0~0_combout\ & (\inst1|LessThan0~3_combout\ & !\stop~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start~input_o\,
	datab => \inst1|Add0~0_combout\,
	datac => \inst1|LessThan0~3_combout\,
	datad => \stop~input_o\,
	combout => \inst1|count~37_combout\);

-- Location: LCCOMB_X110_Y23_N10
\inst1|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~2_combout\ = (\inst1|count\(3) & ((\inst1|count\(2)) # ((\inst1|count\(0) & \inst1|count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|count\(0),
	datab => \inst1|count\(1),
	datac => \inst1|count\(2),
	datad => \inst1|count\(3),
	combout => \inst1|LessThan0~2_combout\);

-- Location: LCCOMB_X109_Y23_N22
\inst1|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~16_combout\ = (\inst1|count\(8) & (\inst1|Add0~15\ $ (GND))) # (!\inst1|count\(8) & (!\inst1|Add0~15\ & VCC))
-- \inst1|Add0~17\ = CARRY((\inst1|count\(8) & !\inst1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|count\(8),
	datad => VCC,
	cin => \inst1|Add0~15\,
	combout => \inst1|Add0~16_combout\,
	cout => \inst1|Add0~17\);

-- Location: LCCOMB_X109_Y23_N24
\inst1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~18_combout\ = (\inst1|count\(9) & (!\inst1|Add0~17\)) # (!\inst1|count\(9) & ((\inst1|Add0~17\) # (GND)))
-- \inst1|Add0~19\ = CARRY((!\inst1|Add0~17\) # (!\inst1|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|count\(9),
	datad => VCC,
	cin => \inst1|Add0~17\,
	combout => \inst1|Add0~18_combout\,
	cout => \inst1|Add0~19\);

-- Location: LCCOMB_X110_Y23_N2
\inst1|count~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|count~33_combout\ = (!\stop~input_o\ & (\inst1|LessThan0~3_combout\ & (\start~input_o\ & \inst1|Add0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stop~input_o\,
	datab => \inst1|LessThan0~3_combout\,
	datac => \start~input_o\,
	datad => \inst1|Add0~18_combout\,
	combout => \inst1|count~33_combout\);

-- Location: FF_X110_Y23_N3
\inst1|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|x~clkctrl_outclk\,
	d => \inst1|count~33_combout\,
	ena => \inst1|count[11]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|count\(9));

-- Location: LCCOMB_X109_Y23_N26
\inst1|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~20_combout\ = (\inst1|count\(10) & (\inst1|Add0~19\ $ (GND))) # (!\inst1|count\(10) & (!\inst1|Add0~19\ & VCC))
-- \inst1|Add0~21\ = CARRY((\inst1|count\(10) & !\inst1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|count\(10),
	datad => VCC,
	cin => \inst1|Add0~19\,
	combout => \inst1|Add0~20_combout\,
	cout => \inst1|Add0~21\);

-- Location: LCCOMB_X110_Y23_N0
\inst1|count~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|count~34_combout\ = (\start~input_o\ & (\inst1|LessThan0~3_combout\ & (\inst1|Add0~20_combout\ & !\stop~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start~input_o\,
	datab => \inst1|LessThan0~3_combout\,
	datac => \inst1|Add0~20_combout\,
	datad => \stop~input_o\,
	combout => \inst1|count~34_combout\);

-- Location: FF_X110_Y23_N1
\inst1|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|x~clkctrl_outclk\,
	d => \inst1|count~34_combout\,
	ena => \inst1|count[11]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|count\(10));

-- Location: LCCOMB_X109_Y23_N28
\inst1|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~22_combout\ = (\inst1|count\(11) & (!\inst1|Add0~21\)) # (!\inst1|count\(11) & ((\inst1|Add0~21\) # (GND)))
-- \inst1|Add0~23\ = CARRY((!\inst1|Add0~21\) # (!\inst1|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|count\(11),
	datad => VCC,
	cin => \inst1|Add0~21\,
	combout => \inst1|Add0~22_combout\,
	cout => \inst1|Add0~23\);

-- Location: LCCOMB_X109_Y23_N2
\inst1|count[11]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|count[11]~25_combout\ = (\start~input_o\ & (!\inst|count[3]~21_combout\ & (\inst1|LessThan0~3_combout\ & \inst1|Add0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start~input_o\,
	datab => \inst|count[3]~21_combout\,
	datac => \inst1|LessThan0~3_combout\,
	datad => \inst1|Add0~22_combout\,
	combout => \inst1|count[11]~25_combout\);

-- Location: FF_X109_Y23_N3
\inst1|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|x~clkctrl_outclk\,
	d => \inst1|count[11]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|count\(11));

-- Location: LCCOMB_X109_Y23_N30
\inst1|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~24_combout\ = \inst1|Add0~23\ $ (!\inst1|count\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst1|count\(12),
	cin => \inst1|Add0~23\,
	combout => \inst1|Add0~24_combout\);

-- Location: LCCOMB_X110_Y23_N16
\inst1|count[12]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|count[12]~26_combout\ = (!\inst|count[3]~21_combout\ & (\inst1|LessThan0~3_combout\ & \inst1|Add0~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count[3]~21_combout\,
	datac => \inst1|LessThan0~3_combout\,
	datad => \inst1|Add0~24_combout\,
	combout => \inst1|count[12]~26_combout\);

-- Location: FF_X110_Y23_N17
\inst1|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|x~clkctrl_outclk\,
	d => \inst1|count[12]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|count\(12));

-- Location: LCCOMB_X110_Y23_N18
\inst1|count[11]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|count[11]~28_combout\ = (!\stop~input_o\ & (!\pause~input_o\ & (\start~input_o\ & !\inst1|count\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stop~input_o\,
	datab => \pause~input_o\,
	datac => \start~input_o\,
	datad => \inst1|count\(12),
	combout => \inst1|count[11]~28_combout\);

-- Location: LCCOMB_X110_Y23_N26
\inst1|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~0_combout\ = (!\inst1|count\(5) & (!\inst1|count\(4) & (!\inst1|count\(7) & !\inst1|count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|count\(5),
	datab => \inst1|count\(4),
	datac => \inst1|count\(7),
	datad => \inst1|count\(6),
	combout => \inst1|LessThan0~0_combout\);

-- Location: LCCOMB_X110_Y23_N8
\inst1|count[11]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|count[11]~24_combout\ = (\inst1|LessThan0~2_combout\) # (((!\inst1|LessThan0~1_combout\) # (!\inst1|LessThan0~0_combout\)) # (!\inst1|count[11]~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LessThan0~2_combout\,
	datab => \inst1|count[11]~28_combout\,
	datac => \inst1|LessThan0~0_combout\,
	datad => \inst1|LessThan0~1_combout\,
	combout => \inst1|count[11]~24_combout\);

-- Location: FF_X110_Y23_N31
\inst1|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|x~clkctrl_outclk\,
	d => \inst1|count~37_combout\,
	ena => \inst1|count[11]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|count\(0));

-- Location: LCCOMB_X109_Y23_N8
\inst1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~2_combout\ = (\inst1|count\(1) & (!\inst1|Add0~1\)) # (!\inst1|count\(1) & ((\inst1|Add0~1\) # (GND)))
-- \inst1|Add0~3\ = CARRY((!\inst1|Add0~1\) # (!\inst1|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|count\(1),
	datad => VCC,
	cin => \inst1|Add0~1\,
	combout => \inst1|Add0~2_combout\,
	cout => \inst1|Add0~3\);

-- Location: LCCOMB_X110_Y23_N20
\inst1|count~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|count~38_combout\ = (!\stop~input_o\ & (\inst1|LessThan0~3_combout\ & (\start~input_o\ & \inst1|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stop~input_o\,
	datab => \inst1|LessThan0~3_combout\,
	datac => \start~input_o\,
	datad => \inst1|Add0~2_combout\,
	combout => \inst1|count~38_combout\);

-- Location: FF_X110_Y23_N21
\inst1|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|x~clkctrl_outclk\,
	d => \inst1|count~38_combout\,
	ena => \inst1|count[11]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|count\(1));

-- Location: LCCOMB_X109_Y23_N10
\inst1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~4_combout\ = (\inst1|count\(2) & (\inst1|Add0~3\ $ (GND))) # (!\inst1|count\(2) & (!\inst1|Add0~3\ & VCC))
-- \inst1|Add0~5\ = CARRY((\inst1|count\(2) & !\inst1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|count\(2),
	datad => VCC,
	cin => \inst1|Add0~3\,
	combout => \inst1|Add0~4_combout\,
	cout => \inst1|Add0~5\);

-- Location: LCCOMB_X109_Y23_N0
\inst1|count~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|count~36_combout\ = (\start~input_o\ & (!\stop~input_o\ & (\inst1|LessThan0~3_combout\ & \inst1|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start~input_o\,
	datab => \stop~input_o\,
	datac => \inst1|LessThan0~3_combout\,
	datad => \inst1|Add0~4_combout\,
	combout => \inst1|count~36_combout\);

-- Location: FF_X109_Y23_N1
\inst1|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|x~clkctrl_outclk\,
	d => \inst1|count~36_combout\,
	ena => \inst1|count[11]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|count\(2));

-- Location: LCCOMB_X109_Y23_N12
\inst1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~6_combout\ = (\inst1|count\(3) & (!\inst1|Add0~5\)) # (!\inst1|count\(3) & ((\inst1|Add0~5\) # (GND)))
-- \inst1|Add0~7\ = CARRY((!\inst1|Add0~5\) # (!\inst1|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|count\(3),
	datad => VCC,
	cin => \inst1|Add0~5\,
	combout => \inst1|Add0~6_combout\,
	cout => \inst1|Add0~7\);

-- Location: LCCOMB_X110_Y23_N24
\inst1|count~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|count~35_combout\ = (!\stop~input_o\ & (\inst1|LessThan0~3_combout\ & (\start~input_o\ & \inst1|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stop~input_o\,
	datab => \inst1|LessThan0~3_combout\,
	datac => \start~input_o\,
	datad => \inst1|Add0~6_combout\,
	combout => \inst1|count~35_combout\);

-- Location: FF_X110_Y23_N25
\inst1|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|x~clkctrl_outclk\,
	d => \inst1|count~35_combout\,
	ena => \inst1|count[11]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|count\(3));

-- Location: LCCOMB_X109_Y23_N14
\inst1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~8_combout\ = (\inst1|count\(4) & (\inst1|Add0~7\ $ (GND))) # (!\inst1|count\(4) & (!\inst1|Add0~7\ & VCC))
-- \inst1|Add0~9\ = CARRY((\inst1|count\(4) & !\inst1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|count\(4),
	datad => VCC,
	cin => \inst1|Add0~7\,
	combout => \inst1|Add0~8_combout\,
	cout => \inst1|Add0~9\);

-- Location: LCCOMB_X110_Y23_N4
\inst1|count~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|count~27_combout\ = (!\stop~input_o\ & (\inst1|LessThan0~3_combout\ & (\start~input_o\ & \inst1|Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stop~input_o\,
	datab => \inst1|LessThan0~3_combout\,
	datac => \start~input_o\,
	datad => \inst1|Add0~8_combout\,
	combout => \inst1|count~27_combout\);

-- Location: FF_X110_Y23_N5
\inst1|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|x~clkctrl_outclk\,
	d => \inst1|count~27_combout\,
	ena => \inst1|count[11]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|count\(4));

-- Location: LCCOMB_X109_Y23_N16
\inst1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~10_combout\ = (\inst1|count\(5) & (!\inst1|Add0~9\)) # (!\inst1|count\(5) & ((\inst1|Add0~9\) # (GND)))
-- \inst1|Add0~11\ = CARRY((!\inst1|Add0~9\) # (!\inst1|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|count\(5),
	datad => VCC,
	cin => \inst1|Add0~9\,
	combout => \inst1|Add0~10_combout\,
	cout => \inst1|Add0~11\);

-- Location: LCCOMB_X110_Y23_N22
\inst1|count~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|count~29_combout\ = (\start~input_o\ & (\inst1|LessThan0~3_combout\ & (\inst1|Add0~10_combout\ & !\stop~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start~input_o\,
	datab => \inst1|LessThan0~3_combout\,
	datac => \inst1|Add0~10_combout\,
	datad => \stop~input_o\,
	combout => \inst1|count~29_combout\);

-- Location: FF_X110_Y23_N23
\inst1|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|x~clkctrl_outclk\,
	d => \inst1|count~29_combout\,
	ena => \inst1|count[11]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|count\(5));

-- Location: LCCOMB_X109_Y23_N18
\inst1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~12_combout\ = (\inst1|count\(6) & (\inst1|Add0~11\ $ (GND))) # (!\inst1|count\(6) & (!\inst1|Add0~11\ & VCC))
-- \inst1|Add0~13\ = CARRY((\inst1|count\(6) & !\inst1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|count\(6),
	datad => VCC,
	cin => \inst1|Add0~11\,
	combout => \inst1|Add0~12_combout\,
	cout => \inst1|Add0~13\);

-- Location: LCCOMB_X110_Y23_N28
\inst1|count~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|count~30_combout\ = (!\stop~input_o\ & (\inst1|LessThan0~3_combout\ & (\start~input_o\ & \inst1|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stop~input_o\,
	datab => \inst1|LessThan0~3_combout\,
	datac => \start~input_o\,
	datad => \inst1|Add0~12_combout\,
	combout => \inst1|count~30_combout\);

-- Location: FF_X110_Y23_N29
\inst1|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|x~clkctrl_outclk\,
	d => \inst1|count~30_combout\,
	ena => \inst1|count[11]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|count\(6));

-- Location: LCCOMB_X109_Y23_N20
\inst1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~14_combout\ = (\inst1|count\(7) & (!\inst1|Add0~13\)) # (!\inst1|count\(7) & ((\inst1|Add0~13\) # (GND)))
-- \inst1|Add0~15\ = CARRY((!\inst1|Add0~13\) # (!\inst1|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|count\(7),
	datad => VCC,
	cin => \inst1|Add0~13\,
	combout => \inst1|Add0~14_combout\,
	cout => \inst1|Add0~15\);

-- Location: LCCOMB_X109_Y23_N4
\inst1|count~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|count~31_combout\ = (\start~input_o\ & (!\stop~input_o\ & (\inst1|LessThan0~3_combout\ & \inst1|Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start~input_o\,
	datab => \stop~input_o\,
	datac => \inst1|LessThan0~3_combout\,
	datad => \inst1|Add0~14_combout\,
	combout => \inst1|count~31_combout\);

-- Location: FF_X109_Y23_N5
\inst1|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|x~clkctrl_outclk\,
	d => \inst1|count~31_combout\,
	ena => \inst1|count[11]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|count\(7));

-- Location: LCCOMB_X110_Y23_N12
\inst1|count~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|count~32_combout\ = (!\stop~input_o\ & (\inst1|LessThan0~3_combout\ & (\start~input_o\ & \inst1|Add0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stop~input_o\,
	datab => \inst1|LessThan0~3_combout\,
	datac => \start~input_o\,
	datad => \inst1|Add0~16_combout\,
	combout => \inst1|count~32_combout\);

-- Location: FF_X110_Y23_N13
\inst1|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|x~clkctrl_outclk\,
	d => \inst1|count~32_combout\,
	ena => \inst1|count[11]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|count\(8));

-- Location: LCCOMB_X110_Y23_N6
\inst1|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~1_combout\ = (!\inst1|count\(8) & (!\inst1|count\(10) & (!\inst1|count\(9) & !\inst1|count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|count\(8),
	datab => \inst1|count\(10),
	datac => \inst1|count\(9),
	datad => \inst1|count\(11),
	combout => \inst1|LessThan0~1_combout\);

-- Location: LCCOMB_X110_Y23_N14
\inst1|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~3_combout\ = (\inst1|LessThan0~1_combout\ & (!\inst1|count\(12) & (\inst1|LessThan0~0_combout\ & !\inst1|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LessThan0~1_combout\,
	datab => \inst1|count\(12),
	datac => \inst1|LessThan0~0_combout\,
	datad => \inst1|LessThan0~2_combout\,
	combout => \inst1|LessThan0~3_combout\);

-- Location: LCCOMB_X110_Y27_N0
\inst1|price[1]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|price[1]~29_combout\ = (!\stop~input_o\ & (\start~input_o\ & !\inst1|count\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stop~input_o\,
	datac => \start~input_o\,
	datad => \inst1|count\(12),
	combout => \inst1|price[1]~29_combout\);

-- Location: LCCOMB_X110_Y27_N2
\inst1|price[1]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|price[1]~30_combout\ = (((\inst1|LessThan0~2_combout\) # (!\inst1|LessThan0~1_combout\)) # (!\inst1|price[1]~29_combout\)) # (!\inst1|LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LessThan0~0_combout\,
	datab => \inst1|price[1]~29_combout\,
	datac => \inst1|LessThan0~2_combout\,
	datad => \inst1|LessThan0~1_combout\,
	combout => \inst1|price[1]~30_combout\);

-- Location: FF_X110_Y27_N5
\inst1|price[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|x~clkctrl_outclk\,
	d => \inst1|price[0]~13_combout\,
	sclr => \inst1|LessThan0~3_combout\,
	ena => \inst1|price[1]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|price\(0));

-- Location: LCCOMB_X110_Y27_N6
\inst1|price[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|price[1]~15_combout\ = (\inst1|price\(1) & (!\inst1|price[0]~14\)) # (!\inst1|price\(1) & ((\inst1|price[0]~14\) # (GND)))
-- \inst1|price[1]~16\ = CARRY((!\inst1|price[0]~14\) # (!\inst1|price\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|price\(1),
	datad => VCC,
	cin => \inst1|price[0]~14\,
	combout => \inst1|price[1]~15_combout\,
	cout => \inst1|price[1]~16\);

-- Location: FF_X110_Y27_N7
\inst1|price[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|x~clkctrl_outclk\,
	d => \inst1|price[1]~15_combout\,
	sclr => \inst1|LessThan0~3_combout\,
	ena => \inst1|price[1]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|price\(1));

-- Location: LCCOMB_X110_Y27_N8
\inst1|price[2]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|price[2]~17_combout\ = (\inst1|price\(2) & ((GND) # (!\inst1|price[1]~16\))) # (!\inst1|price\(2) & (\inst1|price[1]~16\ $ (GND)))
-- \inst1|price[2]~18\ = CARRY((\inst1|price\(2)) # (!\inst1|price[1]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|price\(2),
	datad => VCC,
	cin => \inst1|price[1]~16\,
	combout => \inst1|price[2]~17_combout\,
	cout => \inst1|price[2]~18\);

-- Location: FF_X110_Y27_N9
\inst1|price[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|x~clkctrl_outclk\,
	d => \inst1|price[2]~17_combout\,
	sclr => \inst1|LessThan0~3_combout\,
	ena => \inst1|price[1]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|price\(2));

-- Location: LCCOMB_X110_Y27_N10
\inst1|price[3]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|price[3]~19_combout\ = (\inst1|price\(3) & (!\inst1|price[2]~18\)) # (!\inst1|price\(3) & ((\inst1|price[2]~18\) # (GND)))
-- \inst1|price[3]~20\ = CARRY((!\inst1|price[2]~18\) # (!\inst1|price\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|price\(3),
	datad => VCC,
	cin => \inst1|price[2]~18\,
	combout => \inst1|price[3]~19_combout\,
	cout => \inst1|price[3]~20\);

-- Location: FF_X110_Y27_N11
\inst1|price[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|x~clkctrl_outclk\,
	d => \inst1|price[3]~19_combout\,
	sclr => \inst1|LessThan0~3_combout\,
	ena => \inst1|price[1]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|price\(3));

-- Location: LCCOMB_X110_Y27_N12
\inst1|price[4]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|price[4]~21_combout\ = (\inst1|price\(4) & (\inst1|price[3]~20\ $ (GND))) # (!\inst1|price\(4) & (!\inst1|price[3]~20\ & VCC))
-- \inst1|price[4]~22\ = CARRY((\inst1|price\(4) & !\inst1|price[3]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|price\(4),
	datad => VCC,
	cin => \inst1|price[3]~20\,
	combout => \inst1|price[4]~21_combout\,
	cout => \inst1|price[4]~22\);

-- Location: FF_X110_Y27_N13
\inst1|price[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|x~clkctrl_outclk\,
	d => \inst1|price[4]~21_combout\,
	sclr => \inst1|LessThan0~3_combout\,
	ena => \inst1|price[1]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|price\(4));

-- Location: LCCOMB_X110_Y27_N14
\inst1|price[5]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|price[5]~23_combout\ = (\inst1|price\(5) & (!\inst1|price[4]~22\)) # (!\inst1|price\(5) & ((\inst1|price[4]~22\) # (GND)))
-- \inst1|price[5]~24\ = CARRY((!\inst1|price[4]~22\) # (!\inst1|price\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|price\(5),
	datad => VCC,
	cin => \inst1|price[4]~22\,
	combout => \inst1|price[5]~23_combout\,
	cout => \inst1|price[5]~24\);

-- Location: FF_X110_Y27_N15
\inst1|price[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|x~clkctrl_outclk\,
	d => \inst1|price[5]~23_combout\,
	sclr => \inst1|LessThan0~3_combout\,
	ena => \inst1|price[1]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|price\(5));

-- Location: LCCOMB_X110_Y27_N16
\inst1|price[6]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|price[6]~25_combout\ = (\inst1|price\(6) & (\inst1|price[5]~24\ $ (GND))) # (!\inst1|price\(6) & (!\inst1|price[5]~24\ & VCC))
-- \inst1|price[6]~26\ = CARRY((\inst1|price\(6) & !\inst1|price[5]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|price\(6),
	datad => VCC,
	cin => \inst1|price[5]~24\,
	combout => \inst1|price[6]~25_combout\,
	cout => \inst1|price[6]~26\);

-- Location: FF_X110_Y27_N17
\inst1|price[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|x~clkctrl_outclk\,
	d => \inst1|price[6]~25_combout\,
	sclr => \inst1|LessThan0~3_combout\,
	ena => \inst1|price[1]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|price\(6));

-- Location: LCCOMB_X110_Y27_N18
\inst1|price[7]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|price[7]~27_combout\ = (\inst1|price\(7) & (!\inst1|price[6]~26\)) # (!\inst1|price\(7) & ((\inst1|price[6]~26\) # (GND)))
-- \inst1|price[7]~28\ = CARRY((!\inst1|price[6]~26\) # (!\inst1|price\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|price\(7),
	datad => VCC,
	cin => \inst1|price[6]~26\,
	combout => \inst1|price[7]~27_combout\,
	cout => \inst1|price[7]~28\);

-- Location: FF_X110_Y27_N19
\inst1|price[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|x~clkctrl_outclk\,
	d => \inst1|price[7]~27_combout\,
	sclr => \inst1|LessThan0~3_combout\,
	ena => \inst1|price[1]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|price\(7));

-- Location: LCCOMB_X110_Y27_N20
\inst1|price[8]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|price[8]~31_combout\ = (\inst1|price\(8) & (\inst1|price[7]~28\ $ (GND))) # (!\inst1|price\(8) & (!\inst1|price[7]~28\ & VCC))
-- \inst1|price[8]~32\ = CARRY((\inst1|price\(8) & !\inst1|price[7]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|price\(8),
	datad => VCC,
	cin => \inst1|price[7]~28\,
	combout => \inst1|price[8]~31_combout\,
	cout => \inst1|price[8]~32\);

-- Location: FF_X110_Y27_N21
\inst1|price[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|x~clkctrl_outclk\,
	d => \inst1|price[8]~31_combout\,
	sclr => \inst1|LessThan0~3_combout\,
	ena => \inst1|price[1]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|price\(8));

-- Location: LCCOMB_X110_Y27_N22
\inst1|price[9]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|price[9]~33_combout\ = (\inst1|price\(9) & (!\inst1|price[8]~32\)) # (!\inst1|price\(9) & ((\inst1|price[8]~32\) # (GND)))
-- \inst1|price[9]~34\ = CARRY((!\inst1|price[8]~32\) # (!\inst1|price\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|price\(9),
	datad => VCC,
	cin => \inst1|price[8]~32\,
	combout => \inst1|price[9]~33_combout\,
	cout => \inst1|price[9]~34\);

-- Location: FF_X110_Y27_N23
\inst1|price[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|x~clkctrl_outclk\,
	d => \inst1|price[9]~33_combout\,
	sclr => \inst1|LessThan0~3_combout\,
	ena => \inst1|price[1]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|price\(9));

-- Location: LCCOMB_X110_Y27_N24
\inst1|price[10]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|price[10]~35_combout\ = (\inst1|price\(10) & (\inst1|price[9]~34\ $ (GND))) # (!\inst1|price\(10) & (!\inst1|price[9]~34\ & VCC))
-- \inst1|price[10]~36\ = CARRY((\inst1|price\(10) & !\inst1|price[9]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|price\(10),
	datad => VCC,
	cin => \inst1|price[9]~34\,
	combout => \inst1|price[10]~35_combout\,
	cout => \inst1|price[10]~36\);

-- Location: FF_X110_Y27_N25
\inst1|price[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|x~clkctrl_outclk\,
	d => \inst1|price[10]~35_combout\,
	sclr => \inst1|LessThan0~3_combout\,
	ena => \inst1|price[1]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|price\(10));

-- Location: LCCOMB_X110_Y27_N26
\inst1|price[11]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|price[11]~37_combout\ = (\inst1|price\(11) & (!\inst1|price[10]~36\)) # (!\inst1|price\(11) & ((\inst1|price[10]~36\) # (GND)))
-- \inst1|price[11]~38\ = CARRY((!\inst1|price[10]~36\) # (!\inst1|price\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|price\(11),
	datad => VCC,
	cin => \inst1|price[10]~36\,
	combout => \inst1|price[11]~37_combout\,
	cout => \inst1|price[11]~38\);

-- Location: FF_X110_Y27_N27
\inst1|price[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|x~clkctrl_outclk\,
	d => \inst1|price[11]~37_combout\,
	sclr => \inst1|LessThan0~3_combout\,
	ena => \inst1|price[1]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|price\(11));

-- Location: LCCOMB_X110_Y27_N28
\inst1|price[12]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|price[12]~39_combout\ = \inst1|price[11]~38\ $ (!\inst1|price\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst1|price\(12),
	cin => \inst1|price[11]~38\,
	combout => \inst1|price[12]~39_combout\);

-- Location: FF_X110_Y27_N29
\inst1|price[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|x~clkctrl_outclk\,
	d => \inst1|price[12]~39_combout\,
	sclr => \inst1|LessThan0~3_combout\,
	ena => \inst1|price[1]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|price\(12));

-- Location: LCCOMB_X110_Y29_N6
\inst2|price[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|price[0]~13_combout\ = (\inst1|price\(0) & (\inst|price\(0) $ (VCC))) # (!\inst1|price\(0) & (\inst|price\(0) & VCC))
-- \inst2|price[0]~14\ = CARRY((\inst1|price\(0) & \inst|price\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|price\(0),
	datab => \inst|price\(0),
	datad => VCC,
	combout => \inst2|price[0]~13_combout\,
	cout => \inst2|price[0]~14\);

-- Location: LCCOMB_X110_Y29_N8
\inst2|price[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|price[1]~15_combout\ = (\inst|price\(1) & ((\inst1|price\(1) & (\inst2|price[0]~14\ & VCC)) # (!\inst1|price\(1) & (!\inst2|price[0]~14\)))) # (!\inst|price\(1) & ((\inst1|price\(1) & (!\inst2|price[0]~14\)) # (!\inst1|price\(1) & 
-- ((\inst2|price[0]~14\) # (GND)))))
-- \inst2|price[1]~16\ = CARRY((\inst|price\(1) & (!\inst1|price\(1) & !\inst2|price[0]~14\)) # (!\inst|price\(1) & ((!\inst2|price[0]~14\) # (!\inst1|price\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|price\(1),
	datab => \inst1|price\(1),
	datad => VCC,
	cin => \inst2|price[0]~14\,
	combout => \inst2|price[1]~15_combout\,
	cout => \inst2|price[1]~16\);

-- Location: LCCOMB_X110_Y29_N10
\inst2|price[2]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|price[2]~17_combout\ = ((\inst|price\(2) $ (\inst1|price\(2) $ (!\inst2|price[1]~16\)))) # (GND)
-- \inst2|price[2]~18\ = CARRY((\inst|price\(2) & ((\inst1|price\(2)) # (!\inst2|price[1]~16\))) # (!\inst|price\(2) & (\inst1|price\(2) & !\inst2|price[1]~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|price\(2),
	datab => \inst1|price\(2),
	datad => VCC,
	cin => \inst2|price[1]~16\,
	combout => \inst2|price[2]~17_combout\,
	cout => \inst2|price[2]~18\);

-- Location: LCCOMB_X110_Y29_N12
\inst2|price[3]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|price[3]~19_combout\ = (\inst|price\(3) & ((\inst1|price\(3) & (\inst2|price[2]~18\ & VCC)) # (!\inst1|price\(3) & (!\inst2|price[2]~18\)))) # (!\inst|price\(3) & ((\inst1|price\(3) & (!\inst2|price[2]~18\)) # (!\inst1|price\(3) & 
-- ((\inst2|price[2]~18\) # (GND)))))
-- \inst2|price[3]~20\ = CARRY((\inst|price\(3) & (!\inst1|price\(3) & !\inst2|price[2]~18\)) # (!\inst|price\(3) & ((!\inst2|price[2]~18\) # (!\inst1|price\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|price\(3),
	datab => \inst1|price\(3),
	datad => VCC,
	cin => \inst2|price[2]~18\,
	combout => \inst2|price[3]~19_combout\,
	cout => \inst2|price[3]~20\);

-- Location: LCCOMB_X110_Y29_N14
\inst2|price[4]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|price[4]~21_combout\ = ((\inst1|price\(4) $ (\inst|price\(4) $ (!\inst2|price[3]~20\)))) # (GND)
-- \inst2|price[4]~22\ = CARRY((\inst1|price\(4) & ((\inst|price\(4)) # (!\inst2|price[3]~20\))) # (!\inst1|price\(4) & (\inst|price\(4) & !\inst2|price[3]~20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|price\(4),
	datab => \inst|price\(4),
	datad => VCC,
	cin => \inst2|price[3]~20\,
	combout => \inst2|price[4]~21_combout\,
	cout => \inst2|price[4]~22\);

-- Location: LCCOMB_X110_Y29_N16
\inst2|price[5]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|price[5]~23_combout\ = (\inst|price\(5) & ((\inst1|price\(5) & (\inst2|price[4]~22\ & VCC)) # (!\inst1|price\(5) & (!\inst2|price[4]~22\)))) # (!\inst|price\(5) & ((\inst1|price\(5) & (!\inst2|price[4]~22\)) # (!\inst1|price\(5) & 
-- ((\inst2|price[4]~22\) # (GND)))))
-- \inst2|price[5]~24\ = CARRY((\inst|price\(5) & (!\inst1|price\(5) & !\inst2|price[4]~22\)) # (!\inst|price\(5) & ((!\inst2|price[4]~22\) # (!\inst1|price\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|price\(5),
	datab => \inst1|price\(5),
	datad => VCC,
	cin => \inst2|price[4]~22\,
	combout => \inst2|price[5]~23_combout\,
	cout => \inst2|price[5]~24\);

-- Location: LCCOMB_X110_Y29_N18
\inst2|price[6]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|price[6]~25_combout\ = ((\inst1|price\(6) $ (\inst|price\(6) $ (!\inst2|price[5]~24\)))) # (GND)
-- \inst2|price[6]~26\ = CARRY((\inst1|price\(6) & ((\inst|price\(6)) # (!\inst2|price[5]~24\))) # (!\inst1|price\(6) & (\inst|price\(6) & !\inst2|price[5]~24\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|price\(6),
	datab => \inst|price\(6),
	datad => VCC,
	cin => \inst2|price[5]~24\,
	combout => \inst2|price[6]~25_combout\,
	cout => \inst2|price[6]~26\);

-- Location: LCCOMB_X110_Y29_N20
\inst2|price[7]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|price[7]~27_combout\ = (\inst1|price\(7) & ((\inst|price\(7) & (\inst2|price[6]~26\ & VCC)) # (!\inst|price\(7) & (!\inst2|price[6]~26\)))) # (!\inst1|price\(7) & ((\inst|price\(7) & (!\inst2|price[6]~26\)) # (!\inst|price\(7) & 
-- ((\inst2|price[6]~26\) # (GND)))))
-- \inst2|price[7]~28\ = CARRY((\inst1|price\(7) & (!\inst|price\(7) & !\inst2|price[6]~26\)) # (!\inst1|price\(7) & ((!\inst2|price[6]~26\) # (!\inst|price\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|price\(7),
	datab => \inst|price\(7),
	datad => VCC,
	cin => \inst2|price[6]~26\,
	combout => \inst2|price[7]~27_combout\,
	cout => \inst2|price[7]~28\);

-- Location: LCCOMB_X110_Y29_N22
\inst2|price[8]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|price[8]~29_combout\ = ((\inst|price\(8) $ (\inst1|price\(8) $ (!\inst2|price[7]~28\)))) # (GND)
-- \inst2|price[8]~30\ = CARRY((\inst|price\(8) & ((\inst1|price\(8)) # (!\inst2|price[7]~28\))) # (!\inst|price\(8) & (\inst1|price\(8) & !\inst2|price[7]~28\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|price\(8),
	datab => \inst1|price\(8),
	datad => VCC,
	cin => \inst2|price[7]~28\,
	combout => \inst2|price[8]~29_combout\,
	cout => \inst2|price[8]~30\);

-- Location: LCCOMB_X110_Y29_N24
\inst2|price[9]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|price[9]~31_combout\ = (\inst|price\(9) & ((\inst1|price\(9) & (\inst2|price[8]~30\ & VCC)) # (!\inst1|price\(9) & (!\inst2|price[8]~30\)))) # (!\inst|price\(9) & ((\inst1|price\(9) & (!\inst2|price[8]~30\)) # (!\inst1|price\(9) & 
-- ((\inst2|price[8]~30\) # (GND)))))
-- \inst2|price[9]~32\ = CARRY((\inst|price\(9) & (!\inst1|price\(9) & !\inst2|price[8]~30\)) # (!\inst|price\(9) & ((!\inst2|price[8]~30\) # (!\inst1|price\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|price\(9),
	datab => \inst1|price\(9),
	datad => VCC,
	cin => \inst2|price[8]~30\,
	combout => \inst2|price[9]~31_combout\,
	cout => \inst2|price[9]~32\);

-- Location: LCCOMB_X110_Y29_N26
\inst2|price[10]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|price[10]~33_combout\ = ((\inst1|price\(10) $ (\inst|price\(10) $ (!\inst2|price[9]~32\)))) # (GND)
-- \inst2|price[10]~34\ = CARRY((\inst1|price\(10) & ((\inst|price\(10)) # (!\inst2|price[9]~32\))) # (!\inst1|price\(10) & (\inst|price\(10) & !\inst2|price[9]~32\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|price\(10),
	datab => \inst|price\(10),
	datad => VCC,
	cin => \inst2|price[9]~32\,
	combout => \inst2|price[10]~33_combout\,
	cout => \inst2|price[10]~34\);

-- Location: LCCOMB_X110_Y29_N28
\inst2|price[11]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|price[11]~35_combout\ = (\inst|price\(11) & ((\inst1|price\(11) & (\inst2|price[10]~34\ & VCC)) # (!\inst1|price\(11) & (!\inst2|price[10]~34\)))) # (!\inst|price\(11) & ((\inst1|price\(11) & (!\inst2|price[10]~34\)) # (!\inst1|price\(11) & 
-- ((\inst2|price[10]~34\) # (GND)))))
-- \inst2|price[11]~36\ = CARRY((\inst|price\(11) & (!\inst1|price\(11) & !\inst2|price[10]~34\)) # (!\inst|price\(11) & ((!\inst2|price[10]~34\) # (!\inst1|price\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|price\(11),
	datab => \inst1|price\(11),
	datad => VCC,
	cin => \inst2|price[10]~34\,
	combout => \inst2|price[11]~35_combout\,
	cout => \inst2|price[11]~36\);

-- Location: LCCOMB_X110_Y29_N30
\inst2|price[12]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|price[12]~37_combout\ = \inst|price\(12) $ (\inst2|price[11]~36\ $ (!\inst1|price\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|price\(12),
	datad => \inst1|price\(12),
	cin => \inst2|price[11]~36\,
	combout => \inst2|price[12]~37_combout\);

-- Location: FF_X110_Y29_N31
\inst2|price[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|x~clkctrl_outclk\,
	d => \inst2|price[12]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|price\(12));

-- Location: FF_X108_Y25_N5
\inst21|tmp2[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|x~clkctrl_outclk\,
	asdata => \inst2|price\(12),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|tmp2\(12));

-- Location: FF_X110_Y29_N29
\inst2|price[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|x~clkctrl_outclk\,
	d => \inst2|price[11]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|price\(11));

-- Location: FF_X108_Y25_N27
\inst21|tmp2[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|x~clkctrl_outclk\,
	asdata => \inst2|price\(11),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|tmp2\(11));

-- Location: FF_X110_Y29_N27
\inst2|price[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|x~clkctrl_outclk\,
	d => \inst2|price[10]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|price\(10));

-- Location: FF_X108_Y25_N29
\inst21|tmp2[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|x~clkctrl_outclk\,
	asdata => \inst2|price\(10),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|tmp2\(10));

-- Location: FF_X110_Y29_N25
\inst2|price[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|x~clkctrl_outclk\,
	d => \inst2|price[9]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|price\(9));

-- Location: FF_X108_Y25_N31
\inst21|tmp2[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|x~clkctrl_outclk\,
	asdata => \inst2|price\(9),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|tmp2\(9));

-- Location: FF_X110_Y29_N23
\inst2|price[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|x~clkctrl_outclk\,
	d => \inst2|price[8]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|price\(8));

-- Location: FF_X108_Y25_N25
\inst21|tmp2[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|x~clkctrl_outclk\,
	asdata => \inst2|price\(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|tmp2\(8));

-- Location: FF_X110_Y29_N21
\inst2|price[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|x~clkctrl_outclk\,
	d => \inst2|price[7]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|price\(7));

-- Location: FF_X109_Y25_N5
\inst21|tmp2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|x~clkctrl_outclk\,
	asdata => \inst2|price\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|tmp2\(7));

-- Location: FF_X110_Y29_N19
\inst2|price[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|x~clkctrl_outclk\,
	d => \inst2|price[6]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|price\(6));

-- Location: FF_X109_Y25_N7
\inst21|tmp2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|x~clkctrl_outclk\,
	asdata => \inst2|price\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|tmp2\(6));

-- Location: LCCOMB_X108_Y25_N8
\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~1_cout\ = CARRY(\inst21|tmp2\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|tmp2\(6),
	datad => VCC,
	cout => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~1_cout\);

-- Location: LCCOMB_X108_Y25_N10
\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~2_combout\ = (\inst21|tmp2\(7) & (\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~1_cout\ & VCC)) # (!\inst21|tmp2\(7) & 
-- (!\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~1_cout\))
-- \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~3\ = CARRY((!\inst21|tmp2\(7) & !\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|tmp2\(7),
	datad => VCC,
	cin => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~1_cout\,
	combout => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~2_combout\,
	cout => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~3\);

-- Location: LCCOMB_X108_Y25_N12
\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~4_combout\ = (\inst21|tmp2\(8) & (\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~3\ $ (GND))) # (!\inst21|tmp2\(8) & 
-- (!\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~3\ & VCC))
-- \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~5\ = CARRY((\inst21|tmp2\(8) & !\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst21|tmp2\(8),
	datad => VCC,
	cin => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~3\,
	combout => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~4_combout\,
	cout => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~5\);

-- Location: LCCOMB_X108_Y25_N14
\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~6_combout\ = (\inst21|tmp2\(9) & (!\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~5\)) # (!\inst21|tmp2\(9) & 
-- ((\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~5\) # (GND)))
-- \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~7\ = CARRY((!\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~5\) # (!\inst21|tmp2\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|tmp2\(9),
	datad => VCC,
	cin => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~5\,
	combout => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~6_combout\,
	cout => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~7\);

-- Location: LCCOMB_X108_Y25_N16
\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~8_combout\ = (\inst21|tmp2\(10) & (\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~7\ $ (GND))) # (!\inst21|tmp2\(10) & 
-- (!\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~7\ & VCC))
-- \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~9\ = CARRY((\inst21|tmp2\(10) & !\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst21|tmp2\(10),
	datad => VCC,
	cin => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~7\,
	combout => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~8_combout\,
	cout => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~9\);

-- Location: LCCOMB_X108_Y25_N18
\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~10_combout\ = (\inst21|tmp2\(11) & (!\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~9\)) # (!\inst21|tmp2\(11) & 
-- ((\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~9\) # (GND)))
-- \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~11\ = CARRY((!\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~9\) # (!\inst21|tmp2\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|tmp2\(11),
	datad => VCC,
	cin => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~9\,
	combout => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~10_combout\,
	cout => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~11\);

-- Location: LCCOMB_X108_Y25_N20
\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~12_combout\ = (\inst21|tmp2\(12) & (\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~11\ $ (GND))) # (!\inst21|tmp2\(12) & 
-- (!\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~11\ & VCC))
-- \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~13\ = CARRY((\inst21|tmp2\(12) & !\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst21|tmp2\(12),
	datad => VCC,
	cin => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~11\,
	combout => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~12_combout\,
	cout => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~13\);

-- Location: LCCOMB_X108_Y25_N22
\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~14_combout\ = !\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~13\,
	combout => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~14_combout\);

-- Location: LCCOMB_X108_Y25_N24
\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[104]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[104]~5_combout\ = (\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~14_combout\ & (\inst21|tmp2\(8))) # 
-- (!\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~14_combout\ & ((\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~14_combout\,
	datac => \inst21|tmp2\(8),
	datad => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~4_combout\,
	combout => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[104]~5_combout\);

-- Location: LCCOMB_X108_Y25_N4
\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[108]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[108]~1_combout\ = (\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~14_combout\ & ((\inst21|tmp2\(12)))) # 
-- (!\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~14_combout\ & (\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~14_combout\,
	datab => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~12_combout\,
	datac => \inst21|tmp2\(12),
	combout => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[108]~1_combout\);

-- Location: LCCOMB_X108_Y25_N26
\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[107]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[107]~2_combout\ = (\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~14_combout\ & ((\inst21|tmp2\(11)))) # 
-- (!\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~14_combout\ & (\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~14_combout\,
	datab => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~10_combout\,
	datac => \inst21|tmp2\(11),
	combout => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[107]~2_combout\);

-- Location: LCCOMB_X108_Y25_N28
\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[106]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[106]~3_combout\ = (\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~14_combout\ & (\inst21|tmp2\(10))) # 
-- (!\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~14_combout\ & ((\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~14_combout\,
	datac => \inst21|tmp2\(10),
	datad => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~8_combout\,
	combout => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[106]~3_combout\);

-- Location: LCCOMB_X108_Y25_N30
\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[105]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[105]~4_combout\ = (\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~14_combout\ & ((\inst21|tmp2\(9)))) # 
-- (!\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~14_combout\ & (\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~14_combout\,
	datab => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~6_combout\,
	datac => \inst21|tmp2\(9),
	combout => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[105]~4_combout\);

-- Location: LCCOMB_X109_Y25_N4
\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[103]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[103]~0_combout\ = (\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~14_combout\ & ((\inst21|tmp2\(7)))) # 
-- (!\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~14_combout\ & (\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~2_combout\,
	datac => \inst21|tmp2\(7),
	datad => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~14_combout\,
	combout => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[103]~0_combout\);

-- Location: FF_X110_Y29_N17
\inst2|price[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|x~clkctrl_outclk\,
	d => \inst2|price[5]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|price\(5));

-- Location: LCCOMB_X110_Y25_N12
\inst21|tmp2[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst21|tmp2[5]~feeder_combout\ = \inst2|price\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|price\(5),
	combout => \inst21|tmp2[5]~feeder_combout\);

-- Location: FF_X110_Y25_N13
\inst21|tmp2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|x~clkctrl_outclk\,
	d => \inst21|tmp2[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|tmp2\(5));

-- Location: LCCOMB_X109_Y25_N12
\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~1_cout\ = CARRY(\inst21|tmp2\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst21|tmp2\(5),
	datad => VCC,
	cout => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~1_cout\);

-- Location: LCCOMB_X109_Y25_N14
\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~2_combout\ = (\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~1_cout\ & ((\inst21|tmp2\(6) $ 
-- (!\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~14_combout\)))) # (!\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~1_cout\ & (\inst21|tmp2\(6) $ 
-- ((\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~14_combout\))))
-- \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~3\ = CARRY((!\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~1_cout\ & (\inst21|tmp2\(6) $ (\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|tmp2\(6),
	datab => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~14_combout\,
	datad => VCC,
	cin => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~1_cout\,
	combout => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~2_combout\,
	cout => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~3\);

-- Location: LCCOMB_X109_Y25_N16
\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~4_combout\ = (\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[103]~0_combout\ & (\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~3\ $ (GND))) # 
-- (!\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[103]~0_combout\ & (!\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~3\ & VCC))
-- \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~5\ = CARRY((\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[103]~0_combout\ & !\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[103]~0_combout\,
	datad => VCC,
	cin => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~3\,
	combout => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~4_combout\,
	cout => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~5\);

-- Location: LCCOMB_X109_Y25_N18
\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~6_combout\ = (\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[104]~5_combout\ & (!\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~5\)) # 
-- (!\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[104]~5_combout\ & ((\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~5\) # (GND)))
-- \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~7\ = CARRY((!\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~5\) # (!\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[104]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[104]~5_combout\,
	datad => VCC,
	cin => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~5\,
	combout => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~6_combout\,
	cout => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~7\);

-- Location: LCCOMB_X109_Y25_N20
\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~8_combout\ = (\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[105]~4_combout\ & (\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~7\ $ (GND))) # 
-- (!\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[105]~4_combout\ & (!\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~7\ & VCC))
-- \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~9\ = CARRY((\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[105]~4_combout\ & !\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[105]~4_combout\,
	datad => VCC,
	cin => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~7\,
	combout => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~8_combout\,
	cout => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~9\);

-- Location: LCCOMB_X109_Y25_N22
\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~10_combout\ = (\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[106]~3_combout\ & (!\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~9\)) # 
-- (!\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[106]~3_combout\ & ((\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~9\) # (GND)))
-- \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~11\ = CARRY((!\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~9\) # (!\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[106]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[106]~3_combout\,
	datad => VCC,
	cin => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~9\,
	combout => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~10_combout\,
	cout => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~11\);

-- Location: LCCOMB_X109_Y25_N24
\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~12_combout\ = (\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[107]~2_combout\ & (\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~11\ $ (GND))) # 
-- (!\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[107]~2_combout\ & (!\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~11\ & VCC))
-- \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~13\ = CARRY((\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[107]~2_combout\ & !\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[107]~2_combout\,
	datad => VCC,
	cin => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~11\,
	combout => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~12_combout\,
	cout => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~13\);

-- Location: LCCOMB_X109_Y25_N26
\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~15_cout\ = CARRY((!\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[108]~1_combout\ & !\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[108]~1_combout\,
	datad => VCC,
	cin => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~13\,
	cout => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~15_cout\);

-- Location: LCCOMB_X109_Y25_N28
\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16_combout\ = \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~15_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~15_cout\,
	combout => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16_combout\);

-- Location: LCCOMB_X109_Y25_N30
\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[116]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[116]~11_combout\ = (\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16_combout\ & (\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[104]~5_combout\)) 
-- # (!\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16_combout\ & ((\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[104]~5_combout\,
	datac => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16_combout\,
	datad => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~6_combout\,
	combout => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[116]~11_combout\);

-- Location: LCCOMB_X109_Y25_N0
\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[115]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[115]~6_combout\ = (\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16_combout\ & 
-- ((\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[103]~0_combout\))) # (!\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16_combout\ & (\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16_combout\,
	datab => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~4_combout\,
	datac => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[103]~0_combout\,
	combout => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[115]~6_combout\);

-- Location: LCCOMB_X109_Y25_N6
\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[114]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[114]~7_combout\ = (\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16_combout\ & ((\inst21|tmp2\(6) $ 
-- (!\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~14_combout\)))) # (!\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16_combout\ & (\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16_combout\,
	datab => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~2_combout\,
	datac => \inst21|tmp2\(6),
	datad => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~14_combout\,
	combout => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[114]~7_combout\);

-- Location: FF_X110_Y29_N15
\inst2|price[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|x~clkctrl_outclk\,
	d => \inst2|price[4]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|price\(4));

-- Location: FF_X110_Y25_N23
\inst21|tmp2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|x~clkctrl_outclk\,
	asdata => \inst2|price\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|tmp2\(4));

-- Location: LCCOMB_X110_Y25_N14
\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~1_cout\ = CARRY(\inst21|tmp2\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|tmp2\(4),
	datad => VCC,
	cout => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~1_cout\);

-- Location: LCCOMB_X110_Y25_N16
\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~2_combout\ = (\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~1_cout\ & ((\inst21|tmp2\(5) $ 
-- (!\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16_combout\)))) # (!\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~1_cout\ & (\inst21|tmp2\(5) $ 
-- ((\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16_combout\))))
-- \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~3\ = CARRY((!\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~1_cout\ & (\inst21|tmp2\(5) $ (\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|tmp2\(5),
	datab => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16_combout\,
	datad => VCC,
	cin => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~1_cout\,
	combout => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~2_combout\,
	cout => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~3\);

-- Location: LCCOMB_X110_Y25_N18
\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~4_combout\ = (\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[114]~7_combout\ & (\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~3\ $ (GND))) # 
-- (!\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[114]~7_combout\ & (!\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~3\ & VCC))
-- \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~5\ = CARRY((\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[114]~7_combout\ & !\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[114]~7_combout\,
	datad => VCC,
	cin => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~3\,
	combout => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~4_combout\,
	cout => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~5\);

-- Location: LCCOMB_X110_Y25_N20
\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~6_combout\ = (\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[115]~6_combout\ & (!\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~5\)) # 
-- (!\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[115]~6_combout\ & ((\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~5\) # (GND)))
-- \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~7\ = CARRY((!\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~5\) # (!\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[115]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[115]~6_combout\,
	datad => VCC,
	cin => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~5\,
	combout => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~6_combout\,
	cout => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~7\);

-- Location: LCCOMB_X110_Y25_N22
\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~8_combout\ = (\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[116]~11_combout\ & (\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~7\ $ (GND))) # 
-- (!\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[116]~11_combout\ & (!\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~7\ & VCC))
-- \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~9\ = CARRY((\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[116]~11_combout\ & !\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[116]~11_combout\,
	datad => VCC,
	cin => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~7\,
	combout => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~8_combout\,
	cout => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~9\);

-- Location: LCCOMB_X109_Y25_N2
\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[119]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[119]~8_combout\ = (\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16_combout\ & 
-- ((\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[107]~2_combout\))) # (!\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16_combout\ & (\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16_combout\,
	datab => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~12_combout\,
	datac => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[107]~2_combout\,
	combout => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[119]~8_combout\);

-- Location: LCCOMB_X109_Y25_N8
\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[118]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[118]~9_combout\ = (\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16_combout\ & (\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[106]~3_combout\)) 
-- # (!\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16_combout\ & ((\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16_combout\,
	datab => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[106]~3_combout\,
	datac => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~10_combout\,
	combout => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[118]~9_combout\);

-- Location: LCCOMB_X109_Y25_N10
\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[117]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[117]~10_combout\ = (\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16_combout\ & (\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[105]~4_combout\)) 
-- # (!\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16_combout\ & ((\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[105]~4_combout\,
	datac => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16_combout\,
	datad => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~8_combout\,
	combout => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[117]~10_combout\);

-- Location: LCCOMB_X110_Y25_N24
\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~10_combout\ = (\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[117]~10_combout\ & (!\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~9\)) # 
-- (!\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[117]~10_combout\ & ((\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~9\) # (GND)))
-- \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~11\ = CARRY((!\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~9\) # (!\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[117]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[117]~10_combout\,
	datad => VCC,
	cin => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~9\,
	combout => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~10_combout\,
	cout => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~11\);

-- Location: LCCOMB_X110_Y25_N26
\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~12_combout\ = (\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[118]~9_combout\ & (\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~11\ $ (GND))) # 
-- (!\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[118]~9_combout\ & (!\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~11\ & VCC))
-- \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~13\ = CARRY((\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[118]~9_combout\ & !\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[118]~9_combout\,
	datad => VCC,
	cin => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~11\,
	combout => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~12_combout\,
	cout => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~13\);

-- Location: LCCOMB_X110_Y25_N28
\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~15_cout\ = CARRY((!\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[119]~8_combout\ & !\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[119]~8_combout\,
	datad => VCC,
	cin => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~13\,
	cout => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~15_cout\);

-- Location: LCCOMB_X110_Y25_N30
\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\ = \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~15_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~15_cout\,
	combout => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\);

-- Location: LCCOMB_X110_Y25_N8
\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[128]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[128]~17_combout\ = (\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\ & 
-- ((\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[116]~11_combout\))) # (!\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\ & (\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~8_combout\,
	datac => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\,
	datad => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[116]~11_combout\,
	combout => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[128]~17_combout\);

-- Location: LCCOMB_X110_Y25_N6
\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[127]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[127]~12_combout\ = (\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\ & (\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[115]~6_combout\)) 
-- # (!\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\ & ((\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[115]~6_combout\,
	datac => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\,
	datad => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~6_combout\,
	combout => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[127]~12_combout\);

-- Location: LCCOMB_X110_Y25_N4
\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[126]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[126]~13_combout\ = (\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\ & (\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[114]~7_combout\)) 
-- # (!\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\ & ((\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[114]~7_combout\,
	datac => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\,
	datad => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~4_combout\,
	combout => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[126]~13_combout\);

-- Location: LCCOMB_X110_Y25_N10
\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[125]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[125]~14_combout\ = (\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\ & (\inst21|tmp2\(5) $ 
-- (((!\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16_combout\))))) # (!\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\ & (((\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|tmp2\(5),
	datab => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~2_combout\,
	datac => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\,
	datad => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16_combout\,
	combout => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[125]~14_combout\);

-- Location: FF_X110_Y29_N13
\inst2|price[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|x~clkctrl_outclk\,
	d => \inst2|price[3]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|price\(3));

-- Location: LCCOMB_X111_Y25_N22
\inst21|tmp2[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst21|tmp2[3]~feeder_combout\ = \inst2|price\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|price\(3),
	combout => \inst21|tmp2[3]~feeder_combout\);

-- Location: FF_X111_Y25_N23
\inst21|tmp2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|x~clkctrl_outclk\,
	d => \inst21|tmp2[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|tmp2\(3));

-- Location: LCCOMB_X111_Y25_N0
\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~1_cout\ = CARRY(\inst21|tmp2\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|tmp2\(3),
	datad => VCC,
	cout => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~1_cout\);

-- Location: LCCOMB_X111_Y25_N2
\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~2_combout\ = (\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~1_cout\ & ((\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\ $ 
-- (!\inst21|tmp2\(4))))) # (!\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~1_cout\ & (\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\ $ ((\inst21|tmp2\(4)))))
-- \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~3\ = CARRY((!\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~1_cout\ & (\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\ $ (\inst21|tmp2\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\,
	datab => \inst21|tmp2\(4),
	datad => VCC,
	cin => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~1_cout\,
	combout => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~2_combout\,
	cout => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~3\);

-- Location: LCCOMB_X111_Y25_N4
\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~4_combout\ = (\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[125]~14_combout\ & (\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~3\ $ (GND))) # 
-- (!\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[125]~14_combout\ & (!\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~3\ & VCC))
-- \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~5\ = CARRY((\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[125]~14_combout\ & !\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[125]~14_combout\,
	datad => VCC,
	cin => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~3\,
	combout => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~4_combout\,
	cout => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~5\);

-- Location: LCCOMB_X111_Y25_N6
\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~6_combout\ = (\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[126]~13_combout\ & (!\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~5\)) # 
-- (!\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[126]~13_combout\ & ((\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~5\) # (GND)))
-- \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~7\ = CARRY((!\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~5\) # (!\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[126]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[126]~13_combout\,
	datad => VCC,
	cin => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~5\,
	combout => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~6_combout\,
	cout => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~7\);

-- Location: LCCOMB_X111_Y25_N8
\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~8_combout\ = (\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[127]~12_combout\ & (\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~7\ $ (GND))) # 
-- (!\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[127]~12_combout\ & (!\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~7\ & VCC))
-- \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~9\ = CARRY((\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[127]~12_combout\ & !\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[127]~12_combout\,
	datad => VCC,
	cin => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~7\,
	combout => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~8_combout\,
	cout => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~9\);

-- Location: LCCOMB_X111_Y25_N10
\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~10_combout\ = (\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[128]~17_combout\ & (!\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~9\)) # 
-- (!\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[128]~17_combout\ & ((\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~9\) # (GND)))
-- \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~11\ = CARRY((!\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~9\) # (!\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[128]~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[128]~17_combout\,
	datad => VCC,
	cin => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~9\,
	combout => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~10_combout\,
	cout => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~11\);

-- Location: LCCOMB_X110_Y25_N0
\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[130]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[130]~15_combout\ = (\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\ & 
-- ((\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[118]~9_combout\))) # (!\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\ & (\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~12_combout\,
	datac => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\,
	datad => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[118]~9_combout\,
	combout => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[130]~15_combout\);

-- Location: LCCOMB_X110_Y25_N2
\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[129]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[129]~16_combout\ = (\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\ & 
-- (\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[117]~10_combout\)) # (!\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\ & ((\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[117]~10_combout\,
	datac => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\,
	datad => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~10_combout\,
	combout => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[129]~16_combout\);

-- Location: LCCOMB_X111_Y25_N12
\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~12_combout\ = (\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[129]~16_combout\ & (\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~11\ $ (GND))) # 
-- (!\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[129]~16_combout\ & (!\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~11\ & VCC))
-- \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~13\ = CARRY((\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[129]~16_combout\ & !\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[129]~16_combout\,
	datad => VCC,
	cin => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~11\,
	combout => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~12_combout\,
	cout => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~13\);

-- Location: LCCOMB_X111_Y25_N14
\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~15_cout\ = CARRY((!\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[130]~15_combout\ & !\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[130]~15_combout\,
	datad => VCC,
	cin => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~13\,
	cout => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~15_cout\);

-- Location: LCCOMB_X111_Y25_N16
\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~16_combout\ = \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~15_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~15_cout\,
	combout => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~16_combout\);

-- Location: LCCOMB_X111_Y25_N20
\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[140]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[140]~22_combout\ = (\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~16_combout\ & 
-- ((\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[128]~17_combout\))) # (!\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~16_combout\ & (\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~10_combout\,
	datab => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~16_combout\,
	datad => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[128]~17_combout\,
	combout => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[140]~22_combout\);

-- Location: LCCOMB_X111_Y25_N24
\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[139]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[139]~18_combout\ = (\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~16_combout\ & 
-- (\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[127]~12_combout\)) # (!\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~16_combout\ & ((\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[127]~12_combout\,
	datac => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~8_combout\,
	datad => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~16_combout\,
	combout => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[139]~18_combout\);

-- Location: LCCOMB_X111_Y25_N30
\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[138]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[138]~19_combout\ = (\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~16_combout\ & 
-- ((\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[126]~13_combout\))) # (!\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~16_combout\ & (\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~6_combout\,
	datac => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[126]~13_combout\,
	datad => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~16_combout\,
	combout => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[138]~19_combout\);

-- Location: LCCOMB_X111_Y25_N28
\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[137]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[137]~20_combout\ = (\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~16_combout\ & 
-- (\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[125]~14_combout\)) # (!\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~16_combout\ & ((\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[125]~14_combout\,
	datac => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~4_combout\,
	datad => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~16_combout\,
	combout => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[137]~20_combout\);

-- Location: LCCOMB_X111_Y24_N20
\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~1_cout\ = CARRY(\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[137]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[137]~20_combout\,
	datad => VCC,
	cout => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~1_cout\);

-- Location: LCCOMB_X111_Y24_N22
\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~2_combout\ = (\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[138]~19_combout\ & (\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~1_cout\ & VCC)) # 
-- (!\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[138]~19_combout\ & (!\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~1_cout\))
-- \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~3\ = CARRY((!\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[138]~19_combout\ & !\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[138]~19_combout\,
	datad => VCC,
	cin => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~1_cout\,
	combout => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~2_combout\,
	cout => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~3\);

-- Location: LCCOMB_X111_Y24_N24
\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~4_combout\ = (\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[139]~18_combout\ & ((GND) # (!\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~3\))) # 
-- (!\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[139]~18_combout\ & (\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~3\ $ (GND)))
-- \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~5\ = CARRY((\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[139]~18_combout\) # (!\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[139]~18_combout\,
	datad => VCC,
	cin => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~3\,
	combout => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~4_combout\,
	cout => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~5\);

-- Location: LCCOMB_X111_Y24_N26
\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~6_combout\ = (\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[140]~22_combout\ & (!\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~5\)) # 
-- (!\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[140]~22_combout\ & ((\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~5\) # (GND)))
-- \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~7\ = CARRY((!\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~5\) # (!\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[140]~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[140]~22_combout\,
	datad => VCC,
	cin => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~5\,
	combout => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~6_combout\,
	cout => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~7\);

-- Location: LCCOMB_X111_Y25_N26
\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[141]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[141]~21_combout\ = (\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~16_combout\ & 
-- ((\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[129]~16_combout\))) # (!\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~16_combout\ & (\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~12_combout\,
	datab => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~16_combout\,
	datad => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[129]~16_combout\,
	combout => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[141]~21_combout\);

-- Location: LCCOMB_X111_Y24_N28
\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~8_combout\ = (\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[141]~21_combout\ & (\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~7\ $ (GND))) # 
-- (!\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[141]~21_combout\ & (!\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~7\ & VCC))
-- \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~9\ = CARRY((\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[141]~21_combout\ & !\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[141]~21_combout\,
	datad => VCC,
	cin => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~7\,
	combout => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~8_combout\,
	cout => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~9\);

-- Location: LCCOMB_X111_Y24_N30
\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~10_combout\ = !\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~9\,
	combout => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~10_combout\);

-- Location: LCCOMB_X111_Y24_N2
\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[53]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[53]~3_combout\ = (\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~10_combout\ & 
-- ((\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[140]~22_combout\))) # (!\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~10_combout\ & (\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~6_combout\,
	datac => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~10_combout\,
	datad => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[140]~22_combout\,
	combout => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[53]~3_combout\);

-- Location: LCCOMB_X111_Y24_N4
\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[52]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[52]~0_combout\ = (\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~10_combout\ & 
-- ((\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[139]~18_combout\))) # (!\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~10_combout\ & (\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~10_combout\,
	datab => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~4_combout\,
	datac => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[139]~18_combout\,
	combout => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[52]~0_combout\);

-- Location: LCCOMB_X111_Y24_N6
\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[51]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[51]~1_combout\ = (\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~10_combout\ & 
-- ((\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[138]~19_combout\))) # (!\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~10_combout\ & (\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~2_combout\,
	datac => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[138]~19_combout\,
	datad => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~10_combout\,
	combout => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[51]~1_combout\);

-- Location: LCCOMB_X111_Y25_N18
\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[136]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[136]~23_combout\ = (\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~16_combout\ & (\inst21|tmp2\(4) $ 
-- ((!\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\)))) # (!\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~16_combout\ & (((\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~16_combout\,
	datab => \inst21|tmp2\(4),
	datac => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\,
	datad => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~2_combout\,
	combout => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[136]~23_combout\);

-- Location: LCCOMB_X110_Y24_N0
\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~1_cout\ = CARRY(\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[136]~23_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[136]~23_combout\,
	datad => VCC,
	cout => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~1_cout\);

-- Location: LCCOMB_X110_Y24_N2
\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~2_combout\ = (\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~1_cout\ & ((\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[137]~20_combout\ $ 
-- (!\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~10_combout\)))) # (!\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~1_cout\ & (\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[137]~20_combout\ $ 
-- ((\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~10_combout\))))
-- \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~3\ = CARRY((!\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~1_cout\ & (\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[137]~20_combout\ $ 
-- (\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[137]~20_combout\,
	datab => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~10_combout\,
	datad => VCC,
	cin => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~1_cout\,
	combout => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~2_combout\,
	cout => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~3\);

-- Location: LCCOMB_X110_Y24_N4
\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~4_combout\ = (\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[51]~1_combout\ & ((GND) # (!\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~3\))) # 
-- (!\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[51]~1_combout\ & (\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~3\ $ (GND)))
-- \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~5\ = CARRY((\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[51]~1_combout\) # (!\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[51]~1_combout\,
	datad => VCC,
	cin => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~3\,
	combout => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~4_combout\,
	cout => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~5\);

-- Location: LCCOMB_X110_Y24_N6
\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~6_combout\ = (\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[52]~0_combout\ & (!\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~5\)) # 
-- (!\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[52]~0_combout\ & ((\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~5\) # (GND)))
-- \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~7\ = CARRY((!\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~5\) # (!\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[52]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[52]~0_combout\,
	datad => VCC,
	cin => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~5\,
	combout => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~6_combout\,
	cout => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~7\);

-- Location: LCCOMB_X110_Y24_N8
\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~8_combout\ = (\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[53]~3_combout\ & (\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~7\ $ (GND))) # 
-- (!\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[53]~3_combout\ & (!\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~7\ & VCC))
-- \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~9\ = CARRY((\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[53]~3_combout\ & !\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[53]~3_combout\,
	datad => VCC,
	cin => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~7\,
	combout => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~8_combout\,
	cout => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~9\);

-- Location: LCCOMB_X111_Y24_N0
\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[54]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[54]~2_combout\ = (\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~10_combout\ & 
-- ((\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[141]~21_combout\))) # (!\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~10_combout\ & (\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~10_combout\,
	datab => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~8_combout\,
	datad => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[141]~21_combout\,
	combout => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[54]~2_combout\);

-- Location: LCCOMB_X110_Y24_N10
\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~11_cout\ = CARRY((!\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[54]~2_combout\ & !\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[54]~2_combout\,
	datad => VCC,
	cin => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~9\,
	cout => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~11_cout\);

-- Location: LCCOMB_X110_Y24_N12
\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~12_combout\ = \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~11_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~11_cout\,
	combout => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~12_combout\);

-- Location: LCCOMB_X111_Y24_N12
\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[62]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[62]~7_combout\ = (\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~12_combout\ & ((\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[53]~3_combout\))) 
-- # (!\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~12_combout\ & (\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~8_combout\,
	datac => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~12_combout\,
	datad => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[53]~3_combout\,
	combout => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[62]~7_combout\);

-- Location: LCCOMB_X111_Y24_N8
\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[61]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[61]~4_combout\ = (\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~12_combout\ & (\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[52]~0_combout\)) # 
-- (!\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~12_combout\ & ((\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~12_combout\,
	datac => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[52]~0_combout\,
	datad => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~6_combout\,
	combout => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[61]~4_combout\);

-- Location: LCCOMB_X110_Y24_N28
\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[60]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[60]~5_combout\ = (\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~12_combout\ & ((\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[51]~1_combout\))) 
-- # (!\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~12_combout\ & (\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~12_combout\,
	datac => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~4_combout\,
	datad => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[51]~1_combout\,
	combout => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[60]~5_combout\);

-- Location: LCCOMB_X111_Y24_N10
\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[59]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[59]~6_combout\ = (\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~12_combout\ & (\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~10_combout\ $ 
-- ((!\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[137]~20_combout\)))) # (!\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~12_combout\ & 
-- (((\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~10_combout\,
	datab => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~12_combout\,
	datac => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[137]~20_combout\,
	datad => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~2_combout\,
	combout => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[59]~6_combout\);

-- Location: LCCOMB_X110_Y24_N14
\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~1_cout\ = CARRY(\inst21|tmp2\(3) $ (!\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|tmp2\(3),
	datab => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~16_combout\,
	datad => VCC,
	cout => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~1_cout\);

-- Location: LCCOMB_X110_Y24_N16
\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~2_combout\ = (\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~1_cout\ & ((\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~12_combout\ $ 
-- (!\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[136]~23_combout\)))) # (!\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~1_cout\ & (\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~12_combout\ $ 
-- ((\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[136]~23_combout\))))
-- \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~3\ = CARRY((!\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~1_cout\ & (\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~12_combout\ $ 
-- (\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[136]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~12_combout\,
	datab => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[136]~23_combout\,
	datad => VCC,
	cin => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~1_cout\,
	combout => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~2_combout\,
	cout => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~3\);

-- Location: LCCOMB_X110_Y24_N18
\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~4_combout\ = (\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[59]~6_combout\ & ((GND) # (!\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~3\))) # 
-- (!\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[59]~6_combout\ & (\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~3\ $ (GND)))
-- \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~5\ = CARRY((\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[59]~6_combout\) # (!\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[59]~6_combout\,
	datad => VCC,
	cin => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~3\,
	combout => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~4_combout\,
	cout => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~5\);

-- Location: LCCOMB_X110_Y24_N20
\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~6_combout\ = (\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[60]~5_combout\ & (!\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~5\)) # 
-- (!\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[60]~5_combout\ & ((\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~5\) # (GND)))
-- \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~7\ = CARRY((!\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~5\) # (!\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[60]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[60]~5_combout\,
	datad => VCC,
	cin => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~5\,
	combout => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~6_combout\,
	cout => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~7\);

-- Location: LCCOMB_X110_Y24_N22
\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~8_combout\ = (\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[61]~4_combout\ & (\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~7\ $ (GND))) # 
-- (!\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[61]~4_combout\ & (!\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~7\ & VCC))
-- \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~9\ = CARRY((\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[61]~4_combout\ & !\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[61]~4_combout\,
	datad => VCC,
	cin => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~7\,
	combout => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~8_combout\,
	cout => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~9\);

-- Location: LCCOMB_X110_Y24_N24
\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~11_cout\ = CARRY((!\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[62]~7_combout\ & !\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[62]~7_combout\,
	datad => VCC,
	cin => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~9\,
	cout => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~11_cout\);

-- Location: LCCOMB_X110_Y24_N26
\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~12_combout\ = \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~11_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~11_cout\,
	combout => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~12_combout\);

-- Location: LCCOMB_X111_Y24_N14
\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[70]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[70]~8_combout\ = (\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~12_combout\ & ((\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[61]~4_combout\))) 
-- # (!\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~12_combout\ & (\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~12_combout\,
	datab => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~8_combout\,
	datac => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[61]~4_combout\,
	combout => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[70]~8_combout\);

-- Location: LCCOMB_X113_Y24_N12
\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[69]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[69]~9_combout\ = (\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~12_combout\ & (\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[60]~5_combout\)) # 
-- (!\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~12_combout\ & ((\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[60]~5_combout\,
	datac => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~6_combout\,
	datad => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~12_combout\,
	combout => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[69]~9_combout\);

-- Location: LCCOMB_X111_Y24_N16
\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[68]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[68]~10_combout\ = (\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~12_combout\ & ((\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[59]~6_combout\))) 
-- # (!\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~12_combout\ & (\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~4_combout\,
	datac => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~12_combout\,
	datad => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[59]~6_combout\,
	combout => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[68]~10_combout\);

-- Location: LCCOMB_X111_Y24_N18
\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[67]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[67]~11_combout\ = (\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~12_combout\ & ((\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[136]~23_combout\ 
-- $ (!\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~12_combout\)))) # (!\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~12_combout\ & (\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~2_combout\,
	datab => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[136]~23_combout\,
	datac => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~12_combout\,
	datad => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~12_combout\,
	combout => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[67]~11_combout\);

-- Location: LCCOMB_X110_Y24_N30
\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[135]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[135]~24_combout\ = \inst21|tmp2\(3) $ (\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst21|tmp2\(3),
	datad => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~16_combout\,
	combout => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[135]~24_combout\);

-- Location: FF_X110_Y29_N11
\inst2|price[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|x~clkctrl_outclk\,
	d => \inst2|price[2]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|price\(2));

-- Location: FF_X110_Y29_N7
\inst21|tmp2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|x~clkctrl_outclk\,
	asdata => \inst2|price\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|tmp2\(2));

-- Location: LCCOMB_X113_Y24_N14
\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~1_cout\ = CARRY(\inst21|tmp2\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst21|tmp2\(2),
	datad => VCC,
	cout => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~1_cout\);

-- Location: LCCOMB_X113_Y24_N16
\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~2_combout\ = (\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~1_cout\ & ((\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[135]~24_combout\ $ 
-- (\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~12_combout\)))) # (!\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~1_cout\ & (\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[135]~24_combout\ $ 
-- ((!\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~12_combout\))))
-- \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~3\ = CARRY((!\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~1_cout\ & (\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[135]~24_combout\ $ 
-- (!\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[135]~24_combout\,
	datab => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~12_combout\,
	datad => VCC,
	cin => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~1_cout\,
	combout => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~2_combout\,
	cout => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~3\);

-- Location: LCCOMB_X113_Y24_N18
\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~4_combout\ = (\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[67]~11_combout\ & ((GND) # (!\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~3\))) # 
-- (!\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[67]~11_combout\ & (\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~3\ $ (GND)))
-- \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~5\ = CARRY((\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[67]~11_combout\) # (!\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[67]~11_combout\,
	datad => VCC,
	cin => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~3\,
	combout => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~4_combout\,
	cout => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~5\);

-- Location: LCCOMB_X113_Y24_N20
\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~6_combout\ = (\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[68]~10_combout\ & (!\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~5\)) # 
-- (!\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[68]~10_combout\ & ((\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~5\) # (GND)))
-- \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~7\ = CARRY((!\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~5\) # (!\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[68]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[68]~10_combout\,
	datad => VCC,
	cin => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~5\,
	combout => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~6_combout\,
	cout => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~7\);

-- Location: LCCOMB_X113_Y24_N22
\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~8_combout\ = (\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[69]~9_combout\ & (\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~7\ $ (GND))) # 
-- (!\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[69]~9_combout\ & (!\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~7\ & VCC))
-- \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~9\ = CARRY((\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[69]~9_combout\ & !\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[69]~9_combout\,
	datad => VCC,
	cin => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~7\,
	combout => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~8_combout\,
	cout => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~9\);

-- Location: LCCOMB_X113_Y24_N24
\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~11_cout\ = CARRY((!\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[70]~8_combout\ & !\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[70]~8_combout\,
	datad => VCC,
	cin => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~9\,
	cout => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~11_cout\);

-- Location: LCCOMB_X113_Y24_N26
\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~12_combout\ = \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~11_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~11_cout\,
	combout => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~12_combout\);

-- Location: LCCOMB_X114_Y20_N28
\inst28|WideOr0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|WideOr0~combout\ = (\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~12_combout\ & (\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~12_combout\ $ 
-- (((\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~12_combout\) # (!\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~10_combout\))))) # (!\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~12_combout\ & 
-- (((!\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~12_combout\,
	datab => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~12_combout\,
	datac => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~12_combout\,
	datad => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~10_combout\,
	combout => \inst28|WideOr0~combout\);

-- Location: LCCOMB_X114_Y20_N14
\inst28|WideOr1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|WideOr1~2_combout\ = (\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~12_combout\ & (!\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~12_combout\ & 
-- ((!\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~10_combout\)))) # (!\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~12_combout\ & ((\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~12_combout\ $ 
-- (\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~12_combout\)) # (!\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~12_combout\,
	datab => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~12_combout\,
	datac => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~12_combout\,
	datad => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~10_combout\,
	combout => \inst28|WideOr1~2_combout\);

-- Location: LCCOMB_X114_Y20_N8
\inst28|output[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|output\(4) = (\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~12_combout\ & (!\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~12_combout\ & 
-- ((\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~12_combout\) # (!\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~10_combout\)))) # (!\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~12_combout\ & 
-- (((!\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~12_combout\,
	datab => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~12_combout\,
	datac => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~12_combout\,
	datad => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~10_combout\,
	combout => \inst28|output\(4));

-- Location: LCCOMB_X114_Y20_N30
\inst28|WideOr2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|WideOr2~combout\ = (\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~12_combout\ & (\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~12_combout\ $ 
-- (((\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~12_combout\) # (!\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~10_combout\))))) # (!\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~12_combout\ & 
-- (((!\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~12_combout\ & !\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~12_combout\)) # (!\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~12_combout\,
	datab => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~12_combout\,
	datac => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~12_combout\,
	datad => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~10_combout\,
	combout => \inst28|WideOr2~combout\);

-- Location: LCCOMB_X114_Y20_N12
\inst28|WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|WideOr3~0_combout\ = (\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~12_combout\ & ((\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~12_combout\ & 
-- (\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~12_combout\)) # (!\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~12_combout\ & ((\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~12_combout\,
	datab => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~12_combout\,
	datac => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~12_combout\,
	datad => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~10_combout\,
	combout => \inst28|WideOr3~0_combout\);

-- Location: LCCOMB_X114_Y20_N2
\inst28|WideOr4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|WideOr4~combout\ = (\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~12_combout\ & (((!\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~12_combout\ & 
-- \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~10_combout\)) # (!\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~12_combout\))) # (!\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~12_combout\ & 
-- (((!\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~12_combout\ & !\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~12_combout\)) # (!\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~12_combout\,
	datab => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~12_combout\,
	datac => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~12_combout\,
	datad => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~10_combout\,
	combout => \inst28|WideOr4~combout\);

-- Location: LCCOMB_X114_Y20_N0
\inst28|WideOr5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|WideOr5~combout\ = (\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~12_combout\ & (\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~12_combout\ $ 
-- (((!\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~10_combout\))))) # (!\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~12_combout\ & (((!\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~12_combout\ & 
-- !\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~12_combout\)) # (!\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~12_combout\,
	datab => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~12_combout\,
	datac => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~12_combout\,
	datad => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~10_combout\,
	combout => \inst28|WideOr5~combout\);

-- Location: LCCOMB_X109_Y21_N24
\inst26|WideOr0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|WideOr0~combout\ = (\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\ & (\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16_combout\ $ 
-- (((\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~16_combout\) # (!\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~14_combout\))))) # (!\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\ & 
-- (((!\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011110000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16_combout\,
	datab => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\,
	datac => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~14_combout\,
	datad => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~16_combout\,
	combout => \inst26|WideOr0~combout\);

-- Location: LCCOMB_X109_Y21_N2
\inst26|WideOr1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|WideOr1~2_combout\ = (\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16_combout\ & (!\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\ & 
-- (!\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~14_combout\))) # (!\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16_combout\ & ((\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\ $ 
-- (\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~16_combout\)) # (!\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011101000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16_combout\,
	datab => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\,
	datac => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~14_combout\,
	datad => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~16_combout\,
	combout => \inst26|WideOr1~2_combout\);

-- Location: LCCOMB_X109_Y21_N4
\inst26|output[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|output\(4) = (\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16_combout\ & (!\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\ & 
-- ((\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~16_combout\) # (!\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~14_combout\)))) # (!\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16_combout\ & 
-- (((!\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16_combout\,
	datab => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\,
	datac => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~14_combout\,
	datad => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~16_combout\,
	combout => \inst26|output\(4));

-- Location: LCCOMB_X109_Y21_N22
\inst26|WideOr2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|WideOr2~combout\ = (\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\ & (\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16_combout\ $ 
-- (((\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~16_combout\) # (!\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~14_combout\))))) # (!\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\ & 
-- (((!\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16_combout\ & !\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~16_combout\)) # (!\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011110010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16_combout\,
	datab => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\,
	datac => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~14_combout\,
	datad => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~16_combout\,
	combout => \inst26|WideOr2~combout\);

-- Location: LCCOMB_X109_Y21_N28
\inst26|WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|WideOr3~0_combout\ = (\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~16_combout\ & ((\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\ & 
-- (\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16_combout\)) # (!\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\ & ((\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16_combout\,
	datab => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\,
	datac => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~14_combout\,
	datad => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~16_combout\,
	combout => \inst26|WideOr3~0_combout\);

-- Location: LCCOMB_X109_Y21_N6
\inst26|WideOr4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|WideOr4~combout\ = (\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16_combout\ & (((\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~14_combout\ & 
-- !\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~16_combout\)) # (!\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\))) # (!\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16_combout\ & 
-- (((!\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\ & !\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~16_combout\)) # (!\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011110110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16_combout\,
	datab => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\,
	datac => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~14_combout\,
	datad => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~16_combout\,
	combout => \inst26|WideOr4~combout\);

-- Location: LCCOMB_X109_Y21_N12
\inst26|WideOr5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|WideOr5~combout\ = (\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16_combout\ & (\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\ $ 
-- ((!\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~14_combout\)))) # (!\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16_combout\ & (((!\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\ & 
-- !\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~16_combout\)) # (!\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011110010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_1~16_combout\,
	datab => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~16_combout\,
	datac => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_11~14_combout\,
	datad => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~16_combout\,
	combout => \inst26|WideOr5~combout\);

-- Location: LCCOMB_X113_Y24_N10
\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[77]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[77]~14_combout\ = (\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~12_combout\ & (\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[68]~10_combout\)) 
-- # (!\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~12_combout\ & ((\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[68]~10_combout\,
	datac => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~12_combout\,
	datad => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~6_combout\,
	combout => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[77]~14_combout\);

-- Location: LCCOMB_X113_Y24_N28
\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[76]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[76]~15_combout\ = (\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~12_combout\ & (\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[67]~11_combout\)) 
-- # (!\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~12_combout\ & ((\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[67]~11_combout\,
	datac => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~12_combout\,
	datad => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~4_combout\,
	combout => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[76]~15_combout\);

-- Location: LCCOMB_X113_Y24_N6
\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[75]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[75]~16_combout\ = (\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~12_combout\ & (\inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[135]~24_combout\ $ 
-- ((\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~12_combout\)))) # (!\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~12_combout\ & (((\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[135]~24_combout\,
	datab => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_7~12_combout\,
	datac => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~12_combout\,
	datad => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~2_combout\,
	combout => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[75]~16_combout\);

-- Location: LCCOMB_X113_Y24_N8
\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[78]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[78]~13_combout\ = (\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~12_combout\ & ((\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[69]~9_combout\))) 
-- # (!\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~12_combout\ & (\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~8_combout\,
	datac => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~12_combout\,
	datad => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[69]~9_combout\,
	combout => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[78]~13_combout\);

-- Location: LCCOMB_X114_Y24_N12
\inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~0_combout\ = (\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[77]~14_combout\ & (!\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[75]~16_combout\ & 
-- (\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[76]~15_combout\ $ (!\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[78]~13_combout\)))) # 
-- (!\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[77]~14_combout\ & (!\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[76]~15_combout\ & 
-- (\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[75]~16_combout\ & \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[78]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[77]~14_combout\,
	datab => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[76]~15_combout\,
	datac => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[75]~16_combout\,
	datad => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[78]~13_combout\,
	combout => \inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~0_combout\);

-- Location: LCCOMB_X113_Y24_N30
\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[74]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[74]~12_combout\ = \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~12_combout\ $ (\inst21|tmp2\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~12_combout\,
	datad => \inst21|tmp2\(2),
	combout => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[74]~12_combout\);

-- Location: LCCOMB_X114_Y24_N26
\inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~0_combout\ = (\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[77]~14_combout\ & ((\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[76]~15_combout\ & 
-- ((\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[75]~16_combout\) # (!\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[78]~13_combout\))) # 
-- (!\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[76]~15_combout\ & (\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[75]~16_combout\ & 
-- !\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[78]~13_combout\)))) # (!\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[77]~14_combout\ & 
-- (!\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[76]~15_combout\ & ((\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[78]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[77]~14_combout\,
	datab => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[76]~15_combout\,
	datac => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[75]~16_combout\,
	datad => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[78]~13_combout\,
	combout => \inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~0_combout\);

-- Location: LCCOMB_X113_Y24_N4
\inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~1_combout\ = (\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[75]~16_combout\ & ((\inst21|tmp2\(2) $ 
-- (!\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~12_combout\)) # (!\inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~0_combout\))) # (!\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[75]~16_combout\ & 
-- ((\inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~0_combout\) # (\inst21|tmp2\(2) $ (!\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011111101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[75]~16_combout\,
	datab => \inst21|tmp2\(2),
	datac => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|op_8~12_combout\,
	datad => \inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~0_combout\,
	combout => \inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~1_combout\);

-- Location: LCCOMB_X114_Y24_N20
\inst24|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[22]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[22]~0_combout\ = (\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[76]~15_combout\ & 
-- (!\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[78]~13_combout\ & ((\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[75]~16_combout\) # 
-- (!\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[77]~14_combout\)))) # (!\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[76]~15_combout\ & 
-- (\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[78]~13_combout\ & ((\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[77]~14_combout\) # 
-- (!\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[75]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[77]~14_combout\,
	datab => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[76]~15_combout\,
	datac => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[75]~16_combout\,
	datad => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[78]~13_combout\,
	combout => \inst24|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[22]~0_combout\);

-- Location: LCCOMB_X114_Y24_N24
\inst24|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[26]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[26]~3_combout\ = \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[74]~12_combout\ $ (((\inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~0_combout\) # 
-- ((\inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~1_combout\ & \inst24|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[22]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~0_combout\,
	datab => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[74]~12_combout\,
	datac => \inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~1_combout\,
	datad => \inst24|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[22]~0_combout\,
	combout => \inst24|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[26]~3_combout\);

-- Location: LCCOMB_X114_Y24_N6
\inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~2_combout\ = (\inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~0_combout\) # ((\inst24|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[22]~0_combout\ & 
-- \inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst24|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[22]~0_combout\,
	datac => \inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~1_combout\,
	datad => \inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~0_combout\,
	combout => \inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~2_combout\);

-- Location: FF_X110_Y29_N9
\inst2|price[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|x~clkctrl_outclk\,
	d => \inst2|price[1]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|price\(1));

-- Location: LCCOMB_X110_Y29_N4
\inst21|tmp2[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst21|tmp2[1]~feeder_combout\ = \inst2|price\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|price\(1),
	combout => \inst21|tmp2[1]~feeder_combout\);

-- Location: FF_X110_Y29_N5
\inst21|tmp2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|x~clkctrl_outclk\,
	d => \inst21|tmp2[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|tmp2\(1));

-- Location: LCCOMB_X114_Y24_N8
\inst24|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[27]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[27]~1_combout\ = \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[75]~16_combout\ $ (\inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~0_combout\ $ 
-- (((\inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~2_combout\ & \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[74]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~2_combout\,
	datab => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[75]~16_combout\,
	datac => \inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~0_combout\,
	datad => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[74]~12_combout\,
	combout => \inst24|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[27]~1_combout\);

-- Location: LCCOMB_X114_Y24_N10
\inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~2_combout\ = (\inst24|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[27]~1_combout\ & ((\inst21|tmp2\(1)) # 
-- (\inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~2_combout\ $ (!\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[74]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~2_combout\,
	datab => \inst21|tmp2\(1),
	datac => \inst24|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[27]~1_combout\,
	datad => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[74]~12_combout\,
	combout => \inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~2_combout\);

-- Location: LCCOMB_X114_Y24_N22
\inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~3_combout\ = (\inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~2_combout\) # ((\inst24|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[22]~0_combout\ & 
-- (!\inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~1_combout\)) # (!\inst24|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[22]~0_combout\ & (\inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~1_combout\ & 
-- \inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~2_combout\,
	datab => \inst24|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[22]~0_combout\,
	datac => \inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~1_combout\,
	datad => \inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~0_combout\,
	combout => \inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~3_combout\);

-- Location: LCCOMB_X114_Y35_N22
\inst24|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[32]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[32]~4_combout\ = \inst24|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[26]~3_combout\ $ (((\inst21|tmp2\(1)) # 
-- (!\inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[26]~3_combout\,
	datab => \inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~3_combout\,
	datad => \inst21|tmp2\(1),
	combout => \inst24|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[32]~4_combout\);

-- Location: LCCOMB_X114_Y35_N24
\inst24|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[31]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[31]~2_combout\ = \inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~3_combout\ $ (\inst21|tmp2\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~3_combout\,
	datad => \inst21|tmp2\(1),
	combout => \inst24|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[31]~2_combout\);

-- Location: LCCOMB_X110_Y29_N2
\inst2|price[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|price[0]~feeder_combout\ = \inst2|price[0]~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|price[0]~13_combout\,
	combout => \inst2|price[0]~feeder_combout\);

-- Location: FF_X110_Y29_N3
\inst2|price[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|x~clkctrl_outclk\,
	d => \inst2|price[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|price\(0));

-- Location: LCCOMB_X110_Y29_N0
\inst21|tmp2[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst21|tmp2[0]~feeder_combout\ = \inst2|price\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|price\(0),
	combout => \inst21|tmp2[0]~feeder_combout\);

-- Location: FF_X110_Y29_N1
\inst21|tmp2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|x~clkctrl_outclk\,
	d => \inst21|tmp2[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|tmp2\(0));

-- Location: LCCOMB_X114_Y35_N28
\inst24|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[33]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[33]~5_combout\ = \inst24|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[27]~1_combout\ $ (((\inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~3_combout\ & 
-- ((\inst21|tmp2\(1)) # (!\inst24|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[26]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[26]~3_combout\,
	datab => \inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~3_combout\,
	datac => \inst24|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[27]~1_combout\,
	datad => \inst21|tmp2\(1),
	combout => \inst24|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[33]~5_combout\);

-- Location: LCCOMB_X114_Y35_N30
\inst32|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|Mux0~0_combout\ = (\inst24|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[31]~2_combout\ & (((\inst24|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[33]~5_combout\)))) # 
-- (!\inst24|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[31]~2_combout\ & (\inst24|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[32]~4_combout\ $ (((\inst21|tmp2\(0) & 
-- !\inst24|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[33]~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[32]~4_combout\,
	datab => \inst24|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[31]~2_combout\,
	datac => \inst21|tmp2\(0),
	datad => \inst24|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[33]~5_combout\,
	combout => \inst32|Mux0~0_combout\);

-- Location: LCCOMB_X114_Y35_N4
\inst32|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|Mux1~0_combout\ = (\inst24|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[32]~4_combout\ & ((\inst24|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[33]~5_combout\) # 
-- (\inst24|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[31]~2_combout\ $ (\inst21|tmp2\(0))))) # (!\inst24|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[32]~4_combout\ & 
-- (\inst24|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[31]~2_combout\ & ((\inst24|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[33]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[32]~4_combout\,
	datab => \inst24|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[31]~2_combout\,
	datac => \inst21|tmp2\(0),
	datad => \inst24|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[33]~5_combout\,
	combout => \inst32|Mux1~0_combout\);

-- Location: LCCOMB_X114_Y35_N18
\inst32|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|Mux2~0_combout\ = (\inst24|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[32]~4_combout\ & (((!\inst24|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[33]~5_combout\)))) # 
-- (!\inst24|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[32]~4_combout\ & (((\inst21|tmp2\(0) & !\inst24|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[33]~5_combout\)) # 
-- (!\inst24|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[31]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[32]~4_combout\,
	datab => \inst24|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[31]~2_combout\,
	datac => \inst21|tmp2\(0),
	datad => \inst24|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[33]~5_combout\,
	combout => \inst32|Mux2~0_combout\);

-- Location: LCCOMB_X114_Y35_N0
\inst32|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|Mux3~0_combout\ = (\inst24|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[31]~2_combout\ & ((\inst24|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[33]~5_combout\) # 
-- ((\inst24|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[32]~4_combout\ & \inst21|tmp2\(0))))) # (!\inst24|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[31]~2_combout\ & 
-- (\inst24|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[32]~4_combout\ $ (((\inst21|tmp2\(0) & !\inst24|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[33]~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[32]~4_combout\,
	datab => \inst24|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[31]~2_combout\,
	datac => \inst21|tmp2\(0),
	datad => \inst24|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[33]~5_combout\,
	combout => \inst32|Mux3~0_combout\);

-- Location: LCCOMB_X114_Y35_N10
\inst32|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|Mux4~0_combout\ = (\inst21|tmp2\(0)) # ((\inst24|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[31]~2_combout\ & ((\inst24|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[33]~5_combout\))) # 
-- (!\inst24|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[31]~2_combout\ & (\inst24|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[32]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[32]~4_combout\,
	datab => \inst24|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[31]~2_combout\,
	datac => \inst21|tmp2\(0),
	datad => \inst24|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[33]~5_combout\,
	combout => \inst32|Mux4~0_combout\);

-- Location: LCCOMB_X114_Y35_N12
\inst32|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|Mux5~0_combout\ = (\inst24|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[32]~4_combout\ & (!\inst24|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[33]~5_combout\ & ((!\inst21|tmp2\(0)) # 
-- (!\inst24|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[31]~2_combout\)))) # (!\inst24|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[32]~4_combout\ & 
-- (!\inst24|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[31]~2_combout\ & ((\inst24|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[33]~5_combout\) # (!\inst21|tmp2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[32]~4_combout\,
	datab => \inst24|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[31]~2_combout\,
	datac => \inst21|tmp2\(0),
	datad => \inst24|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[33]~5_combout\,
	combout => \inst32|Mux5~0_combout\);

-- Location: LCCOMB_X114_Y35_N26
\inst32|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|Mux6~0_combout\ = (\inst24|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[32]~4_combout\ & ((\inst24|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[33]~5_combout\) # 
-- ((\inst24|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[31]~2_combout\ & \inst21|tmp2\(0))))) # (!\inst24|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[32]~4_combout\ & 
-- (\inst24|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[31]~2_combout\ $ (((!\inst24|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[33]~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[32]~4_combout\,
	datab => \inst24|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[31]~2_combout\,
	datac => \inst21|tmp2\(0),
	datad => \inst24|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[33]~5_combout\,
	combout => \inst32|Mux6~0_combout\);

-- Location: LCCOMB_X114_Y24_N2
\inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~0_combout\ = (\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[78]~13_combout\ & ((\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[77]~14_combout\) # 
-- (\inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[76]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[77]~14_combout\,
	datab => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[76]~15_combout\,
	datad => \inst23|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[78]~13_combout\,
	combout => \inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~0_combout\);

-- Location: LCCOMB_X114_Y24_N4
\inst30|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|Mux0~0_combout\ = (\inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~2_combout\ & (((\inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~0_combout\)))) # 
-- (!\inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~2_combout\ & (\inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~0_combout\ $ (((!\inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~0_combout\ & 
-- \inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~0_combout\,
	datab => \inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~0_combout\,
	datac => \inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~3_combout\,
	datad => \inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~2_combout\,
	combout => \inst30|Mux0~0_combout\);

-- Location: LCCOMB_X114_Y24_N18
\inst30|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|Mux1~0_combout\ = (\inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~0_combout\ & ((\inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~0_combout\) # 
-- (\inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~3_combout\ $ (\inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~2_combout\)))) # (!\inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~0_combout\ & 
-- (\inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~0_combout\ & ((\inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~0_combout\,
	datab => \inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~0_combout\,
	datac => \inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~3_combout\,
	datad => \inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~2_combout\,
	combout => \inst30|Mux1~0_combout\);

-- Location: LCCOMB_X114_Y24_N0
\inst30|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|Mux2~0_combout\ = (\inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~0_combout\ & (\inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~0_combout\)) # 
-- (!\inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~0_combout\ & (\inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~2_combout\ & ((\inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~0_combout\) # 
-- (!\inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~0_combout\,
	datab => \inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~0_combout\,
	datac => \inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~3_combout\,
	datad => \inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~2_combout\,
	combout => \inst30|Mux2~0_combout\);

-- Location: LCCOMB_X114_Y24_N30
\inst30|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|Mux3~0_combout\ = (\inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~2_combout\ & ((\inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~0_combout\) # 
-- ((\inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~0_combout\ & \inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~3_combout\)))) # (!\inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~2_combout\ & 
-- (\inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~0_combout\ $ (((!\inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~0_combout\ & \inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~0_combout\,
	datab => \inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~0_combout\,
	datac => \inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~3_combout\,
	datad => \inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~2_combout\,
	combout => \inst30|Mux3~0_combout\);

-- Location: LCCOMB_X114_Y24_N28
\inst30|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|Mux4~0_combout\ = (\inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~3_combout\) # ((\inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~2_combout\ & 
-- ((\inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~0_combout\))) # (!\inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~2_combout\ & (\inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~0_combout\,
	datab => \inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~0_combout\,
	datac => \inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~3_combout\,
	datad => \inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~2_combout\,
	combout => \inst30|Mux4~0_combout\);

-- Location: LCCOMB_X114_Y24_N14
\inst30|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|Mux5~0_combout\ = (\inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~0_combout\ & ((\inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~0_combout\) # 
-- ((\inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~3_combout\ & \inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~2_combout\)))) # (!\inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~0_combout\ & 
-- ((\inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~2_combout\) # ((!\inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~0_combout\ & \inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~0_combout\,
	datab => \inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~0_combout\,
	datac => \inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~3_combout\,
	datad => \inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~2_combout\,
	combout => \inst30|Mux5~0_combout\);

-- Location: LCCOMB_X114_Y24_N16
\inst30|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|Mux6~0_combout\ = (\inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~0_combout\ & (!\inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~0_combout\ & 
-- ((!\inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~2_combout\) # (!\inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~3_combout\)))) # (!\inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~0_combout\ & 
-- (\inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~0_combout\ $ (((\inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~0_combout\,
	datab => \inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~0_combout\,
	datac => \inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~3_combout\,
	datad => \inst24|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~2_combout\,
	combout => \inst30|Mux6~0_combout\);

ww_dis_decade(6) <= \dis_decade[6]~output_o\;

ww_dis_decade(5) <= \dis_decade[5]~output_o\;

ww_dis_decade(4) <= \dis_decade[4]~output_o\;

ww_dis_decade(3) <= \dis_decade[3]~output_o\;

ww_dis_decade(2) <= \dis_decade[2]~output_o\;

ww_dis_decade(1) <= \dis_decade[1]~output_o\;

ww_dis_decade(0) <= \dis_decade[0]~output_o\;

ww_dis_hundred(6) <= \dis_hundred[6]~output_o\;

ww_dis_hundred(5) <= \dis_hundred[5]~output_o\;

ww_dis_hundred(4) <= \dis_hundred[4]~output_o\;

ww_dis_hundred(3) <= \dis_hundred[3]~output_o\;

ww_dis_hundred(2) <= \dis_hundred[2]~output_o\;

ww_dis_hundred(1) <= \dis_hundred[1]~output_o\;

ww_dis_hundred(0) <= \dis_hundred[0]~output_o\;

ww_dis_mil(6) <= \dis_mil[6]~output_o\;

ww_dis_mil(5) <= \dis_mil[5]~output_o\;

ww_dis_mil(4) <= \dis_mil[4]~output_o\;

ww_dis_mil(3) <= \dis_mil[3]~output_o\;

ww_dis_mil(2) <= \dis_mil[2]~output_o\;

ww_dis_mil(1) <= \dis_mil[1]~output_o\;

ww_dis_mil(0) <= \dis_mil[0]~output_o\;

ww_dis_unit(6) <= \dis_unit[6]~output_o\;

ww_dis_unit(5) <= \dis_unit[5]~output_o\;

ww_dis_unit(4) <= \dis_unit[4]~output_o\;

ww_dis_unit(3) <= \dis_unit[3]~output_o\;

ww_dis_unit(2) <= \dis_unit[2]~output_o\;

ww_dis_unit(1) <= \dis_unit[1]~output_o\;

ww_dis_unit(0) <= \dis_unit[0]~output_o\;

ww_price_decade(6) <= \price_decade[6]~output_o\;

ww_price_decade(5) <= \price_decade[5]~output_o\;

ww_price_decade(4) <= \price_decade[4]~output_o\;

ww_price_decade(3) <= \price_decade[3]~output_o\;

ww_price_decade(2) <= \price_decade[2]~output_o\;

ww_price_decade(1) <= \price_decade[1]~output_o\;

ww_price_decade(0) <= \price_decade[0]~output_o\;

ww_price_hundred(6) <= \price_hundred[6]~output_o\;

ww_price_hundred(5) <= \price_hundred[5]~output_o\;

ww_price_hundred(4) <= \price_hundred[4]~output_o\;

ww_price_hundred(3) <= \price_hundred[3]~output_o\;

ww_price_hundred(2) <= \price_hundred[2]~output_o\;

ww_price_hundred(1) <= \price_hundred[1]~output_o\;

ww_price_hundred(0) <= \price_hundred[0]~output_o\;

ww_price_mil(6) <= \price_mil[6]~output_o\;

ww_price_mil(5) <= \price_mil[5]~output_o\;

ww_price_mil(4) <= \price_mil[4]~output_o\;

ww_price_mil(3) <= \price_mil[3]~output_o\;

ww_price_mil(2) <= \price_mil[2]~output_o\;

ww_price_mil(1) <= \price_mil[1]~output_o\;

ww_price_mil(0) <= \price_mil[0]~output_o\;

ww_price_unit(6) <= \price_unit[6]~output_o\;

ww_price_unit(5) <= \price_unit[5]~output_o\;

ww_price_unit(4) <= \price_unit[4]~output_o\;

ww_price_unit(3) <= \price_unit[3]~output_o\;

ww_price_unit(2) <= \price_unit[2]~output_o\;

ww_price_unit(1) <= \price_unit[1]~output_o\;

ww_price_unit(0) <= \price_unit[0]~output_o\;
END structure;


