-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Web Edition"

-- DATE "02/05/2018 21:56:56"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ALU IS
    PORT (
	clock : IN std_logic;
	reset : IN std_logic;
	current_pc : OUT std_logic_vector(3 DOWNTO 0);
	result : OUT std_logic_vector(3 DOWNTO 0)
	);
END ALU;

-- Design Ports Information
-- current_pc[0]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- current_pc[1]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- current_pc[2]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- current_pc[3]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[0]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[1]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[2]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[3]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ALU IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_current_pc : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_result : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \im|stage_dec|s1|y[2]~0_combout\ : std_logic;
SIGNAL \alu|mux|stage3|f[1]~42_combout\ : std_logic;
SIGNAL \alu|mux|stage3|f[1]~7_combout\ : std_logic;
SIGNAL \id|ALUOP[0]~5_combout\ : std_logic;
SIGNAL \current_pc[0]~output_o\ : std_logic;
SIGNAL \current_pc[1]~output_o\ : std_logic;
SIGNAL \current_pc[2]~output_o\ : std_logic;
SIGNAL \current_pc[3]~output_o\ : std_logic;
SIGNAL \result[0]~output_o\ : std_logic;
SIGNAL \result[1]~output_o\ : std_logic;
SIGNAL \result[2]~output_o\ : std_logic;
SIGNAL \result[3]~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \pc_mux|f~0_combout\ : std_logic;
SIGNAL \pc_mux|f~1_combout\ : std_logic;
SIGNAL \pc_mux|f~2_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \addpc|stage4|s~combout\ : std_logic;
SIGNAL \pc_mux|f~3_combout\ : std_logic;
SIGNAL \alu|mux|stage2|f[0]~19_combout\ : std_logic;
SIGNAL \im|output[1]~2_combout\ : std_logic;
SIGNAL \im|output[3]~1_combout\ : std_logic;
SIGNAL \im|output[2]~3_combout\ : std_logic;
SIGNAL \id|Equal5~0_combout\ : std_logic;
SIGNAL \im|output[4]~0_combout\ : std_logic;
SIGNAL \alu|mux|stage3|f[0]~18_combout\ : std_logic;
SIGNAL \alu|mux|stage3|f[0]~43_combout\ : std_logic;
SIGNAL \id|Equal2~0_combout\ : std_logic;
SIGNAL \alu|ripCarry|stage4|s~0_combout\ : std_logic;
SIGNAL \alu|mux|stage3|f[1]~40_combout\ : std_logic;
SIGNAL \rf|m1|stage3|f~1_combout\ : std_logic;
SIGNAL \alu|ripCarry|stage2|Cout~7_combout\ : std_logic;
SIGNAL \alu|ripCarry|stage2|Cout~8_combout\ : std_logic;
SIGNAL \alu|mux|stage3|f[2]~44_combout\ : std_logic;
SIGNAL \alu|mux|stage3|f[2]~45_combout\ : std_logic;
SIGNAL \rf|m1|stage3|f~0_combout\ : std_logic;
SIGNAL \im|output[21]~4_combout\ : std_logic;
SIGNAL \rf|value1[2]~0_combout\ : std_logic;
SIGNAL \alu|ripCarry|stage3|Cout~0_combout\ : std_logic;
SIGNAL \alu|mux|stage3|f[0]~38_combout\ : std_logic;
SIGNAL \alu|mux|stage3|f[0]~39_combout\ : std_logic;
SIGNAL \rf|m1|stage3|f~2_combout\ : std_logic;
SIGNAL \alu|mux|stage2|f[3]~13_combout\ : std_logic;
SIGNAL \alu|mux|stage2|f[3]~20_combout\ : std_logic;
SIGNAL \alu|mux|stage3|f[3]~41_combout\ : std_logic;
SIGNAL \rf|stage_dec1|s2|y\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf|m1|stage3|f\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf|r1|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pc|Q\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_clock <= clock;
ww_reset <= reset;
current_pc <= ww_current_pc;
result <= ww_result;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);

-- Location: LCCOMB_X29_Y72_N16
\im|stage_dec|s1|y[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \im|stage_dec|s1|y[2]~0_combout\ = (!\pc|Q\(1) & (\pc|Q\(2) & (!\pc|Q\(3) & !\pc|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(1),
	datab => \pc|Q\(2),
	datac => \pc|Q\(3),
	datad => \pc|Q\(0),
	combout => \im|stage_dec|s1|y[2]~0_combout\);

-- Location: LCCOMB_X30_Y72_N6
\alu|mux|stage3|f[1]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|mux|stage3|f[1]~42_combout\ = (!\pc|Q\(0) & (!\pc|Q\(1) & (\pc|Q\(2) & \alu|mux|stage3|f[1]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(0),
	datab => \pc|Q\(1),
	datac => \pc|Q\(2),
	datad => \alu|mux|stage3|f[1]~7_combout\,
	combout => \alu|mux|stage3|f[1]~42_combout\);

-- Location: LCCOMB_X29_Y72_N24
\alu|mux|stage3|f[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|mux|stage3|f[1]~7_combout\ = (!\pc|Q\(3) & (\rf|r1|Q\(1) $ (\rf|r1|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pc|Q\(3),
	datac => \rf|r1|Q\(1),
	datad => \rf|r1|Q\(0),
	combout => \alu|mux|stage3|f[1]~7_combout\);

-- Location: LCCOMB_X29_Y72_N8
\id|ALUOP[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \id|ALUOP[0]~5_combout\ = (!\pc|Q\(3) & ((\pc|Q\(0) & (!\pc|Q\(1))) # (!\pc|Q\(0) & (\pc|Q\(1) & !\pc|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(0),
	datab => \pc|Q\(3),
	datac => \pc|Q\(1),
	datad => \pc|Q\(2),
	combout => \id|ALUOP[0]~5_combout\);

-- Location: IOOBUF_X27_Y73_N9
\current_pc[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc|Q\(0),
	devoe => ww_devoe,
	o => \current_pc[0]~output_o\);

-- Location: IOOBUF_X31_Y73_N9
\current_pc[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc|Q\(1),
	devoe => ww_devoe,
	o => \current_pc[1]~output_o\);

-- Location: IOOBUF_X27_Y73_N16
\current_pc[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc|Q\(2),
	devoe => ww_devoe,
	o => \current_pc[2]~output_o\);

-- Location: IOOBUF_X27_Y73_N23
\current_pc[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc|Q\(3),
	devoe => ww_devoe,
	o => \current_pc[3]~output_o\);

-- Location: IOOBUF_X29_Y73_N9
\result[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu|mux|stage3|f[0]~39_combout\,
	devoe => ww_devoe,
	o => \result[0]~output_o\);

-- Location: IOOBUF_X29_Y73_N2
\result[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu|mux|stage3|f[1]~40_combout\,
	devoe => ww_devoe,
	o => \result[1]~output_o\);

-- Location: IOOBUF_X33_Y73_N9
\result[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu|mux|stage3|f[2]~45_combout\,
	devoe => ww_devoe,
	o => \result[2]~output_o\);

-- Location: IOOBUF_X25_Y73_N16
\result[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu|mux|stage3|f[3]~41_combout\,
	devoe => ww_devoe,
	o => \result[3]~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\clock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G2
\clock~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~inputclkctrl_outclk\);

-- Location: LCCOMB_X29_Y72_N12
\pc_mux|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_mux|f~0_combout\ = (!\reset~input_o\ & !\pc|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \pc|Q\(0),
	combout => \pc_mux|f~0_combout\);

-- Location: FF_X29_Y72_N13
\pc|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \pc_mux|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|Q\(0));

-- Location: LCCOMB_X29_Y72_N22
\pc_mux|f~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_mux|f~1_combout\ = (!\reset~input_o\ & (\pc|Q\(0) $ (\pc|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \pc|Q\(0),
	datac => \pc|Q\(1),
	combout => \pc_mux|f~1_combout\);

-- Location: FF_X29_Y72_N23
\pc|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \pc_mux|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|Q\(1));

-- Location: LCCOMB_X29_Y72_N0
\pc_mux|f~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_mux|f~2_combout\ = (!\reset~input_o\ & (\pc|Q\(2) $ (((\pc|Q\(0) & \pc|Q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \pc|Q\(0),
	datac => \pc|Q\(2),
	datad => \pc|Q\(1),
	combout => \pc_mux|f~2_combout\);

-- Location: FF_X29_Y72_N1
\pc|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \pc_mux|f~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|Q\(2));

-- Location: IOIBUF_X31_Y73_N1
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LCCOMB_X28_Y72_N24
\addpc|stage4|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \addpc|stage4|s~combout\ = \pc|Q\(3) $ (((\pc|Q\(1) & (\pc|Q\(0) & \pc|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(1),
	datab => \pc|Q\(0),
	datac => \pc|Q\(3),
	datad => \pc|Q\(2),
	combout => \addpc|stage4|s~combout\);

-- Location: LCCOMB_X29_Y72_N14
\pc_mux|f~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_mux|f~3_combout\ = (!\reset~input_o\ & \addpc|stage4|s~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \addpc|stage4|s~combout\,
	combout => \pc_mux|f~3_combout\);

-- Location: FF_X29_Y72_N15
\pc|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \pc_mux|f~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|Q\(3));

-- Location: LCCOMB_X29_Y72_N10
\alu|mux|stage2|f[0]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|mux|stage2|f[0]~19_combout\ = (!\pc|Q\(3) & ((\pc|Q\(0) & (\pc|Q\(1) & !\pc|Q\(2))) # (!\pc|Q\(0) & ((\pc|Q\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(0),
	datab => \pc|Q\(3),
	datac => \pc|Q\(1),
	datad => \pc|Q\(2),
	combout => \alu|mux|stage2|f[0]~19_combout\);

-- Location: LCCOMB_X29_Y72_N2
\im|output[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \im|output[1]~2_combout\ = (!\pc|Q\(3) & ((\pc|Q\(1) & (\pc|Q\(2) $ (\pc|Q\(0)))) # (!\pc|Q\(1) & (\pc|Q\(2) & \pc|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(1),
	datab => \pc|Q\(3),
	datac => \pc|Q\(2),
	datad => \pc|Q\(0),
	combout => \im|output[1]~2_combout\);

-- Location: LCCOMB_X29_Y72_N4
\im|output[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \im|output[3]~1_combout\ = (!\pc|Q\(3) & (\pc|Q\(2) $ (((\pc|Q\(1) & \pc|Q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(1),
	datab => \pc|Q\(2),
	datac => \pc|Q\(3),
	datad => \pc|Q\(0),
	combout => \im|output[3]~1_combout\);

-- Location: LCCOMB_X29_Y72_N28
\im|output[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \im|output[2]~3_combout\ = (!\pc|Q\(3) & (\pc|Q\(2) $ (((\pc|Q\(1)) # (\pc|Q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(1),
	datab => \pc|Q\(3),
	datac => \pc|Q\(2),
	datad => \pc|Q\(0),
	combout => \im|output[2]~3_combout\);

-- Location: LCCOMB_X29_Y72_N18
\id|Equal5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \id|Equal5~0_combout\ = (\im|output[4]~0_combout\ & (\im|output[1]~2_combout\ & (\im|output[3]~1_combout\ & !\im|output[2]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im|output[4]~0_combout\,
	datab => \im|output[1]~2_combout\,
	datac => \im|output[3]~1_combout\,
	datad => \im|output[2]~3_combout\,
	combout => \id|Equal5~0_combout\);

-- Location: LCCOMB_X29_Y72_N20
\im|output[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \im|output[4]~0_combout\ = (!\pc|Q\(3) & ((\pc|Q\(0) & ((!\pc|Q\(2)) # (!\pc|Q\(1)))) # (!\pc|Q\(0) & ((\pc|Q\(1)) # (\pc|Q\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(0),
	datab => \pc|Q\(3),
	datac => \pc|Q\(1),
	datad => \pc|Q\(2),
	combout => \im|output[4]~0_combout\);

-- Location: LCCOMB_X30_Y72_N22
\rf|m1|stage3|f[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m1|stage3|f\(0) = (\reset~input_o\) # ((\im|output[4]~0_combout\ & ((\alu|mux|stage3|f[0]~39_combout\))) # (!\im|output[4]~0_combout\ & (\rf|r1|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \im|output[4]~0_combout\,
	datac => \rf|r1|Q\(0),
	datad => \alu|mux|stage3|f[0]~39_combout\,
	combout => \rf|m1|stage3|f\(0));

-- Location: FF_X30_Y72_N23
\rf|r1|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|m1|stage3|f\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r1|Q\(0));

-- Location: LCCOMB_X30_Y72_N0
\alu|mux|stage3|f[0]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|mux|stage3|f[0]~18_combout\ = (\pc|Q\(2) & (!\pc|Q\(1) & (!\rf|r1|Q\(0) & !\pc|Q\(0)))) # (!\pc|Q\(2) & (\pc|Q\(1) & ((\pc|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(2),
	datab => \pc|Q\(1),
	datac => \rf|r1|Q\(0),
	datad => \pc|Q\(0),
	combout => \alu|mux|stage3|f[0]~18_combout\);

-- Location: LCCOMB_X30_Y72_N26
\alu|mux|stage3|f[0]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|mux|stage3|f[0]~43_combout\ = (!\pc|Q\(3) & \alu|mux|stage3|f[0]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(3),
	datad => \alu|mux|stage3|f[0]~18_combout\,
	combout => \alu|mux|stage3|f[0]~43_combout\);

-- Location: LCCOMB_X29_Y72_N26
\rf|stage_dec1|s2|y[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|stage_dec1|s2|y\(1) = (!\pc|Q\(1) & (\pc|Q\(2) & (!\pc|Q\(3) & !\pc|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(1),
	datab => \pc|Q\(2),
	datac => \pc|Q\(3),
	datad => \pc|Q\(0),
	combout => \rf|stage_dec1|s2|y\(1));

-- Location: LCCOMB_X29_Y72_N30
\id|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \id|Equal2~0_combout\ = (!\pc|Q\(3) & ((\pc|Q\(1) & (!\pc|Q\(2) & !\pc|Q\(0))) # (!\pc|Q\(1) & (\pc|Q\(2) $ (\pc|Q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(1),
	datab => \pc|Q\(3),
	datac => \pc|Q\(2),
	datad => \pc|Q\(0),
	combout => \id|Equal2~0_combout\);

-- Location: LCCOMB_X30_Y72_N30
\alu|ripCarry|stage4|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|ripCarry|stage4|s~0_combout\ = (\rf|r1|Q\(3) & (\rf|stage_dec1|s2|y\(1) $ (((\im|output[4]~0_combout\ & \id|Equal2~0_combout\))))) # (!\rf|r1|Q\(3) & (\im|output[4]~0_combout\ & ((\id|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r1|Q\(3),
	datab => \im|output[4]~0_combout\,
	datac => \rf|stage_dec1|s2|y\(1),
	datad => \id|Equal2~0_combout\,
	combout => \alu|ripCarry|stage4|s~0_combout\);

-- Location: LCCOMB_X30_Y72_N12
\alu|mux|stage3|f[1]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|mux|stage3|f[1]~40_combout\ = (\alu|mux|stage3|f[1]~42_combout\) # ((\alu|mux|stage3|f[0]~38_combout\) # ((\id|Equal5~0_combout\ & \im|output[4]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|mux|stage3|f[1]~42_combout\,
	datab => \id|Equal5~0_combout\,
	datac => \im|output[4]~0_combout\,
	datad => \alu|mux|stage3|f[0]~38_combout\,
	combout => \alu|mux|stage3|f[1]~40_combout\);

-- Location: LCCOMB_X30_Y72_N8
\rf|m1|stage3|f~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m1|stage3|f~1_combout\ = (!\reset~input_o\ & ((\im|output[4]~0_combout\ & ((\alu|mux|stage3|f[1]~40_combout\))) # (!\im|output[4]~0_combout\ & (\rf|r1|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \im|output[4]~0_combout\,
	datac => \rf|r1|Q\(1),
	datad => \alu|mux|stage3|f[1]~40_combout\,
	combout => \rf|m1|stage3|f~1_combout\);

-- Location: FF_X30_Y72_N9
\rf|r1|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|m1|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r1|Q\(1));

-- Location: LCCOMB_X30_Y72_N24
\alu|ripCarry|stage2|Cout~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|ripCarry|stage2|Cout~7_combout\ = (\pc|Q\(1) & (((!\pc|Q\(0))))) # (!\pc|Q\(1) & ((\pc|Q\(0)) # ((\rf|r1|Q\(0) & \rf|r1|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r1|Q\(0),
	datab => \pc|Q\(1),
	datac => \rf|r1|Q\(1),
	datad => \pc|Q\(0),
	combout => \alu|ripCarry|stage2|Cout~7_combout\);

-- Location: LCCOMB_X30_Y72_N14
\alu|ripCarry|stage2|Cout~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|ripCarry|stage2|Cout~8_combout\ = (!\pc|Q\(3) & ((\pc|Q\(2) & ((\alu|ripCarry|stage2|Cout~7_combout\))) # (!\pc|Q\(2) & (\pc|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(3),
	datab => \pc|Q\(1),
	datac => \pc|Q\(2),
	datad => \alu|ripCarry|stage2|Cout~7_combout\,
	combout => \alu|ripCarry|stage2|Cout~8_combout\);

-- Location: LCCOMB_X31_Y72_N0
\alu|mux|stage3|f[2]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|mux|stage3|f[2]~44_combout\ = (!\pc|Q\(1) & (\rf|r1|Q\(2) $ (((!\rf|r1|Q\(1)) # (!\rf|r1|Q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r1|Q\(0),
	datab => \rf|r1|Q\(2),
	datac => \pc|Q\(1),
	datad => \rf|r1|Q\(1),
	combout => \alu|mux|stage3|f[2]~44_combout\);

-- Location: LCCOMB_X31_Y72_N2
\alu|mux|stage3|f[2]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|mux|stage3|f[2]~45_combout\ = (!\pc|Q\(3) & ((\pc|Q\(2) & (!\pc|Q\(0) & \alu|mux|stage3|f[2]~44_combout\)) # (!\pc|Q\(2) & (\pc|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(3),
	datab => \pc|Q\(2),
	datac => \pc|Q\(0),
	datad => \alu|mux|stage3|f[2]~44_combout\,
	combout => \alu|mux|stage3|f[2]~45_combout\);

-- Location: LCCOMB_X30_Y72_N4
\rf|m1|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m1|stage3|f~0_combout\ = (!\reset~input_o\ & ((\im|output[4]~0_combout\ & ((\alu|mux|stage3|f[2]~45_combout\))) # (!\im|output[4]~0_combout\ & (\rf|r1|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \im|output[4]~0_combout\,
	datac => \rf|r1|Q\(2),
	datad => \alu|mux|stage3|f[2]~45_combout\,
	combout => \rf|m1|stage3|f~0_combout\);

-- Location: FF_X30_Y72_N5
\rf|r1|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|m1|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r1|Q\(2));

-- Location: LCCOMB_X29_Y72_N6
\im|output[21]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \im|output[21]~4_combout\ = (!\pc|Q\(3) & (\pc|Q\(0) $ (((\pc|Q\(1) & \pc|Q\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(0),
	datab => \pc|Q\(3),
	datac => \pc|Q\(1),
	datad => \pc|Q\(2),
	combout => \im|output[21]~4_combout\);

-- Location: LCCOMB_X30_Y72_N20
\rf|value1[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[2]~0_combout\ = (\im|stage_dec|s1|y[2]~0_combout\ & (\rf|r1|Q\(2) & (!\im|output[21]~4_combout\ & \im|output[4]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im|stage_dec|s1|y[2]~0_combout\,
	datab => \rf|r1|Q\(2),
	datac => \im|output[21]~4_combout\,
	datad => \im|output[4]~0_combout\,
	combout => \rf|value1[2]~0_combout\);

-- Location: LCCOMB_X30_Y72_N10
\alu|ripCarry|stage3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|ripCarry|stage3|Cout~0_combout\ = (\alu|ripCarry|stage2|Cout~8_combout\ & ((\rf|value1[2]~0_combout\) # ((\im|output[4]~0_combout\ & \id|Equal2~0_combout\)))) # (!\alu|ripCarry|stage2|Cout~8_combout\ & (\im|output[4]~0_combout\ & 
-- (\id|Equal2~0_combout\ & \rf|value1[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im|output[4]~0_combout\,
	datab => \id|Equal2~0_combout\,
	datac => \alu|ripCarry|stage2|Cout~8_combout\,
	datad => \rf|value1[2]~0_combout\,
	combout => \alu|ripCarry|stage3|Cout~0_combout\);

-- Location: LCCOMB_X30_Y72_N16
\alu|mux|stage3|f[0]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|mux|stage3|f[0]~38_combout\ = (\id|ALUOP[0]~5_combout\ & (!\id|Equal5~0_combout\ & (\alu|ripCarry|stage4|s~0_combout\ $ (\alu|ripCarry|stage3|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \id|ALUOP[0]~5_combout\,
	datab => \id|Equal5~0_combout\,
	datac => \alu|ripCarry|stage4|s~0_combout\,
	datad => \alu|ripCarry|stage3|Cout~0_combout\,
	combout => \alu|mux|stage3|f[0]~38_combout\);

-- Location: LCCOMB_X30_Y72_N18
\alu|mux|stage3|f[0]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|mux|stage3|f[0]~39_combout\ = (\alu|mux|stage3|f[0]~43_combout\) # ((\alu|mux|stage3|f[0]~38_combout\) # ((\alu|mux|stage2|f[0]~19_combout\ & \id|Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|mux|stage2|f[0]~19_combout\,
	datab => \id|Equal5~0_combout\,
	datac => \alu|mux|stage3|f[0]~43_combout\,
	datad => \alu|mux|stage3|f[0]~38_combout\,
	combout => \alu|mux|stage3|f[0]~39_combout\);

-- Location: LCCOMB_X30_Y72_N28
\rf|m1|stage3|f~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m1|stage3|f~2_combout\ = (!\reset~input_o\ & ((\im|output[4]~0_combout\ & ((\alu|mux|stage3|f[3]~41_combout\))) # (!\im|output[4]~0_combout\ & (\rf|r1|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \im|output[4]~0_combout\,
	datac => \rf|r1|Q\(3),
	datad => \alu|mux|stage3|f[3]~41_combout\,
	combout => \rf|m1|stage3|f~2_combout\);

-- Location: FF_X30_Y72_N29
\rf|r1|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|m1|stage3|f~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r1|Q\(3));

-- Location: LCCOMB_X31_Y72_N12
\alu|mux|stage2|f[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|mux|stage2|f[3]~13_combout\ = (\pc|Q\(2) & !\pc|Q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pc|Q\(2),
	datad => \pc|Q\(3),
	combout => \alu|mux|stage2|f[3]~13_combout\);

-- Location: LCCOMB_X31_Y72_N14
\alu|mux|stage2|f[3]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|mux|stage2|f[3]~20_combout\ = (!\pc|Q\(1) & (\rf|r1|Q\(3) & (!\pc|Q\(0) & \alu|mux|stage2|f[3]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(1),
	datab => \rf|r1|Q\(3),
	datac => \pc|Q\(0),
	datad => \alu|mux|stage2|f[3]~13_combout\,
	combout => \alu|mux|stage2|f[3]~20_combout\);

-- Location: LCCOMB_X30_Y72_N2
\alu|mux|stage3|f[3]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|mux|stage3|f[3]~41_combout\ = (\id|Equal5~0_combout\ & (((\alu|mux|stage2|f[3]~20_combout\)))) # (!\id|Equal5~0_combout\ & (\alu|ripCarry|stage4|s~0_combout\ $ (((\alu|ripCarry|stage3|Cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ripCarry|stage4|s~0_combout\,
	datab => \id|Equal5~0_combout\,
	datac => \alu|mux|stage2|f[3]~20_combout\,
	datad => \alu|ripCarry|stage3|Cout~0_combout\,
	combout => \alu|mux|stage3|f[3]~41_combout\);

ww_current_pc(0) <= \current_pc[0]~output_o\;

ww_current_pc(1) <= \current_pc[1]~output_o\;

ww_current_pc(2) <= \current_pc[2]~output_o\;

ww_current_pc(3) <= \current_pc[3]~output_o\;

ww_result(0) <= \result[0]~output_o\;

ww_result(1) <= \result[1]~output_o\;

ww_result(2) <= \result[2]~output_o\;

ww_result(3) <= \result[3]~output_o\;
END structure;


