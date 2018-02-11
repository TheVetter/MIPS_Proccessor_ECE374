-------- This is the 16 registers circuit for MIPS -----------------
library ieee;
use ieee.std_logic_1164.all;
USE work.components.all;

entity data_memory is
	port(clock, reset, MemWrite, MemRead : in std_logic;
			address, write_value : in std_logic_vector(3 downto 0);
			readData : out std_logic_vector(3 downto 0));
end data_memory;

architecture struc_behaviour of data_memory is

	constant zero_value : std_logic_vector(3 downto 0) := (others => '0');
	constant DMem0 : std_logic_vector(3 downto 0) := zero_value;
	constant DMem1 : std_logic_vector(3 downto 0) := "0001";
	constant DMem2 : std_logic_vector(3 downto 0) := "0010";
	constant DMem3 : std_logic_vector(3 downto 0) := "0011";
	constant DMem4 : std_logic_vector(3 downto 0) := "0100";
	constant DMem5 : std_logic_vector(3 downto 0) := zero_value;
	constant DMem6 : std_logic_vector(3 downto 0) := zero_value;
	constant DMem7 : std_logic_vector(3 downto 0) := zero_value;
	constant DMem8 : std_logic_vector(3 downto 0) := zero_value;
	constant DMem9 : std_logic_vector(3 downto 0) := zero_value;
	constant DMem10 : std_logic_vector(3 downto 0) := zero_value;
	
	signal decoder_port1, decoder_write_enable : std_logic_vector(15 downto 0);
	
	------- signals for register output -----------------------
	signal rout0, rout1, rout2, rout3, rout4, rout5, rout6, rout7, rout8, rout9, rout10, rout11, rout12, rout13, rout14, rout15 : std_logic_vector(3 downto 0);
	------- signals for multiplexer output ---------------------
	signal mout0, mout1, mout2, mout3, mout4, mout5, mout6, mout7, mout8, mout9, mout10, mout11, mout12, mout13, mout14, mout15 : std_logic_vector(3 downto 0);
 	---------- signals for multiplexer select --------------------
	signal ssel0, ssel1, ssel2, ssel3, ssel4, ssel5, ssel6, ssel7, ssel8, ssel9, ssel10, ssel11, ssel12, ssel13, ssel14, ssel15 : std_logic_vector(1 downto 0);

begin

	------------ decoder 4 x 16 to enable the tri-state buffer connected at the end of register -------------
	stage_dec1 : dec4to16 port map (address, '1', decoder_port1);
	----stage_dec2 : dec4to16 port map (read_port2, '1', decoder_port2);

	------------ decoder 4 x 16 to find which register to write to -------------
	stage_dec_write : dec4to16 port map (address, MemWrite, decoder_write_enable);
	
	------------- location 0 -----------------------
	ssel0 <= reset & decoder_write_enable(0);
	m0 : mux4to1 generic map (n=>4) port map (rout0, write_value, DMem0, DMem0, ssel0, mout0);	--- multiplexer
	r0	: regN generic map (n=>4) port map (clock, mout0, rout0);										--- register
	tri0 : trin generic map (n=>4) port map (rout0, decoder_port1(0), readData);						--- tri-state --buffer
	--tri0_2 : trin generic map (n=>4) port map (rout0, decoder_port2(0), value2);					--- tri-state ---buffer
	
	------------- location 1 -----------------------
	ssel1 <= reset & decoder_write_enable(1);
	m1 : mux4to1 generic map (n=>4) port map (rout1, write_value, DMem1, DMem1, ssel1, mout1);	--- multiplexer
	r1	: regN generic map (n=>4) port map (clock, mout1, rout1);										--- register
	tri1 : trin generic map (n=>4) port map (rout1, decoder_port1(1), readData);						--- tri-state buffer
	--tri1_2 : trin generic map (n=>4) port map (rout1, decoder_port2(1), value2);					--- tri-state buffer

	------------- location 2 -----------------------
	ssel2 <= reset & decoder_write_enable(2);
	m2 : mux4to1 generic map (n=>4) port map (rout2, write_value, DMem2, DMem2, ssel2, mout2);	--- multiplexer
	r2	: regN generic map (n=>4) port map (clock, mout2, rout2);										--- register
	tri2 : trin generic map (n=>4) port map (rout2, decoder_port1(2), readData);						--- tri-state buffer
	--tri2_2 : trin generic map (n=>4) port map (rout2, decoder_port2(2), value2);					--- tri-state buffer

	------------- location 3 -----------------------
	ssel3 <= reset & decoder_write_enable(3);
	m3 : mux4to1 generic map (n=>4) port map (rout3, write_value, DMem3, DMem3, ssel3, mout3);	--- multiplexer
	r3	: regN generic map (n=>4) port map (clock, mout3, rout3);										--- register
	tri3 : trin generic map (n=>4) port map (rout3, decoder_port1(3), readData);						--- tri-state buffer
--	tri3_2 : trin generic map (n=>4) port map (rout3, decoder_port2(3), value2);					--- tri-state buffer

	------------- location 4 -----------------------
	ssel4 <= reset & decoder_write_enable(4);
	m4 : mux4to1 generic map (n=>4) port map (rout4, write_value, DMem4, DMem4, ssel4, mout4);	--- multiplexer
	r4	: regN generic map (n=>4) port map (clock, mout4, rout4);										--- register
	tri4 : trin generic map (n=>4) port map (rout4, decoder_port1(4), readData);						--- tri-state buffer
--	tri4_2 : trin generic map (n=>4) port map (rout4, decoder_port2(4), value2);					--- tri-state buffer

	------------- location 5 -----------------------
	ssel5 <= reset & decoder_write_enable(5);
	m5 : mux4to1 generic map (n=>4) port map (rout5, write_value, DMem5, DMem5, ssel5, mout5);	--- multiplexer
	r5	: regN generic map (n=>4) port map (clock, mout5, rout5);										--- register
	tri5 : trin generic map (n=>4) port map (rout5, decoder_port1(5), readData);						--- tri-state buffer
--	tri5_2 : trin generic map (n=>4) port map (rout5, decoder_port2(5), value2);					--- tri-state buffer

	------------- location 6 -----------------------
	ssel6 <= reset & decoder_write_enable(6);
	m6 : mux4to1 generic map (n=>4) port map (rout6, write_value, DMem6, DMem6, ssel6, mout6);	--- multiplexer
	r6	: regN generic map (n=>4) port map (clock, mout6, rout6);										--- register
	tri6 : trin generic map (n=>4) port map (rout6, decoder_port1(6), readData);						--- tri-state buffer
--	tri6_2 : trin generic map (n=>4) port map (rout6, decoder_port2(6), value2);					--- tri-state buffer

	------------- location 7 -----------------------
	ssel7 <= reset & decoder_write_enable(7);
	m7 : mux4to1 generic map (n=>4) port map (rout7, write_value, DMem7, DMem7, ssel7, mout7);	--- multiplexer
	r7	: regN generic map (n=>4) port map (clock, mout7, rout7);										--- register
	tri7 : trin generic map (n=>4) port map (rout7, decoder_port1(7), readData);						--- tri-state buffer
--	tri7_2 : trin generic map (n=>4) port map (rout7, decoder_port2(7), value2);					--- tri-state buffer

	------------- location 8 -----------------------
	ssel8 <= reset & decoder_write_enable(8);
	m8 : mux4to1 generic map (n=>4) port map (rout8, write_value, DMem8, DMem8, ssel8, mout8);	--- multiplexer
	r8	: regN generic map (n=>4) port map (clock, mout8, rout8);										--- register
	tri8 : trin generic map (n=>4) port map (rout8, decoder_port1(8), readData);						--- tri-state buffer
--	tri8_2 : trin generic map (n=>4) port map (rout8, decoder_port2(8), value2);					--- tri-state buffer

	------------- location 9 -----------------------
	ssel9 <= reset & decoder_write_enable(9);
	m9 : mux4to1 generic map (n=>4) port map (rout9, write_value, DMem9, DMem9, ssel9, mout9);	--- multiplexer
	r9	: regN generic map (n=>4) port map (clock, mout9, rout9);									--- register
	tri9 : trin generic map (n=>4) port map (rout9, decoder_port1(9), readData);					--- tri-state buffer
--	tri9_2 : trin generic map (n=>4) port map (rout9, decoder_port2(9), value2);					--- tri-state buffer

	------------- location 10 -----------------------
	ssel10 <= reset & decoder_write_enable(10);
	m10 : mux4to1 generic map (n=>4) port map (rout10, write_value, DMem10, DMem10, ssel10, mout10);	--- multiplexer
	r10	: regN generic map (n=>4) port map (clock, mout10, rout10);											--- register
	tri10 : trin generic map (n=>4) port map (rout10, decoder_port1(10), readData);							--- tri-state buffer
	--tri10_2 : trin generic map (n=>4) port map (rout10, decoder_port2(10), value2);						--- tri-state buffer

end struc_behaviour;
