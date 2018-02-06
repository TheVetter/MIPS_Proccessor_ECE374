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

-- DATE "02/05/2018 21:05:04"

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
-- current_pc[0]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- current_pc[1]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- current_pc[2]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- current_pc[3]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[0]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[1]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[2]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[3]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL \rf|value1[3]~16_combout\ : std_logic;
SIGNAL \rf|m2|stage3|f~10_combout\ : std_logic;
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
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \pc_mux|f~0_combout\ : std_logic;
SIGNAL \addpc|stage2|s~combout\ : std_logic;
SIGNAL \addpc|stage3|s~combout\ : std_logic;
SIGNAL \addpc|stage4|s~combout\ : std_logic;
SIGNAL \rf|value2[0]~0_combout\ : std_logic;
SIGNAL \rf|m1|stage3|f[0]~0_combout\ : std_logic;
SIGNAL \rf|r3|Q[0]~feeder_combout\ : std_logic;
SIGNAL \im|output[23]~2_combout\ : std_logic;
SIGNAL \im|output[4]~0_combout\ : std_logic;
SIGNAL \rf|stage_dec_write|s1|y[0]~0_combout\ : std_logic;
SIGNAL \im|output[22]~4_combout\ : std_logic;
SIGNAL \rf|m3|stage3|f[0]~0_combout\ : std_logic;
SIGNAL \rf|value1[0]~0_combout\ : std_logic;
SIGNAL \rf|value1[0]~4_combout\ : std_logic;
SIGNAL \rf|m1|stage3|f[0]~1_combout\ : std_logic;
SIGNAL \rf|m2|stage3|f~8_combout\ : std_logic;
SIGNAL \rf|value1[0]~1_combout\ : std_logic;
SIGNAL \rf|value1[0]~2_combout\ : std_logic;
SIGNAL \rf|value1[0]~3_combout\ : std_logic;
SIGNAL \rf|value1[0]~5_combout\ : std_logic;
SIGNAL \rf|m0|stage3|f~0_combout\ : std_logic;
SIGNAL \rf|m0|stage3|f~1_combout\ : std_logic;
SIGNAL \rf|value2[0]~1_combout\ : std_logic;
SIGNAL \rf|value2[0]~3_combout\ : std_logic;
SIGNAL \rf|value2[0]~2_combout\ : std_logic;
SIGNAL \rf|value2[0]~4_combout\ : std_logic;
SIGNAL \rf|value2[0]~5_combout\ : std_logic;
SIGNAL \alu|ripCarry|stage1|s~0_combout\ : std_logic;
SIGNAL \alu|ripCarry|stage1|Cout~3_combout\ : std_logic;
SIGNAL \alu|ripCarry|stage1|Cout~2_combout\ : std_logic;
SIGNAL \rf|m2|stage3|f[1]~9_combout\ : std_logic;
SIGNAL \rf|value1[1]~6_combout\ : std_logic;
SIGNAL \rf|m0|stage3|f~2_combout\ : std_logic;
SIGNAL \rf|m5|stage3|f~0_combout\ : std_logic;
SIGNAL \rf|m5|stage3|f~1_combout\ : std_logic;
SIGNAL \im|output[21]~3_combout\ : std_logic;
SIGNAL \rf|m4|stage3|f~0_combout\ : std_logic;
SIGNAL \rf|value1[1]~7_combout\ : std_logic;
SIGNAL \rf|value1[1]~8_combout\ : std_logic;
SIGNAL \rf|value1[1]~9_combout\ : std_logic;
SIGNAL \rf|value1[1]~10_combout\ : std_logic;
SIGNAL \im|output[1]~1_combout\ : std_logic;
SIGNAL \rf|value2[1]~6_combout\ : std_logic;
SIGNAL \rf|value2[1]~7_combout\ : std_logic;
SIGNAL \rf|value2[1]~8_combout\ : std_logic;
SIGNAL \alu|ripCarry|stage2|s~combout\ : std_logic;
SIGNAL \id|Equal1~0_combout\ : std_logic;
SIGNAL \rf|m0|stage3|f~3_combout\ : std_logic;
SIGNAL \rf|value1[2]~11_combout\ : std_logic;
SIGNAL \rf|m4|stage3|f[2]~1_combout\ : std_logic;
SIGNAL \rf|value1[2]~12_combout\ : std_logic;
SIGNAL \rf|value1[2]~13_combout\ : std_logic;
SIGNAL \rf|value1[2]~14_combout\ : std_logic;
SIGNAL \rf|value1[2]~15_combout\ : std_logic;
SIGNAL \rf|value2[2]~9_combout\ : std_logic;
SIGNAL \rf|value2[2]~10_combout\ : std_logic;
SIGNAL \rf|value2[2]~11_combout\ : std_logic;
SIGNAL \rf|value2[2]~12_combout\ : std_logic;
SIGNAL \alu|ripCarry|stage2|Cout~0_combout\ : std_logic;
SIGNAL \alu|ripCarry|stage3|s~combout\ : std_logic;
SIGNAL \alu|ripCarry|stage3|Cout~0_combout\ : std_logic;
SIGNAL \rf|m0|stage3|f~4_combout\ : std_logic;
SIGNAL \rf|value2[3]~13_combout\ : std_logic;
SIGNAL \rf|value2[3]~14_combout\ : std_logic;
SIGNAL \rf|value2[3]~15_combout\ : std_logic;
SIGNAL \rf|value1[3]~17_combout\ : std_logic;
SIGNAL \rf|value1[3]~18_combout\ : std_logic;
SIGNAL \rf|value1[3]~19_combout\ : std_logic;
SIGNAL \alu|ripCarry|stage4|s~0_combout\ : std_logic;
SIGNAL \alu|ripCarry|stage4|s~combout\ : std_logic;
SIGNAL \rf|r0|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf|r1|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf|r2|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf|r3|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf|r4|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf|r5|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \alu|ripCarry|g\ : std_logic_vector(3 DOWNTO 0);
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

-- Location: FF_X3_Y35_N13
\rf|r5|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rf|m0|stage3|f~0_combout\,
	sload => VCC,
	ena => \rf|m5|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r5|Q\(0));

-- Location: FF_X2_Y35_N27
\rf|r4|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rf|m0|stage3|f~0_combout\,
	sload => VCC,
	ena => \rf|m4|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r4|Q\(0));

-- Location: FF_X4_Y35_N23
\rf|r2|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|m2|stage3|f[1]~9_combout\,
	ena => \rf|m2|stage3|f~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r2|Q\(1));

-- Location: FF_X4_Y35_N5
\rf|r4|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|m0|stage3|f~4_combout\,
	ena => \rf|m4|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r4|Q\(3));

-- Location: LCCOMB_X3_Y35_N14
\rf|value1[3]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[3]~16_combout\ = (\pc|Q\(2) & \rf|r4|Q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pc|Q\(2),
	datad => \rf|r4|Q\(3),
	combout => \rf|value1[3]~16_combout\);

-- Location: LCCOMB_X2_Y35_N22
\rf|m2|stage3|f~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m2|stage3|f~10_combout\ = (!\pc|Q\(3) & (!\pc|Q\(0) & (!\pc|Q\(2) & \pc|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(3),
	datab => \pc|Q\(0),
	datac => \pc|Q\(2),
	datad => \pc|Q\(1),
	combout => \rf|m2|stage3|f~10_combout\);

-- Location: IOOBUF_X0_Y34_N16
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

-- Location: IOOBUF_X0_Y34_N9
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

-- Location: IOOBUF_X0_Y33_N16
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

-- Location: IOOBUF_X0_Y34_N2
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

-- Location: IOOBUF_X0_Y35_N9
\result[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu|ripCarry|stage1|s~0_combout\,
	devoe => ww_devoe,
	o => \result[0]~output_o\);

-- Location: IOOBUF_X0_Y35_N16
\result[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu|ripCarry|stage2|s~combout\,
	devoe => ww_devoe,
	o => \result[1]~output_o\);

-- Location: IOOBUF_X0_Y35_N2
\result[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu|ripCarry|stage3|s~combout\,
	devoe => ww_devoe,
	o => \result[2]~output_o\);

-- Location: IOOBUF_X0_Y33_N23
\result[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu|ripCarry|stage4|s~combout\,
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

-- Location: IOIBUF_X0_Y34_N22
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LCCOMB_X1_Y35_N14
\pc_mux|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_mux|f~0_combout\ = (!\pc|Q\(0) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pc|Q\(0),
	datad => \reset~input_o\,
	combout => \pc_mux|f~0_combout\);

-- Location: FF_X1_Y35_N15
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

-- Location: LCCOMB_X1_Y35_N28
\addpc|stage2|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \addpc|stage2|s~combout\ = \pc|Q\(0) $ (\pc|Q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pc|Q\(0),
	datac => \pc|Q\(1),
	combout => \addpc|stage2|s~combout\);

-- Location: FF_X1_Y35_N29
\pc|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \addpc|stage2|s~combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|Q\(1));

-- Location: LCCOMB_X1_Y35_N6
\addpc|stage3|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \addpc|stage3|s~combout\ = \pc|Q\(2) $ (((\pc|Q\(0) & \pc|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pc|Q\(0),
	datac => \pc|Q\(2),
	datad => \pc|Q\(1),
	combout => \addpc|stage3|s~combout\);

-- Location: FF_X1_Y35_N7
\pc|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \addpc|stage3|s~combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|Q\(2));

-- Location: LCCOMB_X1_Y35_N16
\addpc|stage4|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \addpc|stage4|s~combout\ = \pc|Q\(3) $ (((\pc|Q\(0) & (\pc|Q\(2) & \pc|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(0),
	datab => \pc|Q\(2),
	datac => \pc|Q\(3),
	datad => \pc|Q\(1),
	combout => \addpc|stage4|s~combout\);

-- Location: FF_X1_Y35_N17
\pc|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \addpc|stage4|s~combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|Q\(3));

-- Location: LCCOMB_X5_Y35_N28
\rf|value2[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[0]~0_combout\ = (!\pc|Q\(1) & \pc|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pc|Q\(1),
	datad => \pc|Q\(0),
	combout => \rf|value2[0]~0_combout\);

-- Location: LCCOMB_X5_Y35_N14
\rf|m1|stage3|f[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m1|stage3|f[0]~0_combout\ = (\reset~input_o\) # (\rf|value1[0]~5_combout\ $ (((!\pc|Q\(3) & \rf|value2[0]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \rf|value1[0]~5_combout\,
	datac => \pc|Q\(3),
	datad => \rf|value2[0]~5_combout\,
	combout => \rf|m1|stage3|f[0]~0_combout\);

-- Location: LCCOMB_X6_Y35_N12
\rf|r3|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r3|Q[0]~feeder_combout\ = \rf|m1|stage3|f[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m1|stage3|f[0]~0_combout\,
	combout => \rf|r3|Q[0]~feeder_combout\);

-- Location: LCCOMB_X2_Y35_N30
\im|output[23]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \im|output[23]~2_combout\ = (!\pc|Q\(3) & (!\pc|Q\(2) & ((\pc|Q\(0)) # (\pc|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(3),
	datab => \pc|Q\(0),
	datac => \pc|Q\(2),
	datad => \pc|Q\(1),
	combout => \im|output[23]~2_combout\);

-- Location: LCCOMB_X1_Y35_N24
\im|output[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \im|output[4]~0_combout\ = (!\pc|Q\(3) & ((\pc|Q\(2) & (!\pc|Q\(1))) # (!\pc|Q\(2) & ((\pc|Q\(1)) # (\pc|Q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(2),
	datab => \pc|Q\(1),
	datac => \pc|Q\(0),
	datad => \pc|Q\(3),
	combout => \im|output[4]~0_combout\);

-- Location: LCCOMB_X2_Y35_N28
\rf|stage_dec_write|s1|y[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|stage_dec_write|s1|y[0]~0_combout\ = (!\im|output[21]~3_combout\ & (\im|output[23]~2_combout\ & \im|output[4]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im|output[21]~3_combout\,
	datac => \im|output[23]~2_combout\,
	datad => \im|output[4]~0_combout\,
	combout => \rf|stage_dec_write|s1|y[0]~0_combout\);

-- Location: LCCOMB_X2_Y35_N14
\im|output[22]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \im|output[22]~4_combout\ = (!\pc|Q\(3) & (!\pc|Q\(1) & ((\pc|Q\(0)) # (\pc|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(3),
	datab => \pc|Q\(0),
	datac => \pc|Q\(2),
	datad => \pc|Q\(1),
	combout => \im|output[22]~4_combout\);

-- Location: LCCOMB_X3_Y35_N22
\rf|m3|stage3|f[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m3|stage3|f[0]~0_combout\ = (\reset~input_o\) # ((\rf|stage_dec_write|s1|y[0]~0_combout\ & !\im|output[22]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \rf|stage_dec_write|s1|y[0]~0_combout\,
	datad => \im|output[22]~4_combout\,
	combout => \rf|m3|stage3|f[0]~0_combout\);

-- Location: FF_X6_Y35_N13
\rf|r3|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|r3|Q[0]~feeder_combout\,
	ena => \rf|m3|stage3|f[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r3|Q\(0));

-- Location: LCCOMB_X5_Y35_N8
\rf|value1[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[0]~0_combout\ = (\pc|Q\(0) & (!\pc|Q\(2) & (\rf|r3|Q\(0) & \pc|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(0),
	datab => \pc|Q\(2),
	datac => \rf|r3|Q\(0),
	datad => \pc|Q\(1),
	combout => \rf|value1[0]~0_combout\);

-- Location: LCCOMB_X4_Y35_N26
\rf|value1[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[0]~4_combout\ = (\pc|Q\(0) & \pc|Q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pc|Q\(0),
	datad => \pc|Q\(1),
	combout => \rf|value1[0]~4_combout\);

-- Location: LCCOMB_X2_Y35_N10
\rf|m1|stage3|f[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m1|stage3|f[0]~1_combout\ = (\reset~input_o\) # ((\im|output[22]~4_combout\ & \rf|stage_dec_write|s1|y[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \im|output[22]~4_combout\,
	datad => \rf|stage_dec_write|s1|y[0]~0_combout\,
	combout => \rf|m1|stage3|f[0]~1_combout\);

-- Location: FF_X5_Y35_N15
\rf|r1|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|m1|stage3|f[0]~0_combout\,
	ena => \rf|m1|stage3|f[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r1|Q\(0));

-- Location: LCCOMB_X2_Y35_N4
\rf|m2|stage3|f~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m2|stage3|f~8_combout\ = (\reset~input_o\) # ((\rf|m2|stage3|f~10_combout\ & !\im|output[22]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|m2|stage3|f~10_combout\,
	datab => \reset~input_o\,
	datac => \im|output[22]~4_combout\,
	combout => \rf|m2|stage3|f~8_combout\);

-- Location: FF_X2_Y35_N25
\rf|r2|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rf|m0|stage3|f~0_combout\,
	sload => VCC,
	ena => \rf|m2|stage3|f~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r2|Q\(0));

-- Location: LCCOMB_X2_Y35_N16
\rf|value1[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[0]~1_combout\ = (\pc|Q\(2) & (\rf|r4|Q\(0) & !\pc|Q\(1))) # (!\pc|Q\(2) & ((\pc|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r4|Q\(0),
	datac => \pc|Q\(2),
	datad => \pc|Q\(1),
	combout => \rf|value1[0]~1_combout\);

-- Location: LCCOMB_X2_Y35_N24
\rf|value1[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[0]~2_combout\ = (\pc|Q\(2) & (!\pc|Q\(0) & ((\rf|value1[0]~1_combout\)))) # (!\pc|Q\(2) & ((\rf|value1[0]~1_combout\ & ((\rf|r2|Q\(0)))) # (!\rf|value1[0]~1_combout\ & (\pc|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(0),
	datab => \pc|Q\(2),
	datac => \rf|r2|Q\(0),
	datad => \rf|value1[0]~1_combout\,
	combout => \rf|value1[0]~2_combout\);

-- Location: LCCOMB_X4_Y35_N12
\rf|value1[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[0]~3_combout\ = (\rf|value1[0]~2_combout\ & (((\rf|r1|Q\(0)) # (!\rf|value2[0]~0_combout\)))) # (!\rf|value1[0]~2_combout\ & (\rf|r5|Q\(0) & ((\rf|value2[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r5|Q\(0),
	datab => \rf|r1|Q\(0),
	datac => \rf|value1[0]~2_combout\,
	datad => \rf|value2[0]~0_combout\,
	combout => \rf|value1[0]~3_combout\);

-- Location: LCCOMB_X4_Y35_N20
\rf|value1[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[0]~5_combout\ = (!\pc|Q\(3) & ((\rf|value1[0]~0_combout\) # ((!\rf|value1[0]~4_combout\ & \rf|value1[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(3),
	datab => \rf|value1[0]~0_combout\,
	datac => \rf|value1[0]~4_combout\,
	datad => \rf|value1[0]~3_combout\,
	combout => \rf|value1[0]~5_combout\);

-- Location: LCCOMB_X5_Y35_N24
\rf|m0|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m0|stage3|f~0_combout\ = (!\reset~input_o\ & (\rf|value1[0]~5_combout\ $ (((\rf|value2[0]~5_combout\ & !\pc|Q\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value2[0]~5_combout\,
	datab => \reset~input_o\,
	datac => \pc|Q\(3),
	datad => \rf|value1[0]~5_combout\,
	combout => \rf|m0|stage3|f~0_combout\);

-- Location: LCCOMB_X2_Y35_N12
\rf|m0|stage3|f~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m0|stage3|f~1_combout\ = (\reset~input_o\) # ((\rf|m2|stage3|f~10_combout\ & \im|output[22]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|m2|stage3|f~10_combout\,
	datab => \reset~input_o\,
	datac => \im|output[22]~4_combout\,
	combout => \rf|m0|stage3|f~1_combout\);

-- Location: FF_X5_Y35_N31
\rf|r0|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rf|m0|stage3|f~0_combout\,
	sload => VCC,
	ena => \rf|m0|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r0|Q\(0));

-- Location: LCCOMB_X5_Y35_N4
\rf|value2[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[0]~1_combout\ = (\rf|r3|Q\(0) & \pc|Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|r3|Q\(0),
	datad => \pc|Q\(2),
	combout => \rf|value2[0]~1_combout\);

-- Location: LCCOMB_X1_Y35_N8
\rf|value2[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[0]~3_combout\ = (\pc|Q\(1)) # ((\pc|Q\(0) & \pc|Q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pc|Q\(1),
	datac => \pc|Q\(0),
	datad => \pc|Q\(2),
	combout => \rf|value2[0]~3_combout\);

-- Location: LCCOMB_X2_Y35_N6
\rf|value2[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[0]~2_combout\ = (\pc|Q\(1) & ((!\pc|Q\(2)))) # (!\pc|Q\(1) & (!\pc|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(0),
	datac => \pc|Q\(2),
	datad => \pc|Q\(1),
	combout => \rf|value2[0]~2_combout\);

-- Location: LCCOMB_X5_Y35_N18
\rf|value2[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[0]~4_combout\ = (\rf|value2[0]~3_combout\ & (\rf|r1|Q\(0) & ((\rf|value2[0]~2_combout\)))) # (!\rf|value2[0]~3_combout\ & (((\rf|value2[0]~1_combout\) # (!\rf|value2[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r1|Q\(0),
	datab => \rf|value2[0]~1_combout\,
	datac => \rf|value2[0]~3_combout\,
	datad => \rf|value2[0]~2_combout\,
	combout => \rf|value2[0]~4_combout\);

-- Location: LCCOMB_X5_Y35_N30
\rf|value2[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[0]~5_combout\ = (\rf|value2[0]~0_combout\ & ((\rf|value2[0]~4_combout\ & ((\rf|r0|Q\(0)))) # (!\rf|value2[0]~4_combout\ & (\rf|r4|Q\(0))))) # (!\rf|value2[0]~0_combout\ & (((\rf|value2[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r4|Q\(0),
	datab => \rf|value2[0]~0_combout\,
	datac => \rf|r0|Q\(0),
	datad => \rf|value2[0]~4_combout\,
	combout => \rf|value2[0]~5_combout\);

-- Location: LCCOMB_X1_Y35_N18
\alu|ripCarry|stage1|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|ripCarry|stage1|s~0_combout\ = \rf|value1[0]~5_combout\ $ (((\rf|value2[0]~5_combout\ & !\pc|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf|value2[0]~5_combout\,
	datac => \rf|value1[0]~5_combout\,
	datad => \pc|Q\(3),
	combout => \alu|ripCarry|stage1|s~0_combout\);

-- Location: LCCOMB_X5_Y35_N2
\alu|ripCarry|stage1|Cout~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|ripCarry|stage1|Cout~3_combout\ = (!\im|output[1]~1_combout\ & (\im|output[4]~0_combout\ & ((\pc|Q\(3)) # (!\rf|value2[0]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im|output[1]~1_combout\,
	datab => \pc|Q\(3),
	datac => \rf|value2[0]~5_combout\,
	datad => \im|output[4]~0_combout\,
	combout => \alu|ripCarry|stage1|Cout~3_combout\);

-- Location: LCCOMB_X4_Y35_N18
\alu|ripCarry|stage1|Cout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|ripCarry|stage1|Cout~2_combout\ = (\rf|value1[0]~5_combout\ & ((\id|Equal1~0_combout\) # ((!\pc|Q\(3) & \rf|value2[0]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \id|Equal1~0_combout\,
	datab => \pc|Q\(3),
	datac => \rf|value2[0]~5_combout\,
	datad => \rf|value1[0]~5_combout\,
	combout => \alu|ripCarry|stage1|Cout~2_combout\);

-- Location: LCCOMB_X4_Y35_N22
\rf|m2|stage3|f[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m2|stage3|f[1]~9_combout\ = (\reset~input_o\) # (\alu|ripCarry|stage2|s~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datad => \alu|ripCarry|stage2|s~combout\,
	combout => \rf|m2|stage3|f[1]~9_combout\);

-- Location: FF_X3_Y35_N15
\rf|r3|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rf|m2|stage3|f[1]~9_combout\,
	sload => VCC,
	ena => \rf|m3|stage3|f[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r3|Q\(1));

-- Location: LCCOMB_X3_Y35_N26
\rf|value1[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[1]~6_combout\ = (!\pc|Q\(3) & (\rf|r3|Q\(1) & (!\pc|Q\(2) & \rf|value1[0]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(3),
	datab => \rf|r3|Q\(1),
	datac => \pc|Q\(2),
	datad => \rf|value1[0]~4_combout\,
	combout => \rf|value1[1]~6_combout\);

-- Location: LCCOMB_X4_Y35_N16
\rf|m0|stage3|f~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m0|stage3|f~2_combout\ = (!\reset~input_o\ & \alu|ripCarry|stage2|s~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datad => \alu|ripCarry|stage2|s~combout\,
	combout => \rf|m0|stage3|f~2_combout\);

-- Location: LCCOMB_X2_Y35_N26
\rf|m5|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m5|stage3|f~0_combout\ = (!\im|output[23]~2_combout\ & (\im|output[22]~4_combout\ & \im|output[4]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im|output[23]~2_combout\,
	datab => \im|output[22]~4_combout\,
	datad => \im|output[4]~0_combout\,
	combout => \rf|m5|stage3|f~0_combout\);

-- Location: LCCOMB_X2_Y35_N20
\rf|m5|stage3|f~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m5|stage3|f~1_combout\ = (\reset~input_o\) # ((!\im|output[21]~3_combout\ & \rf|m5|stage3|f~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im|output[21]~3_combout\,
	datab => \reset~input_o\,
	datac => \rf|m5|stage3|f~0_combout\,
	combout => \rf|m5|stage3|f~1_combout\);

-- Location: FF_X3_Y35_N25
\rf|r5|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rf|m0|stage3|f~2_combout\,
	sload => VCC,
	ena => \rf|m5|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r5|Q\(1));

-- Location: LCCOMB_X1_Y35_N26
\im|output[21]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \im|output[21]~3_combout\ = (!\pc|Q\(3) & (!\pc|Q\(0) & (\pc|Q\(2) $ (\pc|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(3),
	datab => \pc|Q\(2),
	datac => \pc|Q\(0),
	datad => \pc|Q\(1),
	combout => \im|output[21]~3_combout\);

-- Location: LCCOMB_X2_Y35_N18
\rf|m4|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m4|stage3|f~0_combout\ = (\reset~input_o\) # ((\rf|m5|stage3|f~0_combout\ & \im|output[21]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|m5|stage3|f~0_combout\,
	datab => \reset~input_o\,
	datac => \im|output[21]~3_combout\,
	combout => \rf|m4|stage3|f~0_combout\);

-- Location: FF_X4_Y35_N17
\rf|r4|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|m0|stage3|f~2_combout\,
	ena => \rf|m4|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r4|Q\(1));

-- Location: LCCOMB_X3_Y35_N2
\rf|value1[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[1]~7_combout\ = (\pc|Q\(2) & \rf|r4|Q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pc|Q\(2),
	datad => \rf|r4|Q\(1),
	combout => \rf|value1[1]~7_combout\);

-- Location: LCCOMB_X3_Y35_N0
\rf|value1[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[1]~8_combout\ = (\rf|value2[0]~2_combout\ & ((\rf|value2[0]~3_combout\ & (\rf|r2|Q\(1))) # (!\rf|value2[0]~3_combout\ & ((\rf|value1[1]~7_combout\))))) # (!\rf|value2[0]~2_combout\ & (((!\rf|value2[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r2|Q\(1),
	datab => \rf|value1[1]~7_combout\,
	datac => \rf|value2[0]~2_combout\,
	datad => \rf|value2[0]~3_combout\,
	combout => \rf|value1[1]~8_combout\);

-- Location: LCCOMB_X3_Y35_N24
\rf|value1[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[1]~9_combout\ = (\rf|value2[0]~0_combout\ & ((\rf|value1[1]~8_combout\ & (\rf|r1|Q\(1))) # (!\rf|value1[1]~8_combout\ & ((\rf|r5|Q\(1)))))) # (!\rf|value2[0]~0_combout\ & (((\rf|value1[1]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r1|Q\(1),
	datab => \rf|value2[0]~0_combout\,
	datac => \rf|r5|Q\(1),
	datad => \rf|value1[1]~8_combout\,
	combout => \rf|value1[1]~9_combout\);

-- Location: LCCOMB_X4_Y35_N8
\rf|value1[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[1]~10_combout\ = (\rf|value1[1]~6_combout\) # ((!\rf|value1[0]~4_combout\ & (!\pc|Q\(3) & \rf|value1[1]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value1[0]~4_combout\,
	datab => \pc|Q\(3),
	datac => \rf|value1[1]~6_combout\,
	datad => \rf|value1[1]~9_combout\,
	combout => \rf|value1[1]~10_combout\);

-- Location: LCCOMB_X5_Y35_N12
\im|output[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \im|output[1]~1_combout\ = (!\pc|Q\(1) & (!\pc|Q\(3) & (\pc|Q\(0) $ (\pc|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(0),
	datab => \pc|Q\(2),
	datac => \pc|Q\(1),
	datad => \pc|Q\(3),
	combout => \im|output[1]~1_combout\);

-- Location: FF_X5_Y35_N23
\rf|r0|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rf|m0|stage3|f~2_combout\,
	sload => VCC,
	ena => \rf|m0|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r0|Q\(1));

-- Location: LCCOMB_X3_Y35_N20
\rf|value2[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[1]~6_combout\ = (\rf|r3|Q\(1) & \pc|Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf|r3|Q\(1),
	datac => \pc|Q\(2),
	combout => \rf|value2[1]~6_combout\);

-- Location: FF_X5_Y35_N21
\rf|r1|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rf|m0|stage3|f~2_combout\,
	sload => VCC,
	ena => \rf|m1|stage3|f[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r1|Q\(1));

-- Location: LCCOMB_X5_Y35_N20
\rf|value2[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[1]~7_combout\ = (\rf|value2[0]~3_combout\ & (((\rf|r1|Q\(1) & \rf|value2[0]~2_combout\)))) # (!\rf|value2[0]~3_combout\ & ((\rf|value2[1]~6_combout\) # ((!\rf|value2[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value2[0]~3_combout\,
	datab => \rf|value2[1]~6_combout\,
	datac => \rf|r1|Q\(1),
	datad => \rf|value2[0]~2_combout\,
	combout => \rf|value2[1]~7_combout\);

-- Location: LCCOMB_X5_Y35_N22
\rf|value2[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[1]~8_combout\ = (\rf|value2[0]~0_combout\ & ((\rf|value2[1]~7_combout\ & ((\rf|r0|Q\(1)))) # (!\rf|value2[1]~7_combout\ & (\rf|r4|Q\(1))))) # (!\rf|value2[0]~0_combout\ & (((\rf|value2[1]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r4|Q\(1),
	datab => \rf|value2[0]~0_combout\,
	datac => \rf|r0|Q\(1),
	datad => \rf|value2[1]~7_combout\,
	combout => \rf|value2[1]~8_combout\);

-- Location: LCCOMB_X4_Y35_N10
\alu|ripCarry|g[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|ripCarry|g\(1) = (\pc|Q\(3) & (\im|output[4]~0_combout\ & (!\im|output[1]~1_combout\))) # (!\pc|Q\(3) & (\rf|value2[1]~8_combout\ $ (((\im|output[4]~0_combout\ & !\im|output[1]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(3),
	datab => \im|output[4]~0_combout\,
	datac => \im|output[1]~1_combout\,
	datad => \rf|value2[1]~8_combout\,
	combout => \alu|ripCarry|g\(1));

-- Location: LCCOMB_X4_Y35_N0
\alu|ripCarry|stage2|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|ripCarry|stage2|s~combout\ = \rf|value1[1]~10_combout\ $ (\alu|ripCarry|g\(1) $ (((\alu|ripCarry|stage1|Cout~3_combout\) # (\alu|ripCarry|stage1|Cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ripCarry|stage1|Cout~3_combout\,
	datab => \alu|ripCarry|stage1|Cout~2_combout\,
	datac => \rf|value1[1]~10_combout\,
	datad => \alu|ripCarry|g\(1),
	combout => \alu|ripCarry|stage2|s~combout\);

-- Location: LCCOMB_X4_Y35_N30
\id|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \id|Equal1~0_combout\ = (!\im|output[1]~1_combout\ & \im|output[4]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \im|output[1]~1_combout\,
	datad => \im|output[4]~0_combout\,
	combout => \id|Equal1~0_combout\);

-- Location: LCCOMB_X3_Y35_N30
\rf|m0|stage3|f~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m0|stage3|f~3_combout\ = (!\reset~input_o\ & \alu|ripCarry|stage3|s~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \alu|ripCarry|stage3|s~combout\,
	combout => \rf|m0|stage3|f~3_combout\);

-- Location: FF_X3_Y35_N23
\rf|r3|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rf|m0|stage3|f~3_combout\,
	sload => VCC,
	ena => \rf|m3|stage3|f[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r3|Q\(2));

-- Location: LCCOMB_X3_Y35_N16
\rf|value1[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[2]~11_combout\ = (!\pc|Q\(3) & (!\pc|Q\(2) & (\rf|r3|Q\(2) & \rf|value1[0]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(3),
	datab => \pc|Q\(2),
	datac => \rf|r3|Q\(2),
	datad => \rf|value1[0]~4_combout\,
	combout => \rf|value1[2]~11_combout\);

-- Location: FF_X3_Y35_N11
\rf|r5|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rf|m0|stage3|f~3_combout\,
	sload => VCC,
	ena => \rf|m5|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r5|Q\(2));

-- Location: LCCOMB_X4_Y35_N24
\rf|m4|stage3|f[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m4|stage3|f[2]~1_combout\ = (\reset~input_o\) # (\alu|ripCarry|stage3|s~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datad => \alu|ripCarry|stage3|s~combout\,
	combout => \rf|m4|stage3|f[2]~1_combout\);

-- Location: FF_X4_Y35_N25
\rf|r4|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|m4|stage3|f[2]~1_combout\,
	ena => \rf|m4|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r4|Q\(2));

-- Location: LCCOMB_X2_Y35_N2
\rf|value1[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[2]~12_combout\ = (\pc|Q\(2) & \rf|r4|Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pc|Q\(2),
	datad => \rf|r4|Q\(2),
	combout => \rf|value1[2]~12_combout\);

-- Location: FF_X2_Y35_N9
\rf|r2|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rf|m0|stage3|f~3_combout\,
	sload => VCC,
	ena => \rf|m2|stage3|f~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r2|Q\(2));

-- Location: LCCOMB_X2_Y35_N8
\rf|value1[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[2]~13_combout\ = (\rf|value2[0]~2_combout\ & ((\rf|value2[0]~3_combout\ & ((\rf|r2|Q\(2)))) # (!\rf|value2[0]~3_combout\ & (\rf|value1[2]~12_combout\)))) # (!\rf|value2[0]~2_combout\ & (((!\rf|value2[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value2[0]~2_combout\,
	datab => \rf|value1[2]~12_combout\,
	datac => \rf|r2|Q\(2),
	datad => \rf|value2[0]~3_combout\,
	combout => \rf|value1[2]~13_combout\);

-- Location: LCCOMB_X3_Y35_N10
\rf|value1[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[2]~14_combout\ = (\rf|value2[0]~0_combout\ & ((\rf|value1[2]~13_combout\ & (\rf|r1|Q\(2))) # (!\rf|value1[2]~13_combout\ & ((\rf|r5|Q\(2)))))) # (!\rf|value2[0]~0_combout\ & (((\rf|value1[2]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r1|Q\(2),
	datab => \rf|value2[0]~0_combout\,
	datac => \rf|r5|Q\(2),
	datad => \rf|value1[2]~13_combout\,
	combout => \rf|value1[2]~14_combout\);

-- Location: LCCOMB_X4_Y35_N14
\rf|value1[2]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[2]~15_combout\ = (\rf|value1[2]~11_combout\) # ((!\rf|value1[0]~4_combout\ & (!\pc|Q\(3) & \rf|value1[2]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value1[0]~4_combout\,
	datab => \pc|Q\(3),
	datac => \rf|value1[2]~11_combout\,
	datad => \rf|value1[2]~14_combout\,
	combout => \rf|value1[2]~15_combout\);

-- Location: FF_X5_Y35_N1
\rf|r0|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rf|m0|stage3|f~3_combout\,
	sload => VCC,
	ena => \rf|m0|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r0|Q\(2));

-- Location: LCCOMB_X2_Y35_N0
\rf|value2[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[2]~9_combout\ = (\pc|Q\(2) & \rf|r3|Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pc|Q\(2),
	datad => \rf|r3|Q\(2),
	combout => \rf|value2[2]~9_combout\);

-- Location: FF_X5_Y35_N7
\rf|r1|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rf|m0|stage3|f~3_combout\,
	sload => VCC,
	ena => \rf|m1|stage3|f[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r1|Q\(2));

-- Location: LCCOMB_X5_Y35_N6
\rf|value2[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[2]~10_combout\ = (\rf|value2[0]~3_combout\ & (((\rf|r1|Q\(2) & \rf|value2[0]~2_combout\)))) # (!\rf|value2[0]~3_combout\ & ((\rf|value2[2]~9_combout\) # ((!\rf|value2[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value2[0]~3_combout\,
	datab => \rf|value2[2]~9_combout\,
	datac => \rf|r1|Q\(2),
	datad => \rf|value2[0]~2_combout\,
	combout => \rf|value2[2]~10_combout\);

-- Location: LCCOMB_X5_Y35_N0
\rf|value2[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[2]~11_combout\ = (\rf|value2[0]~0_combout\ & ((\rf|value2[2]~10_combout\ & ((\rf|r0|Q\(2)))) # (!\rf|value2[2]~10_combout\ & (\rf|r4|Q\(2))))) # (!\rf|value2[0]~0_combout\ & (((\rf|value2[2]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r4|Q\(2),
	datab => \rf|value2[0]~0_combout\,
	datac => \rf|r0|Q\(2),
	datad => \rf|value2[2]~10_combout\,
	combout => \rf|value2[2]~11_combout\);

-- Location: LCCOMB_X5_Y35_N10
\rf|value2[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[2]~12_combout\ = (!\pc|Q\(3) & \rf|value2[2]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(3),
	datad => \rf|value2[2]~11_combout\,
	combout => \rf|value2[2]~12_combout\);

-- Location: LCCOMB_X4_Y35_N6
\alu|ripCarry|stage2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|ripCarry|stage2|Cout~0_combout\ = (\rf|value1[1]~10_combout\ & ((\alu|ripCarry|stage1|Cout~3_combout\) # ((\alu|ripCarry|stage1|Cout~2_combout\) # (\alu|ripCarry|g\(1))))) # (!\rf|value1[1]~10_combout\ & (\alu|ripCarry|g\(1) & 
-- ((\alu|ripCarry|stage1|Cout~3_combout\) # (\alu|ripCarry|stage1|Cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ripCarry|stage1|Cout~3_combout\,
	datab => \alu|ripCarry|stage1|Cout~2_combout\,
	datac => \rf|value1[1]~10_combout\,
	datad => \alu|ripCarry|g\(1),
	combout => \alu|ripCarry|stage2|Cout~0_combout\);

-- Location: LCCOMB_X4_Y35_N28
\alu|ripCarry|stage3|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|ripCarry|stage3|s~combout\ = \id|Equal1~0_combout\ $ (\rf|value1[2]~15_combout\ $ (\rf|value2[2]~12_combout\ $ (\alu|ripCarry|stage2|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \id|Equal1~0_combout\,
	datab => \rf|value1[2]~15_combout\,
	datac => \rf|value2[2]~12_combout\,
	datad => \alu|ripCarry|stage2|Cout~0_combout\,
	combout => \alu|ripCarry|stage3|s~combout\);

-- Location: LCCOMB_X4_Y35_N2
\alu|ripCarry|stage3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|ripCarry|stage3|Cout~0_combout\ = (\rf|value1[2]~15_combout\ & ((\alu|ripCarry|stage2|Cout~0_combout\) # (\id|Equal1~0_combout\ $ (\rf|value2[2]~12_combout\)))) # (!\rf|value1[2]~15_combout\ & (\alu|ripCarry|stage2|Cout~0_combout\ & 
-- (\id|Equal1~0_combout\ $ (\rf|value2[2]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \id|Equal1~0_combout\,
	datab => \rf|value1[2]~15_combout\,
	datac => \rf|value2[2]~12_combout\,
	datad => \alu|ripCarry|stage2|Cout~0_combout\,
	combout => \alu|ripCarry|stage3|Cout~0_combout\);

-- Location: LCCOMB_X4_Y35_N4
\rf|m0|stage3|f~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m0|stage3|f~4_combout\ = (!\reset~input_o\ & (\alu|ripCarry|stage4|s~0_combout\ $ (\alu|ripCarry|stage3|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \alu|ripCarry|stage4|s~0_combout\,
	datad => \alu|ripCarry|stage3|Cout~0_combout\,
	combout => \rf|m0|stage3|f~4_combout\);

-- Location: FF_X5_Y35_N27
\rf|r0|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rf|m0|stage3|f~4_combout\,
	sload => VCC,
	ena => \rf|m0|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r0|Q\(3));

-- Location: FF_X5_Y35_N17
\rf|r1|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rf|m0|stage3|f~4_combout\,
	sload => VCC,
	ena => \rf|m1|stage3|f[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r1|Q\(3));

-- Location: FF_X3_Y35_N29
\rf|r3|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rf|m0|stage3|f~4_combout\,
	sload => VCC,
	ena => \rf|m3|stage3|f[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r3|Q\(3));

-- Location: LCCOMB_X3_Y35_N12
\rf|value2[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[3]~13_combout\ = (\pc|Q\(2) & \rf|r3|Q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pc|Q\(2),
	datad => \rf|r3|Q\(3),
	combout => \rf|value2[3]~13_combout\);

-- Location: LCCOMB_X5_Y35_N16
\rf|value2[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[3]~14_combout\ = (\rf|value2[0]~2_combout\ & ((\rf|value2[0]~3_combout\ & (\rf|r1|Q\(3))) # (!\rf|value2[0]~3_combout\ & ((\rf|value2[3]~13_combout\))))) # (!\rf|value2[0]~2_combout\ & (!\rf|value2[0]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value2[0]~2_combout\,
	datab => \rf|value2[0]~3_combout\,
	datac => \rf|r1|Q\(3),
	datad => \rf|value2[3]~13_combout\,
	combout => \rf|value2[3]~14_combout\);

-- Location: LCCOMB_X5_Y35_N26
\rf|value2[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[3]~15_combout\ = (\rf|value2[0]~0_combout\ & ((\rf|value2[3]~14_combout\ & ((\rf|r0|Q\(3)))) # (!\rf|value2[3]~14_combout\ & (\rf|r4|Q\(3))))) # (!\rf|value2[0]~0_combout\ & (((\rf|value2[3]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r4|Q\(3),
	datab => \rf|value2[0]~0_combout\,
	datac => \rf|r0|Q\(3),
	datad => \rf|value2[3]~14_combout\,
	combout => \rf|value2[3]~15_combout\);

-- Location: FF_X3_Y35_N9
\rf|r5|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rf|m0|stage3|f~4_combout\,
	sload => VCC,
	ena => \rf|m5|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r5|Q\(3));

-- Location: FF_X4_Y35_N27
\rf|r2|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rf|m0|stage3|f~4_combout\,
	sload => VCC,
	ena => \rf|m2|stage3|f~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r2|Q\(3));

-- Location: LCCOMB_X3_Y35_N18
\rf|value1[3]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[3]~17_combout\ = (\rf|value2[0]~2_combout\ & ((\rf|value2[0]~3_combout\ & ((\rf|r2|Q\(3)))) # (!\rf|value2[0]~3_combout\ & (\rf|value1[3]~16_combout\)))) # (!\rf|value2[0]~2_combout\ & (((!\rf|value2[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value1[3]~16_combout\,
	datab => \rf|value2[0]~2_combout\,
	datac => \rf|value2[0]~3_combout\,
	datad => \rf|r2|Q\(3),
	combout => \rf|value1[3]~17_combout\);

-- Location: LCCOMB_X3_Y35_N8
\rf|value1[3]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[3]~18_combout\ = (\rf|value2[0]~0_combout\ & ((\rf|value1[3]~17_combout\ & (\rf|r1|Q\(3))) # (!\rf|value1[3]~17_combout\ & ((\rf|r5|Q\(3)))))) # (!\rf|value2[0]~0_combout\ & (((\rf|value1[3]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r1|Q\(3),
	datab => \rf|value2[0]~0_combout\,
	datac => \rf|r5|Q\(3),
	datad => \rf|value1[3]~17_combout\,
	combout => \rf|value1[3]~18_combout\);

-- Location: LCCOMB_X3_Y35_N6
\rf|value1[3]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[3]~19_combout\ = (\rf|value1[0]~4_combout\ & (!\pc|Q\(2) & (\rf|r3|Q\(3)))) # (!\rf|value1[0]~4_combout\ & (((\rf|value1[3]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(2),
	datab => \rf|r3|Q\(3),
	datac => \rf|value1[3]~18_combout\,
	datad => \rf|value1[0]~4_combout\,
	combout => \rf|value1[3]~19_combout\);

-- Location: LCCOMB_X3_Y35_N4
\alu|ripCarry|stage4|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|ripCarry|stage4|s~0_combout\ = \id|Equal1~0_combout\ $ (((!\pc|Q\(3) & (\rf|value2[3]~15_combout\ $ (\rf|value1[3]~19_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \id|Equal1~0_combout\,
	datab => \pc|Q\(3),
	datac => \rf|value2[3]~15_combout\,
	datad => \rf|value1[3]~19_combout\,
	combout => \alu|ripCarry|stage4|s~0_combout\);

-- Location: LCCOMB_X3_Y35_N28
\alu|ripCarry|stage4|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|ripCarry|stage4|s~combout\ = \alu|ripCarry|stage3|Cout~0_combout\ $ (\alu|ripCarry|stage4|s~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ripCarry|stage3|Cout~0_combout\,
	datab => \alu|ripCarry|stage4|s~0_combout\,
	combout => \alu|ripCarry|stage4|s~combout\);

ww_current_pc(0) <= \current_pc[0]~output_o\;

ww_current_pc(1) <= \current_pc[1]~output_o\;

ww_current_pc(2) <= \current_pc[2]~output_o\;

ww_current_pc(3) <= \current_pc[3]~output_o\;

ww_result(0) <= \result[0]~output_o\;

ww_result(1) <= \result[1]~output_o\;

ww_result(2) <= \result[2]~output_o\;

ww_result(3) <= \result[3]~output_o\;
END structure;


