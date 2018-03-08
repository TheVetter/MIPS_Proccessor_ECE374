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

-- DATE "03/06/2018 08:22:05"

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
-- current_pc[0]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- current_pc[1]	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- current_pc[2]	=>  Location: PIN_AE10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- current_pc[3]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[0]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[1]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[2]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[3]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \im|output[0]~4_combout\ : std_logic;
SIGNAL \rf|value1[3]~10_combout\ : std_logic;
SIGNAL \mux_alu|f[3]~18_combout\ : std_logic;
SIGNAL \mux_alu|f[3]~19_combout\ : std_logic;
SIGNAL \mux_alu|f[3]~20_combout\ : std_logic;
SIGNAL \mx_wb|f[2]~19_combout\ : std_logic;
SIGNAL \mx_wb|f[2]~24_combout\ : std_logic;
SIGNAL \rf|m2|stage3|f[1]~0_combout\ : std_logic;
SIGNAL \rf|m2|stage3|f[2]~3_combout\ : std_logic;
SIGNAL \mx_wb|f[1]~35_combout\ : std_logic;
SIGNAL \mx_wb|f[0]~37_combout\ : std_logic;
SIGNAL \rf|r1|Q[3]~feeder_combout\ : std_logic;
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
SIGNAL \mux_alu|f[0]~11_combout\ : std_logic;
SIGNAL \pc|Q[1]~feeder_combout\ : std_logic;
SIGNAL \addpc|stage3|s~combout\ : std_logic;
SIGNAL \addpc|stage4|s~combout\ : std_logic;
SIGNAL \mx_wb|f[0]~7_combout\ : std_logic;
SIGNAL \im|output[30]~0_combout\ : std_logic;
SIGNAL \im|output[27]~3_combout\ : std_logic;
SIGNAL \im|output[31]~2_combout\ : std_logic;
SIGNAL \id|Equal0~0_combout\ : std_logic;
SIGNAL \id|Equal5~0_combout\ : std_logic;
SIGNAL \rf|value1[3]~3_combout\ : std_logic;
SIGNAL \rf|value1[3]~0_combout\ : std_logic;
SIGNAL \im|output[28]~1_combout\ : std_logic;
SIGNAL \id|Equal7~0_combout\ : std_logic;
SIGNAL \mx_wb|f[2]~9_combout\ : std_logic;
SIGNAL \mx_wb|f[1]~11_combout\ : std_logic;
SIGNAL \mx_wb|f[0]~8_combout\ : std_logic;
SIGNAL \mux_alu|f[0]~4_combout\ : std_logic;
SIGNAL \mux_alu|f[0]~21_combout\ : std_logic;
SIGNAL \mux_alu|f[0]~6_combout\ : std_logic;
SIGNAL \mx_wb|f[2]~36_combout\ : std_logic;
SIGNAL \rf|m2|stage3|f[0]~2_combout\ : std_logic;
SIGNAL \rf|stage_dec_write|s1|y[0]~21_combout\ : std_logic;
SIGNAL \mx_redst|f[0]~6_combout\ : std_logic;
SIGNAL \rf|m2|stage3|f[0]~1_combout\ : std_logic;
SIGNAL \dm|value1[0]~0_combout\ : std_logic;
SIGNAL \rf|m3|stage3|f[0]~0_combout\ : std_logic;
SIGNAL \mx_redst|f[1]~5_combout\ : std_logic;
SIGNAL \rf|m4|stage3|f[0]~0_combout\ : std_logic;
SIGNAL \rf|stage_dec_write|s1|y[1]~22_combout\ : std_logic;
SIGNAL \rf|m6|stage3|f~0_combout\ : std_logic;
SIGNAL \rf|value2[0]~1_combout\ : std_logic;
SIGNAL \mux_alu|f[0]~12_combout\ : std_logic;
SIGNAL \mux_alu|f[0]~13_combout\ : std_logic;
SIGNAL \mux_alu|f[0]~22_combout\ : std_logic;
SIGNAL \mux_alu|f[0]~14_combout\ : std_logic;
SIGNAL \alup|ripCarry|stage1|s~0_combout\ : std_logic;
SIGNAL \mx_wb|f[2]~12_combout\ : std_logic;
SIGNAL \mx_wb|f[2]~20_combout\ : std_logic;
SIGNAL \mx_wb|f[2]~21_combout\ : std_logic;
SIGNAL \dm|value1[0]~1_combout\ : std_logic;
SIGNAL \mx_wb|f[2]~22_combout\ : std_logic;
SIGNAL \mx_wb|f[2]~23_combout\ : std_logic;
SIGNAL \mx_wb|f[2]~25_combout\ : std_logic;
SIGNAL \mx_wb|f[2]~26_combout\ : std_logic;
SIGNAL \mx_wb|f[2]~27_combout\ : std_logic;
SIGNAL \rf|m0|stage3|f~3_combout\ : std_logic;
SIGNAL \mux_alu|f[2]~15_combout\ : std_logic;
SIGNAL \rf|value2[2]~2_combout\ : std_logic;
SIGNAL \mux_alu|f[2]~16_combout\ : std_logic;
SIGNAL \mux_alu|f[0]~5_combout\ : std_logic;
SIGNAL \mux_alu|f[2]~17_combout\ : std_logic;
SIGNAL \alup|ripCarry|stage3|s~combout\ : std_logic;
SIGNAL \mx_wb|f[0]~38_combout\ : std_logic;
SIGNAL \mx_wb|f[0]~6_combout\ : std_logic;
SIGNAL \mx_wb|f[0]~10_combout\ : std_logic;
SIGNAL \rf|m0|stage3|f~2_combout\ : std_logic;
SIGNAL \rf|r0|Q[0]~feeder_combout\ : std_logic;
SIGNAL \rf|m0|stage3|f~1_combout\ : std_logic;
SIGNAL \rf|m1|stage3|f~0_combout\ : std_logic;
SIGNAL \rf|m7|stage3|f~0_combout\ : std_logic;
SIGNAL \rf|value1[0]~5_combout\ : std_logic;
SIGNAL \rf|value1[0]~6_combout\ : std_logic;
SIGNAL \alup|ripCarry|stage1|Cout~0_combout\ : std_logic;
SIGNAL \alup|ripCarry|stage1|Cout~1_combout\ : std_logic;
SIGNAL \rf|value2[1]~0_combout\ : std_logic;
SIGNAL \mux_alu|f[0]~7_combout\ : std_logic;
SIGNAL \mux_alu|f[1]~8_combout\ : std_logic;
SIGNAL \mux_alu|f[1]~9_combout\ : std_logic;
SIGNAL \mux_alu|f[1]~10_combout\ : std_logic;
SIGNAL \alup|ripCarry|stage2|Cout~0_combout\ : std_logic;
SIGNAL \rf|value1[2]~7_combout\ : std_logic;
SIGNAL \rf|value1[2]~8_combout\ : std_logic;
SIGNAL \rf|value1[2]~9_combout\ : std_logic;
SIGNAL \alup|ripCarry|stage3|Cout~0_combout\ : std_logic;
SIGNAL \mx_wb|f[3]~29_combout\ : std_logic;
SIGNAL \alup|ripCarry|stage1|s~1_combout\ : std_logic;
SIGNAL \mx_wb|f[3]~30_combout\ : std_logic;
SIGNAL \mx_wb|f[3]~31_combout\ : std_logic;
SIGNAL \mx_wb|f[3]~32_combout\ : std_logic;
SIGNAL \mx_wb|f[3]~33_combout\ : std_logic;
SIGNAL \rf|m0|stage3|f~4_combout\ : std_logic;
SIGNAL \rf|r0|Q[3]~feeder_combout\ : std_logic;
SIGNAL \rf|value1[3]~11_combout\ : std_logic;
SIGNAL \rf|value1[3]~12_combout\ : std_logic;
SIGNAL \rf|value1[3]~13_combout\ : std_logic;
SIGNAL \alup|ripCarry|stage4|s~combout\ : std_logic;
SIGNAL \mx_wb|f[1]~17_combout\ : std_logic;
SIGNAL \mx_wb|f[1]~14_combout\ : std_logic;
SIGNAL \mx_wb|f[1]~15_combout\ : std_logic;
SIGNAL \mx_wb|f[1]~16_combout\ : std_logic;
SIGNAL \mx_wb|f[1]~18_combout\ : std_logic;
SIGNAL \rf|m0|stage3|f~0_combout\ : std_logic;
SIGNAL \rf|r0|Q[1]~feeder_combout\ : std_logic;
SIGNAL \rf|value1[1]~1_combout\ : std_logic;
SIGNAL \rf|value1[1]~2_combout\ : std_logic;
SIGNAL \rf|value1[1]~4_combout\ : std_logic;
SIGNAL \alup|ripCarry|stage2|s~combout\ : std_logic;
SIGNAL \mx_wb|f[0]~13_combout\ : std_logic;
SIGNAL \mx_wb|f[0]~34_combout\ : std_logic;
SIGNAL \mx_wb|f[2]~28_combout\ : std_logic;
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

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);

-- Location: FF_X32_Y2_N29
\rf|r2|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|m2|stage3|f[1]~0_combout\,
	ena => \rf|m2|stage3|f[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r2|Q\(1));

-- Location: FF_X29_Y2_N17
\rf|r3|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rf|m0|stage3|f~0_combout\,
	sload => VCC,
	ena => \rf|m3|stage3|f[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r3|Q\(1));

-- Location: LCCOMB_X26_Y2_N18
\im|output[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \im|output[0]~4_combout\ = (!\pc|Q\(3) & (\pc|Q\(2) $ (((\pc|Q\(0)) # (\pc|Q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(2),
	datab => \pc|Q\(0),
	datac => \pc|Q\(1),
	datad => \pc|Q\(3),
	combout => \im|output[0]~4_combout\);

-- Location: FF_X32_Y2_N9
\rf|r2|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|m2|stage3|f[2]~3_combout\,
	ena => \rf|m2|stage3|f[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r2|Q\(2));

-- Location: FF_X32_Y2_N23
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

-- Location: FF_X28_Y2_N1
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
	ena => \rf|m2|stage3|f[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r2|Q\(3));

-- Location: FF_X29_Y2_N27
\rf|r3|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|m0|stage3|f~4_combout\,
	ena => \rf|m3|stage3|f[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r3|Q\(3));

-- Location: FF_X30_Y2_N27
\rf|r6|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rf|m0|stage3|f~4_combout\,
	sload => VCC,
	ena => \rf|m6|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r6|Q\(3));

-- Location: LCCOMB_X30_Y2_N26
\rf|value1[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[3]~10_combout\ = (\rf|r6|Q\(3) & !\pc|Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|r6|Q\(3),
	datad => \pc|Q\(2),
	combout => \rf|value1[3]~10_combout\);

-- Location: FF_X29_Y2_N5
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
	ena => \rf|m4|stage3|f[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r4|Q\(3));

-- Location: LCCOMB_X29_Y2_N4
\mux_alu|f[3]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_alu|f[3]~18_combout\ = (\mux_alu|f[0]~6_combout\ & ((\rf|value1[3]~10_combout\) # ((\mux_alu|f[0]~7_combout\)))) # (!\mux_alu|f[0]~6_combout\ & (((\rf|r4|Q\(3) & !\mux_alu|f[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_alu|f[0]~6_combout\,
	datab => \rf|value1[3]~10_combout\,
	datac => \rf|r4|Q\(3),
	datad => \mux_alu|f[0]~7_combout\,
	combout => \mux_alu|f[3]~18_combout\);

-- Location: LCCOMB_X28_Y2_N20
\mux_alu|f[3]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_alu|f[3]~19_combout\ = (\mux_alu|f[0]~7_combout\ & ((\mux_alu|f[3]~18_combout\ & (\rf|r0|Q\(3))) # (!\mux_alu|f[3]~18_combout\ & ((\rf|r3|Q\(3)))))) # (!\mux_alu|f[0]~7_combout\ & (((\mux_alu|f[3]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r0|Q\(3),
	datab => \rf|r3|Q\(3),
	datac => \mux_alu|f[0]~7_combout\,
	datad => \mux_alu|f[3]~18_combout\,
	combout => \mux_alu|f[3]~19_combout\);

-- Location: LCCOMB_X28_Y2_N0
\mux_alu|f[3]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_alu|f[3]~20_combout\ = (\mux_alu|f[0]~5_combout\ & ((\mux_alu|f[0]~21_combout\ & (\rf|r2|Q\(3))) # (!\mux_alu|f[0]~21_combout\ & ((\mux_alu|f[3]~19_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_alu|f[0]~21_combout\,
	datab => \mux_alu|f[0]~5_combout\,
	datac => \rf|r2|Q\(3),
	datad => \mux_alu|f[3]~19_combout\,
	combout => \mux_alu|f[3]~20_combout\);

-- Location: FF_X27_Y2_N5
\rf|r1|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|r1|Q[3]~feeder_combout\,
	ena => \rf|m1|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r1|Q\(3));

-- Location: LCCOMB_X33_Y2_N30
\mx_wb|f[2]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[2]~19_combout\ = (\pc|Q\(0) & (!\pc|Q\(3) & (\pc|Q\(2) $ (\pc|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(2),
	datab => \pc|Q\(1),
	datac => \pc|Q\(0),
	datad => \pc|Q\(3),
	combout => \mx_wb|f[2]~19_combout\);

-- Location: LCCOMB_X33_Y2_N2
\mx_wb|f[2]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[2]~24_combout\ = (\alup|ripCarry|stage1|s~0_combout\ & ((!\mx_wb|f[2]~19_combout\))) # (!\alup|ripCarry|stage1|s~0_combout\ & (\mx_wb|f[2]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mx_wb|f[2]~12_combout\,
	datac => \mx_wb|f[2]~19_combout\,
	datad => \alup|ripCarry|stage1|s~0_combout\,
	combout => \mx_wb|f[2]~24_combout\);

-- Location: LCCOMB_X32_Y2_N28
\rf|m2|stage3|f[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m2|stage3|f[1]~0_combout\ = (\reset~input_o\) # (\mx_wb|f[1]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \mx_wb|f[1]~18_combout\,
	combout => \rf|m2|stage3|f[1]~0_combout\);

-- Location: LCCOMB_X32_Y2_N8
\rf|m2|stage3|f[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m2|stage3|f[2]~3_combout\ = (\reset~input_o\) # ((\mx_wb|f[2]~36_combout\) # ((\id|Equal0~0_combout\ & \mx_wb|f[2]~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \id|Equal0~0_combout\,
	datac => \mx_wb|f[2]~36_combout\,
	datad => \mx_wb|f[2]~27_combout\,
	combout => \rf|m2|stage3|f[2]~3_combout\);

-- Location: LCCOMB_X31_Y2_N12
\mx_wb|f[1]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[1]~35_combout\ = (\pc|Q\(0) & (!\pc|Q\(3) & (\pc|Q\(1) $ (\pc|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(1),
	datab => \pc|Q\(2),
	datac => \pc|Q\(0),
	datad => \pc|Q\(3),
	combout => \mx_wb|f[1]~35_combout\);

-- Location: LCCOMB_X31_Y2_N10
\mx_wb|f[0]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[0]~37_combout\ = ((\pc|Q\(3)) # (\pc|Q\(1) $ (!\pc|Q\(2)))) # (!\pc|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(1),
	datab => \pc|Q\(2),
	datac => \pc|Q\(0),
	datad => \pc|Q\(3),
	combout => \mx_wb|f[0]~37_combout\);

-- Location: LCCOMB_X27_Y2_N4
\rf|r1|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r1|Q[3]~feeder_combout\ = \rf|m0|stage3|f~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m0|stage3|f~4_combout\,
	combout => \rf|r1|Q[3]~feeder_combout\);

-- Location: IOOBUF_X27_Y0_N23
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

-- Location: IOOBUF_X33_Y0_N2
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

-- Location: IOOBUF_X29_Y0_N23
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

-- Location: IOOBUF_X23_Y0_N16
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

-- Location: IOOBUF_X33_Y0_N9
\result[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mx_wb|f[0]~34_combout\,
	devoe => ww_devoe,
	o => \result[0]~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\result[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mx_wb|f[1]~18_combout\,
	devoe => ww_devoe,
	o => \result[1]~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\result[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mx_wb|f[2]~28_combout\,
	devoe => ww_devoe,
	o => \result[2]~output_o\);

-- Location: IOOBUF_X29_Y0_N16
\result[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mx_wb|f[3]~33_combout\,
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

-- Location: IOIBUF_X27_Y0_N8
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LCCOMB_X26_Y2_N26
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

-- Location: FF_X26_Y2_N27
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

-- Location: LCCOMB_X26_Y2_N28
\mux_alu|f[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_alu|f[0]~11_combout\ = \pc|Q\(0) $ (\pc|Q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pc|Q\(0),
	datad => \pc|Q\(1),
	combout => \mux_alu|f[0]~11_combout\);

-- Location: LCCOMB_X26_Y2_N24
\pc|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc|Q[1]~feeder_combout\ = \mux_alu|f[0]~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux_alu|f[0]~11_combout\,
	combout => \pc|Q[1]~feeder_combout\);

-- Location: FF_X26_Y2_N25
\pc|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \pc|Q[1]~feeder_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|Q\(1));

-- Location: LCCOMB_X26_Y2_N22
\addpc|stage3|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \addpc|stage3|s~combout\ = \pc|Q\(2) $ (((\pc|Q\(1) & \pc|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(1),
	datac => \pc|Q\(2),
	datad => \pc|Q\(0),
	combout => \addpc|stage3|s~combout\);

-- Location: FF_X26_Y2_N23
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

-- Location: LCCOMB_X26_Y2_N12
\addpc|stage4|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \addpc|stage4|s~combout\ = \pc|Q\(3) $ (((\pc|Q\(1) & (\pc|Q\(2) & \pc|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(1),
	datab => \pc|Q\(2),
	datac => \pc|Q\(3),
	datad => \pc|Q\(0),
	combout => \addpc|stage4|s~combout\);

-- Location: FF_X26_Y2_N13
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

-- Location: LCCOMB_X31_Y2_N24
\mx_wb|f[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[0]~7_combout\ = (!\pc|Q\(1) & (\pc|Q\(2) & (!\pc|Q\(3) & \pc|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(1),
	datab => \pc|Q\(2),
	datac => \pc|Q\(3),
	datad => \pc|Q\(0),
	combout => \mx_wb|f[0]~7_combout\);

-- Location: LCCOMB_X26_Y2_N16
\im|output[30]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \im|output[30]~0_combout\ = (!\pc|Q\(3) & ((\pc|Q\(2) & (!\pc|Q\(1))) # (!\pc|Q\(2) & ((\pc|Q\(1)) # (\pc|Q\(0))))))

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
	combout => \im|output[30]~0_combout\);

-- Location: LCCOMB_X26_Y2_N30
\im|output[27]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \im|output[27]~3_combout\ = (!\pc|Q\(3) & ((\pc|Q\(2) & (!\pc|Q\(1) & !\pc|Q\(0))) # (!\pc|Q\(2) & ((\pc|Q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(3),
	datab => \pc|Q\(1),
	datac => \pc|Q\(2),
	datad => \pc|Q\(0),
	combout => \im|output[27]~3_combout\);

-- Location: LCCOMB_X26_Y2_N20
\im|output[31]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \im|output[31]~2_combout\ = (!\pc|Q\(3) & ((\pc|Q\(2) & ((!\pc|Q\(1)))) # (!\pc|Q\(2) & (\pc|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(0),
	datab => \pc|Q\(1),
	datac => \pc|Q\(2),
	datad => \pc|Q\(3),
	combout => \im|output[31]~2_combout\);

-- Location: LCCOMB_X26_Y2_N0
\id|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \id|Equal0~0_combout\ = (\im|output[28]~1_combout\ & (\im|output[30]~0_combout\ & (!\im|output[27]~3_combout\ & !\im|output[31]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im|output[28]~1_combout\,
	datab => \im|output[30]~0_combout\,
	datac => \im|output[27]~3_combout\,
	datad => \im|output[31]~2_combout\,
	combout => \id|Equal0~0_combout\);

-- Location: LCCOMB_X26_Y2_N6
\id|Equal5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \id|Equal5~0_combout\ = (!\im|output[28]~1_combout\ & (\im|output[30]~0_combout\ & (\im|output[27]~3_combout\ & \im|output[31]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im|output[28]~1_combout\,
	datab => \im|output[30]~0_combout\,
	datac => \im|output[27]~3_combout\,
	datad => \im|output[31]~2_combout\,
	combout => \id|Equal5~0_combout\);

-- Location: LCCOMB_X27_Y2_N6
\rf|value1[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[3]~3_combout\ = (\pc|Q\(3)) # ((!\pc|Q\(0) & (\pc|Q\(2) $ (!\pc|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(0),
	datab => \pc|Q\(2),
	datac => \pc|Q\(1),
	datad => \pc|Q\(3),
	combout => \rf|value1[3]~3_combout\);

-- Location: LCCOMB_X27_Y2_N22
\rf|value1[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[3]~0_combout\ = (!\pc|Q\(1) & ((\pc|Q\(2)) # (!\pc|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pc|Q\(2),
	datac => \pc|Q\(0),
	datad => \pc|Q\(1),
	combout => \rf|value1[3]~0_combout\);

-- Location: LCCOMB_X26_Y2_N10
\im|output[28]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \im|output[28]~1_combout\ = (!\pc|Q\(3) & (\pc|Q\(1) $ (((\pc|Q\(0)) # (\pc|Q\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(0),
	datab => \pc|Q\(1),
	datac => \pc|Q\(2),
	datad => \pc|Q\(3),
	combout => \im|output[28]~1_combout\);

-- Location: LCCOMB_X26_Y2_N8
\id|Equal7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \id|Equal7~0_combout\ = (\im|output[30]~0_combout\ & (!\im|output[27]~3_combout\ & (\im|output[31]~2_combout\ & \im|output[28]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im|output[30]~0_combout\,
	datab => \im|output[27]~3_combout\,
	datac => \im|output[31]~2_combout\,
	datad => \im|output[28]~1_combout\,
	combout => \id|Equal7~0_combout\);

-- Location: LCCOMB_X30_Y2_N28
\mx_wb|f[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[2]~9_combout\ = ((\im|output[27]~3_combout\) # (!\im|output[30]~0_combout\)) # (!\im|output[28]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im|output[28]~1_combout\,
	datab => \im|output[30]~0_combout\,
	datad => \im|output[27]~3_combout\,
	combout => \mx_wb|f[2]~9_combout\);

-- Location: LCCOMB_X32_Y2_N16
\mx_wb|f[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[1]~11_combout\ = (\id|Equal0~0_combout\ & !\alup|ripCarry|stage4|s~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \id|Equal0~0_combout\,
	datad => \alup|ripCarry|stage4|s~combout\,
	combout => \mx_wb|f[1]~11_combout\);

-- Location: LCCOMB_X31_Y2_N30
\mx_wb|f[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[0]~8_combout\ = (\alup|ripCarry|stage4|s~combout\ & ((\id|Equal0~0_combout\ & ((!\mx_wb|f[0]~7_combout\))) # (!\id|Equal0~0_combout\ & (\id|Equal7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \id|Equal0~0_combout\,
	datab => \id|Equal7~0_combout\,
	datac => \alup|ripCarry|stage4|s~combout\,
	datad => \mx_wb|f[0]~7_combout\,
	combout => \mx_wb|f[0]~8_combout\);

-- Location: LCCOMB_X26_Y2_N4
\mux_alu|f[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_alu|f[0]~4_combout\ = (!\pc|Q\(3) & ((\pc|Q\(2) & ((!\pc|Q\(0)) # (!\pc|Q\(1)))) # (!\pc|Q\(2) & ((\pc|Q\(1)) # (\pc|Q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(2),
	datab => \pc|Q\(1),
	datac => \pc|Q\(0),
	datad => \pc|Q\(3),
	combout => \mux_alu|f[0]~4_combout\);

-- Location: LCCOMB_X26_Y2_N14
\mux_alu|f[0]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_alu|f[0]~21_combout\ = (\id|Equal0~0_combout\) # ((\pc|Q\(0) & (\pc|Q\(1) & \mux_alu|f[0]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(0),
	datab => \pc|Q\(1),
	datac => \mux_alu|f[0]~4_combout\,
	datad => \id|Equal0~0_combout\,
	combout => \mux_alu|f[0]~21_combout\);

-- Location: LCCOMB_X26_Y2_N2
\mux_alu|f[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_alu|f[0]~6_combout\ = (\pc|Q\(1)) # ((\pc|Q\(0) & \pc|Q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(0),
	datac => \pc|Q\(2),
	datad => \pc|Q\(1),
	combout => \mux_alu|f[0]~6_combout\);

-- Location: LCCOMB_X30_Y2_N12
\mx_wb|f[2]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[2]~36_combout\ = (\alup|ripCarry|stage3|s~combout\ & (((\im|output[27]~3_combout\) # (!\im|output[28]~1_combout\)) # (!\im|output[30]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im|output[30]~0_combout\,
	datab => \im|output[27]~3_combout\,
	datac => \im|output[28]~1_combout\,
	datad => \alup|ripCarry|stage3|s~combout\,
	combout => \mx_wb|f[2]~36_combout\);

-- Location: LCCOMB_X32_Y2_N10
\rf|m2|stage3|f[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m2|stage3|f[0]~2_combout\ = (\reset~input_o\) # ((\mx_wb|f[0]~10_combout\) # ((\mx_wb|f[0]~13_combout\ & \mx_wb|f[1]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \mx_wb|f[0]~13_combout\,
	datac => \mx_wb|f[1]~11_combout\,
	datad => \mx_wb|f[0]~10_combout\,
	combout => \rf|m2|stage3|f[0]~2_combout\);

-- Location: LCCOMB_X27_Y2_N30
\rf|stage_dec_write|s1|y[0]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|stage_dec_write|s1|y[0]~21_combout\ = (!\pc|Q\(3) & (!\pc|Q\(1) & (!\pc|Q\(0) & \pc|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(3),
	datab => \pc|Q\(1),
	datac => \pc|Q\(0),
	datad => \pc|Q\(2),
	combout => \rf|stage_dec_write|s1|y[0]~21_combout\);

-- Location: LCCOMB_X27_Y2_N24
\mx_redst|f[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_redst|f[0]~6_combout\ = (\pc|Q\(3)) # ((\pc|Q\(1) & ((\pc|Q\(2)))) # (!\pc|Q\(1) & ((!\pc|Q\(2)) # (!\pc|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(3),
	datab => \pc|Q\(1),
	datac => \pc|Q\(0),
	datad => \pc|Q\(2),
	combout => \mx_redst|f[0]~6_combout\);

-- Location: LCCOMB_X28_Y2_N22
\rf|m2|stage3|f[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m2|stage3|f[0]~1_combout\ = (\reset~input_o\) # ((\mx_redst|f[1]~5_combout\ & (\rf|stage_dec_write|s1|y[0]~21_combout\ & !\mx_redst|f[0]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mx_redst|f[1]~5_combout\,
	datab => \rf|stage_dec_write|s1|y[0]~21_combout\,
	datac => \mx_redst|f[0]~6_combout\,
	datad => \reset~input_o\,
	combout => \rf|m2|stage3|f[0]~1_combout\);

-- Location: FF_X32_Y2_N11
\rf|r2|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|m2|stage3|f[0]~2_combout\,
	ena => \rf|m2|stage3|f[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r2|Q\(0));

-- Location: LCCOMB_X29_Y2_N16
\dm|value1[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|value1[0]~0_combout\ = (\pc|Q\(0) & \pc|Q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pc|Q\(0),
	datad => \pc|Q\(1),
	combout => \dm|value1[0]~0_combout\);

-- Location: LCCOMB_X28_Y2_N4
\rf|m3|stage3|f[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m3|stage3|f[0]~0_combout\ = (\reset~input_o\) # ((\mx_redst|f[1]~5_combout\ & (\rf|stage_dec_write|s1|y[0]~21_combout\ & \mx_redst|f[0]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mx_redst|f[1]~5_combout\,
	datab => \rf|stage_dec_write|s1|y[0]~21_combout\,
	datac => \mx_redst|f[0]~6_combout\,
	datad => \reset~input_o\,
	combout => \rf|m3|stage3|f[0]~0_combout\);

-- Location: FF_X29_Y2_N11
\rf|r3|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rf|m2|stage3|f[0]~2_combout\,
	sload => VCC,
	ena => \rf|m3|stage3|f[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r3|Q\(0));

-- Location: LCCOMB_X27_Y2_N14
\mx_redst|f[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_redst|f[1]~5_combout\ = (\pc|Q\(3)) # ((\pc|Q\(2) & ((\pc|Q\(1)))) # (!\pc|Q\(2) & ((\id|Equal0~0_combout\) # (!\pc|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(3),
	datab => \id|Equal0~0_combout\,
	datac => \pc|Q\(2),
	datad => \pc|Q\(1),
	combout => \mx_redst|f[1]~5_combout\);

-- Location: LCCOMB_X28_Y2_N14
\rf|m4|stage3|f[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m4|stage3|f[0]~0_combout\ = (\reset~input_o\) # ((\rf|stage_dec_write|s1|y[1]~22_combout\ & (!\mx_redst|f[0]~6_combout\ & !\mx_redst|f[1]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|stage_dec_write|s1|y[1]~22_combout\,
	datab => \mx_redst|f[0]~6_combout\,
	datac => \reset~input_o\,
	datad => \mx_redst|f[1]~5_combout\,
	combout => \rf|m4|stage3|f[0]~0_combout\);

-- Location: FF_X29_Y2_N25
\rf|r4|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rf|m2|stage3|f[0]~2_combout\,
	sload => VCC,
	ena => \rf|m4|stage3|f[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r4|Q\(0));

-- Location: LCCOMB_X27_Y2_N0
\rf|stage_dec_write|s1|y[1]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|stage_dec_write|s1|y[1]~22_combout\ = (!\pc|Q\(3) & (!\pc|Q\(2) & (\pc|Q\(1) $ (\pc|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(3),
	datab => \pc|Q\(1),
	datac => \pc|Q\(0),
	datad => \pc|Q\(2),
	combout => \rf|stage_dec_write|s1|y[1]~22_combout\);

-- Location: LCCOMB_X27_Y2_N16
\rf|m6|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m6|stage3|f~0_combout\ = (\reset~input_o\) # ((\mx_redst|f[1]~5_combout\ & (!\mx_redst|f[0]~6_combout\ & \rf|stage_dec_write|s1|y[1]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mx_redst|f[1]~5_combout\,
	datab => \mx_redst|f[0]~6_combout\,
	datac => \reset~input_o\,
	datad => \rf|stage_dec_write|s1|y[1]~22_combout\,
	combout => \rf|m6|stage3|f~0_combout\);

-- Location: FF_X30_Y2_N23
\rf|r6|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rf|m0|stage3|f~2_combout\,
	sload => VCC,
	ena => \rf|m6|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r6|Q\(0));

-- Location: LCCOMB_X30_Y2_N22
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

-- Location: LCCOMB_X29_Y2_N24
\mux_alu|f[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_alu|f[0]~12_combout\ = (\mux_alu|f[0]~7_combout\ & (\mux_alu|f[0]~6_combout\)) # (!\mux_alu|f[0]~7_combout\ & ((\mux_alu|f[0]~6_combout\ & ((\rf|value2[0]~1_combout\))) # (!\mux_alu|f[0]~6_combout\ & (\rf|r4|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_alu|f[0]~7_combout\,
	datab => \mux_alu|f[0]~6_combout\,
	datac => \rf|r4|Q\(0),
	datad => \rf|value2[0]~1_combout\,
	combout => \mux_alu|f[0]~12_combout\);

-- Location: LCCOMB_X29_Y2_N10
\mux_alu|f[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_alu|f[0]~13_combout\ = (\mux_alu|f[0]~7_combout\ & ((\mux_alu|f[0]~12_combout\ & (\rf|r0|Q\(0))) # (!\mux_alu|f[0]~12_combout\ & ((\rf|r3|Q\(0)))))) # (!\mux_alu|f[0]~7_combout\ & (((\mux_alu|f[0]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_alu|f[0]~7_combout\,
	datab => \rf|r0|Q\(0),
	datac => \rf|r3|Q\(0),
	datad => \mux_alu|f[0]~12_combout\,
	combout => \mux_alu|f[0]~13_combout\);

-- Location: LCCOMB_X29_Y2_N18
\mux_alu|f[0]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_alu|f[0]~22_combout\ = (!\id|Equal0~0_combout\ & (\mux_alu|f[0]~4_combout\ & ((\dm|value1[0]~0_combout\) # (\mux_alu|f[0]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \id|Equal0~0_combout\,
	datab => \dm|value1[0]~0_combout\,
	datac => \mux_alu|f[0]~4_combout\,
	datad => \mux_alu|f[0]~13_combout\,
	combout => \mux_alu|f[0]~22_combout\);

-- Location: LCCOMB_X29_Y2_N2
\mux_alu|f[0]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_alu|f[0]~14_combout\ = (\mux_alu|f[0]~21_combout\ & ((\mux_alu|f[0]~22_combout\ & ((\rf|r2|Q\(0)))) # (!\mux_alu|f[0]~22_combout\ & (!\im|output[0]~4_combout\)))) # (!\mux_alu|f[0]~21_combout\ & (((\mux_alu|f[0]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im|output[0]~4_combout\,
	datab => \rf|r2|Q\(0),
	datac => \mux_alu|f[0]~21_combout\,
	datad => \mux_alu|f[0]~22_combout\,
	combout => \mux_alu|f[0]~14_combout\);

-- Location: LCCOMB_X33_Y2_N0
\alup|ripCarry|stage1|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alup|ripCarry|stage1|s~0_combout\ = \id|Equal5~0_combout\ $ (\mux_alu|f[0]~14_combout\ $ (((!\rf|value1[3]~3_combout\ & \rf|value1[0]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \id|Equal5~0_combout\,
	datab => \rf|value1[3]~3_combout\,
	datac => \mux_alu|f[0]~14_combout\,
	datad => \rf|value1[0]~6_combout\,
	combout => \alup|ripCarry|stage1|s~0_combout\);

-- Location: LCCOMB_X33_Y2_N24
\mx_wb|f[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[2]~12_combout\ = (!\pc|Q\(2) & (\pc|Q\(1) & (\pc|Q\(0) & !\pc|Q\(3))))

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
	combout => \mx_wb|f[2]~12_combout\);

-- Location: LCCOMB_X32_Y2_N14
\mx_wb|f[2]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[2]~20_combout\ = ((\alup|ripCarry|stage1|s~0_combout\ & (\mx_wb|f[2]~19_combout\)) # (!\alup|ripCarry|stage1|s~0_combout\ & ((!\mx_wb|f[2]~12_combout\)))) # (!\alup|ripCarry|stage2|s~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mx_wb|f[2]~19_combout\,
	datab => \alup|ripCarry|stage1|s~0_combout\,
	datac => \alup|ripCarry|stage2|s~combout\,
	datad => \mx_wb|f[2]~12_combout\,
	combout => \mx_wb|f[2]~20_combout\);

-- Location: LCCOMB_X32_Y2_N4
\mx_wb|f[2]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[2]~21_combout\ = (\alup|ripCarry|stage2|s~combout\ & (\alup|ripCarry|stage3|s~combout\ & !\alup|ripCarry|stage4|s~combout\)) # (!\alup|ripCarry|stage2|s~combout\ & (!\alup|ripCarry|stage3|s~combout\ & \alup|ripCarry|stage4|s~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alup|ripCarry|stage2|s~combout\,
	datac => \alup|ripCarry|stage3|s~combout\,
	datad => \alup|ripCarry|stage4|s~combout\,
	combout => \mx_wb|f[2]~21_combout\);

-- Location: LCCOMB_X33_Y2_N8
\dm|value1[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|value1[0]~1_combout\ = (\pc|Q\(3) & (\dm|value1[0]~0_combout\ & (\pc|Q\(2) & !\alup|ripCarry|stage1|s~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(3),
	datab => \dm|value1[0]~0_combout\,
	datac => \pc|Q\(2),
	datad => \alup|ripCarry|stage1|s~0_combout\,
	combout => \dm|value1[0]~1_combout\);

-- Location: LCCOMB_X33_Y2_N6
\mx_wb|f[2]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[2]~22_combout\ = (\alup|ripCarry|stage1|s~0_combout\ & (!\pc|Q\(3) & (\pc|Q\(1) $ (\pc|Q\(2))))) # (!\alup|ripCarry|stage1|s~0_combout\ & (\pc|Q\(1) & (\pc|Q\(3) $ (!\pc|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(3),
	datab => \pc|Q\(1),
	datac => \pc|Q\(2),
	datad => \alup|ripCarry|stage1|s~0_combout\,
	combout => \mx_wb|f[2]~22_combout\);

-- Location: LCCOMB_X33_Y2_N28
\mx_wb|f[2]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[2]~23_combout\ = \alup|ripCarry|stage1|s~0_combout\ $ (((!\mx_wb|f[2]~22_combout\) # (!\pc|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(0),
	datab => \alup|ripCarry|stage1|s~0_combout\,
	datad => \mx_wb|f[2]~22_combout\,
	combout => \mx_wb|f[2]~23_combout\);

-- Location: LCCOMB_X32_Y2_N18
\mx_wb|f[2]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[2]~25_combout\ = (\alup|ripCarry|stage3|s~combout\ & (\mx_wb|f[2]~24_combout\)) # (!\alup|ripCarry|stage3|s~combout\ & (((\dm|value1[0]~1_combout\) # (\mx_wb|f[2]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mx_wb|f[2]~24_combout\,
	datab => \dm|value1[0]~1_combout\,
	datac => \alup|ripCarry|stage3|s~combout\,
	datad => \mx_wb|f[2]~23_combout\,
	combout => \mx_wb|f[2]~25_combout\);

-- Location: LCCOMB_X32_Y2_N20
\mx_wb|f[2]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[2]~26_combout\ = (\alup|ripCarry|stage4|s~combout\ & ((\alup|ripCarry|stage2|s~combout\) # ((\alup|ripCarry|stage3|s~combout\) # (\mx_wb|f[2]~25_combout\)))) # (!\alup|ripCarry|stage4|s~combout\ & (\alup|ripCarry|stage3|s~combout\ & 
-- ((!\mx_wb|f[2]~25_combout\) # (!\alup|ripCarry|stage2|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alup|ripCarry|stage4|s~combout\,
	datab => \alup|ripCarry|stage2|s~combout\,
	datac => \alup|ripCarry|stage3|s~combout\,
	datad => \mx_wb|f[2]~25_combout\,
	combout => \mx_wb|f[2]~26_combout\);

-- Location: LCCOMB_X32_Y2_N6
\mx_wb|f[2]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[2]~27_combout\ = (\mx_wb|f[2]~21_combout\ & (((\mx_wb|f[2]~26_combout\)))) # (!\mx_wb|f[2]~21_combout\ & ((\mx_wb|f[2]~26_combout\ & (\mx_wb|f[0]~7_combout\)) # (!\mx_wb|f[2]~26_combout\ & ((\mx_wb|f[2]~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mx_wb|f[0]~7_combout\,
	datab => \mx_wb|f[2]~20_combout\,
	datac => \mx_wb|f[2]~21_combout\,
	datad => \mx_wb|f[2]~26_combout\,
	combout => \mx_wb|f[2]~27_combout\);

-- Location: LCCOMB_X32_Y2_N22
\rf|m0|stage3|f~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m0|stage3|f~3_combout\ = (!\reset~input_o\ & ((\mx_wb|f[2]~36_combout\) # ((\id|Equal0~0_combout\ & \mx_wb|f[2]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \id|Equal0~0_combout\,
	datac => \mx_wb|f[2]~36_combout\,
	datad => \mx_wb|f[2]~27_combout\,
	combout => \rf|m0|stage3|f~3_combout\);

-- Location: FF_X30_Y2_N15
\rf|r4|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rf|m0|stage3|f~3_combout\,
	sload => VCC,
	ena => \rf|m4|stage3|f[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r4|Q\(2));

-- Location: FF_X29_Y2_N31
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

-- Location: LCCOMB_X30_Y2_N14
\mux_alu|f[2]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_alu|f[2]~15_combout\ = (\mux_alu|f[0]~7_combout\ & ((\mux_alu|f[0]~6_combout\) # ((\rf|r3|Q\(2))))) # (!\mux_alu|f[0]~7_combout\ & (!\mux_alu|f[0]~6_combout\ & (\rf|r4|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_alu|f[0]~7_combout\,
	datab => \mux_alu|f[0]~6_combout\,
	datac => \rf|r4|Q\(2),
	datad => \rf|r3|Q\(2),
	combout => \mux_alu|f[2]~15_combout\);

-- Location: FF_X30_Y2_N17
\rf|r6|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rf|m0|stage3|f~3_combout\,
	sload => VCC,
	ena => \rf|m6|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r6|Q\(2));

-- Location: LCCOMB_X30_Y2_N16
\rf|value2[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[2]~2_combout\ = (\rf|r6|Q\(2) & !\pc|Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|r6|Q\(2),
	datad => \pc|Q\(2),
	combout => \rf|value2[2]~2_combout\);

-- Location: LCCOMB_X30_Y2_N4
\mux_alu|f[2]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_alu|f[2]~16_combout\ = (\mux_alu|f[0]~6_combout\ & ((\mux_alu|f[2]~15_combout\ & (\rf|r0|Q\(2))) # (!\mux_alu|f[2]~15_combout\ & ((\rf|value2[2]~2_combout\))))) # (!\mux_alu|f[0]~6_combout\ & (((\mux_alu|f[2]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r0|Q\(2),
	datab => \mux_alu|f[0]~6_combout\,
	datac => \mux_alu|f[2]~15_combout\,
	datad => \rf|value2[2]~2_combout\,
	combout => \mux_alu|f[2]~16_combout\);

-- Location: LCCOMB_X28_Y2_N8
\mux_alu|f[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_alu|f[0]~5_combout\ = (\mux_alu|f[0]~4_combout\ & !\id|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux_alu|f[0]~4_combout\,
	datad => \id|Equal0~0_combout\,
	combout => \mux_alu|f[0]~5_combout\);

-- Location: LCCOMB_X30_Y2_N10
\mux_alu|f[2]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_alu|f[2]~17_combout\ = (\mux_alu|f[0]~5_combout\ & ((\mux_alu|f[0]~21_combout\ & (\rf|r2|Q\(2))) # (!\mux_alu|f[0]~21_combout\ & ((\mux_alu|f[2]~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r2|Q\(2),
	datab => \mux_alu|f[0]~21_combout\,
	datac => \mux_alu|f[2]~16_combout\,
	datad => \mux_alu|f[0]~5_combout\,
	combout => \mux_alu|f[2]~17_combout\);

-- Location: LCCOMB_X30_Y2_N0
\alup|ripCarry|stage3|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \alup|ripCarry|stage3|s~combout\ = \rf|value1[2]~9_combout\ $ (\id|Equal5~0_combout\ $ (\mux_alu|f[2]~17_combout\ $ (\alup|ripCarry|stage2|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value1[2]~9_combout\,
	datab => \id|Equal5~0_combout\,
	datac => \mux_alu|f[2]~17_combout\,
	datad => \alup|ripCarry|stage2|Cout~0_combout\,
	combout => \alup|ripCarry|stage3|s~combout\);

-- Location: LCCOMB_X30_Y2_N2
\mx_wb|f[0]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[0]~38_combout\ = (\mx_wb|f[0]~37_combout\ & (\alup|ripCarry|stage2|s~combout\ $ (\alup|ripCarry|stage3|s~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mx_wb|f[0]~37_combout\,
	datac => \alup|ripCarry|stage2|s~combout\,
	datad => \alup|ripCarry|stage3|s~combout\,
	combout => \mx_wb|f[0]~38_combout\);

-- Location: LCCOMB_X30_Y2_N30
\mx_wb|f[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[0]~6_combout\ = (!\alup|ripCarry|stage1|s~0_combout\ & (\id|Equal0~0_combout\ & (!\alup|ripCarry|stage4|s~combout\ & \mx_wb|f[0]~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alup|ripCarry|stage1|s~0_combout\,
	datab => \id|Equal0~0_combout\,
	datac => \alup|ripCarry|stage4|s~combout\,
	datad => \mx_wb|f[0]~38_combout\,
	combout => \mx_wb|f[0]~6_combout\);

-- Location: LCCOMB_X31_Y2_N28
\mx_wb|f[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[0]~10_combout\ = (\mx_wb|f[0]~8_combout\) # ((\mx_wb|f[0]~6_combout\) # ((\alup|ripCarry|stage1|s~1_combout\ & \mx_wb|f[2]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alup|ripCarry|stage1|s~1_combout\,
	datab => \mx_wb|f[2]~9_combout\,
	datac => \mx_wb|f[0]~8_combout\,
	datad => \mx_wb|f[0]~6_combout\,
	combout => \mx_wb|f[0]~10_combout\);

-- Location: LCCOMB_X31_Y2_N8
\rf|m0|stage3|f~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m0|stage3|f~2_combout\ = (!\reset~input_o\ & ((\mx_wb|f[0]~10_combout\) # ((\mx_wb|f[0]~13_combout\ & \mx_wb|f[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mx_wb|f[0]~13_combout\,
	datab => \mx_wb|f[1]~11_combout\,
	datac => \reset~input_o\,
	datad => \mx_wb|f[0]~10_combout\,
	combout => \rf|m0|stage3|f~2_combout\);

-- Location: LCCOMB_X31_Y2_N26
\rf|r0|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r0|Q[0]~feeder_combout\ = \rf|m0|stage3|f~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|m0|stage3|f~2_combout\,
	combout => \rf|r0|Q[0]~feeder_combout\);

-- Location: LCCOMB_X28_Y2_N28
\rf|m0|stage3|f~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m0|stage3|f~1_combout\ = (\reset~input_o\) # ((!\mx_redst|f[1]~5_combout\ & (\rf|stage_dec_write|s1|y[0]~21_combout\ & !\mx_redst|f[0]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mx_redst|f[1]~5_combout\,
	datab => \rf|stage_dec_write|s1|y[0]~21_combout\,
	datac => \mx_redst|f[0]~6_combout\,
	datad => \reset~input_o\,
	combout => \rf|m0|stage3|f~1_combout\);

-- Location: FF_X31_Y2_N27
\rf|r0|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|r0|Q[0]~feeder_combout\,
	ena => \rf|m0|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r0|Q\(0));

-- Location: LCCOMB_X27_Y2_N18
\rf|m1|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m1|stage3|f~0_combout\ = (\reset~input_o\) # ((!\mx_redst|f[1]~5_combout\ & (\rf|stage_dec_write|s1|y[0]~21_combout\ & \mx_redst|f[0]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mx_redst|f[1]~5_combout\,
	datab => \reset~input_o\,
	datac => \rf|stage_dec_write|s1|y[0]~21_combout\,
	datad => \mx_redst|f[0]~6_combout\,
	combout => \rf|m1|stage3|f~0_combout\);

-- Location: FF_X33_Y2_N13
\rf|r1|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rf|m0|stage3|f~2_combout\,
	sload => VCC,
	ena => \rf|m1|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r1|Q\(0));

-- Location: LCCOMB_X28_Y2_N10
\rf|m7|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m7|stage3|f~0_combout\ = (\reset~input_o\) # ((\rf|stage_dec_write|s1|y[1]~22_combout\ & (\mx_redst|f[0]~6_combout\ & \mx_redst|f[1]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|stage_dec_write|s1|y[1]~22_combout\,
	datab => \mx_redst|f[0]~6_combout\,
	datac => \reset~input_o\,
	datad => \mx_redst|f[1]~5_combout\,
	combout => \rf|m7|stage3|f~0_combout\);

-- Location: FF_X33_Y2_N11
\rf|r7|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rf|m0|stage3|f~2_combout\,
	sload => VCC,
	ena => \rf|m7|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r7|Q\(0));

-- Location: LCCOMB_X33_Y2_N10
\rf|value1[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[0]~5_combout\ = (\mux_alu|f[0]~11_combout\ & (((\rf|r7|Q\(0)) # (\rf|value1[3]~0_combout\)))) # (!\mux_alu|f[0]~11_combout\ & (\rf|value2[0]~1_combout\ & ((!\rf|value1[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_alu|f[0]~11_combout\,
	datab => \rf|value2[0]~1_combout\,
	datac => \rf|r7|Q\(0),
	datad => \rf|value1[3]~0_combout\,
	combout => \rf|value1[0]~5_combout\);

-- Location: LCCOMB_X33_Y2_N12
\rf|value1[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[0]~6_combout\ = (\rf|value1[3]~0_combout\ & ((\rf|value1[0]~5_combout\ & (\rf|r0|Q\(0))) # (!\rf|value1[0]~5_combout\ & ((\rf|r1|Q\(0)))))) # (!\rf|value1[3]~0_combout\ & (((\rf|value1[0]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value1[3]~0_combout\,
	datab => \rf|r0|Q\(0),
	datac => \rf|r1|Q\(0),
	datad => \rf|value1[0]~5_combout\,
	combout => \rf|value1[0]~6_combout\);

-- Location: LCCOMB_X29_Y2_N28
\alup|ripCarry|stage1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alup|ripCarry|stage1|Cout~0_combout\ = (!\rf|value1[3]~3_combout\ & (\rf|value1[0]~6_combout\ & ((\id|Equal5~0_combout\) # (\mux_alu|f[0]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value1[3]~3_combout\,
	datab => \id|Equal5~0_combout\,
	datac => \rf|value1[0]~6_combout\,
	datad => \mux_alu|f[0]~14_combout\,
	combout => \alup|ripCarry|stage1|Cout~0_combout\);

-- Location: LCCOMB_X29_Y2_N30
\alup|ripCarry|stage1|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \alup|ripCarry|stage1|Cout~1_combout\ = (\id|Equal5~0_combout\ & !\mux_alu|f[0]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \id|Equal5~0_combout\,
	datad => \mux_alu|f[0]~14_combout\,
	combout => \alup|ripCarry|stage1|Cout~1_combout\);

-- Location: FF_X30_Y2_N9
\rf|r6|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rf|m0|stage3|f~0_combout\,
	sload => VCC,
	ena => \rf|m6|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r6|Q\(1));

-- Location: LCCOMB_X30_Y2_N8
\rf|value2[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[1]~0_combout\ = (\rf|r6|Q\(1) & !\pc|Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|r6|Q\(1),
	datad => \pc|Q\(2),
	combout => \rf|value2[1]~0_combout\);

-- Location: FF_X30_Y2_N25
\rf|r4|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rf|m0|stage3|f~0_combout\,
	sload => VCC,
	ena => \rf|m4|stage3|f[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r4|Q\(1));

-- Location: LCCOMB_X30_Y2_N6
\mux_alu|f[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_alu|f[0]~7_combout\ = (\pc|Q\(0) & !\pc|Q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pc|Q\(0),
	datad => \pc|Q\(1),
	combout => \mux_alu|f[0]~7_combout\);

-- Location: LCCOMB_X30_Y2_N24
\mux_alu|f[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_alu|f[1]~8_combout\ = (\mux_alu|f[0]~6_combout\ & (((\mux_alu|f[0]~7_combout\)))) # (!\mux_alu|f[0]~6_combout\ & ((\mux_alu|f[0]~7_combout\ & (\rf|r3|Q\(1))) # (!\mux_alu|f[0]~7_combout\ & ((\rf|r4|Q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r3|Q\(1),
	datab => \mux_alu|f[0]~6_combout\,
	datac => \rf|r4|Q\(1),
	datad => \mux_alu|f[0]~7_combout\,
	combout => \mux_alu|f[1]~8_combout\);

-- Location: LCCOMB_X28_Y2_N16
\mux_alu|f[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_alu|f[1]~9_combout\ = (\mux_alu|f[0]~6_combout\ & ((\mux_alu|f[1]~8_combout\ & (\rf|r0|Q\(1))) # (!\mux_alu|f[1]~8_combout\ & ((\rf|value2[1]~0_combout\))))) # (!\mux_alu|f[0]~6_combout\ & (((\mux_alu|f[1]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r0|Q\(1),
	datab => \mux_alu|f[0]~6_combout\,
	datac => \rf|value2[1]~0_combout\,
	datad => \mux_alu|f[1]~8_combout\,
	combout => \mux_alu|f[1]~9_combout\);

-- Location: LCCOMB_X28_Y2_N6
\mux_alu|f[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_alu|f[1]~10_combout\ = (\mux_alu|f[0]~5_combout\ & ((\mux_alu|f[0]~21_combout\ & (\rf|r2|Q\(1))) # (!\mux_alu|f[0]~21_combout\ & ((\mux_alu|f[1]~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r2|Q\(1),
	datab => \mux_alu|f[0]~21_combout\,
	datac => \mux_alu|f[0]~5_combout\,
	datad => \mux_alu|f[1]~9_combout\,
	combout => \mux_alu|f[1]~10_combout\);

-- Location: LCCOMB_X28_Y2_N24
\alup|ripCarry|g[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \alup|ripCarry|g\(1) = \id|Equal5~0_combout\ $ (\mux_alu|f[1]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \id|Equal5~0_combout\,
	datad => \mux_alu|f[1]~10_combout\,
	combout => \alup|ripCarry|g\(1));

-- Location: LCCOMB_X29_Y2_N20
\alup|ripCarry|stage2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alup|ripCarry|stage2|Cout~0_combout\ = (\rf|value1[1]~4_combout\ & ((\alup|ripCarry|stage1|Cout~0_combout\) # ((\alup|ripCarry|stage1|Cout~1_combout\) # (\alup|ripCarry|g\(1))))) # (!\rf|value1[1]~4_combout\ & (\alup|ripCarry|g\(1) & 
-- ((\alup|ripCarry|stage1|Cout~0_combout\) # (\alup|ripCarry|stage1|Cout~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value1[1]~4_combout\,
	datab => \alup|ripCarry|stage1|Cout~0_combout\,
	datac => \alup|ripCarry|stage1|Cout~1_combout\,
	datad => \alup|ripCarry|g\(1),
	combout => \alup|ripCarry|stage2|Cout~0_combout\);

-- Location: FF_X31_Y2_N17
\rf|r7|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rf|m0|stage3|f~3_combout\,
	sload => VCC,
	ena => \rf|m7|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r7|Q\(2));

-- Location: FF_X27_Y2_N11
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
	ena => \rf|m1|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r1|Q\(2));

-- Location: LCCOMB_X27_Y2_N10
\rf|value1[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[2]~7_combout\ = (\rf|value1[3]~0_combout\ & ((\mux_alu|f[0]~11_combout\) # ((\rf|r1|Q\(2))))) # (!\rf|value1[3]~0_combout\ & (!\mux_alu|f[0]~11_combout\ & ((\rf|value2[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value1[3]~0_combout\,
	datab => \mux_alu|f[0]~11_combout\,
	datac => \rf|r1|Q\(2),
	datad => \rf|value2[2]~2_combout\,
	combout => \rf|value1[2]~7_combout\);

-- Location: LCCOMB_X31_Y2_N16
\rf|value1[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[2]~8_combout\ = (\mux_alu|f[0]~11_combout\ & ((\rf|value1[2]~7_combout\ & (\rf|r0|Q\(2))) # (!\rf|value1[2]~7_combout\ & ((\rf|r7|Q\(2)))))) # (!\mux_alu|f[0]~11_combout\ & (((\rf|value1[2]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r0|Q\(2),
	datab => \mux_alu|f[0]~11_combout\,
	datac => \rf|r7|Q\(2),
	datad => \rf|value1[2]~7_combout\,
	combout => \rf|value1[2]~8_combout\);

-- Location: LCCOMB_X31_Y2_N6
\rf|value1[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[2]~9_combout\ = (!\rf|value1[3]~3_combout\ & \rf|value1[2]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|value1[3]~3_combout\,
	datad => \rf|value1[2]~8_combout\,
	combout => \rf|value1[2]~9_combout\);

-- Location: LCCOMB_X29_Y2_N6
\alup|ripCarry|stage3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alup|ripCarry|stage3|Cout~0_combout\ = (\rf|value1[2]~9_combout\ & ((\alup|ripCarry|stage2|Cout~0_combout\) # (\id|Equal5~0_combout\ $ (\mux_alu|f[2]~17_combout\)))) # (!\rf|value1[2]~9_combout\ & (\alup|ripCarry|stage2|Cout~0_combout\ & 
-- (\id|Equal5~0_combout\ $ (\mux_alu|f[2]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \id|Equal5~0_combout\,
	datab => \mux_alu|f[2]~17_combout\,
	datac => \rf|value1[2]~9_combout\,
	datad => \alup|ripCarry|stage2|Cout~0_combout\,
	combout => \alup|ripCarry|stage3|Cout~0_combout\);

-- Location: LCCOMB_X29_Y2_N14
\mx_wb|f[3]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[3]~29_combout\ = \rf|value1[3]~13_combout\ $ (\alup|ripCarry|stage2|Cout~0_combout\ $ (\rf|value1[2]~9_combout\ $ (\alup|ripCarry|stage3|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value1[3]~13_combout\,
	datab => \alup|ripCarry|stage2|Cout~0_combout\,
	datac => \rf|value1[2]~9_combout\,
	datad => \alup|ripCarry|stage3|Cout~0_combout\,
	combout => \mx_wb|f[3]~29_combout\);

-- Location: LCCOMB_X33_Y2_N14
\alup|ripCarry|stage1|s~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \alup|ripCarry|stage1|s~1_combout\ = \mux_alu|f[0]~14_combout\ $ (((\rf|value1[0]~6_combout\ & !\rf|value1[3]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value1[0]~6_combout\,
	datab => \rf|value1[3]~3_combout\,
	datac => \mux_alu|f[0]~14_combout\,
	combout => \alup|ripCarry|stage1|s~1_combout\);

-- Location: LCCOMB_X29_Y2_N8
\mx_wb|f[3]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[3]~30_combout\ = (\id|Equal0~0_combout\ & (!\id|Equal7~0_combout\ & (\mx_wb|f[3]~29_combout\ & \alup|ripCarry|stage1|s~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \id|Equal0~0_combout\,
	datab => \id|Equal7~0_combout\,
	datac => \mx_wb|f[3]~29_combout\,
	datad => \alup|ripCarry|stage1|s~1_combout\,
	combout => \mx_wb|f[3]~30_combout\);

-- Location: LCCOMB_X29_Y2_N22
\mx_wb|f[3]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[3]~31_combout\ = (\alup|ripCarry|stage2|s~combout\ & (\mx_wb|f[2]~9_combout\ & ((\alup|ripCarry|stage4|s~combout\)))) # (!\alup|ripCarry|stage2|s~combout\ & ((\mx_wb|f[3]~30_combout\) # ((\mx_wb|f[2]~9_combout\ & 
-- \alup|ripCarry|stage4|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alup|ripCarry|stage2|s~combout\,
	datab => \mx_wb|f[2]~9_combout\,
	datac => \mx_wb|f[3]~30_combout\,
	datad => \alup|ripCarry|stage4|s~combout\,
	combout => \mx_wb|f[3]~31_combout\);

-- Location: LCCOMB_X30_Y2_N18
\mx_wb|f[3]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[3]~32_combout\ = (\id|Equal0~0_combout\ & (!\alup|ripCarry|stage4|s~combout\ & (\alup|ripCarry|stage1|s~1_combout\ $ (\alup|ripCarry|stage3|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alup|ripCarry|stage1|s~1_combout\,
	datab => \id|Equal0~0_combout\,
	datac => \alup|ripCarry|stage4|s~combout\,
	datad => \alup|ripCarry|stage3|s~combout\,
	combout => \mx_wb|f[3]~32_combout\);

-- Location: LCCOMB_X29_Y2_N12
\mx_wb|f[3]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[3]~33_combout\ = (\mx_wb|f[3]~31_combout\) # ((\alup|ripCarry|stage2|s~combout\ & (!\id|Equal7~0_combout\ & \mx_wb|f[3]~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alup|ripCarry|stage2|s~combout\,
	datab => \id|Equal7~0_combout\,
	datac => \mx_wb|f[3]~31_combout\,
	datad => \mx_wb|f[3]~32_combout\,
	combout => \mx_wb|f[3]~33_combout\);

-- Location: LCCOMB_X29_Y2_N26
\rf|m0|stage3|f~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m0|stage3|f~4_combout\ = (!\reset~input_o\ & \mx_wb|f[3]~33_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \mx_wb|f[3]~33_combout\,
	combout => \rf|m0|stage3|f~4_combout\);

-- Location: LCCOMB_X28_Y2_N26
\rf|r0|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r0|Q[3]~feeder_combout\ = \rf|m0|stage3|f~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m0|stage3|f~4_combout\,
	combout => \rf|r0|Q[3]~feeder_combout\);

-- Location: FF_X28_Y2_N27
\rf|r0|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|r0|Q[3]~feeder_combout\,
	ena => \rf|m0|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r0|Q\(3));

-- Location: FF_X31_Y2_N21
\rf|r7|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rf|m0|stage3|f~4_combout\,
	sload => VCC,
	ena => \rf|m7|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r7|Q\(3));

-- Location: LCCOMB_X31_Y2_N20
\rf|value1[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[3]~11_combout\ = (\rf|value1[3]~0_combout\ & (((\mux_alu|f[0]~11_combout\)))) # (!\rf|value1[3]~0_combout\ & ((\mux_alu|f[0]~11_combout\ & ((\rf|r7|Q\(3)))) # (!\mux_alu|f[0]~11_combout\ & (\rf|value1[3]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value1[3]~10_combout\,
	datab => \rf|value1[3]~0_combout\,
	datac => \rf|r7|Q\(3),
	datad => \mux_alu|f[0]~11_combout\,
	combout => \rf|value1[3]~11_combout\);

-- Location: LCCOMB_X31_Y2_N18
\rf|value1[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[3]~12_combout\ = (\rf|value1[3]~0_combout\ & ((\rf|value1[3]~11_combout\ & ((\rf|r0|Q\(3)))) # (!\rf|value1[3]~11_combout\ & (\rf|r1|Q\(3))))) # (!\rf|value1[3]~0_combout\ & (((\rf|value1[3]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r1|Q\(3),
	datab => \rf|value1[3]~0_combout\,
	datac => \rf|r0|Q\(3),
	datad => \rf|value1[3]~11_combout\,
	combout => \rf|value1[3]~12_combout\);

-- Location: LCCOMB_X30_Y2_N20
\rf|value1[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[3]~13_combout\ = (!\rf|value1[3]~3_combout\ & \rf|value1[3]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|value1[3]~3_combout\,
	datad => \rf|value1[3]~12_combout\,
	combout => \rf|value1[3]~13_combout\);

-- Location: LCCOMB_X29_Y2_N0
\alup|ripCarry|stage4|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \alup|ripCarry|stage4|s~combout\ = \mux_alu|f[3]~20_combout\ $ (\id|Equal5~0_combout\ $ (\rf|value1[3]~13_combout\ $ (\alup|ripCarry|stage3|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_alu|f[3]~20_combout\,
	datab => \id|Equal5~0_combout\,
	datac => \rf|value1[3]~13_combout\,
	datad => \alup|ripCarry|stage3|Cout~0_combout\,
	combout => \alup|ripCarry|stage4|s~combout\);

-- Location: LCCOMB_X32_Y2_N30
\mx_wb|f[1]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[1]~17_combout\ = (\mx_wb|f[0]~7_combout\ & (\id|Equal0~0_combout\ & \alup|ripCarry|stage4|s~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mx_wb|f[0]~7_combout\,
	datac => \id|Equal0~0_combout\,
	datad => \alup|ripCarry|stage4|s~combout\,
	combout => \mx_wb|f[1]~17_combout\);

-- Location: LCCOMB_X32_Y2_N12
\mx_wb|f[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[1]~14_combout\ = (\mx_wb|f[1]~35_combout\ & ((\pc|Q\(2) & ((\alup|ripCarry|stage2|s~combout\))) # (!\pc|Q\(2) & (!\alup|ripCarry|stage1|s~0_combout\)))) # (!\mx_wb|f[1]~35_combout\ & (\alup|ripCarry|stage1|s~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mx_wb|f[1]~35_combout\,
	datab => \alup|ripCarry|stage1|s~0_combout\,
	datac => \alup|ripCarry|stage2|s~combout\,
	datad => \pc|Q\(2),
	combout => \mx_wb|f[1]~14_combout\);

-- Location: LCCOMB_X32_Y2_N26
\mx_wb|f[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[1]~15_combout\ = (\alup|ripCarry|stage3|s~combout\ & (\mx_wb|f[0]~7_combout\ $ (!\mx_wb|f[1]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mx_wb|f[0]~7_combout\,
	datac => \alup|ripCarry|stage3|s~combout\,
	datad => \mx_wb|f[1]~14_combout\,
	combout => \mx_wb|f[1]~15_combout\);

-- Location: LCCOMB_X32_Y2_N0
\mx_wb|f[1]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[1]~16_combout\ = (\mx_wb|f[1]~11_combout\ & (\mx_wb|f[1]~14_combout\ $ (((\alup|ripCarry|stage2|s~combout\) # (\mx_wb|f[1]~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mx_wb|f[1]~14_combout\,
	datab => \alup|ripCarry|stage2|s~combout\,
	datac => \mx_wb|f[1]~15_combout\,
	datad => \mx_wb|f[1]~11_combout\,
	combout => \mx_wb|f[1]~16_combout\);

-- Location: LCCOMB_X32_Y2_N24
\mx_wb|f[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[1]~18_combout\ = (\mx_wb|f[1]~17_combout\) # ((\mx_wb|f[1]~16_combout\) # ((\mx_wb|f[2]~9_combout\ & \alup|ripCarry|stage2|s~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mx_wb|f[2]~9_combout\,
	datab => \alup|ripCarry|stage2|s~combout\,
	datac => \mx_wb|f[1]~17_combout\,
	datad => \mx_wb|f[1]~16_combout\,
	combout => \mx_wb|f[1]~18_combout\);

-- Location: LCCOMB_X31_Y2_N14
\rf|m0|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m0|stage3|f~0_combout\ = (!\reset~input_o\ & \mx_wb|f[1]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \mx_wb|f[1]~18_combout\,
	combout => \rf|m0|stage3|f~0_combout\);

-- Location: LCCOMB_X28_Y2_N18
\rf|r0|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r0|Q[1]~feeder_combout\ = \rf|m0|stage3|f~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m0|stage3|f~0_combout\,
	combout => \rf|r0|Q[1]~feeder_combout\);

-- Location: FF_X28_Y2_N19
\rf|r0|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|r0|Q[1]~feeder_combout\,
	ena => \rf|m0|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r0|Q\(1));

-- Location: FF_X27_Y2_N21
\rf|r1|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rf|m0|stage3|f~0_combout\,
	sload => VCC,
	ena => \rf|m1|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r1|Q\(1));

-- Location: FF_X31_Y2_N5
\rf|r7|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rf|m0|stage3|f~0_combout\,
	sload => VCC,
	ena => \rf|m7|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r7|Q\(1));

-- Location: LCCOMB_X27_Y2_N12
\rf|value1[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[1]~1_combout\ = (\rf|value1[3]~0_combout\ & (\mux_alu|f[0]~11_combout\)) # (!\rf|value1[3]~0_combout\ & ((\mux_alu|f[0]~11_combout\ & (\rf|r7|Q\(1))) # (!\mux_alu|f[0]~11_combout\ & ((\rf|value2[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value1[3]~0_combout\,
	datab => \mux_alu|f[0]~11_combout\,
	datac => \rf|r7|Q\(1),
	datad => \rf|value2[1]~0_combout\,
	combout => \rf|value1[1]~1_combout\);

-- Location: LCCOMB_X27_Y2_N20
\rf|value1[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[1]~2_combout\ = (\rf|value1[3]~0_combout\ & ((\rf|value1[1]~1_combout\ & (\rf|r0|Q\(1))) # (!\rf|value1[1]~1_combout\ & ((\rf|r1|Q\(1)))))) # (!\rf|value1[3]~0_combout\ & (((\rf|value1[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value1[3]~0_combout\,
	datab => \rf|r0|Q\(1),
	datac => \rf|r1|Q\(1),
	datad => \rf|value1[1]~1_combout\,
	combout => \rf|value1[1]~2_combout\);

-- Location: LCCOMB_X27_Y2_N28
\rf|value1[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[1]~4_combout\ = (!\rf|value1[3]~3_combout\ & \rf|value1[1]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value1[3]~3_combout\,
	datad => \rf|value1[1]~2_combout\,
	combout => \rf|value1[1]~4_combout\);

-- Location: LCCOMB_X28_Y2_N2
\alup|ripCarry|stage2|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \alup|ripCarry|stage2|s~combout\ = \rf|value1[1]~4_combout\ $ (\alup|ripCarry|g\(1) $ (((\alup|ripCarry|stage1|Cout~1_combout\) # (\alup|ripCarry|stage1|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alup|ripCarry|stage1|Cout~1_combout\,
	datab => \rf|value1[1]~4_combout\,
	datac => \alup|ripCarry|g\(1),
	datad => \alup|ripCarry|stage1|Cout~0_combout\,
	combout => \alup|ripCarry|stage2|s~combout\);

-- Location: LCCOMB_X32_Y2_N2
\mx_wb|f[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[0]~13_combout\ = (\alup|ripCarry|stage1|s~0_combout\ & (\mx_wb|f[2]~12_combout\ & (\alup|ripCarry|stage2|s~combout\ $ (\alup|ripCarry|stage3|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alup|ripCarry|stage1|s~0_combout\,
	datab => \alup|ripCarry|stage2|s~combout\,
	datac => \alup|ripCarry|stage3|s~combout\,
	datad => \mx_wb|f[2]~12_combout\,
	combout => \mx_wb|f[0]~13_combout\);

-- Location: LCCOMB_X31_Y2_N22
\mx_wb|f[0]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[0]~34_combout\ = (\mx_wb|f[0]~10_combout\) # ((\mx_wb|f[0]~13_combout\ & (!\alup|ripCarry|stage4|s~combout\ & \id|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mx_wb|f[0]~13_combout\,
	datab => \alup|ripCarry|stage4|s~combout\,
	datac => \id|Equal0~0_combout\,
	datad => \mx_wb|f[0]~10_combout\,
	combout => \mx_wb|f[0]~34_combout\);

-- Location: LCCOMB_X31_Y2_N4
\mx_wb|f[2]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[2]~28_combout\ = (\mx_wb|f[2]~36_combout\) # ((\id|Equal0~0_combout\ & \mx_wb|f[2]~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \id|Equal0~0_combout\,
	datab => \mx_wb|f[2]~36_combout\,
	datad => \mx_wb|f[2]~27_combout\,
	combout => \mx_wb|f[2]~28_combout\);

ww_current_pc(0) <= \current_pc[0]~output_o\;

ww_current_pc(1) <= \current_pc[1]~output_o\;

ww_current_pc(2) <= \current_pc[2]~output_o\;

ww_current_pc(3) <= \current_pc[3]~output_o\;

ww_result(0) <= \result[0]~output_o\;

ww_result(1) <= \result[1]~output_o\;

ww_result(2) <= \result[2]~output_o\;

ww_result(3) <= \result[3]~output_o\;
END structure;


