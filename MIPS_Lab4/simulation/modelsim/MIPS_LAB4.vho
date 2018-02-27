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

-- DATE "02/27/2018 08:47:27"

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

ENTITY 	MIPS_LAB4 IS
    PORT (
	clock : IN std_logic;
	reset : IN std_logic;
	current_pc : OUT std_logic_vector(3 DOWNTO 0);
	result : OUT std_logic_vector(3 DOWNTO 0)
	);
END MIPS_LAB4;

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


ARCHITECTURE structure OF MIPS_LAB4 IS
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
SIGNAL \dm|value1[0]~8_combout\ : std_logic;
SIGNAL \mx_wb|f[0]~54_combout\ : std_logic;
SIGNAL \mx_wb|f[0]~66_combout\ : std_logic;
SIGNAL \dm|value1[0]~25_combout\ : std_logic;
SIGNAL \mx_wb|f[0]~76_combout\ : std_logic;
SIGNAL \mx_wb|f[0]~77_combout\ : std_logic;
SIGNAL \mx_wb|f[0]~78_combout\ : std_logic;
SIGNAL \mx_wb|f[1]~88_combout\ : std_logic;
SIGNAL \mx_wb|f[1]~92_combout\ : std_logic;
SIGNAL \mx_wb|f[2]~97_combout\ : std_logic;
SIGNAL \mx_wb|f[3]~103_combout\ : std_logic;
SIGNAL \dm|m2|stage3|f~1_combout\ : std_logic;
SIGNAL \dm|m0|stage3|f[0]~1_combout\ : std_logic;
SIGNAL \dm|m0|stage3|f[0]~2_combout\ : std_logic;
SIGNAL \dm|r4|Q[0]~feeder_combout\ : std_logic;
SIGNAL \dm|r2|Q[0]~feeder_combout\ : std_logic;
SIGNAL \dm|r0|Q[1]~feeder_combout\ : std_logic;
SIGNAL \dm|r2|Q[1]~feeder_combout\ : std_logic;
SIGNAL \dm|r6|Q[1]~feeder_combout\ : std_logic;
SIGNAL \dm|r5|Q[1]~feeder_combout\ : std_logic;
SIGNAL \dm|r9|Q[2]~feeder_combout\ : std_logic;
SIGNAL \dm|r5|Q[2]~feeder_combout\ : std_logic;
SIGNAL \dm|r10|Q[2]~feeder_combout\ : std_logic;
SIGNAL \dm|r2|Q[2]~feeder_combout\ : std_logic;
SIGNAL \dm|r4|Q[2]~feeder_combout\ : std_logic;
SIGNAL \dm|r0|Q[2]~feeder_combout\ : std_logic;
SIGNAL \dm|r4|Q[3]~feeder_combout\ : std_logic;
SIGNAL \dm|r0|Q[3]~feeder_combout\ : std_logic;
SIGNAL \dm|r10|Q[3]~feeder_combout\ : std_logic;
SIGNAL \dm|r2|Q[3]~feeder_combout\ : std_logic;
SIGNAL \current_pc[0]~output_o\ : std_logic;
SIGNAL \current_pc[1]~output_o\ : std_logic;
SIGNAL \current_pc[2]~output_o\ : std_logic;
SIGNAL \current_pc[3]~output_o\ : std_logic;
SIGNAL \result[0]~output_o\ : std_logic;
SIGNAL \result[1]~output_o\ : std_logic;
SIGNAL \result[2]~output_o\ : std_logic;
SIGNAL \result[3]~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \pc_mux|f~0_combout\ : std_logic;
SIGNAL \addpc|stage2|s~combout\ : std_logic;
SIGNAL \addpc|stage3|s~combout\ : std_logic;
SIGNAL \addpc|stage4|s~combout\ : std_logic;
SIGNAL \im|output[30]~0_combout\ : std_logic;
SIGNAL \im|output[29]~3_combout\ : std_logic;
SIGNAL \id|Equal0~1_combout\ : std_logic;
SIGNAL \im|output[16]~1_combout\ : std_logic;
SIGNAL \rf|m3|stage3|f~3_combout\ : std_logic;
SIGNAL \rf|m3|stage3|f~9_combout\ : std_logic;
SIGNAL \rf|value2[0]~0_combout\ : std_logic;
SIGNAL \rf|value1[0]~0_combout\ : std_logic;
SIGNAL \im|output[0]~2_combout\ : std_logic;
SIGNAL \alup|ripCarry|stage1|s~0_combout\ : std_logic;
SIGNAL \rf|m1|stage3|f~0_combout\ : std_logic;
SIGNAL \rf|m2|stage3|f~8_combout\ : std_logic;
SIGNAL \dm|m2|stage3|f~2_combout\ : std_logic;
SIGNAL \dm|r6|Q[2]~feeder_combout\ : std_logic;
SIGNAL \id|Equal0~0_combout\ : std_logic;
SIGNAL \rf|value2[2]~3_combout\ : std_logic;
SIGNAL \mux_alu|f[2]~2_combout\ : std_logic;
SIGNAL \mux_alu|f[0]~0_combout\ : std_logic;
SIGNAL \rf|value2[1]~4_combout\ : std_logic;
SIGNAL \mux_alu|f[1]~1_combout\ : std_logic;
SIGNAL \rf|value1[1]~3_combout\ : std_logic;
SIGNAL \alup|ripCarry|stage2|Cout~0_combout\ : std_logic;
SIGNAL \alup|ripCarry|stage3|s~combout\ : std_logic;
SIGNAL \alup|ripCarry|stage3|Cout~0_combout\ : std_logic;
SIGNAL \id|Equal1~0_combout\ : std_logic;
SIGNAL \alup|ripCarry|stage2|s~combout\ : std_logic;
SIGNAL \dm|m2|stage3|f~0_combout\ : std_logic;
SIGNAL \dm|m6|stage3|f~0_combout\ : std_logic;
SIGNAL \rf|value2[1]~1_combout\ : std_logic;
SIGNAL \mx_wb|f[0]~32_combout\ : std_logic;
SIGNAL \mx_wb|f[0]~33_combout\ : std_logic;
SIGNAL \dm|value1[0]~7_combout\ : std_logic;
SIGNAL \dm|value1[0]~9_combout\ : std_logic;
SIGNAL \dm|value1[0]~10_combout\ : std_logic;
SIGNAL \dm|value1[0]~11_combout\ : std_logic;
SIGNAL \rf|value1[2]~2_combout\ : std_logic;
SIGNAL \dm|m0|stage3|f~0_combout\ : std_logic;
SIGNAL \dm|m0|stage3|f~5_combout\ : std_logic;
SIGNAL \dm|r6|Q[3]~feeder_combout\ : std_logic;
SIGNAL \mx_wb|f[3]~102_combout\ : std_logic;
SIGNAL \dm|r9|Q[3]~feeder_combout\ : std_logic;
SIGNAL \alup|ripCarry|stage4|s~0_combout\ : std_logic;
SIGNAL \dm|m9|stage3|f~0_combout\ : std_logic;
SIGNAL \dm|m9|stage3|f~1_combout\ : std_logic;
SIGNAL \dm|m1|stage3|f~1_combout\ : std_logic;
SIGNAL \dm|m1|stage3|f~2_combout\ : std_logic;
SIGNAL \dm|m7|stage3|f~0_combout\ : std_logic;
SIGNAL \dm|value1[0]~6_combout\ : std_logic;
SIGNAL \dm|value1[0]~26_combout\ : std_logic;
SIGNAL \mx_wb|f[0]~79_combout\ : std_logic;
SIGNAL \mx_wb|f[0]~46_combout\ : std_logic;
SIGNAL \mx_wb|f[0]~80_combout\ : std_logic;
SIGNAL \dm|value1[0]~29_combout\ : std_logic;
SIGNAL \dm|value1[0]~18_combout\ : std_logic;
SIGNAL \dm|value1[0]~19_combout\ : std_logic;
SIGNAL \dm|value1[0]~20_combout\ : std_logic;
SIGNAL \dm|value1[0]~16_combout\ : std_logic;
SIGNAL \dm|value1[0]~17_combout\ : std_logic;
SIGNAL \dm|value1[0]~23_combout\ : std_logic;
SIGNAL \mx_wb|f[0]~81_combout\ : std_logic;
SIGNAL \mx_wb|f[3]~106_combout\ : std_logic;
SIGNAL \dm|value1[0]~13_combout\ : std_logic;
SIGNAL \mx_wb|f[0]~50_combout\ : std_logic;
SIGNAL \dm|value1[0]~14_combout\ : std_logic;
SIGNAL \mx_wb|f[0]~49_combout\ : std_logic;
SIGNAL \mx_wb|f[0]~73_combout\ : std_logic;
SIGNAL \mx_wb|f[0]~112_combout\ : std_logic;
SIGNAL \mx_wb|f[0]~55_combout\ : std_logic;
SIGNAL \mx_wb|f[0]~56_combout\ : std_logic;
SIGNAL \mx_wb|f[0]~74_combout\ : std_logic;
SIGNAL \dm|r8|Q[3]~feeder_combout\ : std_logic;
SIGNAL \alup|ripCarry|stage4|s~combout\ : std_logic;
SIGNAL \dm|stage_dec_write|s4|y[2]~0_combout\ : std_logic;
SIGNAL \dm|m8|stage3|f~0_combout\ : std_logic;
SIGNAL \mx_wb|f[0]~52_combout\ : std_logic;
SIGNAL \mx_wb|f[0]~53_combout\ : std_logic;
SIGNAL \mx_wb|f[0]~67_combout\ : std_logic;
SIGNAL \mx_wb|f[0]~68_combout\ : std_logic;
SIGNAL \mx_wb|f[0]~69_combout\ : std_logic;
SIGNAL \mx_wb|f[0]~70_combout\ : std_logic;
SIGNAL \mx_wb|f[0]~71_combout\ : std_logic;
SIGNAL \mx_wb|f[0]~72_combout\ : std_logic;
SIGNAL \mx_wb|f[3]~105_combout\ : std_logic;
SIGNAL \mx_wb|f[3]~107_combout\ : std_logic;
SIGNAL \dm|m5|stage3|f~0_combout\ : std_logic;
SIGNAL \dm|value1[0]~21_combout\ : std_logic;
SIGNAL \mx_wb|f[0]~111_combout\ : std_logic;
SIGNAL \mx_wb|f[0]~109_combout\ : std_logic;
SIGNAL \mx_wb|f[0]~59_combout\ : std_logic;
SIGNAL \dm|value1[0]~27_combout\ : std_logic;
SIGNAL \mx_wb|f[0]~60_combout\ : std_logic;
SIGNAL \mx_wb|f[0]~61_combout\ : std_logic;
SIGNAL \mx_wb|f[3]~104_combout\ : std_logic;
SIGNAL \mx_wb|f[3]~108_combout\ : std_logic;
SIGNAL \rf|m1|stage3|f~1_combout\ : std_logic;
SIGNAL \rf|value1[3]~1_combout\ : std_logic;
SIGNAL \dm|value1[0]~12_combout\ : std_logic;
SIGNAL \dm|value1[0]~15_combout\ : std_logic;
SIGNAL \mx_wb|f[0]~35_combout\ : std_logic;
SIGNAL \mx_wb|f[0]~34_combout\ : std_logic;
SIGNAL \mx_wb|f[0]~36_combout\ : std_logic;
SIGNAL \mx_wb|f[0]~37_combout\ : std_logic;
SIGNAL \mx_wb|f[0]~38_combout\ : std_logic;
SIGNAL \mx_wb|f[0]~39_combout\ : std_logic;
SIGNAL \mx_wb|f[2]~95_combout\ : std_logic;
SIGNAL \mx_wb|f[0]~84_combout\ : std_logic;
SIGNAL \mx_wb|f[0]~83_combout\ : std_logic;
SIGNAL \mx_wb|f[0]~85_combout\ : std_logic;
SIGNAL \dm|m0|stage3|f[2]~4_combout\ : std_logic;
SIGNAL \mx_wb|f[2]~99_combout\ : std_logic;
SIGNAL \dm|r8|Q[2]~feeder_combout\ : std_logic;
SIGNAL \mx_wb|f[2]~98_combout\ : std_logic;
SIGNAL \mx_wb|f[2]~100_combout\ : std_logic;
SIGNAL \mx_wb|f[0]~51_combout\ : std_logic;
SIGNAL \mx_wb|f[0]~110_combout\ : std_logic;
SIGNAL \mx_wb|f[0]~57_combout\ : std_logic;
SIGNAL \dm|m3|stage3|f~0_combout\ : std_logic;
SIGNAL \dm|value1[0]~22_combout\ : std_logic;
SIGNAL \mx_wb|f[0]~44_combout\ : std_logic;
SIGNAL \mx_wb|f[0]~45_combout\ : std_logic;
SIGNAL \mx_wb|f[0]~47_combout\ : std_logic;
SIGNAL \mx_wb|f[0]~48_combout\ : std_logic;
SIGNAL \mx_wb|f[2]~96_combout\ : std_logic;
SIGNAL \mx_wb|f[2]~101_combout\ : std_logic;
SIGNAL \rf|m1|stage3|f~2_combout\ : std_logic;
SIGNAL \rf|value2[2]~2_combout\ : std_logic;
SIGNAL \mx_wb|f[0]~115_combout\ : std_logic;
SIGNAL \mx_wb|f[0]~63_combout\ : std_logic;
SIGNAL \mx_wb|f[0]~114_combout\ : std_logic;
SIGNAL \mx_wb|f[0]~62_combout\ : std_logic;
SIGNAL \mx_wb|f[0]~64_combout\ : std_logic;
SIGNAL \dm|value1[0]~24_combout\ : std_logic;
SIGNAL \dm|value1[0]~28_combout\ : std_logic;
SIGNAL \mx_wb|f[0]~65_combout\ : std_logic;
SIGNAL \dm|m0|stage3|f~3_combout\ : std_logic;
SIGNAL \dm|r4|Q[1]~feeder_combout\ : std_logic;
SIGNAL \dm|m4|stage3|f~0_combout\ : std_logic;
SIGNAL \dm|m4|stage3|f~1_combout\ : std_logic;
SIGNAL \mx_wb|f[1]~90_combout\ : std_logic;
SIGNAL \dm|r9|Q[1]~feeder_combout\ : std_logic;
SIGNAL \dm|r8|Q[1]~feeder_combout\ : std_logic;
SIGNAL \mx_wb|f[1]~91_combout\ : std_logic;
SIGNAL \mx_wb|f[1]~93_combout\ : std_logic;
SIGNAL \mx_wb|f[1]~89_combout\ : std_logic;
SIGNAL \mx_wb|f[1]~94_combout\ : std_logic;
SIGNAL \rf|m1|stage3|f~3_combout\ : std_logic;
SIGNAL \mx_wb|f[0]~113_combout\ : std_logic;
SIGNAL \mx_wb|f[0]~41_combout\ : std_logic;
SIGNAL \mx_wb|f[0]~40_combout\ : std_logic;
SIGNAL \mx_wb|f[0]~42_combout\ : std_logic;
SIGNAL \dm|m1|stage3|f~0_combout\ : std_logic;
SIGNAL \dm|r6|Q[0]~feeder_combout\ : std_logic;
SIGNAL \mx_wb|f[0]~43_combout\ : std_logic;
SIGNAL \dm|r9|Q[0]~feeder_combout\ : std_logic;
SIGNAL \dm|r7|Q[0]~feeder_combout\ : std_logic;
SIGNAL \mx_wb|f[0]~82_combout\ : std_logic;
SIGNAL \dm|m10|stage3|f~0_combout\ : std_logic;
SIGNAL \mx_wb|f[0]~75_combout\ : std_logic;
SIGNAL \mx_wb|f[0]~86_combout\ : std_logic;
SIGNAL \mx_wb|f[0]~58_combout\ : std_logic;
SIGNAL \mx_wb|f[0]~87_combout\ : std_logic;
SIGNAL \result~0_combout\ : std_logic;
SIGNAL \result~1_combout\ : std_logic;
SIGNAL \result~2_combout\ : std_logic;
SIGNAL \result~3_combout\ : std_logic;
SIGNAL \result~4_combout\ : std_logic;
SIGNAL \result~5_combout\ : std_logic;
SIGNAL \result~6_combout\ : std_logic;
SIGNAL \result~7_combout\ : std_logic;
SIGNAL \im|stage_dec|s2|y\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf|r2|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf|r3|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dm|r0|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dm|r1|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dm|r2|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dm|r3|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dm|r4|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dm|r5|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dm|r6|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dm|r7|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dm|r8|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dm|r9|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dm|r10|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pc|Q\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_clock <= clock;
ww_reset <= reset;
current_pc <= ww_current_pc;
result <= ww_result;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: FF_X114_Y38_N5
\dm|r2|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \dm|r2|Q[0]~feeder_combout\,
	ena => \dm|m2|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r2|Q\(0));

-- Location: LCCOMB_X108_Y39_N20
\dm|value1[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|value1[0]~8_combout\ = (\rf|r2|Q\(0) & (\im|stage_dec|s2|y\(3) & !\rf|r2|Q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf|r2|Q\(0),
	datac => \im|stage_dec|s2|y\(3),
	datad => \rf|r2|Q\(1),
	combout => \dm|value1[0]~8_combout\);

-- Location: FF_X111_Y38_N15
\dm|r0|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \dm|m0|stage3|f[0]~1_combout\,
	ena => \dm|m0|stage3|f[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r0|Q\(0));

-- Location: LCCOMB_X111_Y40_N26
\mx_wb|f[0]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[0]~54_combout\ = (\mx_wb|f[0]~53_combout\ & ((\rf|value1[2]~2_combout\ & ((\mx_wb|f[0]~50_combout\))) # (!\rf|value1[2]~2_combout\ & (\mx_wb|f[0]~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mx_wb|f[0]~49_combout\,
	datab => \rf|value1[2]~2_combout\,
	datac => \mx_wb|f[0]~50_combout\,
	datad => \mx_wb|f[0]~53_combout\,
	combout => \mx_wb|f[0]~54_combout\);

-- Location: FF_X110_Y40_N27
\dm|r4|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \dm|r4|Q[0]~feeder_combout\,
	ena => \dm|m4|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r4|Q\(0));

-- Location: FF_X108_Y39_N13
\dm|r5|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \dm|m1|stage3|f~0_combout\,
	sload => VCC,
	ena => \dm|m5|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r5|Q\(0));

-- Location: LCCOMB_X108_Y39_N12
\mx_wb|f[0]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[0]~66_combout\ = (\dm|r4|Q\(0) & ((\mx_wb|f[0]~65_combout\) # ((\dm|r5|Q\(0) & \mx_wb|f[0]~61_combout\)))) # (!\dm|r4|Q\(0) & (((\dm|r5|Q\(0) & \mx_wb|f[0]~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm|r4|Q\(0),
	datab => \mx_wb|f[0]~65_combout\,
	datac => \dm|r5|Q\(0),
	datad => \mx_wb|f[0]~61_combout\,
	combout => \mx_wb|f[0]~66_combout\);

-- Location: FF_X114_Y40_N9
\dm|r8|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \dm|m1|stage3|f~0_combout\,
	sload => VCC,
	ena => \dm|m8|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r8|Q\(0));

-- Location: LCCOMB_X111_Y39_N20
\dm|value1[0]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|value1[0]~25_combout\ = (\rf|value1[1]~3_combout\ & (!\rf|value1[0]~0_combout\ & (\dm|value1[0]~12_combout\ & \dm|value1[0]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value1[1]~3_combout\,
	datab => \rf|value1[0]~0_combout\,
	datac => \dm|value1[0]~12_combout\,
	datad => \dm|value1[0]~11_combout\,
	combout => \dm|value1[0]~25_combout\);

-- Location: LCCOMB_X111_Y39_N26
\mx_wb|f[0]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[0]~76_combout\ = (\rf|value2[1]~1_combout\ & (!\rf|value1[1]~3_combout\ & (\rf|value1[2]~2_combout\ $ (\rf|value2[2]~2_combout\)))) # (!\rf|value2[1]~1_combout\ & (!\rf|value1[2]~2_combout\ & (\rf|value2[2]~2_combout\ & 
-- \rf|value1[1]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value2[1]~1_combout\,
	datab => \rf|value1[2]~2_combout\,
	datac => \rf|value2[2]~2_combout\,
	datad => \rf|value1[1]~3_combout\,
	combout => \mx_wb|f[0]~76_combout\);

-- Location: LCCOMB_X111_Y39_N8
\mx_wb|f[0]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[0]~77_combout\ = (\alup|ripCarry|stage4|s~0_combout\ & (\mx_wb|f[0]~76_combout\ & \mx_wb|f[0]~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alup|ripCarry|stage4|s~0_combout\,
	datac => \mx_wb|f[0]~76_combout\,
	datad => \mx_wb|f[0]~46_combout\,
	combout => \mx_wb|f[0]~77_combout\);

-- Location: LCCOMB_X111_Y39_N6
\mx_wb|f[0]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[0]~78_combout\ = (\dm|value1[0]~25_combout\) # ((\mx_wb|f[0]~77_combout\) # ((\dm|value1[0]~14_combout\ & \dm|value1[0]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm|value1[0]~14_combout\,
	datab => \dm|value1[0]~25_combout\,
	datac => \mx_wb|f[0]~77_combout\,
	datad => \dm|value1[0]~21_combout\,
	combout => \mx_wb|f[0]~78_combout\);

-- Location: FF_X114_Y38_N1
\dm|r6|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \dm|r6|Q[1]~feeder_combout\,
	ena => \dm|m6|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r6|Q\(1));

-- Location: FF_X114_Y38_N23
\dm|r2|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \dm|r2|Q[1]~feeder_combout\,
	ena => \dm|m2|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r2|Q\(1));

-- Location: LCCOMB_X110_Y39_N4
\mx_wb|f[1]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[1]~88_combout\ = (\dm|r2|Q\(1) & ((\mx_wb|f[0]~42_combout\) # ((\dm|r6|Q\(1) & \mx_wb|f[0]~39_combout\)))) # (!\dm|r2|Q\(1) & (((\dm|r6|Q\(1) & \mx_wb|f[0]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm|r2|Q\(1),
	datab => \mx_wb|f[0]~42_combout\,
	datac => \dm|r6|Q\(1),
	datad => \mx_wb|f[0]~39_combout\,
	combout => \mx_wb|f[1]~88_combout\);

-- Location: FF_X111_Y38_N21
\dm|r0|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \dm|r0|Q[1]~feeder_combout\,
	ena => \dm|m0|stage3|f[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r0|Q\(1));

-- Location: FF_X113_Y40_N15
\dm|r5|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \dm|r5|Q[1]~feeder_combout\,
	ena => \dm|m5|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r5|Q\(1));

-- Location: FF_X114_Y40_N29
\dm|r10|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \dm|m0|stage3|f~3_combout\,
	sload => VCC,
	ena => \dm|m10|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r10|Q\(1));

-- Location: FF_X111_Y39_N11
\dm|r7|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \dm|m0|stage3|f~3_combout\,
	sload => VCC,
	ena => \dm|m7|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r7|Q\(1));

-- Location: FF_X114_Y39_N5
\dm|r1|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \dm|m0|stage3|f~3_combout\,
	sload => VCC,
	ena => \dm|m1|stage3|f~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r1|Q\(1));

-- Location: LCCOMB_X111_Y39_N10
\mx_wb|f[1]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[1]~92_combout\ = (\mx_wb|f[0]~78_combout\ & ((\dm|r7|Q\(1)) # ((\dm|r1|Q\(1) & \mx_wb|f[0]~81_combout\)))) # (!\mx_wb|f[0]~78_combout\ & (\dm|r1|Q\(1) & ((\mx_wb|f[0]~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mx_wb|f[0]~78_combout\,
	datab => \dm|r1|Q\(1),
	datac => \dm|r7|Q\(1),
	datad => \mx_wb|f[0]~81_combout\,
	combout => \mx_wb|f[1]~92_combout\);

-- Location: FF_X114_Y38_N11
\dm|r2|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \dm|r2|Q[2]~feeder_combout\,
	ena => \dm|m2|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r2|Q\(2));

-- Location: FF_X111_Y38_N9
\dm|r0|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \dm|r0|Q[2]~feeder_combout\,
	ena => \dm|m0|stage3|f[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r0|Q\(2));

-- Location: FF_X113_Y40_N27
\dm|r5|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \dm|r5|Q[2]~feeder_combout\,
	ena => \dm|m5|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r5|Q\(2));

-- Location: FF_X110_Y40_N23
\dm|r4|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \dm|r4|Q[2]~feeder_combout\,
	ena => \dm|m4|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r4|Q\(2));

-- Location: LCCOMB_X108_Y39_N26
\mx_wb|f[2]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[2]~97_combout\ = (\dm|r4|Q\(2) & ((\mx_wb|f[0]~65_combout\) # ((\dm|r5|Q\(2) & \mx_wb|f[0]~61_combout\)))) # (!\dm|r4|Q\(2) & (((\dm|r5|Q\(2) & \mx_wb|f[0]~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm|r4|Q\(2),
	datab => \mx_wb|f[0]~65_combout\,
	datac => \dm|r5|Q\(2),
	datad => \mx_wb|f[0]~61_combout\,
	combout => \mx_wb|f[2]~97_combout\);

-- Location: FF_X114_Y40_N21
\dm|r10|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \dm|r10|Q[2]~feeder_combout\,
	ena => \dm|m10|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r10|Q\(2));

-- Location: FF_X113_Y40_N25
\dm|r9|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \dm|r9|Q[2]~feeder_combout\,
	ena => \dm|m9|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r9|Q\(2));

-- Location: FF_X114_Y38_N3
\dm|r2|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \dm|r2|Q[3]~feeder_combout\,
	ena => \dm|m2|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r2|Q\(3));

-- Location: FF_X110_Y40_N17
\dm|r3|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \dm|m0|stage3|f~5_combout\,
	sload => VCC,
	ena => \dm|m3|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r3|Q\(3));

-- Location: FF_X111_Y38_N7
\dm|r0|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \dm|r0|Q[3]~feeder_combout\,
	ena => \dm|m0|stage3|f[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r0|Q\(3));

-- Location: LCCOMB_X110_Y40_N16
\mx_wb|f[3]~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[3]~103_combout\ = (\dm|r0|Q\(3) & ((\mx_wb|f[0]~57_combout\) # ((\dm|r3|Q\(3) & \mx_wb|f[0]~48_combout\)))) # (!\dm|r0|Q\(3) & (((\dm|r3|Q\(3) & \mx_wb|f[0]~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm|r0|Q\(3),
	datab => \mx_wb|f[0]~57_combout\,
	datac => \dm|r3|Q\(3),
	datad => \mx_wb|f[0]~48_combout\,
	combout => \mx_wb|f[3]~103_combout\);

-- Location: FF_X110_Y40_N3
\dm|r4|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \dm|r4|Q[3]~feeder_combout\,
	ena => \dm|m4|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r4|Q\(3));

-- Location: FF_X114_Y40_N17
\dm|r10|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \dm|r10|Q[3]~feeder_combout\,
	ena => \dm|m10|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r10|Q\(3));

-- Location: LCCOMB_X114_Y38_N30
\dm|m2|stage3|f~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|m2|stage3|f~1_combout\ = (\reset~input_o\) # ((!\alup|ripCarry|stage1|s~0_combout\ & (\alup|ripCarry|stage3|s~combout\ & \dm|m2|stage3|f~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alup|ripCarry|stage1|s~0_combout\,
	datab => \reset~input_o\,
	datac => \alup|ripCarry|stage3|s~combout\,
	datad => \dm|m2|stage3|f~0_combout\,
	combout => \dm|m2|stage3|f~1_combout\);

-- Location: LCCOMB_X111_Y38_N14
\dm|m0|stage3|f[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|m0|stage3|f[0]~1_combout\ = (\reset~input_o\) # (\rf|value2[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \rf|value2[0]~0_combout\,
	combout => \dm|m0|stage3|f[0]~1_combout\);

-- Location: LCCOMB_X111_Y38_N2
\dm|m0|stage3|f[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|m0|stage3|f[0]~2_combout\ = (\reset~input_o\) # ((\alup|ripCarry|stage2|s~combout\ & (\alup|ripCarry|stage3|s~combout\ & \dm|m4|stage3|f~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alup|ripCarry|stage2|s~combout\,
	datab => \reset~input_o\,
	datac => \alup|ripCarry|stage3|s~combout\,
	datad => \dm|m4|stage3|f~0_combout\,
	combout => \dm|m0|stage3|f[0]~2_combout\);

-- Location: LCCOMB_X110_Y40_N26
\dm|r4|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|r4|Q[0]~feeder_combout\ = \dm|m1|stage3|f~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dm|m1|stage3|f~0_combout\,
	combout => \dm|r4|Q[0]~feeder_combout\);

-- Location: LCCOMB_X114_Y38_N4
\dm|r2|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|r2|Q[0]~feeder_combout\ = \dm|m1|stage3|f~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dm|m1|stage3|f~0_combout\,
	combout => \dm|r2|Q[0]~feeder_combout\);

-- Location: LCCOMB_X111_Y38_N20
\dm|r0|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|r0|Q[1]~feeder_combout\ = \dm|m0|stage3|f~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dm|m0|stage3|f~3_combout\,
	combout => \dm|r0|Q[1]~feeder_combout\);

-- Location: LCCOMB_X114_Y38_N22
\dm|r2|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|r2|Q[1]~feeder_combout\ = \dm|m0|stage3|f~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dm|m0|stage3|f~3_combout\,
	combout => \dm|r2|Q[1]~feeder_combout\);

-- Location: LCCOMB_X114_Y38_N0
\dm|r6|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|r6|Q[1]~feeder_combout\ = \dm|m0|stage3|f~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dm|m0|stage3|f~3_combout\,
	combout => \dm|r6|Q[1]~feeder_combout\);

-- Location: LCCOMB_X113_Y40_N14
\dm|r5|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|r5|Q[1]~feeder_combout\ = \dm|m0|stage3|f~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dm|m0|stage3|f~3_combout\,
	combout => \dm|r5|Q[1]~feeder_combout\);

-- Location: LCCOMB_X113_Y40_N24
\dm|r9|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|r9|Q[2]~feeder_combout\ = \dm|m2|stage3|f~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dm|m2|stage3|f~2_combout\,
	combout => \dm|r9|Q[2]~feeder_combout\);

-- Location: LCCOMB_X113_Y40_N26
\dm|r5|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|r5|Q[2]~feeder_combout\ = \dm|m2|stage3|f~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dm|m2|stage3|f~2_combout\,
	combout => \dm|r5|Q[2]~feeder_combout\);

-- Location: LCCOMB_X114_Y40_N20
\dm|r10|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|r10|Q[2]~feeder_combout\ = \dm|m2|stage3|f~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dm|m2|stage3|f~2_combout\,
	combout => \dm|r10|Q[2]~feeder_combout\);

-- Location: LCCOMB_X114_Y38_N10
\dm|r2|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|r2|Q[2]~feeder_combout\ = \dm|m2|stage3|f~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dm|m2|stage3|f~2_combout\,
	combout => \dm|r2|Q[2]~feeder_combout\);

-- Location: LCCOMB_X110_Y40_N22
\dm|r4|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|r4|Q[2]~feeder_combout\ = \dm|m2|stage3|f~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dm|m2|stage3|f~2_combout\,
	combout => \dm|r4|Q[2]~feeder_combout\);

-- Location: LCCOMB_X111_Y38_N8
\dm|r0|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|r0|Q[2]~feeder_combout\ = \dm|m0|stage3|f[2]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dm|m0|stage3|f[2]~4_combout\,
	combout => \dm|r0|Q[2]~feeder_combout\);

-- Location: LCCOMB_X110_Y40_N2
\dm|r4|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|r4|Q[3]~feeder_combout\ = \dm|m0|stage3|f~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dm|m0|stage3|f~5_combout\,
	combout => \dm|r4|Q[3]~feeder_combout\);

-- Location: LCCOMB_X111_Y38_N6
\dm|r0|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|r0|Q[3]~feeder_combout\ = \dm|m0|stage3|f~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dm|m0|stage3|f~5_combout\,
	combout => \dm|r0|Q[3]~feeder_combout\);

-- Location: LCCOMB_X114_Y40_N16
\dm|r10|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|r10|Q[3]~feeder_combout\ = \dm|m0|stage3|f~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dm|m0|stage3|f~5_combout\,
	combout => \dm|r10|Q[3]~feeder_combout\);

-- Location: LCCOMB_X114_Y38_N2
\dm|r2|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|r2|Q[3]~feeder_combout\ = \dm|m0|stage3|f~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dm|m0|stage3|f~5_combout\,
	combout => \dm|r2|Q[3]~feeder_combout\);

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
	i => \result~1_combout\,
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
	i => \result~3_combout\,
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
	i => \result~5_combout\,
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
	i => \result~7_combout\,
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

-- Location: LCCOMB_X113_Y39_N30
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

-- Location: FF_X113_Y39_N31
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

-- Location: LCCOMB_X113_Y39_N8
\addpc|stage2|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \addpc|stage2|s~combout\ = \pc|Q\(0) $ (\pc|Q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(0),
	datac => \pc|Q\(1),
	combout => \addpc|stage2|s~combout\);

-- Location: FF_X113_Y39_N9
\pc|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \addpc|stage2|s~combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|Q\(1));

-- Location: LCCOMB_X113_Y39_N26
\addpc|stage3|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \addpc|stage3|s~combout\ = \pc|Q\(2) $ (((\pc|Q\(0) & \pc|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(0),
	datac => \pc|Q\(2),
	datad => \pc|Q\(1),
	combout => \addpc|stage3|s~combout\);

-- Location: FF_X113_Y39_N27
\pc|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \addpc|stage3|s~combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|Q\(2));

-- Location: LCCOMB_X113_Y39_N28
\addpc|stage4|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \addpc|stage4|s~combout\ = \pc|Q\(3) $ (((\pc|Q\(0) & (\pc|Q\(1) & \pc|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(0),
	datab => \pc|Q\(1),
	datac => \pc|Q\(3),
	datad => \pc|Q\(2),
	combout => \addpc|stage4|s~combout\);

-- Location: FF_X113_Y39_N29
\pc|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \addpc|stage4|s~combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|Q\(3));

-- Location: LCCOMB_X112_Y39_N16
\im|output[30]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \im|output[30]~0_combout\ = (!\pc|Q\(3) & (\pc|Q\(2) $ (((\pc|Q\(0)) # (\pc|Q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(0),
	datab => \pc|Q\(2),
	datac => \pc|Q\(1),
	datad => \pc|Q\(3),
	combout => \im|output[30]~0_combout\);

-- Location: LCCOMB_X113_Y39_N4
\im|stage_dec|s2|y[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \im|stage_dec|s2|y\(3) = (!\pc|Q\(2) & (\pc|Q\(1) & (\pc|Q\(0) & !\pc|Q\(3))))

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
	combout => \im|stage_dec|s2|y\(3));

-- Location: LCCOMB_X114_Y39_N6
\im|output[29]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \im|output[29]~3_combout\ = (!\pc|Q\(2) & (!\pc|Q\(3) & ((\pc|Q\(1)) # (\pc|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(1),
	datab => \pc|Q\(0),
	datac => \pc|Q\(2),
	datad => \pc|Q\(3),
	combout => \im|output[29]~3_combout\);

-- Location: LCCOMB_X114_Y39_N18
\id|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \id|Equal0~1_combout\ = (\im|output[30]~0_combout\ & (!\im|stage_dec|s2|y\(3) & \im|output[29]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \im|output[30]~0_combout\,
	datac => \im|stage_dec|s2|y\(3),
	datad => \im|output[29]~3_combout\,
	combout => \id|Equal0~1_combout\);

-- Location: LCCOMB_X112_Y39_N18
\im|output[16]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \im|output[16]~1_combout\ = (!\pc|Q\(1) & (!\pc|Q\(3) & (\pc|Q\(0) $ (\pc|Q\(2)))))

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
	combout => \im|output[16]~1_combout\);

-- Location: LCCOMB_X110_Y40_N12
\rf|m3|stage3|f~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m3|stage3|f~3_combout\ = (!\pc|Q\(3) & !\pc|Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pc|Q\(3),
	datac => \pc|Q\(2),
	combout => \rf|m3|stage3|f~3_combout\);

-- Location: LCCOMB_X110_Y40_N10
\rf|m3|stage3|f~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m3|stage3|f~9_combout\ = (\reset~input_o\) # ((!\pc|Q\(0) & (\pc|Q\(1) & \rf|m3|stage3|f~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(0),
	datab => \reset~input_o\,
	datac => \pc|Q\(1),
	datad => \rf|m3|stage3|f~3_combout\,
	combout => \rf|m3|stage3|f~9_combout\);

-- Location: FF_X112_Y39_N5
\rf|r3|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m1|stage3|f~0_combout\,
	sload => VCC,
	ena => \rf|m3|stage3|f~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r3|Q\(0));

-- Location: LCCOMB_X112_Y39_N12
\rf|value2[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[0]~0_combout\ = (\im|output[30]~0_combout\ & ((\im|output[16]~1_combout\ & (\rf|r2|Q\(0))) # (!\im|output[16]~1_combout\ & ((\rf|r3|Q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r2|Q\(0),
	datab => \im|output[16]~1_combout\,
	datac => \rf|r3|Q\(0),
	datad => \im|output[30]~0_combout\,
	combout => \rf|value2[0]~0_combout\);

-- Location: LCCOMB_X114_Y39_N22
\rf|value1[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[0]~0_combout\ = (\rf|r2|Q\(0) & \im|stage_dec|s2|y\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r2|Q\(0),
	datab => \im|stage_dec|s2|y\(3),
	combout => \rf|value1[0]~0_combout\);

-- Location: LCCOMB_X113_Y39_N10
\im|output[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \im|output[0]~2_combout\ = (!\pc|Q\(3) & ((\pc|Q\(2) & (!\pc|Q\(1) & !\pc|Q\(0))) # (!\pc|Q\(2) & ((\pc|Q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(2),
	datab => \pc|Q\(1),
	datac => \pc|Q\(0),
	datad => \pc|Q\(3),
	combout => \im|output[0]~2_combout\);

-- Location: LCCOMB_X114_Y39_N12
\alup|ripCarry|stage1|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alup|ripCarry|stage1|s~0_combout\ = \rf|value1[0]~0_combout\ $ (((\id|Equal0~0_combout\ & ((!\im|output[0]~2_combout\))) # (!\id|Equal0~0_combout\ & (\rf|value2[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \id|Equal0~0_combout\,
	datab => \rf|value2[0]~0_combout\,
	datac => \rf|value1[0]~0_combout\,
	datad => \im|output[0]~2_combout\,
	combout => \alup|ripCarry|stage1|s~0_combout\);

-- Location: LCCOMB_X112_Y39_N30
\rf|m1|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m1|stage3|f~0_combout\ = (!\reset~input_o\ & ((\id|Equal0~1_combout\ & ((\mx_wb|f[0]~87_combout\))) # (!\id|Equal0~1_combout\ & (\alup|ripCarry|stage1|s~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \id|Equal0~1_combout\,
	datac => \alup|ripCarry|stage1|s~0_combout\,
	datad => \mx_wb|f[0]~87_combout\,
	combout => \rf|m1|stage3|f~0_combout\);

-- Location: LCCOMB_X110_Y40_N6
\rf|m2|stage3|f~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m2|stage3|f~8_combout\ = (\reset~input_o\) # ((\pc|Q\(0) & (!\pc|Q\(2) & !\pc|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(0),
	datab => \reset~input_o\,
	datac => \pc|Q\(2),
	datad => \pc|Q\(3),
	combout => \rf|m2|stage3|f~8_combout\);

-- Location: FF_X112_Y39_N31
\rf|r2|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|m1|stage3|f~0_combout\,
	ena => \rf|m2|stage3|f~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r2|Q\(0));

-- Location: LCCOMB_X110_Y40_N4
\dm|m2|stage3|f~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|m2|stage3|f~2_combout\ = (!\reset~input_o\ & \rf|value2[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \rf|value2[2]~2_combout\,
	combout => \dm|m2|stage3|f~2_combout\);

-- Location: LCCOMB_X114_Y38_N24
\dm|r6|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|r6|Q[2]~feeder_combout\ = \dm|m2|stage3|f~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dm|m2|stage3|f~2_combout\,
	combout => \dm|r6|Q[2]~feeder_combout\);

-- Location: LCCOMB_X113_Y39_N0
\id|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \id|Equal0~0_combout\ = (!\pc|Q\(3) & ((\pc|Q\(2) & (!\pc|Q\(0) & !\pc|Q\(1))) # (!\pc|Q\(2) & (\pc|Q\(0) $ (\pc|Q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(2),
	datab => \pc|Q\(3),
	datac => \pc|Q\(0),
	datad => \pc|Q\(1),
	combout => \id|Equal0~0_combout\);

-- Location: FF_X112_Y39_N23
\rf|r2|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|m1|stage3|f~2_combout\,
	ena => \rf|m2|stage3|f~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r2|Q\(2));

-- Location: LCCOMB_X114_Y39_N10
\rf|value2[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[2]~3_combout\ = (\im|output[16]~1_combout\ & ((\rf|r2|Q\(2)))) # (!\im|output[16]~1_combout\ & (\rf|r3|Q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r3|Q\(2),
	datab => \rf|r2|Q\(2),
	datad => \im|output[16]~1_combout\,
	combout => \rf|value2[2]~3_combout\);

-- Location: LCCOMB_X114_Y39_N14
\mux_alu|f[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_alu|f[2]~2_combout\ = ((\id|Equal0~0_combout\) # (!\rf|value2[2]~3_combout\)) # (!\im|output[30]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \im|output[30]~0_combout\,
	datac => \id|Equal0~0_combout\,
	datad => \rf|value2[2]~3_combout\,
	combout => \mux_alu|f[2]~2_combout\);

-- Location: LCCOMB_X113_Y39_N6
\mux_alu|f[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_alu|f[0]~0_combout\ = (\im|stage_dec|s2|y\(3) & (((\rf|value2[0]~0_combout\)))) # (!\im|stage_dec|s2|y\(3) & ((\im|output[30]~0_combout\ & (!\im|output[0]~2_combout\)) # (!\im|output[30]~0_combout\ & ((\rf|value2[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im|output[0]~2_combout\,
	datab => \im|stage_dec|s2|y\(3),
	datac => \im|output[30]~0_combout\,
	datad => \rf|value2[0]~0_combout\,
	combout => \mux_alu|f[0]~0_combout\);

-- Location: FF_X112_Y39_N3
\rf|r3|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m1|stage3|f~3_combout\,
	sload => VCC,
	ena => \rf|m3|stage3|f~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r3|Q\(1));

-- Location: LCCOMB_X112_Y39_N8
\rf|value2[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[1]~4_combout\ = (\im|output[16]~1_combout\ & ((\rf|r2|Q\(1)))) # (!\im|output[16]~1_combout\ & (\rf|r3|Q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf|r3|Q\(1),
	datac => \rf|r2|Q\(1),
	datad => \im|output[16]~1_combout\,
	combout => \rf|value2[1]~4_combout\);

-- Location: LCCOMB_X114_Y39_N4
\mux_alu|f[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_alu|f[1]~1_combout\ = (\id|Equal0~0_combout\) # ((!\rf|value2[1]~4_combout\) # (!\im|output[30]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \id|Equal0~0_combout\,
	datab => \im|output[30]~0_combout\,
	datad => \rf|value2[1]~4_combout\,
	combout => \mux_alu|f[1]~1_combout\);

-- Location: LCCOMB_X109_Y39_N12
\rf|value1[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[1]~3_combout\ = (\rf|r2|Q\(1) & \im|stage_dec|s2|y\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|r2|Q\(1),
	datad => \im|stage_dec|s2|y\(3),
	combout => \rf|value1[1]~3_combout\);

-- Location: LCCOMB_X114_Y39_N20
\alup|ripCarry|stage2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alup|ripCarry|stage2|Cout~0_combout\ = (\mux_alu|f[1]~1_combout\ & (\rf|value1[0]~0_combout\ & (\mux_alu|f[0]~0_combout\ & \rf|value1[1]~3_combout\))) # (!\mux_alu|f[1]~1_combout\ & ((\rf|value1[1]~3_combout\) # ((\rf|value1[0]~0_combout\ & 
-- \mux_alu|f[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value1[0]~0_combout\,
	datab => \mux_alu|f[0]~0_combout\,
	datac => \mux_alu|f[1]~1_combout\,
	datad => \rf|value1[1]~3_combout\,
	combout => \alup|ripCarry|stage2|Cout~0_combout\);

-- Location: LCCOMB_X114_Y39_N26
\alup|ripCarry|stage3|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \alup|ripCarry|stage3|s~combout\ = \mux_alu|f[2]~2_combout\ $ (\alup|ripCarry|stage2|Cout~0_combout\ $ (((\rf|r2|Q\(2) & \im|stage_dec|s2|y\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r2|Q\(2),
	datab => \im|stage_dec|s2|y\(3),
	datac => \mux_alu|f[2]~2_combout\,
	datad => \alup|ripCarry|stage2|Cout~0_combout\,
	combout => \alup|ripCarry|stage3|s~combout\);

-- Location: LCCOMB_X114_Y39_N0
\alup|ripCarry|stage3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alup|ripCarry|stage3|Cout~0_combout\ = (\mux_alu|f[2]~2_combout\ & (\rf|r2|Q\(2) & (\im|stage_dec|s2|y\(3) & \alup|ripCarry|stage2|Cout~0_combout\))) # (!\mux_alu|f[2]~2_combout\ & ((\alup|ripCarry|stage2|Cout~0_combout\) # ((\rf|r2|Q\(2) & 
-- \im|stage_dec|s2|y\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r2|Q\(2),
	datab => \im|stage_dec|s2|y\(3),
	datac => \mux_alu|f[2]~2_combout\,
	datad => \alup|ripCarry|stage2|Cout~0_combout\,
	combout => \alup|ripCarry|stage3|Cout~0_combout\);

-- Location: LCCOMB_X114_Y39_N16
\id|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \id|Equal1~0_combout\ = (!\im|output[29]~3_combout\ & (!\im|stage_dec|s2|y\(3) & \im|output[30]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im|output[29]~3_combout\,
	datab => \im|stage_dec|s2|y\(3),
	datad => \im|output[30]~0_combout\,
	combout => \id|Equal1~0_combout\);

-- Location: LCCOMB_X114_Y39_N2
\alup|ripCarry|stage2|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \alup|ripCarry|stage2|s~combout\ = \mux_alu|f[1]~1_combout\ $ (\rf|value1[1]~3_combout\ $ (((\rf|value1[0]~0_combout\ & \mux_alu|f[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value1[0]~0_combout\,
	datab => \mux_alu|f[1]~1_combout\,
	datac => \mux_alu|f[0]~0_combout\,
	datad => \rf|value1[1]~3_combout\,
	combout => \alup|ripCarry|stage2|s~combout\);

-- Location: LCCOMB_X114_Y38_N12
\dm|m2|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|m2|stage3|f~0_combout\ = (\id|Equal1~0_combout\ & (!\alup|ripCarry|stage2|s~combout\ & (\alup|ripCarry|stage4|s~0_combout\ $ (\alup|ripCarry|stage3|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alup|ripCarry|stage4|s~0_combout\,
	datab => \alup|ripCarry|stage3|Cout~0_combout\,
	datac => \id|Equal1~0_combout\,
	datad => \alup|ripCarry|stage2|s~combout\,
	combout => \dm|m2|stage3|f~0_combout\);

-- Location: LCCOMB_X114_Y38_N28
\dm|m6|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|m6|stage3|f~0_combout\ = (\reset~input_o\) # ((!\alup|ripCarry|stage1|s~0_combout\ & (!\alup|ripCarry|stage3|s~combout\ & \dm|m2|stage3|f~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alup|ripCarry|stage1|s~0_combout\,
	datab => \reset~input_o\,
	datac => \alup|ripCarry|stage3|s~combout\,
	datad => \dm|m2|stage3|f~0_combout\,
	combout => \dm|m6|stage3|f~0_combout\);

-- Location: FF_X114_Y38_N25
\dm|r6|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \dm|r6|Q[2]~feeder_combout\,
	ena => \dm|m6|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r6|Q\(2));

-- Location: LCCOMB_X112_Y39_N2
\rf|value2[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[1]~1_combout\ = (\im|output[30]~0_combout\ & ((\im|output[16]~1_combout\ & (\rf|r2|Q\(1))) # (!\im|output[16]~1_combout\ & ((\rf|r3|Q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r2|Q\(1),
	datab => \im|output[30]~0_combout\,
	datac => \rf|r3|Q\(1),
	datad => \im|output[16]~1_combout\,
	combout => \rf|value2[1]~1_combout\);

-- Location: LCCOMB_X114_Y39_N24
\mx_wb|f[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[0]~32_combout\ = (\rf|value1[0]~0_combout\ & (\rf|value2[0]~0_combout\ & (\rf|value2[1]~1_combout\ $ (!\rf|value1[1]~3_combout\)))) # (!\rf|value1[0]~0_combout\ & (!\rf|value2[0]~0_combout\ & (\rf|value2[1]~1_combout\ $ 
-- (\rf|value1[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value1[0]~0_combout\,
	datab => \rf|value2[1]~1_combout\,
	datac => \rf|value2[0]~0_combout\,
	datad => \rf|value1[1]~3_combout\,
	combout => \mx_wb|f[0]~32_combout\);

-- Location: LCCOMB_X110_Y39_N20
\mx_wb|f[0]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[0]~33_combout\ = (\mx_wb|f[0]~32_combout\ & (\rf|value2[2]~2_combout\ $ (((\rf|value1[1]~3_combout\ & \rf|value2[1]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value1[1]~3_combout\,
	datab => \rf|value2[2]~2_combout\,
	datac => \rf|value2[1]~1_combout\,
	datad => \mx_wb|f[0]~32_combout\,
	combout => \mx_wb|f[0]~33_combout\);

-- Location: LCCOMB_X113_Y39_N12
\dm|value1[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|value1[0]~7_combout\ = (!\pc|Q\(3) & ((\pc|Q\(2) & (!\pc|Q\(0) & !\pc|Q\(1))) # (!\pc|Q\(2) & (\pc|Q\(0) $ (\pc|Q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(2),
	datab => \pc|Q\(3),
	datac => \pc|Q\(0),
	datad => \pc|Q\(1),
	combout => \dm|value1[0]~7_combout\);

-- Location: LCCOMB_X113_Y39_N22
\dm|value1[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|value1[0]~9_combout\ = (!\pc|Q\(2) & (!\pc|Q\(3) & (!\pc|Q\(0) & \pc|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(2),
	datab => \pc|Q\(3),
	datac => \pc|Q\(0),
	datad => \pc|Q\(1),
	combout => \dm|value1[0]~9_combout\);

-- Location: LCCOMB_X111_Y39_N12
\dm|value1[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|value1[0]~10_combout\ = (\rf|value2[2]~2_combout\) # ((\rf|value2[1]~1_combout\) # (!\rf|value2[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value2[2]~2_combout\,
	datac => \rf|value2[0]~0_combout\,
	datad => \rf|value2[1]~1_combout\,
	combout => \dm|value1[0]~10_combout\);

-- Location: LCCOMB_X111_Y39_N18
\dm|value1[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|value1[0]~11_combout\ = (\dm|value1[0]~10_combout\ & (\dm|value1[0]~9_combout\)) # (!\dm|value1[0]~10_combout\ & ((!\im|output[16]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dm|value1[0]~9_combout\,
	datac => \im|output[16]~1_combout\,
	datad => \dm|value1[0]~10_combout\,
	combout => \dm|value1[0]~11_combout\);

-- Location: LCCOMB_X113_Y39_N24
\rf|value1[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[2]~2_combout\ = (\im|stage_dec|s2|y\(3) & \rf|r2|Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \im|stage_dec|s2|y\(3),
	datad => \rf|r2|Q\(2),
	combout => \rf|value1[2]~2_combout\);

-- Location: FF_X112_Y39_N25
\rf|r3|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m1|stage3|f~1_combout\,
	sload => VCC,
	ena => \rf|m3|stage3|f~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r3|Q\(3));

-- Location: LCCOMB_X112_Y39_N24
\dm|m0|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|m0|stage3|f~0_combout\ = (\im|output[30]~0_combout\ & ((\im|output[16]~1_combout\ & (\rf|r2|Q\(3))) # (!\im|output[16]~1_combout\ & ((\rf|r3|Q\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r2|Q\(3),
	datab => \im|output[30]~0_combout\,
	datac => \rf|r3|Q\(3),
	datad => \im|output[16]~1_combout\,
	combout => \dm|m0|stage3|f~0_combout\);

-- Location: LCCOMB_X112_Y38_N24
\dm|m0|stage3|f~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|m0|stage3|f~5_combout\ = (!\reset~input_o\ & \dm|m0|stage3|f~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \dm|m0|stage3|f~0_combout\,
	combout => \dm|m0|stage3|f~5_combout\);

-- Location: LCCOMB_X114_Y38_N20
\dm|r6|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|r6|Q[3]~feeder_combout\ = \dm|m0|stage3|f~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dm|m0|stage3|f~5_combout\,
	combout => \dm|r6|Q[3]~feeder_combout\);

-- Location: FF_X114_Y38_N21
\dm|r6|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \dm|r6|Q[3]~feeder_combout\,
	ena => \dm|m6|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r6|Q\(3));

-- Location: LCCOMB_X111_Y40_N0
\mx_wb|f[3]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[3]~102_combout\ = (\dm|r2|Q\(3) & ((\mx_wb|f[0]~42_combout\) # ((\dm|r6|Q\(3) & \mx_wb|f[0]~39_combout\)))) # (!\dm|r2|Q\(3) & (\dm|r6|Q\(3) & ((\mx_wb|f[0]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm|r2|Q\(3),
	datab => \dm|r6|Q\(3),
	datac => \mx_wb|f[0]~42_combout\,
	datad => \mx_wb|f[0]~39_combout\,
	combout => \mx_wb|f[3]~102_combout\);

-- Location: LCCOMB_X113_Y40_N18
\dm|r9|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|r9|Q[3]~feeder_combout\ = \dm|m0|stage3|f~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dm|m0|stage3|f~5_combout\,
	combout => \dm|r9|Q[3]~feeder_combout\);

-- Location: LCCOMB_X112_Y39_N10
\alup|ripCarry|stage4|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alup|ripCarry|stage4|s~0_combout\ = (\rf|r2|Q\(3) & (\im|stage_dec|s2|y\(3) $ (((\id|Equal0~0_combout\) # (!\dm|m0|stage3|f~0_combout\))))) # (!\rf|r2|Q\(3) & ((\id|Equal0~0_combout\) # ((!\dm|m0|stage3|f~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r2|Q\(3),
	datab => \id|Equal0~0_combout\,
	datac => \im|stage_dec|s2|y\(3),
	datad => \dm|m0|stage3|f~0_combout\,
	combout => \alup|ripCarry|stage4|s~0_combout\);

-- Location: LCCOMB_X113_Y40_N2
\dm|m9|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|m9|stage3|f~0_combout\ = (\id|Equal1~0_combout\ & (\alup|ripCarry|stage1|s~0_combout\ & (\alup|ripCarry|stage4|s~0_combout\ $ (!\alup|ripCarry|stage3|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \id|Equal1~0_combout\,
	datab => \alup|ripCarry|stage4|s~0_combout\,
	datac => \alup|ripCarry|stage1|s~0_combout\,
	datad => \alup|ripCarry|stage3|Cout~0_combout\,
	combout => \dm|m9|stage3|f~0_combout\);

-- Location: LCCOMB_X113_Y40_N12
\dm|m9|stage3|f~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|m9|stage3|f~1_combout\ = (\reset~input_o\) # ((\alup|ripCarry|stage2|s~combout\ & (\alup|ripCarry|stage3|s~combout\ & \dm|m9|stage3|f~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alup|ripCarry|stage2|s~combout\,
	datab => \reset~input_o\,
	datac => \alup|ripCarry|stage3|s~combout\,
	datad => \dm|m9|stage3|f~0_combout\,
	combout => \dm|m9|stage3|f~1_combout\);

-- Location: FF_X113_Y40_N19
\dm|r9|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \dm|r9|Q[3]~feeder_combout\,
	ena => \dm|m9|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r9|Q\(3));

-- Location: LCCOMB_X114_Y39_N30
\dm|m1|stage3|f~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|m1|stage3|f~1_combout\ = (\alup|ripCarry|stage1|s~0_combout\ & (\id|Equal1~0_combout\ & (\alup|ripCarry|stage4|s~0_combout\ $ (\alup|ripCarry|stage3|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alup|ripCarry|stage1|s~0_combout\,
	datab => \id|Equal1~0_combout\,
	datac => \alup|ripCarry|stage4|s~0_combout\,
	datad => \alup|ripCarry|stage3|Cout~0_combout\,
	combout => \dm|m1|stage3|f~1_combout\);

-- Location: LCCOMB_X114_Y39_N28
\dm|m1|stage3|f~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|m1|stage3|f~2_combout\ = (\reset~input_o\) # ((\alup|ripCarry|stage3|s~combout\ & (\dm|m1|stage3|f~1_combout\ & \alup|ripCarry|stage2|s~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alup|ripCarry|stage3|s~combout\,
	datab => \reset~input_o\,
	datac => \dm|m1|stage3|f~1_combout\,
	datad => \alup|ripCarry|stage2|s~combout\,
	combout => \dm|m1|stage3|f~2_combout\);

-- Location: FF_X114_Y39_N23
\dm|r1|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \dm|m0|stage3|f~5_combout\,
	sload => VCC,
	ena => \dm|m1|stage3|f~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r1|Q\(3));

-- Location: LCCOMB_X112_Y38_N14
\dm|m7|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|m7|stage3|f~0_combout\ = (\reset~input_o\) # ((\dm|m1|stage3|f~1_combout\ & (!\alup|ripCarry|stage3|s~combout\ & !\alup|ripCarry|stage2|s~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm|m1|stage3|f~1_combout\,
	datab => \reset~input_o\,
	datac => \alup|ripCarry|stage3|s~combout\,
	datad => \alup|ripCarry|stage2|s~combout\,
	combout => \dm|m7|stage3|f~0_combout\);

-- Location: FF_X111_Y39_N31
\dm|r7|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \dm|m0|stage3|f~5_combout\,
	sload => VCC,
	ena => \dm|m7|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r7|Q\(3));

-- Location: LCCOMB_X113_Y39_N2
\dm|value1[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|value1[0]~6_combout\ = (!\rf|value1[2]~2_combout\ & (\rf|value1[3]~1_combout\ $ (((\id|Equal0~0_combout\) # (!\dm|m0|stage3|f~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \id|Equal0~0_combout\,
	datab => \rf|value1[2]~2_combout\,
	datac => \rf|value1[3]~1_combout\,
	datad => \dm|m0|stage3|f~0_combout\,
	combout => \dm|value1[0]~6_combout\);

-- Location: LCCOMB_X111_Y39_N28
\dm|value1[0]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|value1[0]~26_combout\ = (!\rf|value1[1]~3_combout\ & (!\rf|value1[0]~0_combout\ & (\dm|value1[0]~6_combout\ & \dm|value1[0]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value1[1]~3_combout\,
	datab => \rf|value1[0]~0_combout\,
	datac => \dm|value1[0]~6_combout\,
	datad => \dm|value1[0]~11_combout\,
	combout => \dm|value1[0]~26_combout\);

-- Location: LCCOMB_X111_Y39_N14
\mx_wb|f[0]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[0]~79_combout\ = (\rf|value2[1]~1_combout\ & (\rf|value1[1]~3_combout\ & (\rf|value1[2]~2_combout\ $ (\rf|value2[2]~2_combout\)))) # (!\rf|value2[1]~1_combout\ & (\rf|value1[2]~2_combout\ & (\rf|value2[2]~2_combout\ & !\rf|value1[1]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value2[1]~1_combout\,
	datab => \rf|value1[2]~2_combout\,
	datac => \rf|value2[2]~2_combout\,
	datad => \rf|value1[1]~3_combout\,
	combout => \mx_wb|f[0]~79_combout\);

-- Location: LCCOMB_X109_Y39_N30
\mx_wb|f[0]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[0]~46_combout\ = (!\dm|value1[0]~7_combout\ & (\rf|value2[0]~0_combout\ $ (((\im|stage_dec|s2|y\(3) & \rf|r2|Q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im|stage_dec|s2|y\(3),
	datab => \rf|r2|Q\(0),
	datac => \rf|value2[0]~0_combout\,
	datad => \dm|value1[0]~7_combout\,
	combout => \mx_wb|f[0]~46_combout\);

-- Location: LCCOMB_X111_Y39_N4
\mx_wb|f[0]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[0]~80_combout\ = (!\alup|ripCarry|stage4|s~0_combout\ & (\mx_wb|f[0]~79_combout\ & \mx_wb|f[0]~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alup|ripCarry|stage4|s~0_combout\,
	datac => \mx_wb|f[0]~79_combout\,
	datad => \mx_wb|f[0]~46_combout\,
	combout => \mx_wb|f[0]~80_combout\);

-- Location: LCCOMB_X114_Y39_N8
\dm|value1[0]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|value1[0]~29_combout\ = (!\pc|Q\(1) & \pc|Q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(1),
	datad => \pc|Q\(3),
	combout => \dm|value1[0]~29_combout\);

-- Location: LCCOMB_X113_Y39_N16
\dm|value1[0]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|value1[0]~18_combout\ = (\pc|Q\(2) & ((\pc|Q\(1)) # (!\pc|Q\(0)))) # (!\pc|Q\(2) & (\pc|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(2),
	datac => \pc|Q\(0),
	datad => \pc|Q\(1),
	combout => \dm|value1[0]~18_combout\);

-- Location: LCCOMB_X110_Y39_N6
\dm|value1[0]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|value1[0]~19_combout\ = (\pc|Q\(1) & (!\rf|value2[1]~1_combout\ & ((\pc|Q\(3)) # (\dm|value1[0]~18_combout\)))) # (!\pc|Q\(1) & (!\pc|Q\(3) & ((\dm|value1[0]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(1),
	datab => \pc|Q\(3),
	datac => \rf|value2[1]~1_combout\,
	datad => \dm|value1[0]~18_combout\,
	combout => \dm|value1[0]~19_combout\);

-- Location: LCCOMB_X110_Y39_N8
\dm|value1[0]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|value1[0]~20_combout\ = (\dm|value1[0]~19_combout\ & ((\pc|Q\(1) & (!\rf|value2[2]~2_combout\ & !\rf|value2[0]~0_combout\)) # (!\pc|Q\(1) & ((\rf|value2[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(1),
	datab => \rf|value2[2]~2_combout\,
	datac => \rf|value2[0]~0_combout\,
	datad => \dm|value1[0]~19_combout\,
	combout => \dm|value1[0]~20_combout\);

-- Location: LCCOMB_X110_Y39_N10
\dm|value1[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|value1[0]~16_combout\ = (\rf|value2[1]~1_combout\ & (\pc|Q\(2) $ ((!\pc|Q\(0))))) # (!\rf|value2[1]~1_combout\ & (\rf|value2[2]~2_combout\ & (\pc|Q\(2) $ (!\pc|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(2),
	datab => \pc|Q\(0),
	datac => \rf|value2[1]~1_combout\,
	datad => \rf|value2[2]~2_combout\,
	combout => \dm|value1[0]~16_combout\);

-- Location: LCCOMB_X110_Y39_N16
\dm|value1[0]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|value1[0]~17_combout\ = (!\pc|Q\(1) & (!\pc|Q\(3) & (!\rf|value2[0]~0_combout\ & !\dm|value1[0]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(1),
	datab => \pc|Q\(3),
	datac => \rf|value2[0]~0_combout\,
	datad => \dm|value1[0]~16_combout\,
	combout => \dm|value1[0]~17_combout\);

-- Location: LCCOMB_X110_Y39_N12
\dm|value1[0]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|value1[0]~23_combout\ = (\dm|value1[0]~6_combout\ & ((\dm|value1[0]~29_combout\) # ((\dm|value1[0]~20_combout\) # (\dm|value1[0]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm|value1[0]~6_combout\,
	datab => \dm|value1[0]~29_combout\,
	datac => \dm|value1[0]~20_combout\,
	datad => \dm|value1[0]~17_combout\,
	combout => \dm|value1[0]~23_combout\);

-- Location: LCCOMB_X111_Y39_N2
\mx_wb|f[0]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[0]~81_combout\ = (\dm|value1[0]~26_combout\) # ((\mx_wb|f[0]~80_combout\) # ((\dm|value1[0]~8_combout\ & \dm|value1[0]~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm|value1[0]~8_combout\,
	datab => \dm|value1[0]~26_combout\,
	datac => \mx_wb|f[0]~80_combout\,
	datad => \dm|value1[0]~23_combout\,
	combout => \mx_wb|f[0]~81_combout\);

-- Location: LCCOMB_X111_Y39_N30
\mx_wb|f[3]~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[3]~106_combout\ = (\mx_wb|f[0]~78_combout\ & ((\dm|r7|Q\(3)) # ((\dm|r1|Q\(3) & \mx_wb|f[0]~81_combout\)))) # (!\mx_wb|f[0]~78_combout\ & (\dm|r1|Q\(3) & ((\mx_wb|f[0]~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mx_wb|f[0]~78_combout\,
	datab => \dm|r1|Q\(3),
	datac => \dm|r7|Q\(3),
	datad => \mx_wb|f[0]~81_combout\,
	combout => \mx_wb|f[3]~106_combout\);

-- Location: LCCOMB_X112_Y39_N4
\dm|value1[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|value1[0]~13_combout\ = ((!\rf|r2|Q\(0) & !\rf|r2|Q\(1))) # (!\im|stage_dec|s2|y\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r2|Q\(0),
	datab => \rf|r2|Q\(1),
	datad => \im|stage_dec|s2|y\(3),
	combout => \dm|value1[0]~13_combout\);

-- Location: LCCOMB_X111_Y40_N22
\mx_wb|f[0]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[0]~50_combout\ = (\dm|value1[0]~13_combout\ & ((\id|Equal0~0_combout\ & ((\im|output[0]~2_combout\))) # (!\id|Equal0~0_combout\ & (!\rf|value2[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value2[0]~0_combout\,
	datab => \im|output[0]~2_combout\,
	datac => \id|Equal0~0_combout\,
	datad => \dm|value1[0]~13_combout\,
	combout => \mx_wb|f[0]~50_combout\);

-- Location: LCCOMB_X113_Y39_N18
\dm|value1[0]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|value1[0]~14_combout\ = (\im|stage_dec|s2|y\(3) & (\rf|r2|Q\(1) & \rf|r2|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \im|stage_dec|s2|y\(3),
	datac => \rf|r2|Q\(1),
	datad => \rf|r2|Q\(0),
	combout => \dm|value1[0]~14_combout\);

-- Location: LCCOMB_X111_Y40_N12
\mx_wb|f[0]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[0]~49_combout\ = (\dm|value1[0]~14_combout\ & ((\id|Equal0~0_combout\ & (!\im|output[0]~2_combout\)) # (!\id|Equal0~0_combout\ & ((\rf|value2[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \id|Equal0~0_combout\,
	datab => \im|output[0]~2_combout\,
	datac => \dm|value1[0]~14_combout\,
	datad => \rf|value2[0]~0_combout\,
	combout => \mx_wb|f[0]~49_combout\);

-- Location: LCCOMB_X111_Y40_N18
\mx_wb|f[0]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[0]~73_combout\ = (\rf|value1[2]~2_combout\ & (\alup|ripCarry|stage4|s~0_combout\ & ((\mx_wb|f[0]~49_combout\)))) # (!\rf|value1[2]~2_combout\ & (!\alup|ripCarry|stage4|s~0_combout\ & (\mx_wb|f[0]~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value1[2]~2_combout\,
	datab => \alup|ripCarry|stage4|s~0_combout\,
	datac => \mx_wb|f[0]~50_combout\,
	datad => \mx_wb|f[0]~49_combout\,
	combout => \mx_wb|f[0]~73_combout\);

-- Location: LCCOMB_X111_Y40_N14
\mx_wb|f[0]~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[0]~112_combout\ = (\mx_wb|f[0]~73_combout\ & ((\id|Equal0~0_combout\) # ((!\rf|value2[1]~1_combout\ & !\rf|value2[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \id|Equal0~0_combout\,
	datab => \rf|value2[1]~1_combout\,
	datac => \rf|value2[2]~2_combout\,
	datad => \mx_wb|f[0]~73_combout\,
	combout => \mx_wb|f[0]~112_combout\);

-- Location: LCCOMB_X111_Y40_N16
\mx_wb|f[0]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[0]~55_combout\ = (!\id|Equal0~0_combout\ & (\rf|value2[1]~1_combout\ & (\rf|value1[2]~2_combout\ $ (\rf|value2[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \id|Equal0~0_combout\,
	datab => \rf|value1[2]~2_combout\,
	datac => \rf|value2[2]~2_combout\,
	datad => \rf|value2[1]~1_combout\,
	combout => \mx_wb|f[0]~55_combout\);

-- Location: LCCOMB_X111_Y40_N2
\mx_wb|f[0]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[0]~56_combout\ = (\mx_wb|f[0]~55_combout\ & ((\rf|value1[0]~0_combout\ & (!\rf|value1[1]~3_combout\ & \mux_alu|f[0]~0_combout\)) # (!\rf|value1[0]~0_combout\ & (\rf|value1[1]~3_combout\ & !\mux_alu|f[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value1[0]~0_combout\,
	datab => \mx_wb|f[0]~55_combout\,
	datac => \rf|value1[1]~3_combout\,
	datad => \mux_alu|f[0]~0_combout\,
	combout => \mx_wb|f[0]~56_combout\);

-- Location: LCCOMB_X111_Y40_N20
\mx_wb|f[0]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[0]~74_combout\ = (\mx_wb|f[0]~112_combout\) # ((\alup|ripCarry|stage4|s~0_combout\ & ((\mx_wb|f[0]~54_combout\) # (\mx_wb|f[0]~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mx_wb|f[0]~54_combout\,
	datab => \alup|ripCarry|stage4|s~0_combout\,
	datac => \mx_wb|f[0]~112_combout\,
	datad => \mx_wb|f[0]~56_combout\,
	combout => \mx_wb|f[0]~74_combout\);

-- Location: LCCOMB_X114_Y40_N26
\dm|r8|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|r8|Q[3]~feeder_combout\ = \dm|m0|stage3|f~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dm|m0|stage3|f~5_combout\,
	combout => \dm|r8|Q[3]~feeder_combout\);

-- Location: LCCOMB_X114_Y40_N28
\alup|ripCarry|stage4|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \alup|ripCarry|stage4|s~combout\ = \alup|ripCarry|stage4|s~0_combout\ $ (\alup|ripCarry|stage3|Cout~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alup|ripCarry|stage4|s~0_combout\,
	datad => \alup|ripCarry|stage3|Cout~0_combout\,
	combout => \alup|ripCarry|stage4|s~combout\);

-- Location: LCCOMB_X114_Y40_N12
\dm|stage_dec_write|s4|y[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|stage_dec_write|s4|y[2]~0_combout\ = (!\alup|ripCarry|stage1|s~0_combout\ & (\id|Equal1~0_combout\ & (\alup|ripCarry|stage3|s~combout\ & !\alup|ripCarry|stage4|s~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alup|ripCarry|stage1|s~0_combout\,
	datab => \id|Equal1~0_combout\,
	datac => \alup|ripCarry|stage3|s~combout\,
	datad => \alup|ripCarry|stage4|s~combout\,
	combout => \dm|stage_dec_write|s4|y[2]~0_combout\);

-- Location: LCCOMB_X114_Y40_N8
\dm|m8|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|m8|stage3|f~0_combout\ = (\reset~input_o\) # ((\alup|ripCarry|stage2|s~combout\ & \dm|stage_dec_write|s4|y[2]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alup|ripCarry|stage2|s~combout\,
	datab => \reset~input_o\,
	datad => \dm|stage_dec_write|s4|y[2]~0_combout\,
	combout => \dm|m8|stage3|f~0_combout\);

-- Location: FF_X114_Y40_N27
\dm|r8|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \dm|r8|Q[3]~feeder_combout\,
	ena => \dm|m8|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r8|Q\(3));

-- Location: LCCOMB_X112_Y40_N8
\mx_wb|f[0]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[0]~52_combout\ = (\id|Equal0~0_combout\) # ((!\rf|value2[1]~1_combout\ & !\rf|value2[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \id|Equal0~0_combout\,
	datab => \rf|value2[1]~1_combout\,
	datad => \rf|value2[2]~2_combout\,
	combout => \mx_wb|f[0]~52_combout\);

-- Location: LCCOMB_X112_Y40_N6
\mx_wb|f[0]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[0]~53_combout\ = (!\id|Equal0~0_combout\ & (!\rf|value2[1]~1_combout\ & \rf|value2[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \id|Equal0~0_combout\,
	datab => \rf|value2[1]~1_combout\,
	datad => \rf|value2[2]~2_combout\,
	combout => \mx_wb|f[0]~53_combout\);

-- Location: LCCOMB_X112_Y40_N16
\mx_wb|f[0]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[0]~67_combout\ = (\rf|value1[2]~2_combout\ & (\alup|ripCarry|stage4|s~0_combout\ & ((\mx_wb|f[0]~53_combout\)))) # (!\rf|value1[2]~2_combout\ & (!\alup|ripCarry|stage4|s~0_combout\ & (\mx_wb|f[0]~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value1[2]~2_combout\,
	datab => \alup|ripCarry|stage4|s~0_combout\,
	datac => \mx_wb|f[0]~52_combout\,
	datad => \mx_wb|f[0]~53_combout\,
	combout => \mx_wb|f[0]~67_combout\);

-- Location: LCCOMB_X112_Y40_N22
\mx_wb|f[0]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[0]~68_combout\ = (\mx_wb|f[0]~67_combout\ & ((\rf|value1[0]~0_combout\ & (\mux_alu|f[0]~0_combout\ & !\rf|value1[1]~3_combout\)) # (!\rf|value1[0]~0_combout\ & (!\mux_alu|f[0]~0_combout\ & \rf|value1[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value1[0]~0_combout\,
	datab => \mux_alu|f[0]~0_combout\,
	datac => \rf|value1[1]~3_combout\,
	datad => \mx_wb|f[0]~67_combout\,
	combout => \mx_wb|f[0]~68_combout\);

-- Location: LCCOMB_X112_Y40_N4
\mx_wb|f[0]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[0]~69_combout\ = (\mx_wb|f[0]~50_combout\ & ((\rf|value2[2]~2_combout\ & (\rf|value1[2]~2_combout\ & \alup|ripCarry|stage4|s~0_combout\)) # (!\rf|value2[2]~2_combout\ & (!\rf|value1[2]~2_combout\ & !\alup|ripCarry|stage4|s~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value2[2]~2_combout\,
	datab => \rf|value1[2]~2_combout\,
	datac => \alup|ripCarry|stage4|s~0_combout\,
	datad => \mx_wb|f[0]~50_combout\,
	combout => \mx_wb|f[0]~69_combout\);

-- Location: LCCOMB_X112_Y40_N18
\mx_wb|f[0]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[0]~70_combout\ = (\rf|value1[0]~0_combout\ & (\alup|ripCarry|stage4|s~0_combout\ & (\rf|value1[1]~3_combout\ & \mux_alu|f[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value1[0]~0_combout\,
	datab => \alup|ripCarry|stage4|s~0_combout\,
	datac => \rf|value1[1]~3_combout\,
	datad => \mux_alu|f[0]~0_combout\,
	combout => \mx_wb|f[0]~70_combout\);

-- Location: LCCOMB_X112_Y40_N12
\mx_wb|f[0]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[0]~71_combout\ = (\mx_wb|f[0]~69_combout\) # ((\mx_wb|f[0]~70_combout\ & (\rf|value2[2]~2_combout\ $ (\rf|value1[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value2[2]~2_combout\,
	datab => \rf|value1[2]~2_combout\,
	datac => \mx_wb|f[0]~69_combout\,
	datad => \mx_wb|f[0]~70_combout\,
	combout => \mx_wb|f[0]~71_combout\);

-- Location: LCCOMB_X112_Y40_N14
\mx_wb|f[0]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[0]~72_combout\ = (\mx_wb|f[0]~68_combout\) # ((!\id|Equal0~0_combout\ & (\rf|value2[1]~1_combout\ & \mx_wb|f[0]~71_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \id|Equal0~0_combout\,
	datab => \rf|value2[1]~1_combout\,
	datac => \mx_wb|f[0]~68_combout\,
	datad => \mx_wb|f[0]~71_combout\,
	combout => \mx_wb|f[0]~72_combout\);

-- Location: LCCOMB_X111_Y40_N10
\mx_wb|f[3]~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[3]~105_combout\ = (\dm|r10|Q\(3) & ((\mx_wb|f[0]~72_combout\) # ((\mx_wb|f[0]~74_combout\ & \dm|r8|Q\(3))))) # (!\dm|r10|Q\(3) & (\mx_wb|f[0]~74_combout\ & (\dm|r8|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm|r10|Q\(3),
	datab => \mx_wb|f[0]~74_combout\,
	datac => \dm|r8|Q\(3),
	datad => \mx_wb|f[0]~72_combout\,
	combout => \mx_wb|f[3]~105_combout\);

-- Location: LCCOMB_X111_Y40_N4
\mx_wb|f[3]~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[3]~107_combout\ = (\mx_wb|f[3]~106_combout\) # ((\mx_wb|f[3]~105_combout\) # ((\mx_wb|f[0]~85_combout\ & \dm|r9|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mx_wb|f[0]~85_combout\,
	datab => \dm|r9|Q\(3),
	datac => \mx_wb|f[3]~106_combout\,
	datad => \mx_wb|f[3]~105_combout\,
	combout => \mx_wb|f[3]~107_combout\);

-- Location: LCCOMB_X113_Y40_N20
\dm|m5|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|m5|stage3|f~0_combout\ = (\reset~input_o\) # ((\alup|ripCarry|stage2|s~combout\ & (\dm|m1|stage3|f~1_combout\ & !\alup|ripCarry|stage3|s~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alup|ripCarry|stage2|s~combout\,
	datab => \reset~input_o\,
	datac => \dm|m1|stage3|f~1_combout\,
	datad => \alup|ripCarry|stage3|s~combout\,
	combout => \dm|m5|stage3|f~0_combout\);

-- Location: FF_X108_Y39_N1
\dm|r5|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \dm|m0|stage3|f~5_combout\,
	sload => VCC,
	ena => \dm|m5|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r5|Q\(3));

-- Location: LCCOMB_X110_Y39_N14
\dm|value1[0]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|value1[0]~21_combout\ = (\dm|value1[0]~12_combout\ & ((\dm|value1[0]~29_combout\) # ((\dm|value1[0]~20_combout\) # (\dm|value1[0]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm|value1[0]~12_combout\,
	datab => \dm|value1[0]~29_combout\,
	datac => \dm|value1[0]~20_combout\,
	datad => \dm|value1[0]~17_combout\,
	combout => \dm|value1[0]~21_combout\);

-- Location: LCCOMB_X109_Y39_N20
\mx_wb|f[0]~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[0]~111_combout\ = (\mx_wb|f[0]~46_combout\ & (\rf|value2[1]~1_combout\ $ (((!\im|stage_dec|s2|y\(3)) # (!\rf|r2|Q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r2|Q\(1),
	datab => \rf|value2[1]~1_combout\,
	datac => \mx_wb|f[0]~46_combout\,
	datad => \im|stage_dec|s2|y\(3),
	combout => \mx_wb|f[0]~111_combout\);

-- Location: LCCOMB_X109_Y39_N26
\mx_wb|f[0]~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[0]~109_combout\ = (\im|stage_dec|s2|y\(3) & (\rf|r2|Q\(2) & (\rf|value2[2]~2_combout\ & !\alup|ripCarry|stage4|s~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im|stage_dec|s2|y\(3),
	datab => \rf|r2|Q\(2),
	datac => \rf|value2[2]~2_combout\,
	datad => \alup|ripCarry|stage4|s~0_combout\,
	combout => \mx_wb|f[0]~109_combout\);

-- Location: LCCOMB_X109_Y39_N4
\mx_wb|f[0]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[0]~59_combout\ = (\rf|value2[1]~1_combout\ & ((\mx_wb|f[0]~109_combout\) # ((!\rf|value2[2]~2_combout\ & \dm|value1[0]~6_combout\)))) # (!\rf|value2[1]~1_combout\ & (\rf|value2[2]~2_combout\ & ((\dm|value1[0]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value2[2]~2_combout\,
	datab => \rf|value2[1]~1_combout\,
	datac => \mx_wb|f[0]~109_combout\,
	datad => \dm|value1[0]~6_combout\,
	combout => \mx_wb|f[0]~59_combout\);

-- Location: LCCOMB_X108_Y39_N14
\dm|value1[0]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|value1[0]~27_combout\ = (\im|stage_dec|s2|y\(3) & (\dm|value1[0]~13_combout\ & (\alup|ripCarry|stage4|s~0_combout\ & \rf|r2|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im|stage_dec|s2|y\(3),
	datab => \dm|value1[0]~13_combout\,
	datac => \alup|ripCarry|stage4|s~0_combout\,
	datad => \rf|r2|Q\(2),
	combout => \dm|value1[0]~27_combout\);

-- Location: LCCOMB_X109_Y39_N10
\mx_wb|f[0]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[0]~60_combout\ = (\dm|value1[0]~11_combout\ & ((\dm|value1[0]~27_combout\) # ((\mx_wb|f[0]~111_combout\ & \mx_wb|f[0]~59_combout\)))) # (!\dm|value1[0]~11_combout\ & (\mx_wb|f[0]~111_combout\ & (\mx_wb|f[0]~59_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm|value1[0]~11_combout\,
	datab => \mx_wb|f[0]~111_combout\,
	datac => \mx_wb|f[0]~59_combout\,
	datad => \dm|value1[0]~27_combout\,
	combout => \mx_wb|f[0]~60_combout\);

-- Location: LCCOMB_X109_Y39_N16
\mx_wb|f[0]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[0]~61_combout\ = (\mx_wb|f[0]~60_combout\) # ((!\rf|value1[1]~3_combout\ & (\rf|value1[0]~0_combout\ & \dm|value1[0]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value1[1]~3_combout\,
	datab => \rf|value1[0]~0_combout\,
	datac => \dm|value1[0]~21_combout\,
	datad => \mx_wb|f[0]~60_combout\,
	combout => \mx_wb|f[0]~61_combout\);

-- Location: LCCOMB_X108_Y39_N0
\mx_wb|f[3]~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[3]~104_combout\ = (\dm|r4|Q\(3) & ((\mx_wb|f[0]~65_combout\) # ((\dm|r5|Q\(3) & \mx_wb|f[0]~61_combout\)))) # (!\dm|r4|Q\(3) & (((\dm|r5|Q\(3) & \mx_wb|f[0]~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm|r4|Q\(3),
	datab => \mx_wb|f[0]~65_combout\,
	datac => \dm|r5|Q\(3),
	datad => \mx_wb|f[0]~61_combout\,
	combout => \mx_wb|f[3]~104_combout\);

-- Location: LCCOMB_X111_Y40_N30
\mx_wb|f[3]~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[3]~108_combout\ = (\mx_wb|f[3]~103_combout\) # ((\mx_wb|f[3]~102_combout\) # ((\mx_wb|f[3]~107_combout\) # (\mx_wb|f[3]~104_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mx_wb|f[3]~103_combout\,
	datab => \mx_wb|f[3]~102_combout\,
	datac => \mx_wb|f[3]~107_combout\,
	datad => \mx_wb|f[3]~104_combout\,
	combout => \mx_wb|f[3]~108_combout\);

-- Location: LCCOMB_X112_Y39_N14
\rf|m1|stage3|f~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m1|stage3|f~1_combout\ = (!\reset~input_o\ & ((\id|Equal0~1_combout\ & (\mx_wb|f[3]~108_combout\)) # (!\id|Equal0~1_combout\ & ((!\alup|ripCarry|stage4|s~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \id|Equal0~1_combout\,
	datac => \mx_wb|f[3]~108_combout\,
	datad => \alup|ripCarry|stage4|s~combout\,
	combout => \rf|m1|stage3|f~1_combout\);

-- Location: FF_X112_Y39_N15
\rf|r2|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|m1|stage3|f~1_combout\,
	ena => \rf|m2|stage3|f~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r2|Q\(3));

-- Location: LCCOMB_X113_Y39_N14
\rf|value1[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[3]~1_combout\ = (\im|stage_dec|s2|y\(3) & \rf|r2|Q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \im|stage_dec|s2|y\(3),
	datad => \rf|r2|Q\(3),
	combout => \rf|value1[3]~1_combout\);

-- Location: LCCOMB_X113_Y39_N20
\dm|value1[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|value1[0]~12_combout\ = (\rf|value1[2]~2_combout\ & (\rf|value1[3]~1_combout\ $ (((\id|Equal0~0_combout\) # (!\dm|m0|stage3|f~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \id|Equal0~0_combout\,
	datab => \rf|value1[2]~2_combout\,
	datac => \rf|value1[3]~1_combout\,
	datad => \dm|m0|stage3|f~0_combout\,
	combout => \dm|value1[0]~12_combout\);

-- Location: LCCOMB_X108_Y39_N6
\dm|value1[0]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|value1[0]~15_combout\ = (!\rf|r2|Q\(0) & (\im|stage_dec|s2|y\(3) & \rf|r2|Q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf|r2|Q\(0),
	datac => \im|stage_dec|s2|y\(3),
	datad => \rf|r2|Q\(1),
	combout => \dm|value1[0]~15_combout\);

-- Location: LCCOMB_X109_Y39_N8
\mx_wb|f[0]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[0]~35_combout\ = (\rf|value2[0]~0_combout\ & (\dm|value1[0]~14_combout\ & (\rf|value2[2]~2_combout\ & !\alup|ripCarry|stage4|s~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value2[0]~0_combout\,
	datab => \dm|value1[0]~14_combout\,
	datac => \rf|value2[2]~2_combout\,
	datad => \alup|ripCarry|stage4|s~0_combout\,
	combout => \mx_wb|f[0]~35_combout\);

-- Location: LCCOMB_X109_Y39_N6
\mx_wb|f[0]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[0]~34_combout\ = (!\rf|value2[0]~0_combout\ & (\dm|value1[0]~13_combout\ & (!\rf|value2[2]~2_combout\ & \alup|ripCarry|stage4|s~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value2[0]~0_combout\,
	datab => \dm|value1[0]~13_combout\,
	datac => \rf|value2[2]~2_combout\,
	datad => \alup|ripCarry|stage4|s~0_combout\,
	combout => \mx_wb|f[0]~34_combout\);

-- Location: LCCOMB_X109_Y39_N14
\mx_wb|f[0]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[0]~36_combout\ = (!\dm|value1[0]~7_combout\ & (\rf|value2[1]~1_combout\ & ((\mx_wb|f[0]~35_combout\) # (\mx_wb|f[0]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm|value1[0]~7_combout\,
	datab => \rf|value2[1]~1_combout\,
	datac => \mx_wb|f[0]~35_combout\,
	datad => \mx_wb|f[0]~34_combout\,
	combout => \mx_wb|f[0]~36_combout\);

-- Location: LCCOMB_X110_Y39_N28
\mx_wb|f[0]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[0]~37_combout\ = (\rf|value1[2]~2_combout\ & ((\mx_wb|f[0]~36_combout\) # ((\dm|value1[0]~15_combout\ & \dm|value1[0]~21_combout\)))) # (!\rf|value1[2]~2_combout\ & (\dm|value1[0]~15_combout\ & (\dm|value1[0]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value1[2]~2_combout\,
	datab => \dm|value1[0]~15_combout\,
	datac => \dm|value1[0]~21_combout\,
	datad => \mx_wb|f[0]~36_combout\,
	combout => \mx_wb|f[0]~37_combout\);

-- Location: LCCOMB_X110_Y39_N2
\mx_wb|f[0]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[0]~38_combout\ = (\mx_wb|f[0]~37_combout\) # ((\dm|value1[0]~8_combout\ & (\dm|value1[0]~11_combout\ & \dm|value1[0]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm|value1[0]~8_combout\,
	datab => \dm|value1[0]~11_combout\,
	datac => \dm|value1[0]~12_combout\,
	datad => \mx_wb|f[0]~37_combout\,
	combout => \mx_wb|f[0]~38_combout\);

-- Location: LCCOMB_X110_Y39_N0
\mx_wb|f[0]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[0]~39_combout\ = (\mx_wb|f[0]~38_combout\) # ((\dm|value1[0]~6_combout\ & (\mx_wb|f[0]~33_combout\ & !\dm|value1[0]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm|value1[0]~6_combout\,
	datab => \mx_wb|f[0]~33_combout\,
	datac => \dm|value1[0]~7_combout\,
	datad => \mx_wb|f[0]~38_combout\,
	combout => \mx_wb|f[0]~39_combout\);

-- Location: LCCOMB_X110_Y39_N26
\mx_wb|f[2]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[2]~95_combout\ = (\dm|r2|Q\(2) & ((\mx_wb|f[0]~42_combout\) # ((\dm|r6|Q\(2) & \mx_wb|f[0]~39_combout\)))) # (!\dm|r2|Q\(2) & (((\dm|r6|Q\(2) & \mx_wb|f[0]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm|r2|Q\(2),
	datab => \mx_wb|f[0]~42_combout\,
	datac => \dm|r6|Q\(2),
	datad => \mx_wb|f[0]~39_combout\,
	combout => \mx_wb|f[2]~95_combout\);

-- Location: LCCOMB_X112_Y40_N24
\mx_wb|f[0]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[0]~84_combout\ = (\rf|value1[1]~3_combout\) # ((\rf|value1[2]~2_combout\ & ((\mx_wb|f[0]~53_combout\) # (!\alup|ripCarry|stage4|s~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value1[2]~2_combout\,
	datab => \rf|value1[1]~3_combout\,
	datac => \alup|ripCarry|stage4|s~0_combout\,
	datad => \mx_wb|f[0]~53_combout\,
	combout => \mx_wb|f[0]~84_combout\);

-- Location: LCCOMB_X112_Y40_N10
\mx_wb|f[0]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[0]~83_combout\ = (\rf|value1[1]~3_combout\ & (\mx_wb|f[0]~55_combout\ & (\rf|value1[0]~0_combout\ $ (\mux_alu|f[0]~0_combout\)))) # (!\rf|value1[1]~3_combout\ & (\rf|value1[0]~0_combout\ $ (((\mux_alu|f[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value1[0]~0_combout\,
	datab => \rf|value1[1]~3_combout\,
	datac => \mx_wb|f[0]~55_combout\,
	datad => \mux_alu|f[0]~0_combout\,
	combout => \mx_wb|f[0]~83_combout\);

-- Location: LCCOMB_X112_Y40_N26
\mx_wb|f[0]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[0]~85_combout\ = (\mx_wb|f[0]~83_combout\ & ((\mx_wb|f[0]~84_combout\ & ((\alup|ripCarry|stage4|s~0_combout\))) # (!\mx_wb|f[0]~84_combout\ & (\mx_wb|f[0]~52_combout\ & !\alup|ripCarry|stage4|s~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mx_wb|f[0]~52_combout\,
	datab => \mx_wb|f[0]~84_combout\,
	datac => \alup|ripCarry|stage4|s~0_combout\,
	datad => \mx_wb|f[0]~83_combout\,
	combout => \mx_wb|f[0]~85_combout\);

-- Location: FF_X111_Y39_N23
\dm|r7|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \dm|m2|stage3|f~2_combout\,
	sload => VCC,
	ena => \dm|m7|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r7|Q\(2));

-- Location: LCCOMB_X111_Y38_N10
\dm|m0|stage3|f[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|m0|stage3|f[2]~4_combout\ = (\rf|value2[2]~2_combout\) # (\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|value2[2]~2_combout\,
	datad => \reset~input_o\,
	combout => \dm|m0|stage3|f[2]~4_combout\);

-- Location: FF_X114_Y39_N17
\dm|r1|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \dm|m0|stage3|f[2]~4_combout\,
	sload => VCC,
	ena => \dm|m1|stage3|f~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r1|Q\(2));

-- Location: LCCOMB_X111_Y39_N22
\mx_wb|f[2]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[2]~99_combout\ = (\mx_wb|f[0]~78_combout\ & ((\dm|r7|Q\(2)) # ((\mx_wb|f[0]~81_combout\ & \dm|r1|Q\(2))))) # (!\mx_wb|f[0]~78_combout\ & (\mx_wb|f[0]~81_combout\ & ((\dm|r1|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mx_wb|f[0]~78_combout\,
	datab => \mx_wb|f[0]~81_combout\,
	datac => \dm|r7|Q\(2),
	datad => \dm|r1|Q\(2),
	combout => \mx_wb|f[2]~99_combout\);

-- Location: LCCOMB_X114_Y40_N22
\dm|r8|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|r8|Q[2]~feeder_combout\ = \dm|m2|stage3|f~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dm|m2|stage3|f~2_combout\,
	combout => \dm|r8|Q[2]~feeder_combout\);

-- Location: FF_X114_Y40_N23
\dm|r8|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \dm|r8|Q[2]~feeder_combout\,
	ena => \dm|m8|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r8|Q\(2));

-- Location: LCCOMB_X112_Y40_N28
\mx_wb|f[2]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[2]~98_combout\ = (\dm|r10|Q\(2) & ((\mx_wb|f[0]~72_combout\) # ((\dm|r8|Q\(2) & \mx_wb|f[0]~74_combout\)))) # (!\dm|r10|Q\(2) & (\dm|r8|Q\(2) & ((\mx_wb|f[0]~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm|r10|Q\(2),
	datab => \dm|r8|Q\(2),
	datac => \mx_wb|f[0]~72_combout\,
	datad => \mx_wb|f[0]~74_combout\,
	combout => \mx_wb|f[2]~98_combout\);

-- Location: LCCOMB_X111_Y39_N0
\mx_wb|f[2]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[2]~100_combout\ = (\mx_wb|f[2]~99_combout\) # ((\mx_wb|f[2]~98_combout\) # ((\dm|r9|Q\(2) & \mx_wb|f[0]~85_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm|r9|Q\(2),
	datab => \mx_wb|f[0]~85_combout\,
	datac => \mx_wb|f[2]~99_combout\,
	datad => \mx_wb|f[2]~98_combout\,
	combout => \mx_wb|f[2]~100_combout\);

-- Location: LCCOMB_X111_Y40_N24
\mx_wb|f[0]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[0]~51_combout\ = (\rf|value1[2]~2_combout\ & (!\alup|ripCarry|stage4|s~0_combout\ & ((\mx_wb|f[0]~49_combout\)))) # (!\rf|value1[2]~2_combout\ & (\alup|ripCarry|stage4|s~0_combout\ & (\mx_wb|f[0]~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value1[2]~2_combout\,
	datab => \alup|ripCarry|stage4|s~0_combout\,
	datac => \mx_wb|f[0]~50_combout\,
	datad => \mx_wb|f[0]~49_combout\,
	combout => \mx_wb|f[0]~51_combout\);

-- Location: LCCOMB_X111_Y40_N8
\mx_wb|f[0]~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[0]~110_combout\ = (\mx_wb|f[0]~51_combout\ & ((\id|Equal0~0_combout\) # ((!\rf|value2[2]~2_combout\ & !\rf|value2[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value2[2]~2_combout\,
	datab => \rf|value2[1]~1_combout\,
	datac => \id|Equal0~0_combout\,
	datad => \mx_wb|f[0]~51_combout\,
	combout => \mx_wb|f[0]~110_combout\);

-- Location: LCCOMB_X111_Y40_N28
\mx_wb|f[0]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[0]~57_combout\ = (\mx_wb|f[0]~110_combout\) # ((!\alup|ripCarry|stage4|s~0_combout\ & ((\mx_wb|f[0]~54_combout\) # (\mx_wb|f[0]~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mx_wb|f[0]~54_combout\,
	datab => \alup|ripCarry|stage4|s~0_combout\,
	datac => \mx_wb|f[0]~110_combout\,
	datad => \mx_wb|f[0]~56_combout\,
	combout => \mx_wb|f[0]~57_combout\);

-- Location: LCCOMB_X110_Y40_N30
\dm|m3|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|m3|stage3|f~0_combout\ = (\reset~input_o\) # ((\alup|ripCarry|stage3|s~combout\ & (!\alup|ripCarry|stage2|s~combout\ & \dm|m1|stage3|f~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alup|ripCarry|stage3|s~combout\,
	datab => \reset~input_o\,
	datac => \alup|ripCarry|stage2|s~combout\,
	datad => \dm|m1|stage3|f~1_combout\,
	combout => \dm|m3|stage3|f~0_combout\);

-- Location: FF_X110_Y40_N29
\dm|r3|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \dm|m2|stage3|f~2_combout\,
	sload => VCC,
	ena => \dm|m3|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r3|Q\(2));

-- Location: LCCOMB_X109_Y39_N24
\dm|value1[0]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|value1[0]~22_combout\ = (\dm|value1[0]~6_combout\ & ((\dm|value1[0]~10_combout\ & (\dm|value1[0]~9_combout\)) # (!\dm|value1[0]~10_combout\ & ((!\im|output[16]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm|value1[0]~9_combout\,
	datab => \im|output[16]~1_combout\,
	datac => \dm|value1[0]~10_combout\,
	datad => \dm|value1[0]~6_combout\,
	combout => \dm|value1[0]~22_combout\);

-- Location: LCCOMB_X109_Y39_N2
\mx_wb|f[0]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[0]~44_combout\ = (!\rf|value2[2]~2_combout\ & (!\rf|value1[1]~3_combout\ & (\rf|value2[1]~1_combout\ & \dm|value1[0]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value2[2]~2_combout\,
	datab => \rf|value1[1]~3_combout\,
	datac => \rf|value2[1]~1_combout\,
	datad => \dm|value1[0]~6_combout\,
	combout => \mx_wb|f[0]~44_combout\);

-- Location: LCCOMB_X109_Y39_N28
\mx_wb|f[0]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[0]~45_combout\ = (\mx_wb|f[0]~44_combout\) # ((\mx_wb|f[0]~109_combout\ & (\rf|value1[1]~3_combout\ $ (\rf|value2[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value1[1]~3_combout\,
	datab => \rf|value2[1]~1_combout\,
	datac => \mx_wb|f[0]~109_combout\,
	datad => \mx_wb|f[0]~44_combout\,
	combout => \mx_wb|f[0]~45_combout\);

-- Location: LCCOMB_X109_Y39_N0
\mx_wb|f[0]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[0]~47_combout\ = (\dm|value1[0]~15_combout\ & ((\dm|value1[0]~22_combout\) # ((\mx_wb|f[0]~46_combout\ & \mx_wb|f[0]~45_combout\)))) # (!\dm|value1[0]~15_combout\ & (((\mx_wb|f[0]~46_combout\ & \mx_wb|f[0]~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm|value1[0]~15_combout\,
	datab => \dm|value1[0]~22_combout\,
	datac => \mx_wb|f[0]~46_combout\,
	datad => \mx_wb|f[0]~45_combout\,
	combout => \mx_wb|f[0]~47_combout\);

-- Location: LCCOMB_X109_Y39_N22
\mx_wb|f[0]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[0]~48_combout\ = (\mx_wb|f[0]~47_combout\) # ((\dm|value1[0]~14_combout\ & \dm|value1[0]~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dm|value1[0]~14_combout\,
	datac => \dm|value1[0]~23_combout\,
	datad => \mx_wb|f[0]~47_combout\,
	combout => \mx_wb|f[0]~48_combout\);

-- Location: LCCOMB_X110_Y40_N28
\mx_wb|f[2]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[2]~96_combout\ = (\dm|r0|Q\(2) & ((\mx_wb|f[0]~57_combout\) # ((\dm|r3|Q\(2) & \mx_wb|f[0]~48_combout\)))) # (!\dm|r0|Q\(2) & (((\dm|r3|Q\(2) & \mx_wb|f[0]~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm|r0|Q\(2),
	datab => \mx_wb|f[0]~57_combout\,
	datac => \dm|r3|Q\(2),
	datad => \mx_wb|f[0]~48_combout\,
	combout => \mx_wb|f[2]~96_combout\);

-- Location: LCCOMB_X112_Y39_N28
\mx_wb|f[2]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[2]~101_combout\ = (\mx_wb|f[2]~97_combout\) # ((\mx_wb|f[2]~95_combout\) # ((\mx_wb|f[2]~100_combout\) # (\mx_wb|f[2]~96_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mx_wb|f[2]~97_combout\,
	datab => \mx_wb|f[2]~95_combout\,
	datac => \mx_wb|f[2]~100_combout\,
	datad => \mx_wb|f[2]~96_combout\,
	combout => \mx_wb|f[2]~101_combout\);

-- Location: LCCOMB_X112_Y39_N22
\rf|m1|stage3|f~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m1|stage3|f~2_combout\ = (!\reset~input_o\ & ((\id|Equal0~1_combout\ & ((\mx_wb|f[2]~101_combout\))) # (!\id|Equal0~1_combout\ & (!\alup|ripCarry|stage3|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alup|ripCarry|stage3|s~combout\,
	datab => \id|Equal0~1_combout\,
	datac => \reset~input_o\,
	datad => \mx_wb|f[2]~101_combout\,
	combout => \rf|m1|stage3|f~2_combout\);

-- Location: FF_X112_Y39_N21
\rf|r3|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m1|stage3|f~2_combout\,
	sload => VCC,
	ena => \rf|m3|stage3|f~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r3|Q\(2));

-- Location: LCCOMB_X112_Y39_N20
\rf|value2[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[2]~2_combout\ = (\im|output[30]~0_combout\ & ((\im|output[16]~1_combout\ & (\rf|r2|Q\(2))) # (!\im|output[16]~1_combout\ & ((\rf|r3|Q\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r2|Q\(2),
	datab => \im|output[30]~0_combout\,
	datac => \rf|r3|Q\(2),
	datad => \im|output[16]~1_combout\,
	combout => \rf|value2[2]~2_combout\);

-- Location: LCCOMB_X108_Y39_N8
\mx_wb|f[0]~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[0]~115_combout\ = (\rf|r2|Q\(2) & ((\rf|value2[0]~0_combout\) # ((!\rf|r2|Q\(0) & \im|stage_dec|s2|y\(3))))) # (!\rf|r2|Q\(2) & (\rf|value2[0]~0_combout\ & ((!\im|stage_dec|s2|y\(3)) # (!\rf|r2|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r2|Q\(2),
	datab => \rf|r2|Q\(0),
	datac => \im|stage_dec|s2|y\(3),
	datad => \rf|value2[0]~0_combout\,
	combout => \mx_wb|f[0]~115_combout\);

-- Location: LCCOMB_X108_Y39_N30
\mx_wb|f[0]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[0]~63_combout\ = (\alup|ripCarry|stage4|s~0_combout\ & (!\rf|value1[1]~3_combout\ & (!\mx_wb|f[0]~115_combout\ & !\rf|value1[0]~0_combout\))) # (!\alup|ripCarry|stage4|s~0_combout\ & (\rf|value1[1]~3_combout\ & (\mx_wb|f[0]~115_combout\ & 
-- \rf|value1[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alup|ripCarry|stage4|s~0_combout\,
	datab => \rf|value1[1]~3_combout\,
	datac => \mx_wb|f[0]~115_combout\,
	datad => \rf|value1[0]~0_combout\,
	combout => \mx_wb|f[0]~63_combout\);

-- Location: LCCOMB_X108_Y39_N2
\mx_wb|f[0]~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[0]~114_combout\ = (\im|stage_dec|s2|y\(3) & ((\rf|r2|Q\(1) & (!\rf|r2|Q\(0) & !\rf|value2[0]~0_combout\)) # (!\rf|r2|Q\(1) & (\rf|r2|Q\(0) & \rf|value2[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r2|Q\(1),
	datab => \rf|r2|Q\(0),
	datac => \im|stage_dec|s2|y\(3),
	datad => \rf|value2[0]~0_combout\,
	combout => \mx_wb|f[0]~114_combout\);

-- Location: LCCOMB_X108_Y39_N24
\mx_wb|f[0]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[0]~62_combout\ = (\mx_wb|f[0]~114_combout\ & ((\rf|value2[2]~2_combout\ & (!\alup|ripCarry|stage4|s~0_combout\ & \rf|value1[2]~2_combout\)) # (!\rf|value2[2]~2_combout\ & (\alup|ripCarry|stage4|s~0_combout\ & !\rf|value1[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value2[2]~2_combout\,
	datab => \mx_wb|f[0]~114_combout\,
	datac => \alup|ripCarry|stage4|s~0_combout\,
	datad => \rf|value1[2]~2_combout\,
	combout => \mx_wb|f[0]~62_combout\);

-- Location: LCCOMB_X108_Y39_N4
\mx_wb|f[0]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[0]~64_combout\ = (\rf|value2[1]~1_combout\ & (((\mx_wb|f[0]~62_combout\)))) # (!\rf|value2[1]~1_combout\ & (\rf|value2[2]~2_combout\ & (\mx_wb|f[0]~63_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value2[1]~1_combout\,
	datab => \rf|value2[2]~2_combout\,
	datac => \mx_wb|f[0]~63_combout\,
	datad => \mx_wb|f[0]~62_combout\,
	combout => \mx_wb|f[0]~64_combout\);

-- Location: LCCOMB_X108_Y39_N22
\dm|value1[0]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|value1[0]~24_combout\ = (\dm|value1[0]~27_combout\ & ((\dm|value1[0]~29_combout\) # ((\dm|value1[0]~17_combout\) # (\dm|value1[0]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm|value1[0]~29_combout\,
	datab => \dm|value1[0]~27_combout\,
	datac => \dm|value1[0]~17_combout\,
	datad => \dm|value1[0]~20_combout\,
	combout => \dm|value1[0]~24_combout\);

-- Location: LCCOMB_X108_Y39_N28
\dm|value1[0]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|value1[0]~28_combout\ = (\rf|r2|Q\(1) & (\rf|r2|Q\(0) & (\im|stage_dec|s2|y\(3) & \dm|value1[0]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r2|Q\(1),
	datab => \rf|r2|Q\(0),
	datac => \im|stage_dec|s2|y\(3),
	datad => \dm|value1[0]~22_combout\,
	combout => \dm|value1[0]~28_combout\);

-- Location: LCCOMB_X108_Y39_N18
\mx_wb|f[0]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[0]~65_combout\ = (\dm|value1[0]~24_combout\) # ((\dm|value1[0]~28_combout\) # ((!\dm|value1[0]~7_combout\ & \mx_wb|f[0]~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm|value1[0]~7_combout\,
	datab => \mx_wb|f[0]~64_combout\,
	datac => \dm|value1[0]~24_combout\,
	datad => \dm|value1[0]~28_combout\,
	combout => \mx_wb|f[0]~65_combout\);

-- Location: LCCOMB_X111_Y38_N12
\dm|m0|stage3|f~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|m0|stage3|f~3_combout\ = (!\reset~input_o\ & \rf|value2[1]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \rf|value2[1]~1_combout\,
	combout => \dm|m0|stage3|f~3_combout\);

-- Location: LCCOMB_X110_Y40_N14
\dm|r4|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|r4|Q[1]~feeder_combout\ = \dm|m0|stage3|f~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dm|m0|stage3|f~3_combout\,
	combout => \dm|r4|Q[1]~feeder_combout\);

-- Location: LCCOMB_X111_Y38_N0
\dm|m4|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|m4|stage3|f~0_combout\ = (\id|Equal1~0_combout\ & (!\alup|ripCarry|stage1|s~0_combout\ & (\alup|ripCarry|stage4|s~0_combout\ $ (\alup|ripCarry|stage3|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alup|ripCarry|stage4|s~0_combout\,
	datab => \id|Equal1~0_combout\,
	datac => \alup|ripCarry|stage3|Cout~0_combout\,
	datad => \alup|ripCarry|stage1|s~0_combout\,
	combout => \dm|m4|stage3|f~0_combout\);

-- Location: LCCOMB_X110_Y40_N8
\dm|m4|stage3|f~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|m4|stage3|f~1_combout\ = (\reset~input_o\) # ((!\alup|ripCarry|stage3|s~combout\ & (\alup|ripCarry|stage2|s~combout\ & \dm|m4|stage3|f~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alup|ripCarry|stage3|s~combout\,
	datab => \reset~input_o\,
	datac => \alup|ripCarry|stage2|s~combout\,
	datad => \dm|m4|stage3|f~0_combout\,
	combout => \dm|m4|stage3|f~1_combout\);

-- Location: FF_X110_Y40_N15
\dm|r4|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \dm|r4|Q[1]~feeder_combout\,
	ena => \dm|m4|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r4|Q\(1));

-- Location: LCCOMB_X108_Y39_N16
\mx_wb|f[1]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[1]~90_combout\ = (\dm|r5|Q\(1) & ((\mx_wb|f[0]~61_combout\) # ((\mx_wb|f[0]~65_combout\ & \dm|r4|Q\(1))))) # (!\dm|r5|Q\(1) & (\mx_wb|f[0]~65_combout\ & (\dm|r4|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm|r5|Q\(1),
	datab => \mx_wb|f[0]~65_combout\,
	datac => \dm|r4|Q\(1),
	datad => \mx_wb|f[0]~61_combout\,
	combout => \mx_wb|f[1]~90_combout\);

-- Location: LCCOMB_X113_Y40_N8
\dm|r9|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|r9|Q[1]~feeder_combout\ = \dm|m0|stage3|f~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dm|m0|stage3|f~3_combout\,
	combout => \dm|r9|Q[1]~feeder_combout\);

-- Location: FF_X113_Y40_N9
\dm|r9|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \dm|r9|Q[1]~feeder_combout\,
	ena => \dm|m9|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r9|Q\(1));

-- Location: LCCOMB_X114_Y40_N6
\dm|r8|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|r8|Q[1]~feeder_combout\ = \dm|m0|stage3|f~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dm|m0|stage3|f~3_combout\,
	combout => \dm|r8|Q[1]~feeder_combout\);

-- Location: FF_X114_Y40_N7
\dm|r8|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \dm|r8|Q[1]~feeder_combout\,
	ena => \dm|m8|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r8|Q\(1));

-- Location: LCCOMB_X112_Y40_N30
\mx_wb|f[1]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[1]~91_combout\ = (\dm|r10|Q\(1) & ((\mx_wb|f[0]~72_combout\) # ((\dm|r8|Q\(1) & \mx_wb|f[0]~74_combout\)))) # (!\dm|r10|Q\(1) & (\dm|r8|Q\(1) & ((\mx_wb|f[0]~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm|r10|Q\(1),
	datab => \dm|r8|Q\(1),
	datac => \mx_wb|f[0]~72_combout\,
	datad => \mx_wb|f[0]~74_combout\,
	combout => \mx_wb|f[1]~91_combout\);

-- Location: LCCOMB_X111_Y39_N16
\mx_wb|f[1]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[1]~93_combout\ = (\mx_wb|f[1]~92_combout\) # ((\mx_wb|f[1]~91_combout\) # ((\dm|r9|Q\(1) & \mx_wb|f[0]~85_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mx_wb|f[1]~92_combout\,
	datab => \dm|r9|Q\(1),
	datac => \mx_wb|f[1]~91_combout\,
	datad => \mx_wb|f[0]~85_combout\,
	combout => \mx_wb|f[1]~93_combout\);

-- Location: FF_X110_Y40_N5
\dm|r3|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \dm|m0|stage3|f~3_combout\,
	sload => VCC,
	ena => \dm|m3|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r3|Q\(1));

-- Location: LCCOMB_X111_Y40_N6
\mx_wb|f[1]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[1]~89_combout\ = (\dm|r0|Q\(1) & ((\mx_wb|f[0]~57_combout\) # ((\dm|r3|Q\(1) & \mx_wb|f[0]~48_combout\)))) # (!\dm|r0|Q\(1) & (((\dm|r3|Q\(1) & \mx_wb|f[0]~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm|r0|Q\(1),
	datab => \mx_wb|f[0]~57_combout\,
	datac => \dm|r3|Q\(1),
	datad => \mx_wb|f[0]~48_combout\,
	combout => \mx_wb|f[1]~89_combout\);

-- Location: LCCOMB_X112_Y39_N6
\mx_wb|f[1]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[1]~94_combout\ = (\mx_wb|f[1]~88_combout\) # ((\mx_wb|f[1]~90_combout\) # ((\mx_wb|f[1]~93_combout\) # (\mx_wb|f[1]~89_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mx_wb|f[1]~88_combout\,
	datab => \mx_wb|f[1]~90_combout\,
	datac => \mx_wb|f[1]~93_combout\,
	datad => \mx_wb|f[1]~89_combout\,
	combout => \mx_wb|f[1]~94_combout\);

-- Location: LCCOMB_X112_Y39_N26
\rf|m1|stage3|f~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m1|stage3|f~3_combout\ = (!\reset~input_o\ & ((\id|Equal0~1_combout\ & ((\mx_wb|f[1]~94_combout\))) # (!\id|Equal0~1_combout\ & (!\alup|ripCarry|stage2|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alup|ripCarry|stage2|s~combout\,
	datab => \id|Equal0~1_combout\,
	datac => \reset~input_o\,
	datad => \mx_wb|f[1]~94_combout\,
	combout => \rf|m1|stage3|f~3_combout\);

-- Location: FF_X112_Y39_N9
\rf|r2|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m1|stage3|f~3_combout\,
	sload => VCC,
	ena => \rf|m2|stage3|f~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r2|Q\(1));

-- Location: LCCOMB_X109_Y39_N18
\mx_wb|f[0]~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[0]~113_combout\ = (\im|stage_dec|s2|y\(3) & (\rf|r2|Q\(0) & (!\rf|r2|Q\(1) & \dm|value1[0]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im|stage_dec|s2|y\(3),
	datab => \rf|r2|Q\(0),
	datac => \rf|r2|Q\(1),
	datad => \dm|value1[0]~22_combout\,
	combout => \mx_wb|f[0]~113_combout\);

-- Location: LCCOMB_X110_Y39_N30
\mx_wb|f[0]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[0]~41_combout\ = (\dm|value1[0]~23_combout\ & ((\dm|value1[0]~15_combout\) # ((!\rf|value1[2]~2_combout\ & \mx_wb|f[0]~36_combout\)))) # (!\dm|value1[0]~23_combout\ & (!\rf|value1[2]~2_combout\ & ((\mx_wb|f[0]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm|value1[0]~23_combout\,
	datab => \rf|value1[2]~2_combout\,
	datac => \dm|value1[0]~15_combout\,
	datad => \mx_wb|f[0]~36_combout\,
	combout => \mx_wb|f[0]~41_combout\);

-- Location: LCCOMB_X110_Y39_N18
\mx_wb|f[0]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[0]~40_combout\ = (!\dm|value1[0]~7_combout\ & (\rf|value1[2]~2_combout\ & (!\alup|ripCarry|stage4|s~0_combout\ & \mx_wb|f[0]~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm|value1[0]~7_combout\,
	datab => \rf|value1[2]~2_combout\,
	datac => \alup|ripCarry|stage4|s~0_combout\,
	datad => \mx_wb|f[0]~33_combout\,
	combout => \mx_wb|f[0]~40_combout\);

-- Location: LCCOMB_X110_Y39_N24
\mx_wb|f[0]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[0]~42_combout\ = (\mx_wb|f[0]~113_combout\) # ((\mx_wb|f[0]~41_combout\) # (\mx_wb|f[0]~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mx_wb|f[0]~113_combout\,
	datac => \mx_wb|f[0]~41_combout\,
	datad => \mx_wb|f[0]~40_combout\,
	combout => \mx_wb|f[0]~42_combout\);

-- Location: LCCOMB_X110_Y40_N20
\dm|m1|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|m1|stage3|f~0_combout\ = (!\reset~input_o\ & \rf|value2[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \rf|value2[0]~0_combout\,
	combout => \dm|m1|stage3|f~0_combout\);

-- Location: LCCOMB_X114_Y38_N26
\dm|r6|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|r6|Q[0]~feeder_combout\ = \dm|m1|stage3|f~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dm|m1|stage3|f~0_combout\,
	combout => \dm|r6|Q[0]~feeder_combout\);

-- Location: FF_X114_Y38_N27
\dm|r6|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \dm|r6|Q[0]~feeder_combout\,
	ena => \dm|m6|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r6|Q\(0));

-- Location: LCCOMB_X110_Y39_N22
\mx_wb|f[0]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[0]~43_combout\ = (\dm|r2|Q\(0) & ((\mx_wb|f[0]~42_combout\) # ((\dm|r6|Q\(0) & \mx_wb|f[0]~39_combout\)))) # (!\dm|r2|Q\(0) & (((\dm|r6|Q\(0) & \mx_wb|f[0]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm|r2|Q\(0),
	datab => \mx_wb|f[0]~42_combout\,
	datac => \dm|r6|Q\(0),
	datad => \mx_wb|f[0]~39_combout\,
	combout => \mx_wb|f[0]~43_combout\);

-- Location: LCCOMB_X113_Y40_N28
\dm|r9|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|r9|Q[0]~feeder_combout\ = \dm|m1|stage3|f~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dm|m1|stage3|f~0_combout\,
	combout => \dm|r9|Q[0]~feeder_combout\);

-- Location: FF_X113_Y40_N29
\dm|r9|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \dm|r9|Q[0]~feeder_combout\,
	ena => \dm|m9|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r9|Q\(0));

-- Location: LCCOMB_X112_Y38_N0
\dm|r7|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|r7|Q[0]~feeder_combout\ = \dm|m1|stage3|f~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dm|m1|stage3|f~0_combout\,
	combout => \dm|r7|Q[0]~feeder_combout\);

-- Location: FF_X112_Y38_N1
\dm|r7|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \dm|r7|Q[0]~feeder_combout\,
	ena => \dm|m7|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r7|Q\(0));

-- Location: FF_X114_Y39_N11
\dm|r1|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \dm|m1|stage3|f~0_combout\,
	sload => VCC,
	ena => \dm|m1|stage3|f~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r1|Q\(0));

-- Location: LCCOMB_X111_Y39_N24
\mx_wb|f[0]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[0]~82_combout\ = (\mx_wb|f[0]~78_combout\ & ((\dm|r7|Q\(0)) # ((\dm|r1|Q\(0) & \mx_wb|f[0]~81_combout\)))) # (!\mx_wb|f[0]~78_combout\ & (((\dm|r1|Q\(0) & \mx_wb|f[0]~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mx_wb|f[0]~78_combout\,
	datab => \dm|r7|Q\(0),
	datac => \dm|r1|Q\(0),
	datad => \mx_wb|f[0]~81_combout\,
	combout => \mx_wb|f[0]~82_combout\);

-- Location: LCCOMB_X114_Y40_N14
\dm|m10|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|m10|stage3|f~0_combout\ = (\reset~input_o\) # ((!\alup|ripCarry|stage2|s~combout\ & \dm|stage_dec_write|s4|y[2]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alup|ripCarry|stage2|s~combout\,
	datab => \reset~input_o\,
	datad => \dm|stage_dec_write|s4|y[2]~0_combout\,
	combout => \dm|m10|stage3|f~0_combout\);

-- Location: FF_X114_Y40_N15
\dm|r10|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \dm|m1|stage3|f~0_combout\,
	sload => VCC,
	ena => \dm|m10|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r10|Q\(0));

-- Location: LCCOMB_X112_Y40_N0
\mx_wb|f[0]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[0]~75_combout\ = (\dm|r8|Q\(0) & ((\mx_wb|f[0]~74_combout\) # ((\dm|r10|Q\(0) & \mx_wb|f[0]~72_combout\)))) # (!\dm|r8|Q\(0) & (\dm|r10|Q\(0) & (\mx_wb|f[0]~72_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm|r8|Q\(0),
	datab => \dm|r10|Q\(0),
	datac => \mx_wb|f[0]~72_combout\,
	datad => \mx_wb|f[0]~74_combout\,
	combout => \mx_wb|f[0]~75_combout\);

-- Location: LCCOMB_X112_Y40_N20
\mx_wb|f[0]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[0]~86_combout\ = (\mx_wb|f[0]~82_combout\) # ((\mx_wb|f[0]~75_combout\) # ((\mx_wb|f[0]~85_combout\ & \dm|r9|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mx_wb|f[0]~85_combout\,
	datab => \dm|r9|Q\(0),
	datac => \mx_wb|f[0]~82_combout\,
	datad => \mx_wb|f[0]~75_combout\,
	combout => \mx_wb|f[0]~86_combout\);

-- Location: FF_X110_Y40_N25
\dm|r3|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \dm|m1|stage3|f~0_combout\,
	sload => VCC,
	ena => \dm|m3|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r3|Q\(0));

-- Location: LCCOMB_X110_Y40_N24
\mx_wb|f[0]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[0]~58_combout\ = (\dm|r0|Q\(0) & ((\mx_wb|f[0]~57_combout\) # ((\dm|r3|Q\(0) & \mx_wb|f[0]~48_combout\)))) # (!\dm|r0|Q\(0) & (((\dm|r3|Q\(0) & \mx_wb|f[0]~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm|r0|Q\(0),
	datab => \mx_wb|f[0]~57_combout\,
	datac => \dm|r3|Q\(0),
	datad => \mx_wb|f[0]~48_combout\,
	combout => \mx_wb|f[0]~58_combout\);

-- Location: LCCOMB_X112_Y39_N0
\mx_wb|f[0]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_wb|f[0]~87_combout\ = (\mx_wb|f[0]~66_combout\) # ((\mx_wb|f[0]~43_combout\) # ((\mx_wb|f[0]~86_combout\) # (\mx_wb|f[0]~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mx_wb|f[0]~66_combout\,
	datab => \mx_wb|f[0]~43_combout\,
	datac => \mx_wb|f[0]~86_combout\,
	datad => \mx_wb|f[0]~58_combout\,
	combout => \mx_wb|f[0]~87_combout\);

-- Location: LCCOMB_X111_Y38_N24
\result~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~0_combout\ = (\id|Equal1~0_combout\ & (((\rf|value2[0]~0_combout\)))) # (!\id|Equal1~0_combout\ & (\alup|ripCarry|stage1|s~0_combout\ & (!\id|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alup|ripCarry|stage1|s~0_combout\,
	datab => \id|Equal0~1_combout\,
	datac => \rf|value2[0]~0_combout\,
	datad => \id|Equal1~0_combout\,
	combout => \result~0_combout\);

-- Location: LCCOMB_X111_Y38_N28
\result~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~1_combout\ = (\result~0_combout\) # ((\mx_wb|f[0]~87_combout\ & (\id|Equal0~1_combout\ & !\id|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mx_wb|f[0]~87_combout\,
	datab => \result~0_combout\,
	datac => \id|Equal0~1_combout\,
	datad => \id|Equal1~0_combout\,
	combout => \result~1_combout\);

-- Location: LCCOMB_X111_Y38_N26
\result~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~2_combout\ = (\id|Equal1~0_combout\ & (((\rf|value2[1]~1_combout\)))) # (!\id|Equal1~0_combout\ & (!\id|Equal0~1_combout\ & (!\alup|ripCarry|stage2|s~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \id|Equal1~0_combout\,
	datab => \id|Equal0~1_combout\,
	datac => \alup|ripCarry|stage2|s~combout\,
	datad => \rf|value2[1]~1_combout\,
	combout => \result~2_combout\);

-- Location: LCCOMB_X112_Y38_N2
\result~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~3_combout\ = (\result~2_combout\) # ((\id|Equal0~1_combout\ & (\mx_wb|f[1]~94_combout\ & !\id|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result~2_combout\,
	datab => \id|Equal0~1_combout\,
	datac => \mx_wb|f[1]~94_combout\,
	datad => \id|Equal1~0_combout\,
	combout => \result~3_combout\);

-- Location: LCCOMB_X111_Y38_N18
\result~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~4_combout\ = (\id|Equal1~0_combout\ & (\rf|value2[2]~2_combout\)) # (!\id|Equal1~0_combout\ & (((!\id|Equal0~1_combout\ & !\alup|ripCarry|stage3|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value2[2]~2_combout\,
	datab => \id|Equal0~1_combout\,
	datac => \alup|ripCarry|stage3|s~combout\,
	datad => \id|Equal1~0_combout\,
	combout => \result~4_combout\);

-- Location: LCCOMB_X112_Y38_N4
\result~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~5_combout\ = (\result~4_combout\) # ((!\id|Equal1~0_combout\ & (\id|Equal0~1_combout\ & \mx_wb|f[2]~101_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \id|Equal1~0_combout\,
	datab => \id|Equal0~1_combout\,
	datac => \mx_wb|f[2]~101_combout\,
	datad => \result~4_combout\,
	combout => \result~5_combout\);

-- Location: LCCOMB_X112_Y38_N22
\result~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~6_combout\ = (\id|Equal1~0_combout\ & (((\dm|m0|stage3|f~0_combout\)))) # (!\id|Equal1~0_combout\ & (!\alup|ripCarry|stage4|s~combout\ & (!\id|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \id|Equal1~0_combout\,
	datab => \alup|ripCarry|stage4|s~combout\,
	datac => \id|Equal0~1_combout\,
	datad => \dm|m0|stage3|f~0_combout\,
	combout => \result~6_combout\);

-- Location: LCCOMB_X112_Y38_N12
\result~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~7_combout\ = (\result~6_combout\) # ((!\id|Equal1~0_combout\ & (\mx_wb|f[3]~108_combout\ & \id|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \id|Equal1~0_combout\,
	datab => \mx_wb|f[3]~108_combout\,
	datac => \id|Equal0~1_combout\,
	datad => \result~6_combout\,
	combout => \result~7_combout\);

ww_current_pc(0) <= \current_pc[0]~output_o\;

ww_current_pc(1) <= \current_pc[1]~output_o\;

ww_current_pc(2) <= \current_pc[2]~output_o\;

ww_current_pc(3) <= \current_pc[3]~output_o\;

ww_result(0) <= \result[0]~output_o\;

ww_result(1) <= \result[1]~output_o\;

ww_result(2) <= \result[2]~output_o\;

ww_result(3) <= \result[3]~output_o\;
END structure;


