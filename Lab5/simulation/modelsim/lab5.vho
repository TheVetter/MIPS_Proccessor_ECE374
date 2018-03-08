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

-- DATE "03/06/2018 09:19:20"

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

ENTITY 	lab5 IS
    PORT (
	clock : IN std_logic;
	reset : IN std_logic;
	current_pc : OUT std_logic_vector(3 DOWNTO 0);
	result : OUT std_logic_vector(3 DOWNTO 0)
	);
END lab5;

-- Design Ports Information
-- current_pc[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- current_pc[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- current_pc[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- current_pc[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[2]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[3]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab5 IS
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
SIGNAL \mux_alu|f[2]~8_combout\ : std_logic;
SIGNAL \mux_alu|f[2]~9_combout\ : std_logic;
SIGNAL \mux_alu|f[2]~10_combout\ : std_logic;
SIGNAL \mux_alu|f[0]~12_combout\ : std_logic;
SIGNAL \mux_alu|f[1]~18_combout\ : std_logic;
SIGNAL \mux_alu|f[1]~19_combout\ : std_logic;
SIGNAL \dm|value1[0]~0_combout\ : std_logic;
SIGNAL \mux_alu|f[1]~20_combout\ : std_logic;
SIGNAL \alup|ripCarry|stage1|s~0_combout\ : std_logic;
SIGNAL \mx_wb|f[1]~20_combout\ : std_logic;
SIGNAL \mx_wb|f[1]~21_combout\ : std_logic;
SIGNAL \dm|value1[0]~1_combout\ : std_logic;
SIGNAL \mx_wb|f[2]~27_combout\ : std_logic;
SIGNAL \mx_wb|f[2]~28_combout\ : std_logic;
SIGNAL \rf|m2|stage3|f[0]~0_combout\ : std_logic;
SIGNAL \rf|m2|stage3|f[2]~1_combout\ : std_logic;
SIGNAL \rf|m2|stage3|f[1]~3_combout\ : std_logic;
SIGNAL \mx_redst|f[1]~7_combout\ : std_logic;
SIGNAL \rf|r2|Q[3]~feeder_combout\ : std_logic;
SIGNAL \rf|r0|Q[3]~feeder_combout\ : std_logic;
SIGNAL \rf|r4|Q[2]~feeder_combout\ : std_logic;
SIGNAL \rf|r3|Q[2]~feeder_combout\ : std_logic;
SIGNAL \rf|r2|Q[0]~feeder_combout\ : std_logic;
SIGNAL \current_pc[0]~output_o\ : std_logic;
SIGNAL \current_pc[1]~output_o\ : std_logic;
SIGNAL \current_pc[2]~output_o\ : std_logic;
SIGNAL \current_pc[3]~output_o\ : std_logic;
SIGNAL \result[0]~output_o\ : std_logic;
SIGNAL \result[1]~output_o\ : std_logic;
SIGNAL \result[2]~output_o\ : std_logic;
SIGNAL \result[3]~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \mux_alu|f[2]~11_combout\ : std_logic;
SIGNAL \id|Equal7~8_combout\ : std_logic;
SIGNAL \id|Equal5~8_combout\ : std_logic;
SIGNAL \rf|value1[3]~4_combout\ : std_logic;
SIGNAL \rf|value1[3]~1_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \id|Equal0~0_combout\ : std_logic;
SIGNAL \mx_wb|f[0]~14_combout\ : std_logic;
SIGNAL \mux_alu|f[2]~0_combout\ : std_logic;
SIGNAL \mux_alu|f[0]~16_combout\ : std_logic;
SIGNAL \mux_alu|f[2]~1_combout\ : std_logic;
SIGNAL \mux_alu|f[2]~6_combout\ : std_logic;
SIGNAL \mux_alu|f[0]~17_combout\ : std_logic;
SIGNAL \mx_wb|f[1]~16_combout\ : std_logic;
SIGNAL \mx_wb|f[2]~26_combout\ : std_logic;
SIGNAL \mx_redst|f[0]~8_combout\ : std_logic;
SIGNAL \rf|stage_dec_write|s1|y[0]~21_combout\ : std_logic;
SIGNAL \rf|m1|stage3|f~0_combout\ : std_logic;
SIGNAL \rf|stage_dec_write|s1|y[1]~22_combout\ : std_logic;
SIGNAL \rf|m6|stage3|f~0_combout\ : std_logic;
SIGNAL \rf|value2[0]~1_combout\ : std_logic;
SIGNAL \rf|value1[0]~2_combout\ : std_logic;
SIGNAL \rf|value1[0]~3_combout\ : std_logic;
SIGNAL \mux_alu|f[0]~15_combout\ : std_logic;
SIGNAL \alup|ripCarry|stage1|s~1_combout\ : std_logic;
SIGNAL \and_out~0_combout\ : std_logic;
SIGNAL \dm|value1[0]~2_combout\ : std_logic;
SIGNAL \mx_wb|f[0]~7_combout\ : std_logic;
SIGNAL \mx_wb|f[2]~29_combout\ : std_logic;
SIGNAL \mx_wb|f[2]~32_combout\ : std_logic;
SIGNAL \mx_wb|f[2]~10_combout\ : std_logic;
SIGNAL \mx_wb|f[2]~30_combout\ : std_logic;
SIGNAL \mx_wb|f[2]~31_combout\ : std_logic;
SIGNAL \mx_wb|f[2]~33_combout\ : std_logic;
SIGNAL \mx_wb|f[2]~40_combout\ : std_logic;
SIGNAL \mx_wb|f[2]~41_combout\ : std_logic;
SIGNAL \rf|m0|stage3|f~2_combout\ : std_logic;
SIGNAL \rf|r0|Q[2]~feeder_combout\ : std_logic;
SIGNAL \rf|m0|stage3|f~1_combout\ : std_logic;
SIGNAL \rf|m7|stage3|f~0_combout\ : std_logic;
SIGNAL \rf|value2[2]~0_combout\ : std_logic;
SIGNAL \rf|value1[2]~8_combout\ : std_logic;
SIGNAL \rf|value1[2]~9_combout\ : std_logic;
SIGNAL \rf|value1[2]~10_combout\ : std_logic;
SIGNAL \alup|ripCarry|stage3|s~combout\ : std_logic;
SIGNAL \mx_wb|f[0]~13_combout\ : std_logic;
SIGNAL \mx_wb|f[0]~15_combout\ : std_logic;
SIGNAL \mx_wb|f[2]~39_combout\ : std_logic;
SIGNAL \mx_wb|f[0]~8_combout\ : std_logic;
SIGNAL \mx_wb|f[0]~9_combout\ : std_logic;
SIGNAL \mx_wb|f[0]~11_combout\ : std_logic;
SIGNAL \mx_wb|f[0]~12_combout\ : std_logic;
SIGNAL \mx_wb|f[0]~17_combout\ : std_logic;
SIGNAL \rf|m0|stage3|f~3_combout\ : std_logic;
SIGNAL \rf|r0|Q[0]~feeder_combout\ : std_logic;
SIGNAL \rf|m2|stage3|f[0]~2_combout\ : std_logic;
SIGNAL \rf|m3|stage3|f[0]~0_combout\ : std_logic;
SIGNAL \rf|m4|stage3|f[0]~0_combout\ : std_logic;
SIGNAL \mux_alu|f[2]~3_combout\ : std_logic;
SIGNAL \mux_alu|f[2]~2_combout\ : std_logic;
SIGNAL \mux_alu|f[0]~13_combout\ : std_logic;
SIGNAL \mux_alu|f[0]~14_combout\ : std_logic;
SIGNAL \alup|ripCarry|stage1|Cout~1_combout\ : std_logic;
SIGNAL \alup|ripCarry|stage1|Cout~0_combout\ : std_logic;
SIGNAL \alup|ripCarry|stage2|s~combout\ : std_logic;
SIGNAL \mx_wb|f[1]~23_combout\ : std_logic;
SIGNAL \mx_wb|f[1]~22_combout\ : std_logic;
SIGNAL \mx_wb|f[1]~24_combout\ : std_logic;
SIGNAL \mx_wb|f[1]~18_combout\ : std_logic;
SIGNAL \mx_wb|f[1]~19_combout\ : std_logic;
SIGNAL \mx_wb|f[1]~25_combout\ : std_logic;
SIGNAL \rf|m0|stage3|f~4_combout\ : std_logic;
SIGNAL \rf|r0|Q[1]~feeder_combout\ : std_logic;
SIGNAL \rf|value2[1]~2_combout\ : std_logic;
SIGNAL \rf|value1[1]~5_combout\ : std_logic;
SIGNAL \rf|value1[1]~6_combout\ : std_logic;
SIGNAL \rf|value1[1]~7_combout\ : std_logic;
SIGNAL \alup|ripCarry|stage2|Cout~0_combout\ : std_logic;
SIGNAL \alup|ripCarry|stage3|Cout~0_combout\ : std_logic;
SIGNAL \mx_wb|f[3]~34_combout\ : std_logic;
SIGNAL \mx_wb|f[3]~35_combout\ : std_logic;
SIGNAL \mx_wb|f[3]~36_combout\ : std_logic;
SIGNAL \mx_wb|f[3]~37_combout\ : std_logic;
SIGNAL \rf|m0|stage3|f~0_combout\ : std_logic;
SIGNAL \rf|value1[3]~0_combout\ : std_logic;
SIGNAL \rf|value1[3]~11_combout\ : std_logic;
SIGNAL \rf|value1[3]~12_combout\ : std_logic;
SIGNAL \rf|value1[3]~13_combout\ : std_logic;
SIGNAL \mux_alu|f[3]~4_combout\ : std_logic;
SIGNAL \mux_alu|f[3]~5_combout\ : std_logic;
SIGNAL \mux_alu|f[3]~7_combout\ : std_logic;
SIGNAL \alup|ripCarry|stage4|s~combout\ : std_logic;
SIGNAL \and_out~combout\ : std_logic;
SIGNAL \Jump_Mux|f[3]~3_combout\ : std_logic;
SIGNAL \Jump_Mux|f[3]~4_combout\ : std_logic;
SIGNAL \im|output[28]~0_combout\ : std_logic;
SIGNAL \branch_adder|stage2|Cout~2_combout\ : std_logic;
SIGNAL \addpc|stage3|s~combout\ : std_logic;
SIGNAL \Jump_Mux|f[2]~2_combout\ : std_logic;
SIGNAL \branch_adder|stage2|s~combout\ : std_logic;
SIGNAL \Jump_Mux|f[1]~1_combout\ : std_logic;
SIGNAL \im|output[0]~1_combout\ : std_logic;
SIGNAL \Jump_Mux|f[0]~0_combout\ : std_logic;
SIGNAL \mx_wb|f[2]~38_combout\ : std_logic;
SIGNAL \rf|r0|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf|r1|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf|r2|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf|r3|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf|r4|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf|r6|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf|r7|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \alup|ripCarry|g\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pc|Q\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_clock <= clock;
ww_reset <= reset;
current_pc <= ww_current_pc;
result <= ww_result;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: FF_X95_Y72_N15
\rf|r2|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r2|Q[3]~feeder_combout\,
	ena => \rf|m2|stage3|f[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r2|Q\(3));

-- Location: FF_X95_Y72_N9
\rf|r0|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r0|Q[3]~feeder_combout\,
	ena => \rf|m0|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r0|Q\(3));

-- Location: FF_X95_Y72_N21
\rf|r2|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|m2|stage3|f[2]~1_combout\,
	ena => \rf|m2|stage3|f[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r2|Q\(2));

-- Location: FF_X96_Y72_N21
\rf|r3|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r3|Q[2]~feeder_combout\,
	ena => \rf|m3|stage3|f[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r3|Q\(2));

-- Location: FF_X99_Y72_N27
\rf|r4|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r4|Q[2]~feeder_combout\,
	ena => \rf|m4|stage3|f[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r4|Q\(2));

-- Location: LCCOMB_X95_Y72_N18
\mux_alu|f[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_alu|f[2]~8_combout\ = (\mux_alu|f[2]~3_combout\ & (((\mux_alu|f[2]~2_combout\)))) # (!\mux_alu|f[2]~3_combout\ & ((\mux_alu|f[2]~2_combout\ & (\rf|r3|Q\(2))) # (!\mux_alu|f[2]~2_combout\ & ((\rf|r4|Q\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r3|Q\(2),
	datab => \mux_alu|f[2]~3_combout\,
	datac => \rf|r4|Q\(2),
	datad => \mux_alu|f[2]~2_combout\,
	combout => \mux_alu|f[2]~8_combout\);

-- Location: LCCOMB_X95_Y72_N10
\mux_alu|f[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_alu|f[2]~9_combout\ = (\mux_alu|f[2]~3_combout\ & ((\mux_alu|f[2]~8_combout\ & ((\rf|r0|Q\(2)))) # (!\mux_alu|f[2]~8_combout\ & (\rf|value2[2]~0_combout\)))) # (!\mux_alu|f[2]~3_combout\ & (((\mux_alu|f[2]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value2[2]~0_combout\,
	datab => \rf|r0|Q\(2),
	datac => \mux_alu|f[2]~3_combout\,
	datad => \mux_alu|f[2]~8_combout\,
	combout => \mux_alu|f[2]~9_combout\);

-- Location: LCCOMB_X95_Y72_N24
\mux_alu|f[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_alu|f[2]~10_combout\ = (\mux_alu|f[2]~1_combout\ & ((\mux_alu|f[2]~6_combout\ & (\rf|r2|Q\(2))) # (!\mux_alu|f[2]~6_combout\ & ((\mux_alu|f[2]~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_alu|f[2]~6_combout\,
	datab => \rf|r2|Q\(2),
	datac => \mux_alu|f[2]~1_combout\,
	datad => \mux_alu|f[2]~9_combout\,
	combout => \mux_alu|f[2]~10_combout\);

-- Location: FF_X101_Y72_N25
\rf|r7|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|m0|stage3|f~3_combout\,
	ena => \rf|m7|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r7|Q\(0));

-- Location: FF_X95_Y72_N23
\rf|r2|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r2|Q[0]~feeder_combout\,
	ena => \rf|m2|stage3|f[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r2|Q\(0));

-- Location: LCCOMB_X95_Y72_N12
\mux_alu|f[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_alu|f[0]~12_combout\ = (\id|Equal0~0_combout\ & (((!\im|output[0]~1_combout\)))) # (!\id|Equal0~0_combout\ & ((\mux_alu|f[2]~0_combout\ & (\rf|r2|Q\(0))) # (!\mux_alu|f[2]~0_combout\ & ((!\im|output[0]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r2|Q\(0),
	datab => \id|Equal0~0_combout\,
	datac => \mux_alu|f[2]~0_combout\,
	datad => \im|output[0]~1_combout\,
	combout => \mux_alu|f[0]~12_combout\);

-- Location: FF_X96_Y72_N3
\rf|r3|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m0|stage3|f~4_combout\,
	sload => VCC,
	ena => \rf|m3|stage3|f[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r3|Q\(1));

-- Location: FF_X101_Y72_N5
\rf|r4|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m0|stage3|f~4_combout\,
	sload => VCC,
	ena => \rf|m4|stage3|f[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r4|Q\(1));

-- Location: LCCOMB_X96_Y72_N2
\mux_alu|f[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_alu|f[1]~18_combout\ = (\mux_alu|f[2]~2_combout\ & (((\rf|r3|Q\(1)) # (\mux_alu|f[2]~3_combout\)))) # (!\mux_alu|f[2]~2_combout\ & (\rf|r4|Q\(1) & ((!\mux_alu|f[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r4|Q\(1),
	datab => \mux_alu|f[2]~2_combout\,
	datac => \rf|r3|Q\(1),
	datad => \mux_alu|f[2]~3_combout\,
	combout => \mux_alu|f[1]~18_combout\);

-- Location: LCCOMB_X96_Y72_N14
\mux_alu|f[1]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_alu|f[1]~19_combout\ = (\mux_alu|f[2]~3_combout\ & ((\mux_alu|f[1]~18_combout\ & (\rf|r0|Q\(1))) # (!\mux_alu|f[1]~18_combout\ & ((\rf|value2[1]~2_combout\))))) # (!\mux_alu|f[2]~3_combout\ & (((\mux_alu|f[1]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_alu|f[2]~3_combout\,
	datab => \rf|r0|Q\(1),
	datac => \rf|value2[1]~2_combout\,
	datad => \mux_alu|f[1]~18_combout\,
	combout => \mux_alu|f[1]~19_combout\);

-- Location: LCCOMB_X97_Y72_N14
\dm|value1[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|value1[0]~0_combout\ = (\pc|Q\(1) & \pc|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pc|Q\(1),
	datac => \pc|Q\(0),
	combout => \dm|value1[0]~0_combout\);

-- Location: FF_X102_Y72_N29
\rf|r2|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|m2|stage3|f[1]~3_combout\,
	ena => \rf|m2|stage3|f[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r2|Q\(1));

-- Location: LCCOMB_X97_Y72_N12
\mux_alu|f[1]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_alu|f[1]~20_combout\ = (\mux_alu|f[2]~0_combout\ & (\rf|r2|Q\(1) & (\dm|value1[0]~0_combout\ & !\id|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_alu|f[2]~0_combout\,
	datab => \rf|r2|Q\(1),
	datac => \dm|value1[0]~0_combout\,
	datad => \id|Equal0~0_combout\,
	combout => \mux_alu|f[1]~20_combout\);

-- Location: LCCOMB_X97_Y72_N22
\alup|ripCarry|g[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \alup|ripCarry|g\(1) = \id|Equal5~8_combout\ $ (((\mux_alu|f[1]~20_combout\) # ((\mux_alu|f[0]~16_combout\ & \mux_alu|f[1]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_alu|f[1]~20_combout\,
	datab => \id|Equal5~8_combout\,
	datac => \mux_alu|f[0]~16_combout\,
	datad => \mux_alu|f[1]~19_combout\,
	combout => \alup|ripCarry|g\(1));

-- Location: LCCOMB_X96_Y72_N16
\alup|ripCarry|stage1|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alup|ripCarry|stage1|s~0_combout\ = \mux_alu|f[0]~15_combout\ $ (((!\rf|value1[3]~4_combout\ & \rf|value1[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf|value1[3]~4_combout\,
	datac => \rf|value1[0]~3_combout\,
	datad => \mux_alu|f[0]~15_combout\,
	combout => \alup|ripCarry|stage1|s~0_combout\);

-- Location: LCCOMB_X100_Y72_N26
\mx_wb|f[1]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[1]~20_combout\ = (\pc|Q\(2) & (!\alup|ripCarry|stage1|s~1_combout\ & ((\pc|Q\(1)) # (!\mx_wb|f[0]~14_combout\)))) # (!\pc|Q\(2) & (\alup|ripCarry|stage1|s~1_combout\ $ (((!\mx_wb|f[0]~14_combout\) # (!\pc|Q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(2),
	datab => \pc|Q\(1),
	datac => \mx_wb|f[0]~14_combout\,
	datad => \alup|ripCarry|stage1|s~1_combout\,
	combout => \mx_wb|f[1]~20_combout\);

-- Location: LCCOMB_X101_Y72_N30
\mx_wb|f[1]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[1]~21_combout\ = (\alup|ripCarry|stage3|s~combout\ & ((\alup|ripCarry|stage2|s~combout\ & ((\mx_wb|f[1]~20_combout\))) # (!\alup|ripCarry|stage2|s~combout\ & (!\mx_wb|f[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mx_wb|f[0]~7_combout\,
	datab => \alup|ripCarry|stage2|s~combout\,
	datac => \alup|ripCarry|stage3|s~combout\,
	datad => \mx_wb|f[1]~20_combout\,
	combout => \mx_wb|f[1]~21_combout\);

-- Location: LCCOMB_X98_Y72_N24
\dm|value1[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|value1[0]~1_combout\ = (\pc|Q\(0) & (\pc|Q\(1) & (\pc|Q\(2) & \pc|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(0),
	datab => \pc|Q\(1),
	datac => \pc|Q\(2),
	datad => \pc|Q\(3),
	combout => \dm|value1[0]~1_combout\);

-- Location: LCCOMB_X100_Y72_N22
\mx_wb|f[2]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[2]~27_combout\ = (\alup|ripCarry|stage1|s~1_combout\ & (!\pc|Q\(3) & (\pc|Q\(2) $ (\pc|Q\(1))))) # (!\alup|ripCarry|stage1|s~1_combout\ & (\pc|Q\(1) & (\pc|Q\(2) $ (!\pc|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(2),
	datab => \pc|Q\(1),
	datac => \pc|Q\(3),
	datad => \alup|ripCarry|stage1|s~1_combout\,
	combout => \mx_wb|f[2]~27_combout\);

-- Location: LCCOMB_X100_Y72_N12
\mx_wb|f[2]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[2]~28_combout\ = \alup|ripCarry|stage1|s~1_combout\ $ (((!\mx_wb|f[2]~27_combout\) # (!\pc|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(0),
	datac => \mx_wb|f[2]~27_combout\,
	datad => \alup|ripCarry|stage1|s~1_combout\,
	combout => \mx_wb|f[2]~28_combout\);

-- Location: LCCOMB_X103_Y72_N20
\rf|m2|stage3|f[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m2|stage3|f[0]~0_combout\ = (\reset~input_o\) # ((\mx_redst|f[1]~7_combout\ & (!\mx_redst|f[0]~8_combout\ & \rf|stage_dec_write|s1|y[0]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mx_redst|f[1]~7_combout\,
	datab => \reset~input_o\,
	datac => \mx_redst|f[0]~8_combout\,
	datad => \rf|stage_dec_write|s1|y[0]~21_combout\,
	combout => \rf|m2|stage3|f[0]~0_combout\);

-- Location: LCCOMB_X95_Y72_N20
\rf|m2|stage3|f[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m2|stage3|f[2]~1_combout\ = (\reset~input_o\) # ((\mx_wb|f[2]~26_combout\) # ((\id|Equal0~0_combout\ & \mx_wb|f[2]~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \id|Equal0~0_combout\,
	datab => \reset~input_o\,
	datac => \mx_wb|f[2]~26_combout\,
	datad => \mx_wb|f[2]~41_combout\,
	combout => \rf|m2|stage3|f[2]~1_combout\);

-- Location: LCCOMB_X102_Y72_N28
\rf|m2|stage3|f[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m2|stage3|f[1]~3_combout\ = (\reset~input_o\) # (\mx_wb|f[1]~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \mx_wb|f[1]~25_combout\,
	combout => \rf|m2|stage3|f[1]~3_combout\);

-- Location: LCCOMB_X103_Y72_N10
\mx_redst|f[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_redst|f[1]~7_combout\ = (\pc|Q\(3)) # ((\pc|Q\(1) & ((\pc|Q\(2)) # (!\pc|Q\(0)))) # (!\pc|Q\(1) & (!\pc|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(1),
	datab => \pc|Q\(2),
	datac => \pc|Q\(0),
	datad => \pc|Q\(3),
	combout => \mx_redst|f[1]~7_combout\);

-- Location: LCCOMB_X95_Y72_N14
\rf|r2|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r2|Q[3]~feeder_combout\ = \rf|m0|stage3|f~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|m0|stage3|f~0_combout\,
	combout => \rf|r2|Q[3]~feeder_combout\);

-- Location: LCCOMB_X95_Y72_N8
\rf|r0|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r0|Q[3]~feeder_combout\ = \rf|m0|stage3|f~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|m0|stage3|f~0_combout\,
	combout => \rf|r0|Q[3]~feeder_combout\);

-- Location: LCCOMB_X99_Y72_N26
\rf|r4|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r4|Q[2]~feeder_combout\ = \rf|m0|stage3|f~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|m0|stage3|f~2_combout\,
	combout => \rf|r4|Q[2]~feeder_combout\);

-- Location: LCCOMB_X96_Y72_N20
\rf|r3|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r3|Q[2]~feeder_combout\ = \rf|m0|stage3|f~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m0|stage3|f~2_combout\,
	combout => \rf|r3|Q[2]~feeder_combout\);

-- Location: LCCOMB_X95_Y72_N22
\rf|r2|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r2|Q[0]~feeder_combout\ = \rf|m2|stage3|f[0]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m2|stage3|f[0]~2_combout\,
	combout => \rf|r2|Q[0]~feeder_combout\);

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
	i => \mx_wb|f[0]~17_combout\,
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
	i => \mx_wb|f[1]~25_combout\,
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
	i => \mx_wb|f[2]~38_combout\,
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
	i => \mx_wb|f[3]~37_combout\,
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

-- Location: LCCOMB_X98_Y72_N8
\mux_alu|f[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_alu|f[2]~11_combout\ = \pc|Q\(0) $ (\pc|Q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pc|Q\(0),
	datad => \pc|Q\(1),
	combout => \mux_alu|f[2]~11_combout\);

-- Location: LCCOMB_X94_Y72_N2
\id|Equal7~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \id|Equal7~8_combout\ = (!\pc|Q\(3) & (\pc|Q\(2) & (\pc|Q\(0) & !\pc|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(3),
	datab => \pc|Q\(2),
	datac => \pc|Q\(0),
	datad => \pc|Q\(1),
	combout => \id|Equal7~8_combout\);

-- Location: LCCOMB_X94_Y72_N16
\id|Equal5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \id|Equal5~8_combout\ = (!\pc|Q\(3) & (!\pc|Q\(2) & (\pc|Q\(0) & \pc|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(3),
	datab => \pc|Q\(2),
	datac => \pc|Q\(0),
	datad => \pc|Q\(1),
	combout => \id|Equal5~8_combout\);

-- Location: LCCOMB_X98_Y72_N22
\rf|value1[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[3]~4_combout\ = (\pc|Q\(3)) # ((!\pc|Q\(0) & (\pc|Q\(1) $ (!\pc|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(1),
	datab => \pc|Q\(0),
	datac => \pc|Q\(2),
	datad => \pc|Q\(3),
	combout => \rf|value1[3]~4_combout\);

-- Location: LCCOMB_X98_Y72_N6
\rf|value1[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[3]~1_combout\ = (!\pc|Q\(1) & ((\pc|Q\(2)) # (!\pc|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pc|Q\(0),
	datac => \pc|Q\(1),
	datad => \pc|Q\(2),
	combout => \rf|value1[3]~1_combout\);

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

-- Location: LCCOMB_X94_Y72_N30
\id|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \id|Equal0~0_combout\ = (!\pc|Q\(3) & (\pc|Q\(1) & (!\pc|Q\(0) & !\pc|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(3),
	datab => \pc|Q\(1),
	datac => \pc|Q\(0),
	datad => \pc|Q\(2),
	combout => \id|Equal0~0_combout\);

-- Location: LCCOMB_X100_Y72_N0
\mx_wb|f[0]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[0]~14_combout\ = (\pc|Q\(0) & !\pc|Q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(0),
	datad => \pc|Q\(3),
	combout => \mx_wb|f[0]~14_combout\);

-- Location: LCCOMB_X94_Y72_N0
\mux_alu|f[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_alu|f[2]~0_combout\ = (!\pc|Q\(3) & ((\pc|Q\(0) & ((!\pc|Q\(2)) # (!\pc|Q\(1)))) # (!\pc|Q\(0) & ((\pc|Q\(1)) # (\pc|Q\(2))))))

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
	combout => \mux_alu|f[2]~0_combout\);

-- Location: LCCOMB_X94_Y72_N10
\mux_alu|f[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_alu|f[0]~16_combout\ = (!\id|Equal0~0_combout\ & (\mux_alu|f[2]~0_combout\ & ((!\pc|Q\(0)) # (!\pc|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(1),
	datab => \pc|Q\(0),
	datac => \id|Equal0~0_combout\,
	datad => \mux_alu|f[2]~0_combout\,
	combout => \mux_alu|f[0]~16_combout\);

-- Location: LCCOMB_X95_Y72_N4
\mux_alu|f[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_alu|f[2]~1_combout\ = (\mux_alu|f[2]~0_combout\ & !\id|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux_alu|f[2]~0_combout\,
	datad => \id|Equal0~0_combout\,
	combout => \mux_alu|f[2]~1_combout\);

-- Location: LCCOMB_X95_Y72_N6
\mux_alu|f[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_alu|f[2]~6_combout\ = (\id|Equal0~0_combout\) # ((\pc|Q\(1) & (\pc|Q\(0) & \mux_alu|f[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(1),
	datab => \pc|Q\(0),
	datac => \mux_alu|f[2]~0_combout\,
	datad => \id|Equal0~0_combout\,
	combout => \mux_alu|f[2]~6_combout\);

-- Location: LCCOMB_X95_Y72_N2
\mux_alu|f[0]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_alu|f[0]~17_combout\ = (\mux_alu|f[2]~6_combout\ & ((\mux_alu|f[2]~1_combout\ & (\rf|r2|Q\(0))) # (!\mux_alu|f[2]~1_combout\ & ((!\im|output[0]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r2|Q\(0),
	datab => \im|output[0]~1_combout\,
	datac => \mux_alu|f[2]~1_combout\,
	datad => \mux_alu|f[2]~6_combout\,
	combout => \mux_alu|f[0]~17_combout\);

-- Location: LCCOMB_X101_Y72_N8
\mx_wb|f[1]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[1]~16_combout\ = (\id|Equal0~0_combout\ & !\alup|ripCarry|stage4|s~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \id|Equal0~0_combout\,
	datad => \alup|ripCarry|stage4|s~combout\,
	combout => \mx_wb|f[1]~16_combout\);

-- Location: LCCOMB_X99_Y72_N8
\mx_wb|f[2]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[2]~26_combout\ = (!\id|Equal7~8_combout\ & (\alup|ripCarry|stage3|s~combout\ & !\id|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \id|Equal7~8_combout\,
	datac => \alup|ripCarry|stage3|s~combout\,
	datad => \id|Equal0~0_combout\,
	combout => \mx_wb|f[2]~26_combout\);

-- Location: LCCOMB_X103_Y72_N8
\mx_redst|f[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_redst|f[0]~8_combout\ = (\pc|Q\(3)) # ((\pc|Q\(1) & (\pc|Q\(2))) # (!\pc|Q\(1) & ((!\pc|Q\(0)) # (!\pc|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(1),
	datab => \pc|Q\(2),
	datac => \pc|Q\(0),
	datad => \pc|Q\(3),
	combout => \mx_redst|f[0]~8_combout\);

-- Location: LCCOMB_X103_Y72_N18
\rf|stage_dec_write|s1|y[0]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|stage_dec_write|s1|y[0]~21_combout\ = (!\pc|Q\(1) & (\pc|Q\(2) & (!\pc|Q\(0) & !\pc|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(1),
	datab => \pc|Q\(2),
	datac => \pc|Q\(0),
	datad => \pc|Q\(3),
	combout => \rf|stage_dec_write|s1|y[0]~21_combout\);

-- Location: LCCOMB_X103_Y72_N22
\rf|m1|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m1|stage3|f~0_combout\ = (\reset~input_o\) # ((!\mx_redst|f[1]~7_combout\ & (\mx_redst|f[0]~8_combout\ & \rf|stage_dec_write|s1|y[0]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mx_redst|f[1]~7_combout\,
	datab => \reset~input_o\,
	datac => \mx_redst|f[0]~8_combout\,
	datad => \rf|stage_dec_write|s1|y[0]~21_combout\,
	combout => \rf|m1|stage3|f~0_combout\);

-- Location: FF_X97_Y72_N9
\rf|r1|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m0|stage3|f~3_combout\,
	sload => VCC,
	ena => \rf|m1|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r1|Q\(0));

-- Location: LCCOMB_X103_Y72_N28
\rf|stage_dec_write|s1|y[1]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|stage_dec_write|s1|y[1]~22_combout\ = (!\pc|Q\(2) & (!\pc|Q\(3) & (\pc|Q\(1) $ (\pc|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(1),
	datab => \pc|Q\(2),
	datac => \pc|Q\(0),
	datad => \pc|Q\(3),
	combout => \rf|stage_dec_write|s1|y[1]~22_combout\);

-- Location: LCCOMB_X103_Y72_N0
\rf|m6|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m6|stage3|f~0_combout\ = (\reset~input_o\) # ((\mx_redst|f[1]~7_combout\ & (\rf|stage_dec_write|s1|y[1]~22_combout\ & !\mx_redst|f[0]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mx_redst|f[1]~7_combout\,
	datab => \rf|stage_dec_write|s1|y[1]~22_combout\,
	datac => \mx_redst|f[0]~8_combout\,
	datad => \reset~input_o\,
	combout => \rf|m6|stage3|f~0_combout\);

-- Location: FF_X97_Y72_N3
\rf|r6|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m0|stage3|f~3_combout\,
	sload => VCC,
	ena => \rf|m6|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r6|Q\(0));

-- Location: LCCOMB_X97_Y72_N2
\rf|value2[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[0]~1_combout\ = (\rf|r6|Q\(0) & !\pc|Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|r6|Q\(0),
	datad => \pc|Q\(2),
	combout => \rf|value2[0]~1_combout\);

-- Location: LCCOMB_X97_Y72_N20
\rf|value1[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[0]~2_combout\ = (\mux_alu|f[2]~11_combout\ & ((\rf|r7|Q\(0)) # ((\rf|value1[3]~1_combout\)))) # (!\mux_alu|f[2]~11_combout\ & (((\rf|value2[0]~1_combout\ & !\rf|value1[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r7|Q\(0),
	datab => \rf|value2[0]~1_combout\,
	datac => \mux_alu|f[2]~11_combout\,
	datad => \rf|value1[3]~1_combout\,
	combout => \rf|value1[0]~2_combout\);

-- Location: LCCOMB_X97_Y72_N8
\rf|value1[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[0]~3_combout\ = (\rf|value1[3]~1_combout\ & ((\rf|value1[0]~2_combout\ & (\rf|r0|Q\(0))) # (!\rf|value1[0]~2_combout\ & ((\rf|r1|Q\(0)))))) # (!\rf|value1[3]~1_combout\ & (((\rf|value1[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value1[3]~1_combout\,
	datab => \rf|r0|Q\(0),
	datac => \rf|r1|Q\(0),
	datad => \rf|value1[0]~2_combout\,
	combout => \rf|value1[0]~3_combout\);

-- Location: LCCOMB_X96_Y72_N8
\mux_alu|f[0]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_alu|f[0]~15_combout\ = (\mux_alu|f[2]~6_combout\ & (\mux_alu|f[0]~12_combout\)) # (!\mux_alu|f[2]~6_combout\ & (((\mux_alu|f[2]~1_combout\ & \mux_alu|f[0]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_alu|f[0]~12_combout\,
	datab => \mux_alu|f[2]~6_combout\,
	datac => \mux_alu|f[2]~1_combout\,
	datad => \mux_alu|f[0]~14_combout\,
	combout => \mux_alu|f[0]~15_combout\);

-- Location: LCCOMB_X100_Y72_N16
\alup|ripCarry|stage1|s~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \alup|ripCarry|stage1|s~1_combout\ = \id|Equal5~8_combout\ $ (\mux_alu|f[0]~15_combout\ $ (((!\rf|value1[3]~4_combout\ & \rf|value1[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010110011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \id|Equal5~8_combout\,
	datab => \rf|value1[3]~4_combout\,
	datac => \rf|value1[0]~3_combout\,
	datad => \mux_alu|f[0]~15_combout\,
	combout => \alup|ripCarry|stage1|s~1_combout\);

-- Location: LCCOMB_X100_Y72_N6
\and_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \and_out~0_combout\ = (!\alup|ripCarry|stage2|s~combout\ & !\alup|ripCarry|stage3|s~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alup|ripCarry|stage2|s~combout\,
	datad => \alup|ripCarry|stage3|s~combout\,
	combout => \and_out~0_combout\);

-- Location: LCCOMB_X100_Y72_N8
\dm|value1[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|value1[0]~2_combout\ = (\dm|value1[0]~1_combout\ & (!\alup|ripCarry|stage1|s~1_combout\ & (\alup|ripCarry|stage4|s~combout\ & \and_out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm|value1[0]~1_combout\,
	datab => \alup|ripCarry|stage1|s~1_combout\,
	datac => \alup|ripCarry|stage4|s~combout\,
	datad => \and_out~0_combout\,
	combout => \dm|value1[0]~2_combout\);

-- Location: LCCOMB_X98_Y72_N14
\mx_wb|f[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[0]~7_combout\ = (!\pc|Q\(1) & (\pc|Q\(0) & (\pc|Q\(2) & !\pc|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(1),
	datab => \pc|Q\(0),
	datac => \pc|Q\(2),
	datad => \pc|Q\(3),
	combout => \mx_wb|f[0]~7_combout\);

-- Location: LCCOMB_X100_Y72_N14
\mx_wb|f[2]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[2]~29_combout\ = (\pc|Q\(0) & (!\pc|Q\(3) & (\pc|Q\(2) $ (\pc|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(0),
	datab => \pc|Q\(3),
	datac => \pc|Q\(2),
	datad => \pc|Q\(1),
	combout => \mx_wb|f[2]~29_combout\);

-- Location: LCCOMB_X100_Y72_N4
\mx_wb|f[2]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[2]~32_combout\ = ((\alup|ripCarry|stage1|s~1_combout\ & ((\mx_wb|f[2]~29_combout\))) # (!\alup|ripCarry|stage1|s~1_combout\ & (!\mx_wb|f[2]~10_combout\))) # (!\alup|ripCarry|stage2|s~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mx_wb|f[2]~10_combout\,
	datab => \mx_wb|f[2]~29_combout\,
	datac => \alup|ripCarry|stage2|s~combout\,
	datad => \alup|ripCarry|stage1|s~1_combout\,
	combout => \mx_wb|f[2]~32_combout\);

-- Location: LCCOMB_X100_Y72_N30
\mx_wb|f[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[2]~10_combout\ = (\pc|Q\(0) & (!\pc|Q\(3) & (!\pc|Q\(2) & \pc|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(0),
	datab => \pc|Q\(3),
	datac => \pc|Q\(2),
	datad => \pc|Q\(1),
	combout => \mx_wb|f[2]~10_combout\);

-- Location: LCCOMB_X100_Y72_N20
\mx_wb|f[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[2]~30_combout\ = (\alup|ripCarry|stage1|s~1_combout\ & (!\mx_wb|f[2]~29_combout\)) # (!\alup|ripCarry|stage1|s~1_combout\ & ((\mx_wb|f[2]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mx_wb|f[2]~29_combout\,
	datac => \mx_wb|f[2]~10_combout\,
	datad => \alup|ripCarry|stage1|s~1_combout\,
	combout => \mx_wb|f[2]~30_combout\);

-- Location: LCCOMB_X100_Y72_N18
\mx_wb|f[2]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[2]~31_combout\ = (\alup|ripCarry|stage2|s~combout\ & ((!\mx_wb|f[2]~30_combout\))) # (!\alup|ripCarry|stage2|s~combout\ & (\mx_wb|f[0]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mx_wb|f[0]~7_combout\,
	datac => \alup|ripCarry|stage2|s~combout\,
	datad => \mx_wb|f[2]~30_combout\,
	combout => \mx_wb|f[2]~31_combout\);

-- Location: LCCOMB_X100_Y72_N10
\mx_wb|f[2]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[2]~33_combout\ = (\alup|ripCarry|stage3|s~combout\ & (((\alup|ripCarry|stage4|s~combout\) # (\mx_wb|f[2]~31_combout\)))) # (!\alup|ripCarry|stage3|s~combout\ & (\mx_wb|f[2]~32_combout\ & (!\alup|ripCarry|stage4|s~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alup|ripCarry|stage3|s~combout\,
	datab => \mx_wb|f[2]~32_combout\,
	datac => \alup|ripCarry|stage4|s~combout\,
	datad => \mx_wb|f[2]~31_combout\,
	combout => \mx_wb|f[2]~33_combout\);

-- Location: LCCOMB_X100_Y72_N28
\mx_wb|f[2]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[2]~40_combout\ = (\alup|ripCarry|stage2|s~combout\ & (((\mx_wb|f[0]~7_combout\)))) # (!\alup|ripCarry|stage2|s~combout\ & ((\mx_wb|f[2]~33_combout\ & ((\mx_wb|f[0]~7_combout\))) # (!\mx_wb|f[2]~33_combout\ & (\mx_wb|f[2]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mx_wb|f[2]~28_combout\,
	datab => \mx_wb|f[0]~7_combout\,
	datac => \alup|ripCarry|stage2|s~combout\,
	datad => \mx_wb|f[2]~33_combout\,
	combout => \mx_wb|f[2]~40_combout\);

-- Location: LCCOMB_X100_Y72_N2
\mx_wb|f[2]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[2]~41_combout\ = (\alup|ripCarry|stage4|s~combout\ & (((\dm|value1[0]~2_combout\) # (\mx_wb|f[2]~40_combout\)))) # (!\alup|ripCarry|stage4|s~combout\ & (\mx_wb|f[2]~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mx_wb|f[2]~33_combout\,
	datab => \alup|ripCarry|stage4|s~combout\,
	datac => \dm|value1[0]~2_combout\,
	datad => \mx_wb|f[2]~40_combout\,
	combout => \mx_wb|f[2]~41_combout\);

-- Location: LCCOMB_X99_Y72_N30
\rf|m0|stage3|f~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m0|stage3|f~2_combout\ = (!\reset~input_o\ & ((\mx_wb|f[2]~26_combout\) # ((\id|Equal0~0_combout\ & \mx_wb|f[2]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \id|Equal0~0_combout\,
	datab => \reset~input_o\,
	datac => \mx_wb|f[2]~26_combout\,
	datad => \mx_wb|f[2]~41_combout\,
	combout => \rf|m0|stage3|f~2_combout\);

-- Location: LCCOMB_X95_Y72_N16
\rf|r0|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r0|Q[2]~feeder_combout\ = \rf|m0|stage3|f~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m0|stage3|f~2_combout\,
	combout => \rf|r0|Q[2]~feeder_combout\);

-- Location: LCCOMB_X103_Y72_N24
\rf|m0|stage3|f~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m0|stage3|f~1_combout\ = (\reset~input_o\) # ((!\mx_redst|f[1]~7_combout\ & (!\mx_redst|f[0]~8_combout\ & \rf|stage_dec_write|s1|y[0]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mx_redst|f[1]~7_combout\,
	datab => \reset~input_o\,
	datac => \mx_redst|f[0]~8_combout\,
	datad => \rf|stage_dec_write|s1|y[0]~21_combout\,
	combout => \rf|m0|stage3|f~1_combout\);

-- Location: FF_X95_Y72_N17
\rf|r0|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r0|Q[2]~feeder_combout\,
	ena => \rf|m0|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r0|Q\(2));

-- Location: FF_X98_Y72_N19
\rf|r1|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m0|stage3|f~2_combout\,
	sload => VCC,
	ena => \rf|m1|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r1|Q\(2));

-- Location: LCCOMB_X103_Y72_N12
\rf|m7|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m7|stage3|f~0_combout\ = (\reset~input_o\) # ((\mx_redst|f[1]~7_combout\ & (\rf|stage_dec_write|s1|y[1]~22_combout\ & \mx_redst|f[0]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mx_redst|f[1]~7_combout\,
	datab => \rf|stage_dec_write|s1|y[1]~22_combout\,
	datac => \mx_redst|f[0]~8_combout\,
	datad => \reset~input_o\,
	combout => \rf|m7|stage3|f~0_combout\);

-- Location: FF_X98_Y72_N5
\rf|r7|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m0|stage3|f~2_combout\,
	sload => VCC,
	ena => \rf|m7|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r7|Q\(2));

-- Location: FF_X99_Y72_N17
\rf|r6|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m0|stage3|f~2_combout\,
	sload => VCC,
	ena => \rf|m6|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r6|Q\(2));

-- Location: LCCOMB_X99_Y72_N16
\rf|value2[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[2]~0_combout\ = (\rf|r6|Q\(2) & !\pc|Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|r6|Q\(2),
	datad => \pc|Q\(2),
	combout => \rf|value2[2]~0_combout\);

-- Location: LCCOMB_X98_Y72_N4
\rf|value1[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[2]~8_combout\ = (\rf|value1[3]~1_combout\ & (\mux_alu|f[2]~11_combout\)) # (!\rf|value1[3]~1_combout\ & ((\mux_alu|f[2]~11_combout\ & (\rf|r7|Q\(2))) # (!\mux_alu|f[2]~11_combout\ & ((\rf|value2[2]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value1[3]~1_combout\,
	datab => \mux_alu|f[2]~11_combout\,
	datac => \rf|r7|Q\(2),
	datad => \rf|value2[2]~0_combout\,
	combout => \rf|value1[2]~8_combout\);

-- Location: LCCOMB_X98_Y72_N18
\rf|value1[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[2]~9_combout\ = (\rf|value1[3]~1_combout\ & ((\rf|value1[2]~8_combout\ & (\rf|r0|Q\(2))) # (!\rf|value1[2]~8_combout\ & ((\rf|r1|Q\(2)))))) # (!\rf|value1[3]~1_combout\ & (((\rf|value1[2]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value1[3]~1_combout\,
	datab => \rf|r0|Q\(2),
	datac => \rf|r1|Q\(2),
	datad => \rf|value1[2]~8_combout\,
	combout => \rf|value1[2]~9_combout\);

-- Location: LCCOMB_X98_Y72_N30
\rf|value1[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[2]~10_combout\ = (!\rf|value1[3]~4_combout\ & \rf|value1[2]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|value1[3]~4_combout\,
	datad => \rf|value1[2]~9_combout\,
	combout => \rf|value1[2]~10_combout\);

-- Location: LCCOMB_X97_Y72_N24
\alup|ripCarry|stage3|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \alup|ripCarry|stage3|s~combout\ = \mux_alu|f[2]~10_combout\ $ (\id|Equal5~8_combout\ $ (\rf|value1[2]~10_combout\ $ (\alup|ripCarry|stage2|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_alu|f[2]~10_combout\,
	datab => \id|Equal5~8_combout\,
	datac => \rf|value1[2]~10_combout\,
	datad => \alup|ripCarry|stage2|Cout~0_combout\,
	combout => \alup|ripCarry|stage3|s~combout\);

-- Location: LCCOMB_X101_Y72_N12
\mx_wb|f[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[0]~13_combout\ = (\pc|Q\(2) & (\pc|Q\(1) & (\alup|ripCarry|stage3|s~combout\ $ (\alup|ripCarry|stage2|s~combout\)))) # (!\pc|Q\(2) & (!\pc|Q\(1) & (\alup|ripCarry|stage3|s~combout\ $ (\alup|ripCarry|stage2|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(2),
	datab => \pc|Q\(1),
	datac => \alup|ripCarry|stage3|s~combout\,
	datad => \alup|ripCarry|stage2|s~combout\,
	combout => \mx_wb|f[0]~13_combout\);

-- Location: LCCOMB_X101_Y72_N22
\mx_wb|f[0]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[0]~15_combout\ = (\mx_wb|f[0]~14_combout\ & (((\mx_wb|f[0]~13_combout\)))) # (!\mx_wb|f[0]~14_combout\ & (\alup|ripCarry|stage2|s~combout\ $ ((\alup|ripCarry|stage3|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alup|ripCarry|stage2|s~combout\,
	datab => \mx_wb|f[0]~14_combout\,
	datac => \alup|ripCarry|stage3|s~combout\,
	datad => \mx_wb|f[0]~13_combout\,
	combout => \mx_wb|f[0]~15_combout\);

-- Location: LCCOMB_X98_Y72_N26
\mx_wb|f[2]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[2]~39_combout\ = (\pc|Q\(3)) # ((\pc|Q\(0) & ((\pc|Q\(1)) # (!\pc|Q\(2)))) # (!\pc|Q\(0) & ((\pc|Q\(2)) # (!\pc|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(0),
	datab => \pc|Q\(1),
	datac => \pc|Q\(2),
	datad => \pc|Q\(3),
	combout => \mx_wb|f[2]~39_combout\);

-- Location: LCCOMB_X99_Y72_N6
\mx_wb|f[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[0]~8_combout\ = (\id|Equal0~0_combout\ & ((!\mx_wb|f[0]~7_combout\))) # (!\id|Equal0~0_combout\ & (\id|Equal7~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \id|Equal0~0_combout\,
	datac => \id|Equal7~8_combout\,
	datad => \mx_wb|f[0]~7_combout\,
	combout => \mx_wb|f[0]~8_combout\);

-- Location: LCCOMB_X101_Y72_N14
\mx_wb|f[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[0]~9_combout\ = (\alup|ripCarry|stage1|s~0_combout\ & ((\mx_wb|f[2]~39_combout\) # ((\mx_wb|f[0]~8_combout\ & \alup|ripCarry|stage4|s~combout\)))) # (!\alup|ripCarry|stage1|s~0_combout\ & (((\mx_wb|f[0]~8_combout\ & 
-- \alup|ripCarry|stage4|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alup|ripCarry|stage1|s~0_combout\,
	datab => \mx_wb|f[2]~39_combout\,
	datac => \mx_wb|f[0]~8_combout\,
	datad => \alup|ripCarry|stage4|s~combout\,
	combout => \mx_wb|f[0]~9_combout\);

-- Location: LCCOMB_X101_Y72_N16
\mx_wb|f[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[0]~11_combout\ = (\id|Equal0~0_combout\ & (\mx_wb|f[2]~10_combout\ & (\alup|ripCarry|stage1|s~1_combout\ & !\alup|ripCarry|stage4|s~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \id|Equal0~0_combout\,
	datab => \mx_wb|f[2]~10_combout\,
	datac => \alup|ripCarry|stage1|s~1_combout\,
	datad => \alup|ripCarry|stage4|s~combout\,
	combout => \mx_wb|f[0]~11_combout\);

-- Location: LCCOMB_X101_Y72_N10
\mx_wb|f[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[0]~12_combout\ = (\mx_wb|f[0]~9_combout\) # ((\mx_wb|f[0]~11_combout\ & (\alup|ripCarry|stage3|s~combout\ $ (\alup|ripCarry|stage2|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alup|ripCarry|stage3|s~combout\,
	datab => \alup|ripCarry|stage2|s~combout\,
	datac => \mx_wb|f[0]~9_combout\,
	datad => \mx_wb|f[0]~11_combout\,
	combout => \mx_wb|f[0]~12_combout\);

-- Location: LCCOMB_X101_Y72_N6
\mx_wb|f[0]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[0]~17_combout\ = (\mx_wb|f[0]~12_combout\) # ((!\alup|ripCarry|stage1|s~1_combout\ & (\mx_wb|f[1]~16_combout\ & \mx_wb|f[0]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alup|ripCarry|stage1|s~1_combout\,
	datab => \mx_wb|f[1]~16_combout\,
	datac => \mx_wb|f[0]~15_combout\,
	datad => \mx_wb|f[0]~12_combout\,
	combout => \mx_wb|f[0]~17_combout\);

-- Location: LCCOMB_X101_Y72_N24
\rf|m0|stage3|f~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m0|stage3|f~3_combout\ = (!\reset~input_o\ & \mx_wb|f[0]~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \mx_wb|f[0]~17_combout\,
	combout => \rf|m0|stage3|f~3_combout\);

-- Location: LCCOMB_X96_Y72_N18
\rf|r0|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r0|Q[0]~feeder_combout\ = \rf|m0|stage3|f~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m0|stage3|f~3_combout\,
	combout => \rf|r0|Q[0]~feeder_combout\);

-- Location: FF_X96_Y72_N19
\rf|r0|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r0|Q[0]~feeder_combout\,
	ena => \rf|m0|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r0|Q\(0));

-- Location: LCCOMB_X101_Y72_N0
\rf|m2|stage3|f[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m2|stage3|f[0]~2_combout\ = (\reset~input_o\) # (\mx_wb|f[0]~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \mx_wb|f[0]~17_combout\,
	combout => \rf|m2|stage3|f[0]~2_combout\);

-- Location: LCCOMB_X103_Y72_N14
\rf|m3|stage3|f[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m3|stage3|f[0]~0_combout\ = (\reset~input_o\) # ((\mx_redst|f[1]~7_combout\ & (\mx_redst|f[0]~8_combout\ & \rf|stage_dec_write|s1|y[0]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mx_redst|f[1]~7_combout\,
	datab => \reset~input_o\,
	datac => \mx_redst|f[0]~8_combout\,
	datad => \rf|stage_dec_write|s1|y[0]~21_combout\,
	combout => \rf|m3|stage3|f[0]~0_combout\);

-- Location: FF_X96_Y72_N13
\rf|r3|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m2|stage3|f[0]~2_combout\,
	sload => VCC,
	ena => \rf|m3|stage3|f[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r3|Q\(0));

-- Location: LCCOMB_X103_Y72_N2
\rf|m4|stage3|f[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m4|stage3|f[0]~0_combout\ = (\reset~input_o\) # ((!\mx_redst|f[1]~7_combout\ & (\rf|stage_dec_write|s1|y[1]~22_combout\ & !\mx_redst|f[0]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mx_redst|f[1]~7_combout\,
	datab => \rf|stage_dec_write|s1|y[1]~22_combout\,
	datac => \mx_redst|f[0]~8_combout\,
	datad => \reset~input_o\,
	combout => \rf|m4|stage3|f[0]~0_combout\);

-- Location: FF_X101_Y72_N27
\rf|r4|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m2|stage3|f[0]~2_combout\,
	sload => VCC,
	ena => \rf|m4|stage3|f[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r4|Q\(0));

-- Location: LCCOMB_X94_Y72_N22
\mux_alu|f[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_alu|f[2]~3_combout\ = (\pc|Q\(1)) # ((\pc|Q\(0) & \pc|Q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pc|Q\(0),
	datac => \pc|Q\(1),
	datad => \pc|Q\(2),
	combout => \mux_alu|f[2]~3_combout\);

-- Location: LCCOMB_X94_Y72_N8
\mux_alu|f[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_alu|f[2]~2_combout\ = (!\pc|Q\(1) & \pc|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pc|Q\(1),
	datad => \pc|Q\(0),
	combout => \mux_alu|f[2]~2_combout\);

-- Location: LCCOMB_X96_Y72_N10
\mux_alu|f[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_alu|f[0]~13_combout\ = (\mux_alu|f[2]~3_combout\ & ((\rf|value2[0]~1_combout\) # ((\mux_alu|f[2]~2_combout\)))) # (!\mux_alu|f[2]~3_combout\ & (((\rf|r4|Q\(0) & !\mux_alu|f[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value2[0]~1_combout\,
	datab => \rf|r4|Q\(0),
	datac => \mux_alu|f[2]~3_combout\,
	datad => \mux_alu|f[2]~2_combout\,
	combout => \mux_alu|f[0]~13_combout\);

-- Location: LCCOMB_X96_Y72_N12
\mux_alu|f[0]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_alu|f[0]~14_combout\ = (\mux_alu|f[2]~2_combout\ & ((\mux_alu|f[0]~13_combout\ & (\rf|r0|Q\(0))) # (!\mux_alu|f[0]~13_combout\ & ((\rf|r3|Q\(0)))))) # (!\mux_alu|f[2]~2_combout\ & (((\mux_alu|f[0]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_alu|f[2]~2_combout\,
	datab => \rf|r0|Q\(0),
	datac => \rf|r3|Q\(0),
	datad => \mux_alu|f[0]~13_combout\,
	combout => \mux_alu|f[0]~14_combout\);

-- Location: LCCOMB_X97_Y72_N4
\alup|ripCarry|stage1|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \alup|ripCarry|stage1|Cout~1_combout\ = (\id|Equal5~8_combout\ & (!\mux_alu|f[0]~17_combout\ & ((!\mux_alu|f[0]~14_combout\) # (!\mux_alu|f[0]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \id|Equal5~8_combout\,
	datab => \mux_alu|f[0]~16_combout\,
	datac => \mux_alu|f[0]~17_combout\,
	datad => \mux_alu|f[0]~14_combout\,
	combout => \alup|ripCarry|stage1|Cout~1_combout\);

-- Location: LCCOMB_X97_Y72_N6
\alup|ripCarry|stage1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alup|ripCarry|stage1|Cout~0_combout\ = (!\rf|value1[3]~4_combout\ & (\rf|value1[0]~3_combout\ & ((\id|Equal5~8_combout\) # (\mux_alu|f[0]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \id|Equal5~8_combout\,
	datab => \rf|value1[3]~4_combout\,
	datac => \rf|value1[0]~3_combout\,
	datad => \mux_alu|f[0]~15_combout\,
	combout => \alup|ripCarry|stage1|Cout~0_combout\);

-- Location: LCCOMB_X97_Y72_N30
\alup|ripCarry|stage2|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \alup|ripCarry|stage2|s~combout\ = \alup|ripCarry|g\(1) $ (\rf|value1[1]~7_combout\ $ (((\alup|ripCarry|stage1|Cout~1_combout\) # (\alup|ripCarry|stage1|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alup|ripCarry|g\(1),
	datab => \rf|value1[1]~7_combout\,
	datac => \alup|ripCarry|stage1|Cout~1_combout\,
	datad => \alup|ripCarry|stage1|Cout~0_combout\,
	combout => \alup|ripCarry|stage2|s~combout\);

-- Location: LCCOMB_X101_Y72_N4
\mx_wb|f[1]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[1]~23_combout\ = \alup|ripCarry|stage1|s~1_combout\ $ (\alup|ripCarry|stage2|s~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alup|ripCarry|stage1|s~1_combout\,
	datad => \alup|ripCarry|stage2|s~combout\,
	combout => \mx_wb|f[1]~23_combout\);

-- Location: LCCOMB_X100_Y72_N24
\mx_wb|f[1]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[1]~22_combout\ = (\pc|Q\(2) & (\pc|Q\(1) & (\alup|ripCarry|stage2|s~combout\ $ (\alup|ripCarry|stage1|s~1_combout\)))) # (!\pc|Q\(2) & (\pc|Q\(1) $ (\alup|ripCarry|stage2|s~combout\ $ (\alup|ripCarry|stage1|s~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100110010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(2),
	datab => \pc|Q\(1),
	datac => \alup|ripCarry|stage2|s~combout\,
	datad => \alup|ripCarry|stage1|s~1_combout\,
	combout => \mx_wb|f[1]~22_combout\);

-- Location: LCCOMB_X101_Y72_N28
\mx_wb|f[1]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[1]~24_combout\ = (!\alup|ripCarry|stage3|s~combout\ & ((\mx_wb|f[0]~14_combout\ & ((\mx_wb|f[1]~22_combout\))) # (!\mx_wb|f[0]~14_combout\ & (\mx_wb|f[1]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alup|ripCarry|stage3|s~combout\,
	datab => \mx_wb|f[0]~14_combout\,
	datac => \mx_wb|f[1]~23_combout\,
	datad => \mx_wb|f[1]~22_combout\,
	combout => \mx_wb|f[1]~24_combout\);

-- Location: LCCOMB_X101_Y72_N26
\mx_wb|f[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[1]~18_combout\ = (!\id|Equal7~8_combout\ & (!\id|Equal0~0_combout\ & \alup|ripCarry|stage2|s~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \id|Equal7~8_combout\,
	datab => \id|Equal0~0_combout\,
	datad => \alup|ripCarry|stage2|s~combout\,
	combout => \mx_wb|f[1]~18_combout\);

-- Location: LCCOMB_X101_Y72_N20
\mx_wb|f[1]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[1]~19_combout\ = (\mx_wb|f[1]~18_combout\) # ((\mx_wb|f[0]~7_combout\ & (\id|Equal0~0_combout\ & \alup|ripCarry|stage4|s~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mx_wb|f[0]~7_combout\,
	datab => \id|Equal0~0_combout\,
	datac => \mx_wb|f[1]~18_combout\,
	datad => \alup|ripCarry|stage4|s~combout\,
	combout => \mx_wb|f[1]~19_combout\);

-- Location: LCCOMB_X101_Y72_N2
\mx_wb|f[1]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[1]~25_combout\ = (\mx_wb|f[1]~19_combout\) # ((\mx_wb|f[1]~16_combout\ & ((\mx_wb|f[1]~21_combout\) # (\mx_wb|f[1]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mx_wb|f[1]~21_combout\,
	datab => \mx_wb|f[1]~24_combout\,
	datac => \mx_wb|f[1]~16_combout\,
	datad => \mx_wb|f[1]~19_combout\,
	combout => \mx_wb|f[1]~25_combout\);

-- Location: LCCOMB_X101_Y72_N18
\rf|m0|stage3|f~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m0|stage3|f~4_combout\ = (!\reset~input_o\ & \mx_wb|f[1]~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \mx_wb|f[1]~25_combout\,
	combout => \rf|m0|stage3|f~4_combout\);

-- Location: LCCOMB_X96_Y72_N28
\rf|r0|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r0|Q[1]~feeder_combout\ = \rf|m0|stage3|f~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m0|stage3|f~4_combout\,
	combout => \rf|r0|Q[1]~feeder_combout\);

-- Location: FF_X96_Y72_N29
\rf|r0|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r0|Q[1]~feeder_combout\,
	ena => \rf|m0|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r0|Q\(1));

-- Location: FF_X98_Y72_N13
\rf|r1|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m0|stage3|f~4_combout\,
	sload => VCC,
	ena => \rf|m1|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r1|Q\(1));

-- Location: FF_X98_Y72_N11
\rf|r7|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m0|stage3|f~4_combout\,
	sload => VCC,
	ena => \rf|m7|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r7|Q\(1));

-- Location: FF_X99_Y72_N29
\rf|r6|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m0|stage3|f~4_combout\,
	sload => VCC,
	ena => \rf|m6|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r6|Q\(1));

-- Location: LCCOMB_X99_Y72_N28
\rf|value2[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[1]~2_combout\ = (\rf|r6|Q\(1) & !\pc|Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|r6|Q\(1),
	datad => \pc|Q\(2),
	combout => \rf|value2[1]~2_combout\);

-- Location: LCCOMB_X98_Y72_N10
\rf|value1[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[1]~5_combout\ = (\rf|value1[3]~1_combout\ & (\mux_alu|f[2]~11_combout\)) # (!\rf|value1[3]~1_combout\ & ((\mux_alu|f[2]~11_combout\ & (\rf|r7|Q\(1))) # (!\mux_alu|f[2]~11_combout\ & ((\rf|value2[1]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value1[3]~1_combout\,
	datab => \mux_alu|f[2]~11_combout\,
	datac => \rf|r7|Q\(1),
	datad => \rf|value2[1]~2_combout\,
	combout => \rf|value1[1]~5_combout\);

-- Location: LCCOMB_X98_Y72_N12
\rf|value1[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[1]~6_combout\ = (\rf|value1[3]~1_combout\ & ((\rf|value1[1]~5_combout\ & (\rf|r0|Q\(1))) # (!\rf|value1[1]~5_combout\ & ((\rf|r1|Q\(1)))))) # (!\rf|value1[3]~1_combout\ & (((\rf|value1[1]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value1[3]~1_combout\,
	datab => \rf|r0|Q\(1),
	datac => \rf|r1|Q\(1),
	datad => \rf|value1[1]~5_combout\,
	combout => \rf|value1[1]~6_combout\);

-- Location: LCCOMB_X98_Y72_N28
\rf|value1[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[1]~7_combout\ = (!\rf|value1[3]~4_combout\ & \rf|value1[1]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|value1[3]~4_combout\,
	datad => \rf|value1[1]~6_combout\,
	combout => \rf|value1[1]~7_combout\);

-- Location: LCCOMB_X97_Y72_N0
\alup|ripCarry|stage2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alup|ripCarry|stage2|Cout~0_combout\ = (\alup|ripCarry|g\(1) & ((\rf|value1[1]~7_combout\) # ((\alup|ripCarry|stage1|Cout~1_combout\) # (\alup|ripCarry|stage1|Cout~0_combout\)))) # (!\alup|ripCarry|g\(1) & (\rf|value1[1]~7_combout\ & 
-- ((\alup|ripCarry|stage1|Cout~1_combout\) # (\alup|ripCarry|stage1|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alup|ripCarry|g\(1),
	datab => \rf|value1[1]~7_combout\,
	datac => \alup|ripCarry|stage1|Cout~1_combout\,
	datad => \alup|ripCarry|stage1|Cout~0_combout\,
	combout => \alup|ripCarry|stage2|Cout~0_combout\);

-- Location: LCCOMB_X97_Y72_N18
\alup|ripCarry|stage3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alup|ripCarry|stage3|Cout~0_combout\ = (\rf|value1[2]~10_combout\ & ((\alup|ripCarry|stage2|Cout~0_combout\) # (\mux_alu|f[2]~10_combout\ $ (\id|Equal5~8_combout\)))) # (!\rf|value1[2]~10_combout\ & (\alup|ripCarry|stage2|Cout~0_combout\ & 
-- (\mux_alu|f[2]~10_combout\ $ (\id|Equal5~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_alu|f[2]~10_combout\,
	datab => \id|Equal5~8_combout\,
	datac => \rf|value1[2]~10_combout\,
	datad => \alup|ripCarry|stage2|Cout~0_combout\,
	combout => \alup|ripCarry|stage3|Cout~0_combout\);

-- Location: LCCOMB_X97_Y72_N26
\mx_wb|f[3]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[3]~34_combout\ = \rf|value1[2]~10_combout\ $ (\alup|ripCarry|stage2|Cout~0_combout\ $ (\rf|value1[3]~13_combout\ $ (\alup|ripCarry|stage3|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value1[2]~10_combout\,
	datab => \alup|ripCarry|stage2|Cout~0_combout\,
	datac => \rf|value1[3]~13_combout\,
	datad => \alup|ripCarry|stage3|Cout~0_combout\,
	combout => \mx_wb|f[3]~34_combout\);

-- Location: LCCOMB_X97_Y72_N28
\mx_wb|f[3]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[3]~35_combout\ = \alup|ripCarry|stage1|s~0_combout\ $ (((\alup|ripCarry|stage2|s~combout\ & \alup|ripCarry|stage3|s~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alup|ripCarry|stage1|s~0_combout\,
	datac => \alup|ripCarry|stage2|s~combout\,
	datad => \alup|ripCarry|stage3|s~combout\,
	combout => \mx_wb|f[3]~35_combout\);

-- Location: LCCOMB_X97_Y72_N10
\mx_wb|f[3]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[3]~36_combout\ = (\mx_wb|f[3]~35_combout\ & ((\alup|ripCarry|stage2|s~combout\ & (!\alup|ripCarry|stage4|s~combout\)) # (!\alup|ripCarry|stage2|s~combout\ & ((\mx_wb|f[3]~34_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alup|ripCarry|stage2|s~combout\,
	datab => \alup|ripCarry|stage4|s~combout\,
	datac => \mx_wb|f[3]~34_combout\,
	datad => \mx_wb|f[3]~35_combout\,
	combout => \mx_wb|f[3]~36_combout\);

-- Location: LCCOMB_X95_Y72_N0
\mx_wb|f[3]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[3]~37_combout\ = (!\id|Equal7~8_combout\ & ((\id|Equal0~0_combout\ & ((\mx_wb|f[3]~36_combout\))) # (!\id|Equal0~0_combout\ & (\alup|ripCarry|stage4|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \id|Equal7~8_combout\,
	datab => \id|Equal0~0_combout\,
	datac => \alup|ripCarry|stage4|s~combout\,
	datad => \mx_wb|f[3]~36_combout\,
	combout => \mx_wb|f[3]~37_combout\);

-- Location: LCCOMB_X95_Y72_N26
\rf|m0|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m0|stage3|f~0_combout\ = (!\reset~input_o\ & \mx_wb|f[3]~37_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \mx_wb|f[3]~37_combout\,
	combout => \rf|m0|stage3|f~0_combout\);

-- Location: FF_X98_Y72_N1
\rf|r1|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m0|stage3|f~0_combout\,
	sload => VCC,
	ena => \rf|m1|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r1|Q\(3));

-- Location: FF_X98_Y72_N3
\rf|r7|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m0|stage3|f~0_combout\,
	sload => VCC,
	ena => \rf|m7|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r7|Q\(3));

-- Location: FF_X99_Y72_N25
\rf|r6|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m0|stage3|f~0_combout\,
	sload => VCC,
	ena => \rf|m6|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r6|Q\(3));

-- Location: LCCOMB_X99_Y72_N24
\rf|value1[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[3]~0_combout\ = (\rf|r6|Q\(3) & !\pc|Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|r6|Q\(3),
	datad => \pc|Q\(2),
	combout => \rf|value1[3]~0_combout\);

-- Location: LCCOMB_X98_Y72_N2
\rf|value1[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[3]~11_combout\ = (\rf|value1[3]~1_combout\ & (\mux_alu|f[2]~11_combout\)) # (!\rf|value1[3]~1_combout\ & ((\mux_alu|f[2]~11_combout\ & (\rf|r7|Q\(3))) # (!\mux_alu|f[2]~11_combout\ & ((\rf|value1[3]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value1[3]~1_combout\,
	datab => \mux_alu|f[2]~11_combout\,
	datac => \rf|r7|Q\(3),
	datad => \rf|value1[3]~0_combout\,
	combout => \rf|value1[3]~11_combout\);

-- Location: LCCOMB_X98_Y72_N0
\rf|value1[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[3]~12_combout\ = (\rf|value1[3]~1_combout\ & ((\rf|value1[3]~11_combout\ & (\rf|r0|Q\(3))) # (!\rf|value1[3]~11_combout\ & ((\rf|r1|Q\(3)))))) # (!\rf|value1[3]~1_combout\ & (((\rf|value1[3]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r0|Q\(3),
	datab => \rf|value1[3]~1_combout\,
	datac => \rf|r1|Q\(3),
	datad => \rf|value1[3]~11_combout\,
	combout => \rf|value1[3]~12_combout\);

-- Location: LCCOMB_X98_Y72_N16
\rf|value1[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[3]~13_combout\ = (!\rf|value1[3]~4_combout\ & \rf|value1[3]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|value1[3]~4_combout\,
	datad => \rf|value1[3]~12_combout\,
	combout => \rf|value1[3]~13_combout\);

-- Location: FF_X96_Y72_N25
\rf|r3|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m0|stage3|f~0_combout\,
	sload => VCC,
	ena => \rf|m3|stage3|f[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r3|Q\(3));

-- Location: FF_X99_Y72_N15
\rf|r4|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m0|stage3|f~0_combout\,
	sload => VCC,
	ena => \rf|m4|stage3|f[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r4|Q\(3));

-- Location: LCCOMB_X99_Y72_N14
\mux_alu|f[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_alu|f[3]~4_combout\ = (\mux_alu|f[2]~2_combout\ & (((\mux_alu|f[2]~3_combout\)))) # (!\mux_alu|f[2]~2_combout\ & ((\mux_alu|f[2]~3_combout\ & (\rf|value1[3]~0_combout\)) # (!\mux_alu|f[2]~3_combout\ & ((\rf|r4|Q\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_alu|f[2]~2_combout\,
	datab => \rf|value1[3]~0_combout\,
	datac => \rf|r4|Q\(3),
	datad => \mux_alu|f[2]~3_combout\,
	combout => \mux_alu|f[3]~4_combout\);

-- Location: LCCOMB_X96_Y72_N24
\mux_alu|f[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_alu|f[3]~5_combout\ = (\mux_alu|f[2]~2_combout\ & ((\mux_alu|f[3]~4_combout\ & (\rf|r0|Q\(3))) # (!\mux_alu|f[3]~4_combout\ & ((\rf|r3|Q\(3)))))) # (!\mux_alu|f[2]~2_combout\ & (((\mux_alu|f[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r0|Q\(3),
	datab => \mux_alu|f[2]~2_combout\,
	datac => \rf|r3|Q\(3),
	datad => \mux_alu|f[3]~4_combout\,
	combout => \mux_alu|f[3]~5_combout\);

-- Location: LCCOMB_X96_Y72_N6
\mux_alu|f[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_alu|f[3]~7_combout\ = (\mux_alu|f[2]~1_combout\ & ((\mux_alu|f[2]~6_combout\ & (\rf|r2|Q\(3))) # (!\mux_alu|f[2]~6_combout\ & ((\mux_alu|f[3]~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r2|Q\(3),
	datab => \mux_alu|f[2]~6_combout\,
	datac => \mux_alu|f[2]~1_combout\,
	datad => \mux_alu|f[3]~5_combout\,
	combout => \mux_alu|f[3]~7_combout\);

-- Location: LCCOMB_X97_Y72_N16
\alup|ripCarry|stage4|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \alup|ripCarry|stage4|s~combout\ = \id|Equal5~8_combout\ $ (\rf|value1[3]~13_combout\ $ (\mux_alu|f[3]~7_combout\ $ (\alup|ripCarry|stage3|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \id|Equal5~8_combout\,
	datab => \rf|value1[3]~13_combout\,
	datac => \mux_alu|f[3]~7_combout\,
	datad => \alup|ripCarry|stage3|Cout~0_combout\,
	combout => \alup|ripCarry|stage4|s~combout\);

-- Location: LCCOMB_X94_Y72_N12
and_out : cycloneive_lcell_comb
-- Equation(s):
-- \and_out~combout\ = (!\alup|ripCarry|stage1|s~0_combout\ & (\id|Equal5~8_combout\ & (!\alup|ripCarry|stage4|s~combout\ & \and_out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alup|ripCarry|stage1|s~0_combout\,
	datab => \id|Equal5~8_combout\,
	datac => \alup|ripCarry|stage4|s~combout\,
	datad => \and_out~0_combout\,
	combout => \and_out~combout\);

-- Location: LCCOMB_X94_Y72_N24
\Jump_Mux|f[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Jump_Mux|f[3]~3_combout\ = (\and_out~combout\ & (\pc|Q\(1) $ (((\pc|Q\(2)) # (\pc|Q\(0)))))) # (!\and_out~combout\ & (\pc|Q\(1) & (\pc|Q\(2) & \pc|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(1),
	datab => \pc|Q\(2),
	datac => \pc|Q\(0),
	datad => \and_out~combout\,
	combout => \Jump_Mux|f[3]~3_combout\);

-- Location: LCCOMB_X94_Y72_N18
\Jump_Mux|f[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Jump_Mux|f[3]~4_combout\ = (!\id|Equal7~8_combout\ & ((\and_out~combout\ & (!\pc|Q\(3) & !\Jump_Mux|f[3]~3_combout\)) # (!\and_out~combout\ & (\pc|Q\(3) $ (\Jump_Mux|f[3]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \and_out~combout\,
	datab => \id|Equal7~8_combout\,
	datac => \pc|Q\(3),
	datad => \Jump_Mux|f[3]~3_combout\,
	combout => \Jump_Mux|f[3]~4_combout\);

-- Location: FF_X94_Y72_N19
\pc|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Jump_Mux|f[3]~4_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|Q\(3));

-- Location: LCCOMB_X98_Y72_N20
\im|output[28]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \im|output[28]~0_combout\ = (!\pc|Q\(3) & (\pc|Q\(1) $ (((\pc|Q\(2)) # (\pc|Q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(2),
	datab => \pc|Q\(0),
	datac => \pc|Q\(1),
	datad => \pc|Q\(3),
	combout => \im|output[28]~0_combout\);

-- Location: LCCOMB_X95_Y72_N28
\branch_adder|stage2|Cout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_adder|stage2|Cout~2_combout\ = (\im|output[0]~1_combout\ & (!\im|output[28]~0_combout\ & (\pc|Q\(0) $ (\pc|Q\(1))))) # (!\im|output[0]~1_combout\ & ((\pc|Q\(1) & (!\pc|Q\(0))) # (!\pc|Q\(1) & ((!\im|output[28]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(0),
	datab => \im|output[0]~1_combout\,
	datac => \im|output[28]~0_combout\,
	datad => \pc|Q\(1),
	combout => \branch_adder|stage2|Cout~2_combout\);

-- Location: LCCOMB_X94_Y72_N6
\addpc|stage3|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \addpc|stage3|s~combout\ = \pc|Q\(2) $ (((\pc|Q\(1) & \pc|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(1),
	datab => \pc|Q\(2),
	datac => \pc|Q\(0),
	combout => \addpc|stage3|s~combout\);

-- Location: LCCOMB_X94_Y72_N20
\Jump_Mux|f[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Jump_Mux|f[2]~2_combout\ = (!\id|Equal7~8_combout\ & (\addpc|stage3|s~combout\ $ (((!\branch_adder|stage2|Cout~2_combout\ & \and_out~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \id|Equal7~8_combout\,
	datab => \branch_adder|stage2|Cout~2_combout\,
	datac => \addpc|stage3|s~combout\,
	datad => \and_out~combout\,
	combout => \Jump_Mux|f[2]~2_combout\);

-- Location: FF_X94_Y72_N21
\pc|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Jump_Mux|f[2]~2_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|Q\(2));

-- Location: LCCOMB_X94_Y72_N26
\branch_adder|stage2|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_adder|stage2|s~combout\ = (\pc|Q\(3) & (\pc|Q\(1))) # (!\pc|Q\(3) & ((\pc|Q\(0) & (\pc|Q\(1))) # (!\pc|Q\(0) & ((\pc|Q\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(1),
	datab => \pc|Q\(2),
	datac => \pc|Q\(3),
	datad => \pc|Q\(0),
	combout => \branch_adder|stage2|s~combout\);

-- Location: LCCOMB_X94_Y72_N14
\Jump_Mux|f[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Jump_Mux|f[1]~1_combout\ = (!\id|Equal7~8_combout\ & ((\and_out~combout\ & ((\branch_adder|stage2|s~combout\))) # (!\and_out~combout\ & (\mux_alu|f[2]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \id|Equal7~8_combout\,
	datab => \mux_alu|f[2]~11_combout\,
	datac => \branch_adder|stage2|s~combout\,
	datad => \and_out~combout\,
	combout => \Jump_Mux|f[1]~1_combout\);

-- Location: FF_X94_Y72_N15
\pc|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Jump_Mux|f[1]~1_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|Q\(1));

-- Location: LCCOMB_X94_Y72_N28
\im|output[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \im|output[0]~1_combout\ = (!\pc|Q\(3) & (\pc|Q\(2) $ (((\pc|Q\(1)) # (\pc|Q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(2),
	datab => \pc|Q\(1),
	datac => \pc|Q\(0),
	datad => \pc|Q\(3),
	combout => \im|output[0]~1_combout\);

-- Location: LCCOMB_X94_Y72_N4
\Jump_Mux|f[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Jump_Mux|f[0]~0_combout\ = (\id|Equal7~8_combout\ & (!\im|output[0]~1_combout\)) # (!\id|Equal7~8_combout\ & (\pc|Q\(0) $ (((\im|output[0]~1_combout\) # (!\and_out~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \id|Equal7~8_combout\,
	datab => \im|output[0]~1_combout\,
	datac => \pc|Q\(0),
	datad => \and_out~combout\,
	combout => \Jump_Mux|f[0]~0_combout\);

-- Location: FF_X94_Y72_N5
\pc|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Jump_Mux|f[0]~0_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|Q\(0));

-- Location: LCCOMB_X99_Y72_N20
\mx_wb|f[2]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[2]~38_combout\ = (\id|Equal0~0_combout\ & (((\mx_wb|f[2]~41_combout\)))) # (!\id|Equal0~0_combout\ & (\alup|ripCarry|stage3|s~combout\ & (!\id|Equal7~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alup|ripCarry|stage3|s~combout\,
	datab => \id|Equal0~0_combout\,
	datac => \id|Equal7~8_combout\,
	datad => \mx_wb|f[2]~41_combout\,
	combout => \mx_wb|f[2]~38_combout\);

ww_current_pc(0) <= \current_pc[0]~output_o\;

ww_current_pc(1) <= \current_pc[1]~output_o\;

ww_current_pc(2) <= \current_pc[2]~output_o\;

ww_current_pc(3) <= \current_pc[3]~output_o\;

ww_result(0) <= \result[0]~output_o\;

ww_result(1) <= \result[1]~output_o\;

ww_result(2) <= \result[2]~output_o\;

ww_result(3) <= \result[3]~output_o\;
END structure;


