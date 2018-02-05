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

-- DATE "01/29/2018 20:02:10"

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
-- current_pc[0]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- current_pc[1]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- current_pc[2]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- current_pc[3]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[0]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[1]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[2]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[3]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL \add_ins|stage4|s~0_combout\ : std_logic;
SIGNAL \rf|m3|stage3|f[0]~0_combout\ : std_logic;
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
SIGNAL \pc_mux|f~1_combout\ : std_logic;
SIGNAL \pc_mux|f~2_combout\ : std_logic;
SIGNAL \addpc|stage4|s~combout\ : std_logic;
SIGNAL \pc_mux|f~3_combout\ : std_logic;
SIGNAL \im|output[18]~2_combout\ : std_logic;
SIGNAL \rf|m1|stage3|f[0]~12_combout\ : std_logic;
SIGNAL \add_ins|stage2|s~3_combout\ : std_logic;
SIGNAL \add_ins|stage2|s~9_combout\ : std_logic;
SIGNAL \rf|m1|stage3|f~13_combout\ : std_logic;
SIGNAL \add_ins|stage3|s~3_combout\ : std_logic;
SIGNAL \add_ins|stage3|s~9_combout\ : std_logic;
SIGNAL \rf|m1|stage3|f~3_combout\ : std_logic;
SIGNAL \rf|m1|stage3|f~14_combout\ : std_logic;
SIGNAL \rf|m2|stage3|f~0_combout\ : std_logic;
SIGNAL \add_ins|stage4|s~1_combout\ : std_logic;
SIGNAL \im|output[1]~0_combout\ : std_logic;
SIGNAL \im|output[19]~1_combout\ : std_logic;
SIGNAL \add_ins|stage4|s~2_combout\ : std_logic;
SIGNAL \im|stage_dec|s2|y\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf|r1|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf|r2|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf|r3|Q\ : std_logic_vector(3 DOWNTO 0);
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

-- Location: FF_X2_Y68_N5
\rf|r3|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rf|m1|stage3|f~14_combout\,
	sload => VCC,
	ena => \rf|m3|stage3|f[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r3|Q\(2));

-- Location: FF_X2_Y68_N7
\rf|r1|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|r1|Q[2]~feeder_combout\,
	ena => \rf|m1|stage3|f[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r1|Q\(2));

-- Location: LCCOMB_X2_Y68_N4
\add_ins|stage4|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_ins|stage4|s~0_combout\ = (\pc|Q\(1) & (((\rf|r3|Q\(2)) # (!\pc|Q\(0))))) # (!\pc|Q\(1) & (\rf|r1|Q\(2) & ((\pc|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r1|Q\(2),
	datab => \pc|Q\(1),
	datac => \rf|r3|Q\(2),
	datad => \pc|Q\(0),
	combout => \add_ins|stage4|s~0_combout\);

-- Location: LCCOMB_X1_Y68_N28
\rf|m3|stage3|f[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m3|stage3|f[0]~0_combout\ = (\reset~input_o\) # ((!\pc|Q\(1) & (\pc|Q\(2) & !\pc|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \pc|Q\(1),
	datac => \pc|Q\(2),
	datad => \pc|Q\(3),
	combout => \rf|m3|stage3|f[0]~0_combout\);

-- Location: LCCOMB_X2_Y68_N6
\rf|r1|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r1|Q[2]~feeder_combout\ = \rf|m1|stage3|f~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|m1|stage3|f~14_combout\,
	combout => \rf|r1|Q[2]~feeder_combout\);

-- Location: IOOBUF_X0_Y68_N16
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

-- Location: IOOBUF_X0_Y68_N2
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

-- Location: IOOBUF_X0_Y68_N9
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

-- Location: IOOBUF_X0_Y67_N23
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

-- Location: IOOBUF_X81_Y73_N16
\result[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \result[0]~output_o\);

-- Location: IOOBUF_X1_Y73_N9
\result[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_ins|stage2|s~9_combout\,
	devoe => ww_devoe,
	o => \result[1]~output_o\);

-- Location: IOOBUF_X1_Y73_N2
\result[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_ins|stage3|s~9_combout\,
	devoe => ww_devoe,
	o => \result[2]~output_o\);

-- Location: IOOBUF_X0_Y69_N9
\result[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_ins|stage4|s~2_combout\,
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

-- Location: IOIBUF_X0_Y67_N15
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LCCOMB_X1_Y68_N12
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

-- Location: FF_X1_Y68_N13
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

-- Location: LCCOMB_X1_Y68_N2
\pc_mux|f~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_mux|f~1_combout\ = (!\reset~input_o\ & (\pc|Q\(1) $ (\pc|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \pc|Q\(1),
	datad => \pc|Q\(0),
	combout => \pc_mux|f~1_combout\);

-- Location: FF_X1_Y68_N3
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

-- Location: LCCOMB_X1_Y68_N4
\pc_mux|f~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_mux|f~2_combout\ = (!\reset~input_o\ & (\pc|Q\(2) $ (((\pc|Q\(0) & \pc|Q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(0),
	datab => \pc|Q\(1),
	datac => \pc|Q\(2),
	datad => \reset~input_o\,
	combout => \pc_mux|f~2_combout\);

-- Location: FF_X1_Y68_N5
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

-- Location: LCCOMB_X1_Y68_N22
\addpc|stage4|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \addpc|stage4|s~combout\ = \pc|Q\(3) $ (((\pc|Q\(2) & (\pc|Q\(1) & \pc|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(3),
	datab => \pc|Q\(2),
	datac => \pc|Q\(1),
	datad => \pc|Q\(0),
	combout => \addpc|stage4|s~combout\);

-- Location: LCCOMB_X1_Y68_N18
\pc_mux|f~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_mux|f~3_combout\ = (!\reset~input_o\ & \addpc|stage4|s~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \addpc|stage4|s~combout\,
	combout => \pc_mux|f~3_combout\);

-- Location: FF_X1_Y68_N19
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

-- Location: LCCOMB_X1_Y68_N30
\im|output[18]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \im|output[18]~2_combout\ = (!\pc|Q\(2) & (!\pc|Q\(3) & ((\pc|Q\(0)) # (\pc|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(0),
	datab => \pc|Q\(1),
	datac => \pc|Q\(2),
	datad => \pc|Q\(3),
	combout => \im|output[18]~2_combout\);

-- Location: LCCOMB_X1_Y68_N0
\im|stage_dec|s2|y[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \im|stage_dec|s2|y\(1) = (\pc|Q\(0) & (!\pc|Q\(3) & (!\pc|Q\(2) & !\pc|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(0),
	datab => \pc|Q\(3),
	datac => \pc|Q\(2),
	datad => \pc|Q\(1),
	combout => \im|stage_dec|s2|y\(1));

-- Location: LCCOMB_X1_Y68_N6
\rf|m1|stage3|f[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m1|stage3|f[0]~12_combout\ = (\reset~input_o\) # ((\im|output[19]~1_combout\ & (\im|output[18]~2_combout\ & !\im|stage_dec|s2|y\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im|output[19]~1_combout\,
	datab => \reset~input_o\,
	datac => \im|output[18]~2_combout\,
	datad => \im|stage_dec|s2|y\(1),
	combout => \rf|m1|stage3|f[0]~12_combout\);

-- Location: FF_X2_Y68_N1
\rf|r1|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \reset~input_o\,
	sload => VCC,
	ena => \rf|m1|stage3|f[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r1|Q\(0));

-- Location: LCCOMB_X2_Y68_N12
\add_ins|stage2|s~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_ins|stage2|s~3_combout\ = (!\pc|Q\(2) & !\pc|Q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pc|Q\(2),
	datad => \pc|Q\(3),
	combout => \add_ins|stage2|s~3_combout\);

-- Location: LCCOMB_X2_Y68_N0
\add_ins|stage2|s~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_ins|stage2|s~9_combout\ = (\pc|Q\(0) & (!\pc|Q\(1) & (\rf|r1|Q\(0) & \add_ins|stage2|s~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(0),
	datab => \pc|Q\(1),
	datac => \rf|r1|Q\(0),
	datad => \add_ins|stage2|s~3_combout\,
	combout => \add_ins|stage2|s~9_combout\);

-- Location: LCCOMB_X2_Y68_N22
\rf|m1|stage3|f~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m1|stage3|f~13_combout\ = (!\reset~input_o\ & \add_ins|stage2|s~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \add_ins|stage2|s~9_combout\,
	combout => \rf|m1|stage3|f~13_combout\);

-- Location: FF_X2_Y68_N23
\rf|r1|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|m1|stage3|f~13_combout\,
	ena => \rf|m1|stage3|f[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r1|Q\(1));

-- Location: LCCOMB_X2_Y68_N2
\add_ins|stage3|s~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_ins|stage3|s~3_combout\ = (\rf|r1|Q\(1) & !\pc|Q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|r1|Q\(1),
	datad => \pc|Q\(3),
	combout => \add_ins|stage3|s~3_combout\);

-- Location: LCCOMB_X2_Y68_N16
\add_ins|stage3|s~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_ins|stage3|s~9_combout\ = (!\pc|Q\(1) & (\add_ins|stage3|s~3_combout\ & (!\pc|Q\(2) & \pc|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(1),
	datab => \add_ins|stage3|s~3_combout\,
	datac => \pc|Q\(2),
	datad => \pc|Q\(0),
	combout => \add_ins|stage3|s~9_combout\);

-- Location: LCCOMB_X1_Y68_N10
\rf|m1|stage3|f~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m1|stage3|f~3_combout\ = (!\reset~input_o\ & (!\pc|Q\(3) & \rf|r1|Q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \pc|Q\(3),
	datad => \rf|r1|Q\(1),
	combout => \rf|m1|stage3|f~3_combout\);

-- Location: LCCOMB_X1_Y68_N16
\rf|m1|stage3|f~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m1|stage3|f~14_combout\ = (\pc|Q\(0) & (!\pc|Q\(1) & (!\pc|Q\(2) & \rf|m1|stage3|f~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(0),
	datab => \pc|Q\(1),
	datac => \pc|Q\(2),
	datad => \rf|m1|stage3|f~3_combout\,
	combout => \rf|m1|stage3|f~14_combout\);

-- Location: LCCOMB_X1_Y68_N24
\rf|m2|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m2|stage3|f~0_combout\ = (\reset~input_o\) # ((\im|output[19]~1_combout\ & (!\im|output[18]~2_combout\ & \im|stage_dec|s2|y\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im|output[19]~1_combout\,
	datab => \reset~input_o\,
	datac => \im|output[18]~2_combout\,
	datad => \im|stage_dec|s2|y\(1),
	combout => \rf|m2|stage3|f~0_combout\);

-- Location: FF_X1_Y68_N17
\rf|r2|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|m1|stage3|f~14_combout\,
	ena => \rf|m2|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r2|Q\(2));

-- Location: LCCOMB_X1_Y68_N14
\add_ins|stage4|s~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_ins|stage4|s~1_combout\ = (\add_ins|stage4|s~0_combout\ & (!\pc|Q\(2) & ((\rf|r2|Q\(2)) # (\pc|Q\(0))))) # (!\add_ins|stage4|s~0_combout\ & (\pc|Q\(2) & ((!\pc|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_ins|stage4|s~0_combout\,
	datab => \pc|Q\(2),
	datac => \rf|r2|Q\(2),
	datad => \pc|Q\(0),
	combout => \add_ins|stage4|s~1_combout\);

-- Location: LCCOMB_X1_Y68_N8
\im|output[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \im|output[1]~0_combout\ = (!\pc|Q\(1) & (!\pc|Q\(3) & (\pc|Q\(0) $ (\pc|Q\(2)))))

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
	combout => \im|output[1]~0_combout\);

-- Location: LCCOMB_X1_Y68_N26
\im|output[19]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \im|output[19]~1_combout\ = (!\pc|Q\(3) & ((\pc|Q\(1) & ((!\pc|Q\(2)))) # (!\pc|Q\(1) & ((\pc|Q\(0)) # (\pc|Q\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(0),
	datab => \pc|Q\(1),
	datac => \pc|Q\(2),
	datad => \pc|Q\(3),
	combout => \im|output[19]~1_combout\);

-- Location: LCCOMB_X1_Y68_N20
\add_ins|stage4|s~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_ins|stage4|s~2_combout\ = (\add_ins|stage4|s~1_combout\ & (!\pc|Q\(3) & ((\im|output[1]~0_combout\) # (!\im|output[19]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_ins|stage4|s~1_combout\,
	datab => \im|output[1]~0_combout\,
	datac => \pc|Q\(3),
	datad => \im|output[19]~1_combout\,
	combout => \add_ins|stage4|s~2_combout\);

ww_current_pc(0) <= \current_pc[0]~output_o\;

ww_current_pc(1) <= \current_pc[1]~output_o\;

ww_current_pc(2) <= \current_pc[2]~output_o\;

ww_current_pc(3) <= \current_pc[3]~output_o\;

ww_result(0) <= \result[0]~output_o\;

ww_result(1) <= \result[1]~output_o\;

ww_result(2) <= \result[2]~output_o\;

ww_result(3) <= \result[3]~output_o\;
END structure;


