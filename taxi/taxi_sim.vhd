LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY taxi_sim IS
END taxi_sim;
ARCHITECTURE taxi_arch OF taxi_sim IS
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


	-- clk_time
	t_prcs_clk_time: PROCESS
	BEGIN
		LOOP
			clk_time <= '0';
			WAIT FOR 500 ms;
			clk_time <= '1';
			WAIT FOR 500 ms;
		END LOOP;
	END PROCESS t_prcs_clk_time;
	
	
	-- clk_distance
	t_prcs_clk_distance : PROCESS
	BEGIN
		LOOP
			clk_distance <= '0';
			WAIT FOR 2000 ms;
			clk_distance <= '1';
			WAIT FOR 50 ms;
			clk_distance <= '0';
			WAIT FOR 4000 ms;
			clk_distance <= '1';
			WAIT FOR 50 ms;
			clk_distance <= '0';
			WAIT FOR 2500 ms;
			clk_distance <= '1';
			WAIT FOR 50 ms;
			clk_distance <= '0';
			WAIT FOR 3000 ms;
			clk_distance <= '1';
			WAIT FOR 50 ms;
			clk_distance <= '0';
			WAIT FOR 5000 ms;
			clk_distance <= '1';
			WAIT FOR 50 ms;
			clk_distance <= '0';
			WAIT FOR 1500 ms;
			clk_distance <= '1';
			WAIT FOR 50 ms;
		END LOOP;
	END PROCESS t_prcs_clk_distance;



	-- pause
	t_prcs_pause : PROCESS
	BEGIN
		pause <= '0';
		WAIT FOR 30000 ms;
		pause <= '1';
		WAIT FOR 20000 ms;
		pause <= '0';
		WAIT;
	END PROCESS t_prcs_pause;

	-- start
	t_prcs_start : PROCESS
	BEGIN
		start <= '0';
		WAIT FOR 6000 ms;
		start <= '1';
		WAIT;
	END PROCESS t_prcs_start;

	-- stop
	t_prcs_stop : PROCESS
	BEGIN
		stop <= '1';
		WAIT FOR 5000 ms;
		stop <= '0';
		WAIT FOR 66000 ms;
		stop <= '1';
		WAIT FOR 20000 ms;
		stop <= '0';
		WAIT;
	END PROCESS t_prcs_stop;
END taxi_arch;