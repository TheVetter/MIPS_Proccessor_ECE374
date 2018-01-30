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
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Web Edition"

-- DATE "01/19/2017 13:02:26"

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

ENTITY 	add_isa IS
    PORT (
	clock : IN std_logic;
	reset : IN std_logic;
	current_pc : OUT std_logic_vector(3 DOWNTO 0);
	result : OUT std_logic_vector(3 DOWNTO 0)
	);
END add_isa;

-- Design Ports Information
-- current_pc[0]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- current_pc[1]	=>  Location: PIN_G28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- current_pc[2]	=>  Location: PIN_K25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- current_pc[3]	=>  Location: PIN_F28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[0]	=>  Location: PIN_G27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[1]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[2]	=>  Location: PIN_J26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[3]	=>  Location: PIN_J25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_K26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF add_isa IS
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
SIGNAL \rf|value2[3]~17_combout\ : std_logic;
SIGNAL \rf|r1|Q[2]~feeder_combout\ : std_logic;
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
SIGNAL \rf|m1|stage3|f[0]~0_combout\ : std_logic;
SIGNAL \im|output[21]~3_combout\ : std_logic;
SIGNAL \im|output[24]~0_combout\ : std_logic;
SIGNAL \im|output[22]~1_combout\ : std_logic;
SIGNAL \im|output[23]~2_combout\ : std_logic;
SIGNAL \rf|stage_dec_write|s1|y[0]~8_combout\ : std_logic;
SIGNAL \rf|m3|stage3|f[0]~0_combout\ : std_logic;
SIGNAL \rf|value1[0]~4_combout\ : std_logic;
SIGNAL \rf|value2[0]~2_combout\ : std_logic;
SIGNAL \rf|m0|stage3|f~0_combout\ : std_logic;
SIGNAL \rf|m5|stage3|f~0_combout\ : std_logic;
SIGNAL \rf|m5|stage3|f~1_combout\ : std_logic;
SIGNAL \rf|value2[1]~0_combout\ : std_logic;
SIGNAL \rf|value2[1]~1_combout\ : std_logic;
SIGNAL \rf|m2|stage3|f~0_combout\ : std_logic;
SIGNAL \rf|value1[0]~0_combout\ : std_logic;
SIGNAL \rf|value1[2]~1_combout\ : std_logic;
SIGNAL \rf|value1[0]~2_combout\ : std_logic;
SIGNAL \rf|value1[0]~3_combout\ : std_logic;
SIGNAL \rf|value2[0]~7_combout\ : std_logic;
SIGNAL \rf|m4|stage3|f~0_combout\ : std_logic;
SIGNAL \rf|stage_dec_write|s1|y[0]~9_combout\ : std_logic;
SIGNAL \rf|m0|stage3|f~1_combout\ : std_logic;
SIGNAL \rf|m1|stage3|f[0]~1_combout\ : std_logic;
SIGNAL \rf|value2[0]~4_combout\ : std_logic;
SIGNAL \rf|value2[0]~5_combout\ : std_logic;
SIGNAL \rf|value2[0]~6_combout\ : std_logic;
SIGNAL \add_ins|stage1|s~0_combout\ : std_logic;
SIGNAL \add_ins|stage1|s~combout\ : std_logic;
SIGNAL \rf|m2|stage3|f[1]~1_combout\ : std_logic;
SIGNAL \rf|value1[1]~6_combout\ : std_logic;
SIGNAL \rf|m0|stage3|f~2_combout\ : std_logic;
SIGNAL \rf|value2[1]~9_combout\ : std_logic;
SIGNAL \rf|value2[1]~8_combout\ : std_logic;
SIGNAL \rf|value2[1]~10_combout\ : std_logic;
SIGNAL \rf|value2[1]~11_combout\ : std_logic;
SIGNAL \rf|value2[1]~12_combout\ : std_logic;
SIGNAL \add_ins|stage1|Cout~0_combout\ : std_logic;
SIGNAL \rf|value1[1]~7_combout\ : std_logic;
SIGNAL \rf|value1[1]~8_combout\ : std_logic;
SIGNAL \rf|value1[1]~9_combout\ : std_logic;
SIGNAL \add_ins|stage1|Cout~1_combout\ : std_logic;
SIGNAL \add_ins|stage1|Cout~2_combout\ : std_logic;
SIGNAL \add_ins|stage2|s~combout\ : std_logic;
SIGNAL \rf|value1[0]~5_combout\ : std_logic;
SIGNAL \add_ins|stage2|Cout~0_combout\ : std_logic;
SIGNAL \rf|m4|stage3|f[2]~1_combout\ : std_logic;
SIGNAL \rf|value1[2]~11_combout\ : std_logic;
SIGNAL \rf|value1[2]~12_combout\ : std_logic;
SIGNAL \rf|value1[2]~13_combout\ : std_logic;
SIGNAL \rf|m0|stage3|f~3_combout\ : std_logic;
SIGNAL \rf|value1[2]~10_combout\ : std_logic;
SIGNAL \rf|value2[1]~3_combout\ : std_logic;
SIGNAL \rf|value2[2]~13_combout\ : std_logic;
SIGNAL \rf|value2[2]~14_combout\ : std_logic;
SIGNAL \rf|value2[2]~15_combout\ : std_logic;
SIGNAL \rf|value2[2]~16_combout\ : std_logic;
SIGNAL \add_ins|stage3|s~combout\ : std_logic;
SIGNAL \rf|value1[3]~14_combout\ : std_logic;
SIGNAL \rf|value2[3]~18_combout\ : std_logic;
SIGNAL \rf|value2[3]~19_combout\ : std_logic;
SIGNAL \rf|value2[3]~20_combout\ : std_logic;
SIGNAL \add_ins|stage4|s~0_combout\ : std_logic;
SIGNAL \rf|m0|stage3|f~4_combout\ : std_logic;
SIGNAL \rf|value1[3]~15_combout\ : std_logic;
SIGNAL \rf|value1[3]~16_combout\ : std_logic;
SIGNAL \rf|value1[3]~17_combout\ : std_logic;
SIGNAL \add_ins|stage4|s~combout\ : std_logic;
SIGNAL \rf|r0|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf|r1|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf|r2|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf|r3|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf|r4|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf|r5|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pc|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \add_ins|stage1|ALT_INV_s~combout\ : std_logic;

BEGIN

ww_clock <= clock;
ww_reset <= reset;
current_pc <= ww_current_pc;
result <= ww_result;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);
\add_ins|stage1|ALT_INV_s~combout\ <= NOT \add_ins|stage1|s~combout\;

-- Location: FF_X113_Y54_N5
\rf|r1|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|r1|Q[2]~feeder_combout\,
	ena => \rf|m1|stage3|f[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r1|Q\(2));

-- Location: LCCOMB_X111_Y54_N10
\rf|value2[3]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[3]~17_combout\ = (\rf|r3|Q\(3) & \pc|Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf|r3|Q\(3),
	datad => \pc|Q\(2),
	combout => \rf|value2[3]~17_combout\);

-- Location: LCCOMB_X113_Y54_N4
\rf|r1|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r1|Q[2]~feeder_combout\ = \rf|m0|stage3|f~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m0|stage3|f~3_combout\,
	combout => \rf|r1|Q[2]~feeder_combout\);

-- Location: IOOBUF_X115_Y53_N16
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

-- Location: IOOBUF_X115_Y52_N9
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

-- Location: IOOBUF_X115_Y55_N16
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

-- Location: IOOBUF_X115_Y56_N23
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

-- Location: IOOBUF_X115_Y52_N2
\result[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_ins|stage1|ALT_INV_s~combout\,
	devoe => ww_devoe,
	o => \result[0]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\result[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_ins|stage2|s~combout\,
	devoe => ww_devoe,
	o => \result[1]~output_o\);

-- Location: IOOBUF_X115_Y51_N9
\result[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_ins|stage3|s~combout\,
	devoe => ww_devoe,
	o => \result[2]~output_o\);

-- Location: IOOBUF_X115_Y51_N2
\result[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_ins|stage4|s~combout\,
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

-- Location: IOIBUF_X115_Y55_N22
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LCCOMB_X112_Y54_N22
\pc_mux|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_mux|f~0_combout\ = (!\reset~input_o\ & !\pc|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \pc|Q\(0),
	combout => \pc_mux|f~0_combout\);

-- Location: FF_X112_Y54_N23
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

-- Location: LCCOMB_X112_Y54_N4
\addpc|stage2|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \addpc|stage2|s~combout\ = \pc|Q\(1) $ (\pc|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pc|Q\(1),
	datad => \pc|Q\(0),
	combout => \addpc|stage2|s~combout\);

-- Location: FF_X112_Y54_N5
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

-- Location: LCCOMB_X112_Y54_N10
\addpc|stage3|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \addpc|stage3|s~combout\ = \pc|Q\(2) $ (((\pc|Q\(1) & \pc|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pc|Q\(1),
	datac => \pc|Q\(2),
	datad => \pc|Q\(0),
	combout => \addpc|stage3|s~combout\);

-- Location: FF_X112_Y54_N11
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

-- Location: LCCOMB_X112_Y54_N24
\addpc|stage4|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \addpc|stage4|s~combout\ = \pc|Q\(3) $ (((\pc|Q\(2) & (\pc|Q\(1) & \pc|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(2),
	datab => \pc|Q\(1),
	datac => \pc|Q\(3),
	datad => \pc|Q\(0),
	combout => \addpc|stage4|s~combout\);

-- Location: FF_X112_Y54_N25
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

-- Location: LCCOMB_X111_Y54_N8
\rf|m1|stage3|f[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m1|stage3|f[0]~0_combout\ = (\reset~input_o\) # (!\add_ins|stage1|s~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datad => \add_ins|stage1|s~combout\,
	combout => \rf|m1|stage3|f[0]~0_combout\);

-- Location: LCCOMB_X113_Y54_N30
\im|output[21]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \im|output[21]~3_combout\ = (!\pc|Q\(0) & (!\pc|Q\(3) & (\pc|Q\(2) $ (\pc|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(2),
	datab => \pc|Q\(0),
	datac => \pc|Q\(1),
	datad => \pc|Q\(3),
	combout => \im|output[21]~3_combout\);

-- Location: LCCOMB_X112_Y54_N26
\im|output[24]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \im|output[24]~0_combout\ = (!\pc|Q\(3) & ((\pc|Q\(1) & ((!\pc|Q\(2)))) # (!\pc|Q\(1) & ((\pc|Q\(0)) # (\pc|Q\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(0),
	datab => \pc|Q\(3),
	datac => \pc|Q\(1),
	datad => \pc|Q\(2),
	combout => \im|output[24]~0_combout\);

-- Location: LCCOMB_X113_Y54_N24
\im|output[22]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \im|output[22]~1_combout\ = (!\pc|Q\(1) & (!\pc|Q\(3) & ((\pc|Q\(2)) # (\pc|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(2),
	datab => \pc|Q\(0),
	datac => \pc|Q\(1),
	datad => \pc|Q\(3),
	combout => \im|output[22]~1_combout\);

-- Location: LCCOMB_X112_Y54_N12
\im|output[23]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \im|output[23]~2_combout\ = (!\pc|Q\(2) & (!\pc|Q\(3) & ((\pc|Q\(1)) # (\pc|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(2),
	datab => \pc|Q\(1),
	datac => \pc|Q\(0),
	datad => \pc|Q\(3),
	combout => \im|output[23]~2_combout\);

-- Location: LCCOMB_X112_Y54_N6
\rf|stage_dec_write|s1|y[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|stage_dec_write|s1|y[0]~8_combout\ = (\im|output[24]~0_combout\ & (!\im|output[22]~1_combout\ & \im|output[23]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \im|output[24]~0_combout\,
	datac => \im|output[22]~1_combout\,
	datad => \im|output[23]~2_combout\,
	combout => \rf|stage_dec_write|s1|y[0]~8_combout\);

-- Location: LCCOMB_X112_Y54_N30
\rf|m3|stage3|f[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m3|stage3|f[0]~0_combout\ = (\reset~input_o\) # ((!\im|output[21]~3_combout\ & \rf|stage_dec_write|s1|y[0]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \im|output[21]~3_combout\,
	datad => \rf|stage_dec_write|s1|y[0]~8_combout\,
	combout => \rf|m3|stage3|f[0]~0_combout\);

-- Location: FF_X111_Y54_N27
\rf|r3|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rf|m1|stage3|f[0]~0_combout\,
	sload => VCC,
	ena => \rf|m3|stage3|f[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r3|Q\(0));

-- Location: LCCOMB_X111_Y54_N12
\rf|value1[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[0]~4_combout\ = (\rf|value2[1]~3_combout\ & (!\pc|Q\(2) & (\rf|r3|Q\(0) & !\pc|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value2[1]~3_combout\,
	datab => \pc|Q\(2),
	datac => \rf|r3|Q\(0),
	datad => \pc|Q\(3),
	combout => \rf|value1[0]~4_combout\);

-- Location: LCCOMB_X111_Y54_N26
\rf|value2[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[0]~2_combout\ = (!\pc|Q\(3) & ((!\pc|Q\(0)) # (!\pc|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(1),
	datab => \pc|Q\(0),
	datad => \pc|Q\(3),
	combout => \rf|value2[0]~2_combout\);

-- Location: LCCOMB_X109_Y54_N16
\rf|m0|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m0|stage3|f~0_combout\ = (!\reset~input_o\ & !\add_ins|stage1|s~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datad => \add_ins|stage1|s~combout\,
	combout => \rf|m0|stage3|f~0_combout\);

-- Location: LCCOMB_X113_Y54_N22
\rf|m5|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m5|stage3|f~0_combout\ = (\im|output[22]~1_combout\ & (\im|output[24]~0_combout\ & !\im|output[23]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \im|output[22]~1_combout\,
	datac => \im|output[24]~0_combout\,
	datad => \im|output[23]~2_combout\,
	combout => \rf|m5|stage3|f~0_combout\);

-- Location: LCCOMB_X113_Y54_N20
\rf|m5|stage3|f~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m5|stage3|f~1_combout\ = (\reset~input_o\) # ((!\im|output[21]~3_combout\ & \rf|m5|stage3|f~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im|output[21]~3_combout\,
	datac => \rf|m5|stage3|f~0_combout\,
	datad => \reset~input_o\,
	combout => \rf|m5|stage3|f~1_combout\);

-- Location: FF_X109_Y54_N17
\rf|r5|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|m0|stage3|f~0_combout\,
	ena => \rf|m5|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r5|Q\(0));

-- Location: LCCOMB_X112_Y54_N16
\rf|value2[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[1]~0_combout\ = (\pc|Q\(0) & !\pc|Q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pc|Q\(0),
	datad => \pc|Q\(1),
	combout => \rf|value2[1]~0_combout\);

-- Location: LCCOMB_X112_Y54_N2
\rf|value2[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[1]~1_combout\ = (\pc|Q\(1)) # ((\pc|Q\(0) & \pc|Q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pc|Q\(1),
	datac => \pc|Q\(0),
	datad => \pc|Q\(2),
	combout => \rf|value2[1]~1_combout\);

-- Location: LCCOMB_X112_Y54_N28
\rf|m2|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m2|stage3|f~0_combout\ = (\reset~input_o\) # ((\im|output[21]~3_combout\ & \rf|stage_dec_write|s1|y[0]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \im|output[21]~3_combout\,
	datad => \rf|stage_dec_write|s1|y[0]~8_combout\,
	combout => \rf|m2|stage3|f~0_combout\);

-- Location: FF_X111_Y54_N5
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
	ena => \rf|m2|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r2|Q\(0));

-- Location: LCCOMB_X111_Y54_N4
\rf|value1[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[0]~0_combout\ = (\rf|r2|Q\(0) & !\pc|Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|r2|Q\(0),
	datad => \pc|Q\(2),
	combout => \rf|value1[0]~0_combout\);

-- Location: LCCOMB_X109_Y54_N12
\rf|value1[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[2]~1_combout\ = (\pc|Q\(1)) # ((\pc|Q\(2) & !\pc|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(2),
	datac => \pc|Q\(1),
	datad => \pc|Q\(0),
	combout => \rf|value1[2]~1_combout\);

-- Location: LCCOMB_X109_Y54_N18
\rf|value1[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[0]~2_combout\ = (\rf|value2[1]~1_combout\ & (((\rf|value1[0]~0_combout\) # (!\rf|value1[2]~1_combout\)))) # (!\rf|value2[1]~1_combout\ & (\rf|r4|Q\(0) & ((\rf|value1[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r4|Q\(0),
	datab => \rf|value2[1]~1_combout\,
	datac => \rf|value1[0]~0_combout\,
	datad => \rf|value1[2]~1_combout\,
	combout => \rf|value1[0]~2_combout\);

-- Location: LCCOMB_X109_Y54_N8
\rf|value1[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[0]~3_combout\ = (\rf|value2[1]~0_combout\ & ((\rf|value1[0]~2_combout\ & ((\rf|r5|Q\(0)))) # (!\rf|value1[0]~2_combout\ & (\rf|r1|Q\(0))))) # (!\rf|value2[1]~0_combout\ & (((\rf|value1[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r1|Q\(0),
	datab => \rf|r5|Q\(0),
	datac => \rf|value2[1]~0_combout\,
	datad => \rf|value1[0]~2_combout\,
	combout => \rf|value1[0]~3_combout\);

-- Location: LCCOMB_X111_Y54_N28
\rf|value2[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[0]~7_combout\ = (\pc|Q\(1) & (\pc|Q\(0) & (\rf|value1[0]~0_combout\ & !\pc|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(1),
	datab => \pc|Q\(0),
	datac => \rf|value1[0]~0_combout\,
	datad => \pc|Q\(3),
	combout => \rf|value2[0]~7_combout\);

-- Location: LCCOMB_X113_Y54_N26
\rf|m4|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m4|stage3|f~0_combout\ = (\reset~input_o\) # ((\im|output[21]~3_combout\ & \rf|m5|stage3|f~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im|output[21]~3_combout\,
	datac => \rf|m5|stage3|f~0_combout\,
	datad => \reset~input_o\,
	combout => \rf|m4|stage3|f~0_combout\);

-- Location: FF_X109_Y54_N23
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

-- Location: LCCOMB_X113_Y54_N18
\rf|stage_dec_write|s1|y[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|stage_dec_write|s1|y[0]~9_combout\ = (!\pc|Q\(2) & (\pc|Q\(0) & (!\pc|Q\(1) & !\pc|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(2),
	datab => \pc|Q\(0),
	datac => \pc|Q\(1),
	datad => \pc|Q\(3),
	combout => \rf|stage_dec_write|s1|y[0]~9_combout\);

-- Location: LCCOMB_X113_Y54_N8
\rf|m0|stage3|f~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m0|stage3|f~1_combout\ = (\reset~input_o\) # ((\im|output[21]~3_combout\ & \rf|stage_dec_write|s1|y[0]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \im|output[21]~3_combout\,
	datad => \rf|stage_dec_write|s1|y[0]~9_combout\,
	combout => \rf|m0|stage3|f~1_combout\);

-- Location: FF_X110_Y54_N15
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

-- Location: LCCOMB_X113_Y54_N28
\rf|m1|stage3|f[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m1|stage3|f[0]~1_combout\ = (\reset~input_o\) # ((!\im|output[21]~3_combout\ & \rf|stage_dec_write|s1|y[0]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \im|output[21]~3_combout\,
	datad => \rf|stage_dec_write|s1|y[0]~9_combout\,
	combout => \rf|m1|stage3|f[0]~1_combout\);

-- Location: FF_X110_Y54_N21
\rf|r1|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rf|m1|stage3|f[0]~0_combout\,
	sload => VCC,
	ena => \rf|m1|stage3|f[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r1|Q\(0));

-- Location: LCCOMB_X111_Y54_N2
\rf|value2[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[0]~4_combout\ = (\pc|Q\(2) & (\rf|r3|Q\(0) & !\pc|Q\(1))) # (!\pc|Q\(2) & ((\pc|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r3|Q\(0),
	datac => \pc|Q\(2),
	datad => \pc|Q\(1),
	combout => \rf|value2[0]~4_combout\);

-- Location: LCCOMB_X110_Y54_N20
\rf|value2[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[0]~5_combout\ = (\pc|Q\(2) & (!\pc|Q\(0) & ((\rf|value2[0]~4_combout\)))) # (!\pc|Q\(2) & ((\rf|value2[0]~4_combout\ & ((\rf|r1|Q\(0)))) # (!\rf|value2[0]~4_combout\ & (\pc|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(2),
	datab => \pc|Q\(0),
	datac => \rf|r1|Q\(0),
	datad => \rf|value2[0]~4_combout\,
	combout => \rf|value2[0]~5_combout\);

-- Location: LCCOMB_X110_Y54_N14
\rf|value2[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[0]~6_combout\ = (\rf|value2[1]~0_combout\ & ((\rf|value2[0]~5_combout\ & ((\rf|r0|Q\(0)))) # (!\rf|value2[0]~5_combout\ & (\rf|r4|Q\(0))))) # (!\rf|value2[1]~0_combout\ & (((\rf|value2[0]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value2[1]~0_combout\,
	datab => \rf|r4|Q\(0),
	datac => \rf|r0|Q\(0),
	datad => \rf|value2[0]~5_combout\,
	combout => \rf|value2[0]~6_combout\);

-- Location: LCCOMB_X111_Y54_N18
\add_ins|stage1|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_ins|stage1|s~0_combout\ = \im|output[24]~0_combout\ $ (((\rf|value2[0]~7_combout\) # ((\rf|value2[0]~2_combout\ & \rf|value2[0]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im|output[24]~0_combout\,
	datab => \rf|value2[0]~7_combout\,
	datac => \rf|value2[0]~2_combout\,
	datad => \rf|value2[0]~6_combout\,
	combout => \add_ins|stage1|s~0_combout\);

-- Location: LCCOMB_X111_Y54_N16
\add_ins|stage1|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_ins|stage1|s~combout\ = \add_ins|stage1|s~0_combout\ $ (((\rf|value1[0]~4_combout\) # ((\rf|value2[0]~2_combout\ & \rf|value1[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value1[0]~4_combout\,
	datab => \rf|value2[0]~2_combout\,
	datac => \rf|value1[0]~3_combout\,
	datad => \add_ins|stage1|s~0_combout\,
	combout => \add_ins|stage1|s~combout\);

-- Location: LCCOMB_X111_Y54_N0
\rf|m2|stage3|f[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m2|stage3|f[1]~1_combout\ = (\reset~input_o\) # (\add_ins|stage2|s~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datad => \add_ins|stage2|s~combout\,
	combout => \rf|m2|stage3|f[1]~1_combout\);

-- Location: FF_X111_Y54_N11
\rf|r2|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rf|m2|stage3|f[1]~1_combout\,
	sload => VCC,
	ena => \rf|m2|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r2|Q\(1));

-- Location: LCCOMB_X109_Y54_N30
\rf|value1[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[1]~6_combout\ = (!\pc|Q\(2) & \rf|r2|Q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pc|Q\(2),
	datad => \rf|r2|Q\(1),
	combout => \rf|value1[1]~6_combout\);

-- Location: LCCOMB_X109_Y54_N4
\rf|m0|stage3|f~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m0|stage3|f~2_combout\ = (!\reset~input_o\ & \add_ins|stage2|s~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datad => \add_ins|stage2|s~combout\,
	combout => \rf|m0|stage3|f~2_combout\);

-- Location: FF_X109_Y54_N5
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

-- Location: FF_X110_Y54_N17
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

-- Location: LCCOMB_X112_Y54_N14
\rf|value2[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[1]~9_combout\ = (\pc|Q\(1) & (!\pc|Q\(2))) # (!\pc|Q\(1) & ((!\pc|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(2),
	datac => \pc|Q\(0),
	datad => \pc|Q\(1),
	combout => \rf|value2[1]~9_combout\);

-- Location: FF_X110_Y54_N29
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

-- Location: FF_X111_Y54_N9
\rf|r3|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rf|m2|stage3|f[1]~1_combout\,
	sload => VCC,
	ena => \rf|m3|stage3|f[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r3|Q\(1));

-- Location: LCCOMB_X111_Y54_N22
\rf|value2[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[1]~8_combout\ = (\rf|r3|Q\(1) & \pc|Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf|r3|Q\(1),
	datad => \pc|Q\(2),
	combout => \rf|value2[1]~8_combout\);

-- Location: LCCOMB_X110_Y54_N28
\rf|value2[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[1]~10_combout\ = (\rf|value2[1]~1_combout\ & (\rf|value2[1]~9_combout\ & (\rf|r1|Q\(1)))) # (!\rf|value2[1]~1_combout\ & (((\rf|value2[1]~8_combout\)) # (!\rf|value2[1]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value2[1]~1_combout\,
	datab => \rf|value2[1]~9_combout\,
	datac => \rf|r1|Q\(1),
	datad => \rf|value2[1]~8_combout\,
	combout => \rf|value2[1]~10_combout\);

-- Location: LCCOMB_X110_Y54_N16
\rf|value2[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[1]~11_combout\ = (\rf|value2[1]~0_combout\ & ((\rf|value2[1]~10_combout\ & ((\rf|r0|Q\(1)))) # (!\rf|value2[1]~10_combout\ & (\rf|r4|Q\(1))))) # (!\rf|value2[1]~0_combout\ & (((\rf|value2[1]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value2[1]~0_combout\,
	datab => \rf|r4|Q\(1),
	datac => \rf|r0|Q\(1),
	datad => \rf|value2[1]~10_combout\,
	combout => \rf|value2[1]~11_combout\);

-- Location: LCCOMB_X110_Y54_N10
\rf|value2[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[1]~12_combout\ = (!\pc|Q\(3) & ((\rf|value2[1]~3_combout\ & (\rf|value1[1]~6_combout\)) # (!\rf|value2[1]~3_combout\ & ((\rf|value2[1]~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value2[1]~3_combout\,
	datab => \rf|value1[1]~6_combout\,
	datac => \pc|Q\(3),
	datad => \rf|value2[1]~11_combout\,
	combout => \rf|value2[1]~12_combout\);

-- Location: LCCOMB_X110_Y54_N4
\add_ins|stage1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_ins|stage1|Cout~0_combout\ = (!\im|output[24]~0_combout\ & ((\rf|value2[0]~7_combout\) # ((\rf|value2[0]~2_combout\ & \rf|value2[0]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im|output[24]~0_combout\,
	datab => \rf|value2[0]~2_combout\,
	datac => \rf|value2[0]~6_combout\,
	datad => \rf|value2[0]~7_combout\,
	combout => \add_ins|stage1|Cout~0_combout\);

-- Location: FF_X109_Y54_N15
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

-- Location: LCCOMB_X109_Y54_N28
\rf|value1[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[1]~7_combout\ = (\rf|value2[1]~1_combout\ & ((\rf|value1[1]~6_combout\) # ((!\rf|value1[2]~1_combout\)))) # (!\rf|value2[1]~1_combout\ & (((\rf|r4|Q\(1) & \rf|value1[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value1[1]~6_combout\,
	datab => \rf|r4|Q\(1),
	datac => \rf|value2[1]~1_combout\,
	datad => \rf|value1[2]~1_combout\,
	combout => \rf|value1[1]~7_combout\);

-- Location: LCCOMB_X109_Y54_N14
\rf|value1[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[1]~8_combout\ = (\rf|value2[1]~0_combout\ & ((\rf|value1[1]~7_combout\ & ((\rf|r5|Q\(1)))) # (!\rf|value1[1]~7_combout\ & (\rf|r1|Q\(1))))) # (!\rf|value2[1]~0_combout\ & (((\rf|value1[1]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value2[1]~0_combout\,
	datab => \rf|r1|Q\(1),
	datac => \rf|r5|Q\(1),
	datad => \rf|value1[1]~7_combout\,
	combout => \rf|value1[1]~8_combout\);

-- Location: LCCOMB_X110_Y54_N22
\rf|value1[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[1]~9_combout\ = (\rf|value1[0]~5_combout\ & ((\rf|r3|Q\(1)) # ((\rf|value2[0]~2_combout\ & \rf|value1[1]~8_combout\)))) # (!\rf|value1[0]~5_combout\ & (\rf|value2[0]~2_combout\ & ((\rf|value1[1]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value1[0]~5_combout\,
	datab => \rf|value2[0]~2_combout\,
	datac => \rf|r3|Q\(1),
	datad => \rf|value1[1]~8_combout\,
	combout => \rf|value1[1]~9_combout\);

-- Location: LCCOMB_X110_Y54_N26
\add_ins|stage1|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_ins|stage1|Cout~1_combout\ = ((\rf|value2[0]~7_combout\) # ((\rf|value2[0]~2_combout\ & \rf|value2[0]~6_combout\))) # (!\im|output[24]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im|output[24]~0_combout\,
	datab => \rf|value2[0]~2_combout\,
	datac => \rf|value2[0]~6_combout\,
	datad => \rf|value2[0]~7_combout\,
	combout => \add_ins|stage1|Cout~1_combout\);

-- Location: LCCOMB_X110_Y54_N0
\add_ins|stage1|Cout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_ins|stage1|Cout~2_combout\ = (\add_ins|stage1|Cout~1_combout\ & ((\rf|value1[0]~4_combout\) # ((\rf|value2[0]~2_combout\ & \rf|value1[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value1[0]~4_combout\,
	datab => \rf|value2[0]~2_combout\,
	datac => \add_ins|stage1|Cout~1_combout\,
	datad => \rf|value1[0]~3_combout\,
	combout => \add_ins|stage1|Cout~2_combout\);

-- Location: LCCOMB_X110_Y54_N18
\add_ins|stage2|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_ins|stage2|s~combout\ = \rf|value2[1]~12_combout\ $ (\rf|value1[1]~9_combout\ $ (((\add_ins|stage1|Cout~0_combout\) # (\add_ins|stage1|Cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value2[1]~12_combout\,
	datab => \add_ins|stage1|Cout~0_combout\,
	datac => \rf|value1[1]~9_combout\,
	datad => \add_ins|stage1|Cout~2_combout\,
	combout => \add_ins|stage2|s~combout\);

-- Location: LCCOMB_X112_Y54_N0
\rf|value1[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[0]~5_combout\ = (!\pc|Q\(2) & (\pc|Q\(1) & (\pc|Q\(0) & !\pc|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(2),
	datab => \pc|Q\(1),
	datac => \pc|Q\(0),
	datad => \pc|Q\(3),
	combout => \rf|value1[0]~5_combout\);

-- Location: FF_X109_Y54_N3
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

-- Location: LCCOMB_X110_Y54_N24
\add_ins|stage2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_ins|stage2|Cout~0_combout\ = (\rf|value2[1]~12_combout\ & ((\add_ins|stage1|Cout~0_combout\) # ((\rf|value1[1]~9_combout\) # (\add_ins|stage1|Cout~2_combout\)))) # (!\rf|value2[1]~12_combout\ & (\rf|value1[1]~9_combout\ & 
-- ((\add_ins|stage1|Cout~0_combout\) # (\add_ins|stage1|Cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value2[1]~12_combout\,
	datab => \add_ins|stage1|Cout~0_combout\,
	datac => \rf|value1[1]~9_combout\,
	datad => \add_ins|stage1|Cout~2_combout\,
	combout => \add_ins|stage2|Cout~0_combout\);

-- Location: LCCOMB_X109_Y54_N20
\rf|m4|stage3|f[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m4|stage3|f[2]~1_combout\ = (\reset~input_o\) # (\rf|value2[2]~16_combout\ $ (\rf|value1[2]~13_combout\ $ (\add_ins|stage2|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value2[2]~16_combout\,
	datab => \rf|value1[2]~13_combout\,
	datac => \reset~input_o\,
	datad => \add_ins|stage2|Cout~0_combout\,
	combout => \rf|m4|stage3|f[2]~1_combout\);

-- Location: FF_X109_Y54_N21
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

-- Location: LCCOMB_X109_Y54_N10
\rf|value1[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[2]~11_combout\ = (\rf|value1[2]~1_combout\ & ((\rf|value2[1]~1_combout\ & ((\rf|value1[2]~10_combout\))) # (!\rf|value2[1]~1_combout\ & (\rf|r4|Q\(2))))) # (!\rf|value1[2]~1_combout\ & (((\rf|value2[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value1[2]~1_combout\,
	datab => \rf|r4|Q\(2),
	datac => \rf|value2[1]~1_combout\,
	datad => \rf|value1[2]~10_combout\,
	combout => \rf|value1[2]~11_combout\);

-- Location: LCCOMB_X109_Y54_N2
\rf|value1[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[2]~12_combout\ = (\rf|value2[1]~0_combout\ & ((\rf|value1[2]~11_combout\ & ((\rf|r5|Q\(2)))) # (!\rf|value1[2]~11_combout\ & (\rf|r1|Q\(2))))) # (!\rf|value2[1]~0_combout\ & (((\rf|value1[2]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r1|Q\(2),
	datab => \rf|value2[1]~0_combout\,
	datac => \rf|r5|Q\(2),
	datad => \rf|value1[2]~11_combout\,
	combout => \rf|value1[2]~12_combout\);

-- Location: LCCOMB_X109_Y54_N24
\rf|value1[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[2]~13_combout\ = (\rf|r3|Q\(2) & ((\rf|value1[0]~5_combout\) # ((\rf|value2[0]~2_combout\ & \rf|value1[2]~12_combout\)))) # (!\rf|r3|Q\(2) & (\rf|value2[0]~2_combout\ & ((\rf|value1[2]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r3|Q\(2),
	datab => \rf|value2[0]~2_combout\,
	datac => \rf|value1[0]~5_combout\,
	datad => \rf|value1[2]~12_combout\,
	combout => \rf|value1[2]~13_combout\);

-- Location: LCCOMB_X110_Y54_N30
\rf|m0|stage3|f~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m0|stage3|f~3_combout\ = (!\reset~input_o\ & (\rf|value1[2]~13_combout\ $ (\rf|value2[2]~16_combout\ $ (\add_ins|stage2|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \rf|value1[2]~13_combout\,
	datac => \rf|value2[2]~16_combout\,
	datad => \add_ins|stage2|Cout~0_combout\,
	combout => \rf|m0|stage3|f~3_combout\);

-- Location: FF_X111_Y54_N25
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
	ena => \rf|m2|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r2|Q\(2));

-- Location: LCCOMB_X111_Y54_N24
\rf|value1[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[2]~10_combout\ = (\rf|r2|Q\(2) & !\pc|Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|r2|Q\(2),
	datad => \pc|Q\(2),
	combout => \rf|value1[2]~10_combout\);

-- Location: LCCOMB_X112_Y54_N20
\rf|value2[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[1]~3_combout\ = (\pc|Q\(0) & \pc|Q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pc|Q\(0),
	datad => \pc|Q\(1),
	combout => \rf|value2[1]~3_combout\);

-- Location: FF_X110_Y54_N31
\rf|r0|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|m0|stage3|f~3_combout\,
	ena => \rf|m0|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r0|Q\(2));

-- Location: FF_X111_Y54_N23
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

-- Location: LCCOMB_X112_Y54_N8
\rf|value2[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[2]~13_combout\ = (\pc|Q\(2) & \rf|r3|Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(2),
	datad => \rf|r3|Q\(2),
	combout => \rf|value2[2]~13_combout\);

-- Location: LCCOMB_X112_Y54_N18
\rf|value2[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[2]~14_combout\ = (\rf|value2[1]~9_combout\ & ((\rf|value2[1]~1_combout\ & (\rf|r1|Q\(2))) # (!\rf|value2[1]~1_combout\ & ((\rf|value2[2]~13_combout\))))) # (!\rf|value2[1]~9_combout\ & (((!\rf|value2[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r1|Q\(2),
	datab => \rf|value2[1]~9_combout\,
	datac => \rf|value2[2]~13_combout\,
	datad => \rf|value2[1]~1_combout\,
	combout => \rf|value2[2]~14_combout\);

-- Location: LCCOMB_X111_Y54_N6
\rf|value2[2]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[2]~15_combout\ = (\rf|value2[1]~0_combout\ & ((\rf|value2[2]~14_combout\ & (\rf|r0|Q\(2))) # (!\rf|value2[2]~14_combout\ & ((\rf|r4|Q\(2)))))) # (!\rf|value2[1]~0_combout\ & (((\rf|value2[2]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value2[1]~0_combout\,
	datab => \rf|r0|Q\(2),
	datac => \rf|r4|Q\(2),
	datad => \rf|value2[2]~14_combout\,
	combout => \rf|value2[2]~15_combout\);

-- Location: LCCOMB_X111_Y54_N20
\rf|value2[2]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[2]~16_combout\ = (!\pc|Q\(3) & ((\rf|value2[1]~3_combout\ & (\rf|value1[2]~10_combout\)) # (!\rf|value2[1]~3_combout\ & ((\rf|value2[2]~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(3),
	datab => \rf|value1[2]~10_combout\,
	datac => \rf|value2[1]~3_combout\,
	datad => \rf|value2[2]~15_combout\,
	combout => \rf|value2[2]~16_combout\);

-- Location: LCCOMB_X109_Y54_N22
\add_ins|stage3|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_ins|stage3|s~combout\ = \rf|value2[2]~16_combout\ $ (\add_ins|stage2|Cout~0_combout\ $ (\rf|value1[2]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value2[2]~16_combout\,
	datab => \add_ins|stage2|Cout~0_combout\,
	datad => \rf|value1[2]~13_combout\,
	combout => \add_ins|stage3|s~combout\);

-- Location: FF_X111_Y54_N31
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
	ena => \rf|m2|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r2|Q\(3));

-- Location: LCCOMB_X111_Y54_N30
\rf|value1[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[3]~14_combout\ = (\rf|r2|Q\(3) & !\pc|Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|r2|Q\(3),
	datad => \pc|Q\(2),
	combout => \rf|value1[3]~14_combout\);

-- Location: FF_X109_Y54_N7
\rf|r4|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rf|m0|stage3|f~4_combout\,
	sload => VCC,
	ena => \rf|m4|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r4|Q\(3));

-- Location: FF_X110_Y54_N13
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

-- Location: FF_X110_Y54_N7
\rf|r1|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|m0|stage3|f~4_combout\,
	ena => \rf|m1|stage3|f[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r1|Q\(3));

-- Location: LCCOMB_X111_Y54_N14
\rf|value2[3]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[3]~18_combout\ = (\rf|value2[1]~9_combout\ & ((\rf|value2[1]~1_combout\ & ((\rf|r1|Q\(3)))) # (!\rf|value2[1]~1_combout\ & (\rf|value2[3]~17_combout\)))) # (!\rf|value2[1]~9_combout\ & (((!\rf|value2[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value2[3]~17_combout\,
	datab => \rf|r1|Q\(3),
	datac => \rf|value2[1]~9_combout\,
	datad => \rf|value2[1]~1_combout\,
	combout => \rf|value2[3]~18_combout\);

-- Location: LCCOMB_X110_Y54_N12
\rf|value2[3]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[3]~19_combout\ = (\rf|value2[1]~0_combout\ & ((\rf|value2[3]~18_combout\ & ((\rf|r0|Q\(3)))) # (!\rf|value2[3]~18_combout\ & (\rf|r4|Q\(3))))) # (!\rf|value2[1]~0_combout\ & (((\rf|value2[3]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value2[1]~0_combout\,
	datab => \rf|r4|Q\(3),
	datac => \rf|r0|Q\(3),
	datad => \rf|value2[3]~18_combout\,
	combout => \rf|value2[3]~19_combout\);

-- Location: LCCOMB_X110_Y54_N8
\rf|value2[3]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[3]~20_combout\ = (!\pc|Q\(3) & ((\rf|value2[1]~3_combout\ & (\rf|value1[3]~14_combout\)) # (!\rf|value2[1]~3_combout\ & ((\rf|value2[3]~19_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(3),
	datab => \rf|value1[3]~14_combout\,
	datac => \rf|value2[1]~3_combout\,
	datad => \rf|value2[3]~19_combout\,
	combout => \rf|value2[3]~20_combout\);

-- Location: LCCOMB_X110_Y54_N2
\add_ins|stage4|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_ins|stage4|s~0_combout\ = \rf|value2[3]~20_combout\ $ (((\rf|value2[2]~16_combout\ & ((\rf|value1[2]~13_combout\) # (\add_ins|stage2|Cout~0_combout\))) # (!\rf|value2[2]~16_combout\ & (\rf|value1[2]~13_combout\ & \add_ins|stage2|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value2[2]~16_combout\,
	datab => \rf|value1[2]~13_combout\,
	datac => \rf|value2[3]~20_combout\,
	datad => \add_ins|stage2|Cout~0_combout\,
	combout => \add_ins|stage4|s~0_combout\);

-- Location: LCCOMB_X110_Y54_N6
\rf|m0|stage3|f~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m0|stage3|f~4_combout\ = (!\reset~input_o\ & (\add_ins|stage4|s~0_combout\ $ (((!\pc|Q\(3) & \rf|value1[3]~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(3),
	datab => \reset~input_o\,
	datac => \rf|value1[3]~17_combout\,
	datad => \add_ins|stage4|s~0_combout\,
	combout => \rf|m0|stage3|f~4_combout\);

-- Location: FF_X111_Y54_N1
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

-- Location: FF_X109_Y54_N1
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

-- Location: LCCOMB_X109_Y54_N6
\rf|value1[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[3]~15_combout\ = (\rf|value2[1]~1_combout\ & ((\rf|value1[3]~14_combout\) # ((!\rf|value1[2]~1_combout\)))) # (!\rf|value2[1]~1_combout\ & (((\rf|r4|Q\(3) & \rf|value1[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value1[3]~14_combout\,
	datab => \rf|value2[1]~1_combout\,
	datac => \rf|r4|Q\(3),
	datad => \rf|value1[2]~1_combout\,
	combout => \rf|value1[3]~15_combout\);

-- Location: LCCOMB_X109_Y54_N0
\rf|value1[3]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[3]~16_combout\ = (\rf|value2[1]~0_combout\ & ((\rf|value1[3]~15_combout\ & ((\rf|r5|Q\(3)))) # (!\rf|value1[3]~15_combout\ & (\rf|r1|Q\(3))))) # (!\rf|value2[1]~0_combout\ & (((\rf|value1[3]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r1|Q\(3),
	datab => \rf|value2[1]~0_combout\,
	datac => \rf|r5|Q\(3),
	datad => \rf|value1[3]~15_combout\,
	combout => \rf|value1[3]~16_combout\);

-- Location: LCCOMB_X109_Y54_N26
\rf|value1[3]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[3]~17_combout\ = (\rf|value2[1]~3_combout\ & (!\pc|Q\(2) & (\rf|r3|Q\(3)))) # (!\rf|value2[1]~3_combout\ & (((\rf|value1[3]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(2),
	datab => \rf|r3|Q\(3),
	datac => \rf|value2[1]~3_combout\,
	datad => \rf|value1[3]~16_combout\,
	combout => \rf|value1[3]~17_combout\);

-- Location: LCCOMB_X113_Y54_N14
\add_ins|stage4|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_ins|stage4|s~combout\ = \add_ins|stage4|s~0_combout\ $ (((\rf|value1[3]~17_combout\ & !\pc|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value1[3]~17_combout\,
	datac => \add_ins|stage4|s~0_combout\,
	datad => \pc|Q\(3),
	combout => \add_ins|stage4|s~combout\);

ww_current_pc(0) <= \current_pc[0]~output_o\;

ww_current_pc(1) <= \current_pc[1]~output_o\;

ww_current_pc(2) <= \current_pc[2]~output_o\;

ww_current_pc(3) <= \current_pc[3]~output_o\;

ww_result(0) <= \result[0]~output_o\;

ww_result(1) <= \result[1]~output_o\;

ww_result(2) <= \result[2]~output_o\;

ww_result(3) <= \result[3]~output_o\;
END structure;


