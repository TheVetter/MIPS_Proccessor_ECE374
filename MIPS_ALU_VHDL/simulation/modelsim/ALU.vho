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

-- DATE "02/06/2018 08:39:55"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
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
-- current_pc[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- current_pc[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- current_pc[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- current_pc[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[2]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[3]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \current_pc[0]~output_o\ : std_logic;
SIGNAL \current_pc[1]~output_o\ : std_logic;
SIGNAL \current_pc[2]~output_o\ : std_logic;
SIGNAL \current_pc[3]~output_o\ : std_logic;
SIGNAL \result[0]~output_o\ : std_logic;
SIGNAL \result[1]~output_o\ : std_logic;
SIGNAL \result[2]~output_o\ : std_logic;
SIGNAL \result[3]~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \pc_mux|f~0_combout\ : std_logic;
SIGNAL \pc_mux|f~1_combout\ : std_logic;
SIGNAL \pc_mux|f~2_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \addpc|stage4|s~combout\ : std_logic;
SIGNAL \pc_mux|f~3_combout\ : std_logic;
SIGNAL \im|output[4]~0_combout\ : std_logic;
SIGNAL \alu|mux|stage3|f[0]~42_combout\ : std_logic;
SIGNAL \alu|mux|stage3|f[0]~46_combout\ : std_logic;
SIGNAL \alu|mux|stage3|f[1]~5_combout\ : std_logic;
SIGNAL \alu|mux|stage3|f[1]~43_combout\ : std_logic;
SIGNAL \rf|m1|stage3|f~1_combout\ : std_logic;
SIGNAL \rf|m1|stage3|f~0_combout\ : std_logic;
SIGNAL \alu|mux|stage3|f[2]~33_combout\ : std_logic;
SIGNAL \alu|mux|stage3|f[2]~37_combout\ : std_logic;
SIGNAL \alu|mux|stage3|f[2]~35_combout\ : std_logic;
SIGNAL \alu|mux|stage3|f[2]~45_combout\ : std_logic;
SIGNAL \rf|m1|stage3|f~2_combout\ : std_logic;
SIGNAL \alu|mux|stage3|f[3]~16_combout\ : std_logic;
SIGNAL \alu|mux|stage3|f[3]~14_combout\ : std_logic;
SIGNAL \alu|mux|stage3|f[3]~44_combout\ : std_logic;
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

-- Location: IOOBUF_X69_Y73_N16
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

-- Location: IOOBUF_X94_Y73_N2
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

-- Location: IOOBUF_X94_Y73_N9
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

-- Location: IOOBUF_X107_Y73_N16
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

-- Location: IOOBUF_X107_Y73_N9
\result[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu|mux|stage3|f[0]~46_combout\,
	devoe => ww_devoe,
	o => \result[0]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\result[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu|mux|stage3|f[1]~43_combout\,
	devoe => ww_devoe,
	o => \result[1]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
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

-- Location: IOOBUF_X85_Y73_N23
\result[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu|mux|stage3|f[3]~44_combout\,
	devoe => ww_devoe,
	o => \result[3]~output_o\);

-- Location: IOIBUF_X115_Y40_N8
\clock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: LCCOMB_X96_Y72_N20
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

-- Location: FF_X96_Y72_N21
\pc|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \pc_mux|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|Q\(0));

-- Location: LCCOMB_X96_Y72_N22
\pc_mux|f~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_mux|f~1_combout\ = (!\reset~input_o\ & (\pc|Q\(1) $ (\pc|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \pc|Q\(1),
	datad => \pc|Q\(0),
	combout => \pc_mux|f~1_combout\);

-- Location: FF_X96_Y72_N23
\pc|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \pc_mux|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|Q\(1));

-- Location: LCCOMB_X96_Y72_N24
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

-- Location: FF_X96_Y72_N25
\pc|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \pc_mux|f~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|Q\(2));

-- Location: IOIBUF_X115_Y17_N1
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LCCOMB_X97_Y72_N0
\addpc|stage4|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \addpc|stage4|s~combout\ = \pc|Q\(3) $ (((\pc|Q\(2) & (\pc|Q\(0) & \pc|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(3),
	datab => \pc|Q\(2),
	datac => \pc|Q\(0),
	datad => \pc|Q\(1),
	combout => \addpc|stage4|s~combout\);

-- Location: LCCOMB_X97_Y72_N28
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

-- Location: FF_X97_Y72_N29
\pc|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \pc_mux|f~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|Q\(3));

-- Location: LCCOMB_X96_Y72_N14
\im|output[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \im|output[4]~0_combout\ = (!\pc|Q\(3) & ((\pc|Q\(1) & ((!\pc|Q\(2)) # (!\pc|Q\(0)))) # (!\pc|Q\(1) & ((\pc|Q\(0)) # (\pc|Q\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(1),
	datab => \pc|Q\(0),
	datac => \pc|Q\(2),
	datad => \pc|Q\(3),
	combout => \im|output[4]~0_combout\);

-- Location: LCCOMB_X96_Y72_N26
\rf|m1|stage3|f[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m1|stage3|f\(0) = (\reset~input_o\) # ((\im|output[4]~0_combout\ & ((\alu|mux|stage3|f[0]~46_combout\))) # (!\im|output[4]~0_combout\ & (\rf|r1|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \im|output[4]~0_combout\,
	datac => \rf|r1|Q\(0),
	datad => \alu|mux|stage3|f[0]~46_combout\,
	combout => \rf|m1|stage3|f\(0));

-- Location: FF_X96_Y72_N27
\rf|r1|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|m1|stage3|f\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r1|Q\(0));

-- Location: LCCOMB_X96_Y72_N28
\alu|mux|stage3|f[0]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|mux|stage3|f[0]~42_combout\ = (\pc|Q\(2) & (!\pc|Q\(0) & ((\pc|Q\(1)) # (!\rf|r1|Q\(0))))) # (!\pc|Q\(2) & (((\pc|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(1),
	datab => \pc|Q\(2),
	datac => \rf|r1|Q\(0),
	datad => \pc|Q\(0),
	combout => \alu|mux|stage3|f[0]~42_combout\);

-- Location: LCCOMB_X96_Y72_N18
\alu|mux|stage3|f[0]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|mux|stage3|f[0]~46_combout\ = (!\pc|Q\(3) & \alu|mux|stage3|f[0]~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pc|Q\(3),
	datad => \alu|mux|stage3|f[0]~42_combout\,
	combout => \alu|mux|stage3|f[0]~46_combout\);

-- Location: LCCOMB_X97_Y72_N18
\alu|mux|stage3|f[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|mux|stage3|f[1]~5_combout\ = (\pc|Q\(1) & (((!\pc|Q\(0))))) # (!\pc|Q\(1) & ((\pc|Q\(0)) # (\rf|r1|Q\(1) $ (\rf|r1|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r1|Q\(1),
	datab => \pc|Q\(1),
	datac => \rf|r1|Q\(0),
	datad => \pc|Q\(0),
	combout => \alu|mux|stage3|f[1]~5_combout\);

-- Location: LCCOMB_X97_Y72_N20
\alu|mux|stage3|f[1]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|mux|stage3|f[1]~43_combout\ = (\pc|Q\(2) & (!\pc|Q\(3) & \alu|mux|stage3|f[1]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pc|Q\(2),
	datac => \pc|Q\(3),
	datad => \alu|mux|stage3|f[1]~5_combout\,
	combout => \alu|mux|stage3|f[1]~43_combout\);

-- Location: LCCOMB_X97_Y72_N2
\rf|m1|stage3|f~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m1|stage3|f~1_combout\ = (!\reset~input_o\ & ((\im|output[4]~0_combout\ & ((\alu|mux|stage3|f[1]~43_combout\))) # (!\im|output[4]~0_combout\ & (\rf|r1|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im|output[4]~0_combout\,
	datab => \reset~input_o\,
	datac => \rf|r1|Q\(1),
	datad => \alu|mux|stage3|f[1]~43_combout\,
	combout => \rf|m1|stage3|f~1_combout\);

-- Location: FF_X97_Y72_N3
\rf|r1|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|m1|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r1|Q\(1));

-- Location: LCCOMB_X96_Y72_N4
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

-- Location: FF_X96_Y72_N5
\rf|r1|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|m1|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r1|Q\(2));

-- Location: LCCOMB_X96_Y72_N0
\alu|mux|stage3|f[2]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|mux|stage3|f[2]~33_combout\ = (\pc|Q\(1) & (!\pc|Q\(2) & ((\pc|Q\(0))))) # (!\pc|Q\(1) & (\pc|Q\(2) & (!\rf|r1|Q\(2) & !\pc|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(1),
	datab => \pc|Q\(2),
	datac => \rf|r1|Q\(2),
	datad => \pc|Q\(0),
	combout => \alu|mux|stage3|f[2]~33_combout\);

-- Location: LCCOMB_X96_Y72_N30
\alu|mux|stage3|f[2]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|mux|stage3|f[2]~37_combout\ = (\pc|Q\(1) & (!\pc|Q\(2) & ((\pc|Q\(0))))) # (!\pc|Q\(1) & (\pc|Q\(2) & (\rf|r1|Q\(2) & !\pc|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(1),
	datab => \pc|Q\(2),
	datac => \rf|r1|Q\(2),
	datad => \pc|Q\(0),
	combout => \alu|mux|stage3|f[2]~37_combout\);

-- Location: LCCOMB_X96_Y72_N12
\alu|mux|stage3|f[2]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|mux|stage3|f[2]~35_combout\ = (\rf|r1|Q\(0) & (\alu|mux|stage3|f[2]~37_combout\)) # (!\rf|r1|Q\(0) & ((\alu|mux|stage3|f[2]~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r1|Q\(0),
	datac => \alu|mux|stage3|f[2]~37_combout\,
	datad => \alu|mux|stage3|f[2]~33_combout\,
	combout => \alu|mux|stage3|f[2]~35_combout\);

-- Location: LCCOMB_X96_Y72_N10
\alu|mux|stage3|f[2]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|mux|stage3|f[2]~45_combout\ = (!\pc|Q\(3) & ((\rf|r1|Q\(1) & ((\alu|mux|stage3|f[2]~35_combout\))) # (!\rf|r1|Q\(1) & (\alu|mux|stage3|f[2]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r1|Q\(1),
	datab => \alu|mux|stage3|f[2]~33_combout\,
	datac => \pc|Q\(3),
	datad => \alu|mux|stage3|f[2]~35_combout\,
	combout => \alu|mux|stage3|f[2]~45_combout\);

-- Location: LCCOMB_X96_Y72_N8
\rf|m1|stage3|f~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m1|stage3|f~2_combout\ = (!\reset~input_o\ & ((\im|output[4]~0_combout\ & ((\alu|mux|stage3|f[3]~44_combout\))) # (!\im|output[4]~0_combout\ & (\rf|r1|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \im|output[4]~0_combout\,
	datac => \rf|r1|Q\(3),
	datad => \alu|mux|stage3|f[3]~44_combout\,
	combout => \rf|m1|stage3|f~2_combout\);

-- Location: FF_X96_Y72_N9
\rf|r1|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|m1|stage3|f~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r1|Q\(3));

-- Location: LCCOMB_X96_Y72_N6
\alu|mux|stage3|f[3]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|mux|stage3|f[3]~16_combout\ = \rf|r1|Q\(3) $ (((!\rf|r1|Q\(2) & ((!\rf|r1|Q\(1)) # (!\rf|r1|Q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r1|Q\(0),
	datab => \rf|r1|Q\(2),
	datac => \rf|r1|Q\(3),
	datad => \rf|r1|Q\(1),
	combout => \alu|mux|stage3|f[3]~16_combout\);

-- Location: LCCOMB_X96_Y72_N16
\alu|mux|stage3|f[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|mux|stage3|f[3]~14_combout\ = (!\pc|Q\(3) & \alu|mux|stage3|f[3]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pc|Q\(3),
	datad => \alu|mux|stage3|f[3]~16_combout\,
	combout => \alu|mux|stage3|f[3]~14_combout\);

-- Location: LCCOMB_X96_Y72_N2
\alu|mux|stage3|f[3]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|mux|stage3|f[3]~44_combout\ = (\pc|Q\(2) & (!\pc|Q\(0) & (!\pc|Q\(1) & \alu|mux|stage3|f[3]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(2),
	datab => \pc|Q\(0),
	datac => \pc|Q\(1),
	datad => \alu|mux|stage3|f[3]~14_combout\,
	combout => \alu|mux|stage3|f[3]~44_combout\);

ww_current_pc(0) <= \current_pc[0]~output_o\;

ww_current_pc(1) <= \current_pc[1]~output_o\;

ww_current_pc(2) <= \current_pc[2]~output_o\;

ww_current_pc(3) <= \current_pc[3]~output_o\;

ww_result(0) <= \result[0]~output_o\;

ww_result(1) <= \result[1]~output_o\;

ww_result(2) <= \result[2]~output_o\;

ww_result(3) <= \result[3]~output_o\;
END structure;


