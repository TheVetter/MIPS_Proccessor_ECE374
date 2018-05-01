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

-- DATE "05/01/2018 08:50:11"

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
-- reset	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \forA_MUX|stage1|f~2_combout\ : std_logic;
SIGNAL \alup|mux|stage3|f[1]~1_combout\ : std_logic;
SIGNAL \forA_MUX|stage1|f~4_combout\ : std_logic;
SIGNAL \alup|mux|stage3|f[2]~3_combout\ : std_logic;
SIGNAL \alup|mux|stage3|f[3]~5_combout\ : std_logic;
SIGNAL \rf|value2[0]~0_combout\ : std_logic;
SIGNAL \rf|value2[0]~1_combout\ : std_logic;
SIGNAL \rf|value1[0]~0_combout\ : std_logic;
SIGNAL \rf|value1[0]~1_combout\ : std_logic;
SIGNAL \rf|value1[0]~2_combout\ : std_logic;
SIGNAL \rf|value1[0]~3_combout\ : std_logic;
SIGNAL \rf|value1[0]~4_combout\ : std_logic;
SIGNAL \rf|value1[0]~5_combout\ : std_logic;
SIGNAL \rf|value1[0]~6_combout\ : std_logic;
SIGNAL \rf|value1[0]~7_combout\ : std_logic;
SIGNAL \rf|value1[0]~8_combout\ : std_logic;
SIGNAL \rf|value1[0]~9_combout\ : std_logic;
SIGNAL \rf|value2[1]~10_combout\ : std_logic;
SIGNAL \rf|value2[1]~11_combout\ : std_logic;
SIGNAL \rf|value2[1]~12_combout\ : std_logic;
SIGNAL \rf|value2[1]~13_combout\ : std_logic;
SIGNAL \rf|value2[1]~14_combout\ : std_logic;
SIGNAL \rf|value2[1]~15_combout\ : std_logic;
SIGNAL \rf|value2[1]~16_combout\ : std_logic;
SIGNAL \rf|value2[1]~17_combout\ : std_logic;
SIGNAL \rf|value2[1]~18_combout\ : std_logic;
SIGNAL \rf|value2[1]~19_combout\ : std_logic;
SIGNAL \rf|value1[1]~10_combout\ : std_logic;
SIGNAL \rf|value1[1]~11_combout\ : std_logic;
SIGNAL \rf|value2[2]~20_combout\ : std_logic;
SIGNAL \rf|value2[2]~21_combout\ : std_logic;
SIGNAL \rf|value2[2]~22_combout\ : std_logic;
SIGNAL \rf|value2[2]~23_combout\ : std_logic;
SIGNAL \rf|value2[2]~24_combout\ : std_logic;
SIGNAL \rf|value2[2]~25_combout\ : std_logic;
SIGNAL \rf|value2[2]~26_combout\ : std_logic;
SIGNAL \rf|value2[2]~27_combout\ : std_logic;
SIGNAL \rf|value2[2]~28_combout\ : std_logic;
SIGNAL \rf|value2[2]~29_combout\ : std_logic;
SIGNAL \rf|value2[3]~30_combout\ : std_logic;
SIGNAL \rf|value2[3]~31_combout\ : std_logic;
SIGNAL \rf|value2[3]~32_combout\ : std_logic;
SIGNAL \rf|value2[3]~33_combout\ : std_logic;
SIGNAL \rf|value2[3]~34_combout\ : std_logic;
SIGNAL \rf|value2[3]~35_combout\ : std_logic;
SIGNAL \rf|value2[3]~36_combout\ : std_logic;
SIGNAL \rf|value2[3]~37_combout\ : std_logic;
SIGNAL \rf|value2[3]~38_combout\ : std_logic;
SIGNAL \rf|value2[3]~39_combout\ : std_logic;
SIGNAL \rf|value1[3]~34_combout\ : std_logic;
SIGNAL \rf|value1[3]~35_combout\ : std_logic;
SIGNAL \im|output[14]~8_combout\ : std_logic;
SIGNAL \rf|r5|Q[0]~feeder_combout\ : std_logic;
SIGNAL \rf|r3|Q[0]~feeder_combout\ : std_logic;
SIGNAL \id_ex_Rd|Q[1]~feeder_combout\ : std_logic;
SIGNAL \rf|r11|Q[0]~feeder_combout\ : std_logic;
SIGNAL \rf|r13|Q[0]~feeder_combout\ : std_logic;
SIGNAL \rf|r10|Q[0]~feeder_combout\ : std_logic;
SIGNAL \rf|r2|Q[0]~feeder_combout\ : std_logic;
SIGNAL \rf|r6|Q[0]~feeder_combout\ : std_logic;
SIGNAL \rf|r13|Q[1]~feeder_combout\ : std_logic;
SIGNAL \rf|r5|Q[1]~feeder_combout\ : std_logic;
SIGNAL \rf|r2|Q[1]~feeder_combout\ : std_logic;
SIGNAL \rf|r6|Q[1]~feeder_combout\ : std_logic;
SIGNAL \rf|r14|Q[2]~feeder_combout\ : std_logic;
SIGNAL \rf|r1|Q[2]~feeder_combout\ : std_logic;
SIGNAL \rf|r12|Q[2]~feeder_combout\ : std_logic;
SIGNAL \rf|r11|Q[3]~feeder_combout\ : std_logic;
SIGNAL \rf|r0|Q[3]~feeder_combout\ : std_logic;
SIGNAL \rf|r12|Q[3]~feeder_combout\ : std_logic;
SIGNAL \rf|r4|Q[3]~feeder_combout\ : std_logic;
SIGNAL \rf|r15|Q[3]~feeder_combout\ : std_logic;
SIGNAL \rf|r8|Q[3]~feeder_combout\ : std_logic;
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
SIGNAL \pc_mux|f~1_combout\ : std_logic;
SIGNAL \addpc|stage2|s~combout\ : std_logic;
SIGNAL \pc_mux|f~2_combout\ : std_logic;
SIGNAL \addpc|stage3|s~combout\ : std_logic;
SIGNAL \pc_mux|f~3_combout\ : std_logic;
SIGNAL \addpc|stage4|s~combout\ : std_logic;
SIGNAL \im|output[0]~1_combout\ : std_logic;
SIGNAL \rf|m0|stage3|f~0_combout\ : std_logic;
SIGNAL \rf|r14|Q[0]~feeder_combout\ : std_logic;
SIGNAL \id_ex_regwrite|Q~0_combout\ : std_logic;
SIGNAL \mem_wb_regWrite|process_0~0_combout\ : std_logic;
SIGNAL \id_ex_regwrite|Q~q\ : std_logic;
SIGNAL \ex_mem_RegWrite|Q~q\ : std_logic;
SIGNAL \mem_wb_regWrite|Q~q\ : std_logic;
SIGNAL \id_ex_regdst|Q~feeder_combout\ : std_logic;
SIGNAL \id_ex_regdst|Q~q\ : std_logic;
SIGNAL \ex_mem_regdst|Q~q\ : std_logic;
SIGNAL \mem_wb_regdst|Q~feeder_combout\ : std_logic;
SIGNAL \mem_wb_regdst|Q~q\ : std_logic;
SIGNAL \mx_redst|f[3]~1_combout\ : std_logic;
SIGNAL \rf|m8|stage3|f~0_combout\ : std_logic;
SIGNAL \im|output[18]~0_combout\ : std_logic;
SIGNAL \im|output[13]~9_combout\ : std_logic;
SIGNAL \mx_redst|f[2]~2_combout\ : std_logic;
SIGNAL \im|stage_dec|s1|y[2]~0_combout\ : std_logic;
SIGNAL \im|output[12]~10_combout\ : std_logic;
SIGNAL \mx_redst|f[1]~3_combout\ : std_logic;
SIGNAL \rf|m14|stage3|f~0_combout\ : std_logic;
SIGNAL \rf|r15|Q[0]~feeder_combout\ : std_logic;
SIGNAL \im|output[11]~2_combout\ : std_logic;
SIGNAL \im|output[16]~3_combout\ : std_logic;
SIGNAL \mx_redst|f[0]~0_combout\ : std_logic;
SIGNAL \rf|m9|stage3|f[0]~0_combout\ : std_logic;
SIGNAL \rf|m15|stage3|f~0_combout\ : std_logic;
SIGNAL \rf|r12|Q[0]~feeder_combout\ : std_logic;
SIGNAL \rf|m12|stage3|f~0_combout\ : std_logic;
SIGNAL \rf|value2[0]~7_combout\ : std_logic;
SIGNAL \rf|value2[0]~8_combout\ : std_logic;
SIGNAL \rf|m1|stage3|f[0]~0_combout\ : std_logic;
SIGNAL \rf|r1|Q[0]~feeder_combout\ : std_logic;
SIGNAL \rf|m7|stage3|f[0]~0_combout\ : std_logic;
SIGNAL \rf|m1|stage3|f[0]~1_combout\ : std_logic;
SIGNAL \rf|r0|Q[0]~feeder_combout\ : std_logic;
SIGNAL \rf|m4|stage3|f~0_combout\ : std_logic;
SIGNAL \rf|m0|stage3|f~1_combout\ : std_logic;
SIGNAL \rf|value2[0]~4_combout\ : std_logic;
SIGNAL \rf|value2[0]~5_combout\ : std_logic;
SIGNAL \rf|r4|Q[0]~feeder_combout\ : std_logic;
SIGNAL \rf|m4|stage3|f~1_combout\ : std_logic;
SIGNAL \rf|value2[0]~2_combout\ : std_logic;
SIGNAL \rf|r7|Q[0]~feeder_combout\ : std_logic;
SIGNAL \rf|m7|stage3|f[0]~1_combout\ : std_logic;
SIGNAL \rf|value2[0]~3_combout\ : std_logic;
SIGNAL \rf|value2[0]~6_combout\ : std_logic;
SIGNAL \rf|value2[0]~9_combout\ : std_logic;
SIGNAL \id_ex_RT|Q[2]~feeder_combout\ : std_logic;
SIGNAL \forward|ForwardB~0_combout\ : std_logic;
SIGNAL \id_ex_Rd|Q[0]~feeder_combout\ : std_logic;
SIGNAL \forward|ForwardB~1_combout\ : std_logic;
SIGNAL \forB_mux|stage1|f~0_combout\ : std_logic;
SIGNAL \forB_mux|stage1|f~1_combout\ : std_logic;
SIGNAL \im|output[22]~4_combout\ : std_logic;
SIGNAL \im|output[21]~5_combout\ : std_logic;
SIGNAL \forward|ForwardA~1_combout\ : std_logic;
SIGNAL \forward|ForwardA~0_combout\ : std_logic;
SIGNAL \im|output[24]~6_combout\ : std_logic;
SIGNAL \im|output[23]~7_combout\ : std_logic;
SIGNAL \forward|ForwardA~2_combout\ : std_logic;
SIGNAL \forward|ForwardA~3_combout\ : std_logic;
SIGNAL \forA_MUX|stage1|f[0]~0_combout\ : std_logic;
SIGNAL \id|process_0~0_combout\ : std_logic;
SIGNAL \alup|mux|stage3|f[0]~0_combout\ : std_logic;
SIGNAL \rf|m0|stage3|f~2_combout\ : std_logic;
SIGNAL \rf|r15|Q[1]~feeder_combout\ : std_logic;
SIGNAL \rf|m2|stage3|f[1]~1_combout\ : std_logic;
SIGNAL \rf|r7|Q[1]~feeder_combout\ : std_logic;
SIGNAL \rf|m3|stage3|f[0]~0_combout\ : std_logic;
SIGNAL \rf|value1[1]~17_combout\ : std_logic;
SIGNAL \rf|r11|Q[1]~feeder_combout\ : std_logic;
SIGNAL \rf|m11|stage3|f~0_combout\ : std_logic;
SIGNAL \rf|value1[1]~18_combout\ : std_logic;
SIGNAL \rf|r12|Q[1]~feeder_combout\ : std_logic;
SIGNAL \rf|r0|Q[1]~feeder_combout\ : std_logic;
SIGNAL \rf|m8|stage3|f~1_combout\ : std_logic;
SIGNAL \rf|value1[1]~14_combout\ : std_logic;
SIGNAL \rf|value1[1]~15_combout\ : std_logic;
SIGNAL \rf|m9|stage3|f[0]~1_combout\ : std_logic;
SIGNAL \rf|r1|Q[1]~feeder_combout\ : std_logic;
SIGNAL \rf|value1[1]~12_combout\ : std_logic;
SIGNAL \rf|value1[1]~13_combout\ : std_logic;
SIGNAL \rf|value1[1]~16_combout\ : std_logic;
SIGNAL \rf|value1[1]~19_combout\ : std_logic;
SIGNAL \forA_MUX|stage1|f[1]~3_combout\ : std_logic;
SIGNAL \forA_MUX|stage1|f~1_combout\ : std_logic;
SIGNAL \id|Equal3~0_combout\ : std_logic;
SIGNAL \id_ex_add_sub|Q~q\ : std_logic;
SIGNAL \forward|ForwardB~2_combout\ : std_logic;
SIGNAL \forB_mux|stage1|f~2_combout\ : std_logic;
SIGNAL \forB_mux|stage1|f~3_combout\ : std_logic;
SIGNAL \alup|ripCarry|stage1|Cout~0_combout\ : std_logic;
SIGNAL \alup|ripCarry|stage2|s~combout\ : std_logic;
SIGNAL \alup|mux|stage3|f[1]~2_combout\ : std_logic;
SIGNAL \forA_MUX|stage1|f~5_combout\ : std_logic;
SIGNAL \alup|ripCarry|stage2|Cout~0_combout\ : std_logic;
SIGNAL \alup|ripCarry|stage3|s~combout\ : std_logic;
SIGNAL \rf|m4|stage3|f[2]~2_combout\ : std_logic;
SIGNAL \rf|r7|Q[2]~feeder_combout\ : std_logic;
SIGNAL \rf|r6|Q[2]~feeder_combout\ : std_logic;
SIGNAL \rf|m6|stage3|f~0_combout\ : std_logic;
SIGNAL \rf|r5|Q[2]~feeder_combout\ : std_logic;
SIGNAL \rf|m5|stage3|f[0]~0_combout\ : std_logic;
SIGNAL \rf|value1[2]~20_combout\ : std_logic;
SIGNAL \rf|value1[2]~21_combout\ : std_logic;
SIGNAL \rf|m0|stage3|f~3_combout\ : std_logic;
SIGNAL \rf|r11|Q[2]~feeder_combout\ : std_logic;
SIGNAL \rf|r8|Q[2]~feeder_combout\ : std_logic;
SIGNAL \rf|m10|stage3|f~0_combout\ : std_logic;
SIGNAL \rf|value1[2]~22_combout\ : std_logic;
SIGNAL \rf|value1[2]~23_combout\ : std_logic;
SIGNAL \rf|r3|Q[2]~feeder_combout\ : std_logic;
SIGNAL \rf|m2|stage3|f~0_combout\ : std_logic;
SIGNAL \rf|r0|Q[2]~feeder_combout\ : std_logic;
SIGNAL \rf|value1[2]~24_combout\ : std_logic;
SIGNAL \rf|value1[2]~25_combout\ : std_logic;
SIGNAL \rf|value1[2]~26_combout\ : std_logic;
SIGNAL \rf|r15|Q[2]~feeder_combout\ : std_logic;
SIGNAL \rf|r13|Q[2]~feeder_combout\ : std_logic;
SIGNAL \rf|m13|stage3|f~0_combout\ : std_logic;
SIGNAL \rf|value1[2]~27_combout\ : std_logic;
SIGNAL \rf|value1[2]~28_combout\ : std_logic;
SIGNAL \rf|value1[2]~29_combout\ : std_logic;
SIGNAL \forA_MUX|stage1|f[2]~6_combout\ : std_logic;
SIGNAL \alup|mux|stage3|f[2]~4_combout\ : std_logic;
SIGNAL \rf|m0|stage3|f~4_combout\ : std_logic;
SIGNAL \rf|r13|Q[3]~feeder_combout\ : std_logic;
SIGNAL \rf|m8|stage3|f[3]~2_combout\ : std_logic;
SIGNAL \rf|r1|Q[3]~feeder_combout\ : std_logic;
SIGNAL \rf|value1[3]~30_combout\ : std_logic;
SIGNAL \rf|r5|Q[3]~feeder_combout\ : std_logic;
SIGNAL \rf|value1[3]~31_combout\ : std_logic;
SIGNAL \rf|r7|Q[3]~feeder_combout\ : std_logic;
SIGNAL \rf|r3|Q[3]~feeder_combout\ : std_logic;
SIGNAL \rf|value1[3]~37_combout\ : std_logic;
SIGNAL \rf|value1[3]~38_combout\ : std_logic;
SIGNAL \rf|r6|Q[3]~feeder_combout\ : std_logic;
SIGNAL \rf|value1[3]~32_combout\ : std_logic;
SIGNAL \rf|value1[3]~33_combout\ : std_logic;
SIGNAL \rf|value1[3]~36_combout\ : std_logic;
SIGNAL \rf|value1[3]~39_combout\ : std_logic;
SIGNAL \forA_MUX|stage1|f[3]~7_combout\ : std_logic;
SIGNAL \alup|ripCarry|stage3|Cout~0_combout\ : std_logic;
SIGNAL \alup|ripCarry|stage4|s~0_combout\ : std_logic;
SIGNAL \alup|mux|stage3|f[3]~6_combout\ : std_logic;
SIGNAL \rf|r7|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf|r8|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf|r9|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf|r10|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf|r11|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf|r12|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf|r13|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf|r14|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf|r15|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \id_ex_src1|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \id_ex_src2|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \id_ex_RT|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \id_ex_RS|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \id_ex_Rd|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \alup|ripCarry|g\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ex_mem_result|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ex_Mem_Rd|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \mem_wb_result|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Mem_wb_Rd|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pc|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \id_ex_ALUop|Q\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \if_id_inst|Q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \rf|r0|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf|r1|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf|r2|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf|r3|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf|r4|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf|r5|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf|r6|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pc|ALT_INV_Q\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem_wb_regWrite|ALT_INV_process_0~0_combout\ : std_logic;

BEGIN

ww_clock <= clock;
ww_reset <= reset;
current_pc <= ww_current_pc;
result <= ww_result;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\pc|ALT_INV_Q\(0) <= NOT \pc|Q\(0);
\mem_wb_regWrite|ALT_INV_process_0~0_combout\ <= NOT \mem_wb_regWrite|process_0~0_combout\;

-- Location: FF_X111_Y53_N31
\Mem_wb_Rd|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \ex_Mem_Rd|Q\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_wb_Rd|Q\(1));

-- Location: FF_X112_Y53_N3
\id_ex_src1|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|value1[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \id_ex_src1|Q\(0));

-- Location: FF_X112_Y53_N21
\id_ex_src2|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|value2[1]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \id_ex_src2|Q\(1));

-- Location: LCCOMB_X111_Y53_N2
\forA_MUX|stage1|f~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \forA_MUX|stage1|f~2_combout\ = (\mem_wb_result|Q\(1) & \forward|ForwardA~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem_wb_result|Q\(1),
	datad => \forward|ForwardA~3_combout\,
	combout => \forA_MUX|stage1|f~2_combout\);

-- Location: LCCOMB_X111_Y53_N6
\alup|mux|stage3|f[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \alup|mux|stage3|f[1]~1_combout\ = (\forward|ForwardB~2_combout\ & ((\mem_wb_result|Q\(1)))) # (!\forward|ForwardB~2_combout\ & (\id_ex_src2|Q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \id_ex_src2|Q\(1),
	datab => \forward|ForwardB~2_combout\,
	datad => \mem_wb_result|Q\(1),
	combout => \alup|mux|stage3|f[1]~1_combout\);

-- Location: FF_X114_Y53_N23
\id_ex_src2|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|value2[2]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \id_ex_src2|Q\(2));

-- Location: LCCOMB_X111_Y53_N30
\forA_MUX|stage1|f~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \forA_MUX|stage1|f~4_combout\ = (\id_ex_src1|Q\(2) & !\forward|ForwardA~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \id_ex_src1|Q\(2),
	datad => \forward|ForwardA~3_combout\,
	combout => \forA_MUX|stage1|f~4_combout\);

-- Location: LCCOMB_X110_Y53_N6
\alup|mux|stage3|f[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \alup|mux|stage3|f[2]~3_combout\ = (\forward|ForwardB~2_combout\ & ((\mem_wb_result|Q\(2)))) # (!\forward|ForwardB~2_combout\ & (\id_ex_src2|Q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \id_ex_src2|Q\(2),
	datac => \mem_wb_result|Q\(2),
	datad => \forward|ForwardB~2_combout\,
	combout => \alup|mux|stage3|f[2]~3_combout\);

-- Location: FF_X112_Y53_N29
\id_ex_src2|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|value2[3]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \id_ex_src2|Q\(3));

-- Location: LCCOMB_X111_Y53_N16
\alup|mux|stage3|f[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \alup|mux|stage3|f[3]~5_combout\ = (\forward|ForwardB~2_combout\ & (\mem_wb_result|Q\(3))) # (!\forward|ForwardB~2_combout\ & ((\id_ex_src2|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_wb_result|Q\(3),
	datab => \id_ex_src2|Q\(3),
	datad => \forward|ForwardB~2_combout\,
	combout => \alup|mux|stage3|f[3]~5_combout\);

-- Location: FF_X113_Y53_N17
\rf|r9|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m1|stage3|f[0]~0_combout\,
	sload => VCC,
	ena => \rf|m9|stage3|f[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r9|Q\(0));

-- Location: FF_X112_Y55_N21
\rf|r10|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r10|Q[0]~feeder_combout\,
	ena => \rf|m10|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r10|Q\(0));

-- Location: FF_X113_Y53_N31
\rf|r8|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m0|stage3|f~0_combout\,
	sload => VCC,
	ena => \rf|m8|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r8|Q\(0));

-- Location: LCCOMB_X113_Y53_N30
\rf|value2[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[0]~0_combout\ = (\if_id_inst|Q\(16) & (((\if_id_inst|Q\(17))))) # (!\if_id_inst|Q\(16) & ((\if_id_inst|Q\(17) & (\rf|r10|Q\(0))) # (!\if_id_inst|Q\(17) & ((\rf|r8|Q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \if_id_inst|Q\(16),
	datab => \rf|r10|Q\(0),
	datac => \rf|r8|Q\(0),
	datad => \if_id_inst|Q\(17),
	combout => \rf|value2[0]~0_combout\);

-- Location: FF_X114_Y54_N9
\rf|r11|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r11|Q[0]~feeder_combout\,
	ena => \rf|m11|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r11|Q\(0));

-- Location: LCCOMB_X113_Y53_N20
\rf|value2[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[0]~1_combout\ = (\if_id_inst|Q\(16) & ((\rf|value2[0]~0_combout\ & ((\rf|r11|Q\(0)))) # (!\rf|value2[0]~0_combout\ & (\rf|r9|Q\(0))))) # (!\if_id_inst|Q\(16) & (((\rf|value2[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \if_id_inst|Q\(16),
	datab => \rf|r9|Q\(0),
	datac => \rf|value2[0]~0_combout\,
	datad => \rf|r11|Q\(0),
	combout => \rf|value2[0]~1_combout\);

-- Location: FF_X114_Y55_N29
\rf|r5|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r5|Q[0]~feeder_combout\,
	ena => \rf|m5|stage3|f[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r5|Q\(0));

-- Location: FF_X110_Y55_N9
\rf|r6|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r6|Q[0]~feeder_combout\,
	ena => \rf|m6|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r6|Q\(0));

-- Location: FF_X112_Y55_N11
\rf|r2|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r2|Q[0]~feeder_combout\,
	ena => \rf|m2|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r2|Q\(0));

-- Location: FF_X113_Y55_N15
\rf|r3|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r3|Q[0]~feeder_combout\,
	ena => \rf|m3|stage3|f[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r3|Q\(0));

-- Location: FF_X114_Y54_N19
\rf|r13|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r13|Q[0]~feeder_combout\,
	ena => \rf|m13|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r13|Q\(0));

-- Location: FF_X114_Y53_N3
\ex_Mem_Rd|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \id_ex_Rd|Q\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ex_Mem_Rd|Q\(1));

-- Location: LCCOMB_X113_Y53_N14
\rf|value1[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[0]~0_combout\ = (\if_id_inst|Q\(22) & (((\if_id_inst|Q\(21))))) # (!\if_id_inst|Q\(22) & ((\if_id_inst|Q\(21) & ((\rf|r9|Q\(0)))) # (!\if_id_inst|Q\(21) & (\rf|r8|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r8|Q\(0),
	datab => \rf|r9|Q\(0),
	datac => \if_id_inst|Q\(22),
	datad => \if_id_inst|Q\(21),
	combout => \rf|value1[0]~0_combout\);

-- Location: LCCOMB_X113_Y53_N12
\rf|value1[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[0]~1_combout\ = (\if_id_inst|Q\(22) & ((\rf|value1[0]~0_combout\ & (\rf|r11|Q\(0))) # (!\rf|value1[0]~0_combout\ & ((\rf|r10|Q\(0)))))) # (!\if_id_inst|Q\(22) & (((\rf|value1[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r11|Q\(0),
	datab => \if_id_inst|Q\(22),
	datac => \rf|value1[0]~0_combout\,
	datad => \rf|r10|Q\(0),
	combout => \rf|value1[0]~1_combout\);

-- Location: LCCOMB_X111_Y55_N28
\rf|value1[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[0]~2_combout\ = (\if_id_inst|Q\(22) & (((\if_id_inst|Q\(21)) # (\rf|r6|Q\(0))))) # (!\if_id_inst|Q\(22) & (\rf|r4|Q\(0) & (!\if_id_inst|Q\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r4|Q\(0),
	datab => \if_id_inst|Q\(22),
	datac => \if_id_inst|Q\(21),
	datad => \rf|r6|Q\(0),
	combout => \rf|value1[0]~2_combout\);

-- Location: LCCOMB_X111_Y55_N22
\rf|value1[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[0]~3_combout\ = (\if_id_inst|Q\(21) & ((\rf|value1[0]~2_combout\ & ((\rf|r7|Q\(0)))) # (!\rf|value1[0]~2_combout\ & (\rf|r5|Q\(0))))) # (!\if_id_inst|Q\(21) & (((\rf|value1[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r5|Q\(0),
	datab => \rf|r7|Q\(0),
	datac => \if_id_inst|Q\(21),
	datad => \rf|value1[0]~2_combout\,
	combout => \rf|value1[0]~3_combout\);

-- Location: LCCOMB_X112_Y55_N28
\rf|value1[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[0]~4_combout\ = (\if_id_inst|Q\(21) & (((\if_id_inst|Q\(22)) # (\rf|r1|Q\(0))))) # (!\if_id_inst|Q\(21) & (\rf|r0|Q\(0) & (!\if_id_inst|Q\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \if_id_inst|Q\(21),
	datab => \rf|r0|Q\(0),
	datac => \if_id_inst|Q\(22),
	datad => \rf|r1|Q\(0),
	combout => \rf|value1[0]~4_combout\);

-- Location: LCCOMB_X112_Y55_N2
\rf|value1[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[0]~5_combout\ = (\if_id_inst|Q\(22) & ((\rf|value1[0]~4_combout\ & ((\rf|r3|Q\(0)))) # (!\rf|value1[0]~4_combout\ & (\rf|r2|Q\(0))))) # (!\if_id_inst|Q\(22) & (((\rf|value1[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r2|Q\(0),
	datab => \rf|r3|Q\(0),
	datac => \if_id_inst|Q\(22),
	datad => \rf|value1[0]~4_combout\,
	combout => \rf|value1[0]~5_combout\);

-- Location: LCCOMB_X111_Y55_N0
\rf|value1[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[0]~6_combout\ = (\if_id_inst|Q\(24) & (\if_id_inst|Q\(23))) # (!\if_id_inst|Q\(24) & ((\if_id_inst|Q\(23) & (\rf|value1[0]~3_combout\)) # (!\if_id_inst|Q\(23) & ((\rf|value1[0]~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \if_id_inst|Q\(24),
	datab => \if_id_inst|Q\(23),
	datac => \rf|value1[0]~3_combout\,
	datad => \rf|value1[0]~5_combout\,
	combout => \rf|value1[0]~6_combout\);

-- Location: LCCOMB_X111_Y54_N24
\rf|value1[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[0]~7_combout\ = (\if_id_inst|Q\(22) & ((\rf|r14|Q\(0)) # ((\if_id_inst|Q\(21))))) # (!\if_id_inst|Q\(22) & (((\rf|r12|Q\(0) & !\if_id_inst|Q\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \if_id_inst|Q\(22),
	datab => \rf|r14|Q\(0),
	datac => \rf|r12|Q\(0),
	datad => \if_id_inst|Q\(21),
	combout => \rf|value1[0]~7_combout\);

-- Location: LCCOMB_X111_Y54_N30
\rf|value1[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[0]~8_combout\ = (\if_id_inst|Q\(21) & ((\rf|value1[0]~7_combout\ & ((\rf|r15|Q\(0)))) # (!\rf|value1[0]~7_combout\ & (\rf|r13|Q\(0))))) # (!\if_id_inst|Q\(21) & (((\rf|value1[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r13|Q\(0),
	datab => \if_id_inst|Q\(21),
	datac => \rf|r15|Q\(0),
	datad => \rf|value1[0]~7_combout\,
	combout => \rf|value1[0]~8_combout\);

-- Location: LCCOMB_X112_Y53_N2
\rf|value1[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[0]~9_combout\ = (\if_id_inst|Q\(24) & ((\rf|value1[0]~6_combout\ & (\rf|value1[0]~8_combout\)) # (!\rf|value1[0]~6_combout\ & ((\rf|value1[0]~1_combout\))))) # (!\if_id_inst|Q\(24) & (((\rf|value1[0]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value1[0]~8_combout\,
	datab => \if_id_inst|Q\(24),
	datac => \rf|value1[0]~1_combout\,
	datad => \rf|value1[0]~6_combout\,
	combout => \rf|value1[0]~9_combout\);

-- Location: FF_X112_Y55_N13
\rf|r10|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m0|stage3|f~2_combout\,
	sload => VCC,
	ena => \rf|m10|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r10|Q\(1));

-- Location: LCCOMB_X113_Y53_N18
\rf|value2[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[1]~10_combout\ = (\if_id_inst|Q\(18) & (\if_id_inst|Q\(17))) # (!\if_id_inst|Q\(18) & ((\if_id_inst|Q\(17) & ((\rf|r10|Q\(1)))) # (!\if_id_inst|Q\(17) & (\rf|r8|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \if_id_inst|Q\(18),
	datab => \if_id_inst|Q\(17),
	datac => \rf|r8|Q\(1),
	datad => \rf|r10|Q\(1),
	combout => \rf|value2[1]~10_combout\);

-- Location: FF_X112_Y53_N15
\rf|r14|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m0|stage3|f~2_combout\,
	sload => VCC,
	ena => \rf|m14|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r14|Q\(1));

-- Location: LCCOMB_X112_Y53_N14
\rf|value2[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[1]~11_combout\ = (\if_id_inst|Q\(18) & ((\rf|value2[1]~10_combout\ & ((\rf|r14|Q\(1)))) # (!\rf|value2[1]~10_combout\ & (\rf|r12|Q\(1))))) # (!\if_id_inst|Q\(18) & (((\rf|value2[1]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r12|Q\(1),
	datab => \if_id_inst|Q\(18),
	datac => \rf|r14|Q\(1),
	datad => \rf|value2[1]~10_combout\,
	combout => \rf|value2[1]~11_combout\);

-- Location: FF_X113_Y55_N31
\rf|r5|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r5|Q[1]~feeder_combout\,
	ena => \rf|m5|stage3|f[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r5|Q\(1));

-- Location: LCCOMB_X113_Y55_N6
\rf|value2[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[1]~12_combout\ = (\if_id_inst|Q\(18) & (((\if_id_inst|Q\(17))))) # (!\if_id_inst|Q\(18) & ((\if_id_inst|Q\(17) & (\rf|r3|Q\(1))) # (!\if_id_inst|Q\(17) & ((\rf|r1|Q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \if_id_inst|Q\(18),
	datab => \rf|r3|Q\(1),
	datac => \if_id_inst|Q\(17),
	datad => \rf|r1|Q\(1),
	combout => \rf|value2[1]~12_combout\);

-- Location: LCCOMB_X113_Y55_N4
\rf|value2[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[1]~13_combout\ = (\if_id_inst|Q\(18) & ((\rf|value2[1]~12_combout\ & (\rf|r7|Q\(1))) # (!\rf|value2[1]~12_combout\ & ((\rf|r5|Q\(1)))))) # (!\if_id_inst|Q\(18) & (((\rf|value2[1]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \if_id_inst|Q\(18),
	datab => \rf|r7|Q\(1),
	datac => \rf|r5|Q\(1),
	datad => \rf|value2[1]~12_combout\,
	combout => \rf|value2[1]~13_combout\);

-- Location: FF_X111_Y55_N21
\rf|r4|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m0|stage3|f~2_combout\,
	sload => VCC,
	ena => \rf|m4|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r4|Q\(1));

-- Location: FF_X112_Y55_N23
\rf|r2|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r2|Q[1]~feeder_combout\,
	ena => \rf|m2|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r2|Q\(1));

-- Location: LCCOMB_X112_Y55_N24
\rf|value2[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[1]~14_combout\ = (\if_id_inst|Q\(17) & ((\rf|r2|Q\(1)) # ((\if_id_inst|Q\(18))))) # (!\if_id_inst|Q\(17) & (((!\if_id_inst|Q\(18) & \rf|r0|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r2|Q\(1),
	datab => \if_id_inst|Q\(17),
	datac => \if_id_inst|Q\(18),
	datad => \rf|r0|Q\(1),
	combout => \rf|value2[1]~14_combout\);

-- Location: FF_X110_Y55_N7
\rf|r6|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r6|Q[1]~feeder_combout\,
	ena => \rf|m6|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r6|Q\(1));

-- Location: LCCOMB_X111_Y55_N30
\rf|value2[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[1]~15_combout\ = (\if_id_inst|Q\(18) & ((\rf|value2[1]~14_combout\ & ((\rf|r6|Q\(1)))) # (!\rf|value2[1]~14_combout\ & (\rf|r4|Q\(1))))) # (!\if_id_inst|Q\(18) & (((\rf|value2[1]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \if_id_inst|Q\(18),
	datab => \rf|r4|Q\(1),
	datac => \rf|r6|Q\(1),
	datad => \rf|value2[1]~14_combout\,
	combout => \rf|value2[1]~15_combout\);

-- Location: LCCOMB_X111_Y55_N8
\rf|value2[1]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[1]~16_combout\ = (\if_id_inst|Q\(16) & ((\if_id_inst|Q\(0)) # ((\rf|value2[1]~13_combout\)))) # (!\if_id_inst|Q\(16) & (!\if_id_inst|Q\(0) & (\rf|value2[1]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \if_id_inst|Q\(16),
	datab => \if_id_inst|Q\(0),
	datac => \rf|value2[1]~15_combout\,
	datad => \rf|value2[1]~13_combout\,
	combout => \rf|value2[1]~16_combout\);

-- Location: FF_X113_Y54_N21
\rf|r13|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r13|Q[1]~feeder_combout\,
	ena => \rf|m13|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r13|Q\(1));

-- Location: LCCOMB_X113_Y53_N0
\rf|value2[1]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[1]~17_combout\ = (\if_id_inst|Q\(18) & (\if_id_inst|Q\(17))) # (!\if_id_inst|Q\(18) & ((\if_id_inst|Q\(17) & ((\rf|r11|Q\(1)))) # (!\if_id_inst|Q\(17) & (\rf|r9|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \if_id_inst|Q\(18),
	datab => \if_id_inst|Q\(17),
	datac => \rf|r9|Q\(1),
	datad => \rf|r11|Q\(1),
	combout => \rf|value2[1]~17_combout\);

-- Location: LCCOMB_X113_Y53_N2
\rf|value2[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[1]~18_combout\ = (\if_id_inst|Q\(18) & ((\rf|value2[1]~17_combout\ & ((\rf|r15|Q\(1)))) # (!\rf|value2[1]~17_combout\ & (\rf|r13|Q\(1))))) # (!\if_id_inst|Q\(18) & (\rf|value2[1]~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \if_id_inst|Q\(18),
	datab => \rf|value2[1]~17_combout\,
	datac => \rf|r13|Q\(1),
	datad => \rf|r15|Q\(1),
	combout => \rf|value2[1]~18_combout\);

-- Location: LCCOMB_X112_Y53_N20
\rf|value2[1]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[1]~19_combout\ = (\if_id_inst|Q\(0) & ((\rf|value2[1]~16_combout\ & (\rf|value2[1]~18_combout\)) # (!\rf|value2[1]~16_combout\ & ((\rf|value2[1]~11_combout\))))) # (!\if_id_inst|Q\(0) & (((\rf|value2[1]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value2[1]~18_combout\,
	datab => \if_id_inst|Q\(0),
	datac => \rf|value2[1]~11_combout\,
	datad => \rf|value2[1]~16_combout\,
	combout => \rf|value2[1]~19_combout\);

-- Location: LCCOMB_X112_Y55_N12
\rf|value1[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[1]~10_combout\ = (\if_id_inst|Q\(23) & (((\if_id_inst|Q\(24))))) # (!\if_id_inst|Q\(23) & ((\if_id_inst|Q\(24) & ((\rf|r10|Q\(1)))) # (!\if_id_inst|Q\(24) & (\rf|r2|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r2|Q\(1),
	datab => \if_id_inst|Q\(23),
	datac => \rf|r10|Q\(1),
	datad => \if_id_inst|Q\(24),
	combout => \rf|value1[1]~10_combout\);

-- Location: LCCOMB_X110_Y55_N28
\rf|value1[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[1]~11_combout\ = (\if_id_inst|Q\(23) & ((\rf|value1[1]~10_combout\ & ((\rf|r14|Q\(1)))) # (!\rf|value1[1]~10_combout\ & (\rf|r6|Q\(1))))) # (!\if_id_inst|Q\(23) & (((\rf|value1[1]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r6|Q\(1),
	datab => \if_id_inst|Q\(23),
	datac => \rf|r14|Q\(1),
	datad => \rf|value1[1]~10_combout\,
	combout => \rf|value1[1]~11_combout\);

-- Location: FF_X112_Y54_N23
\rf|r12|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r12|Q[2]~feeder_combout\,
	ena => \rf|m12|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r12|Q\(2));

-- Location: FF_X111_Y54_N11
\rf|r4|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|m4|stage3|f[2]~2_combout\,
	ena => \rf|m4|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r4|Q\(2));

-- Location: LCCOMB_X111_Y54_N16
\rf|value2[2]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[2]~20_combout\ = (\if_id_inst|Q\(0) & (((\if_id_inst|Q\(16))))) # (!\if_id_inst|Q\(0) & ((\if_id_inst|Q\(16) & ((\rf|r5|Q\(2)))) # (!\if_id_inst|Q\(16) & (\rf|r4|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r4|Q\(2),
	datab => \rf|r5|Q\(2),
	datac => \if_id_inst|Q\(0),
	datad => \if_id_inst|Q\(16),
	combout => \rf|value2[2]~20_combout\);

-- Location: LCCOMB_X113_Y54_N10
\rf|value2[2]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[2]~21_combout\ = (\rf|value2[2]~20_combout\ & ((\rf|r13|Q\(2)) # ((!\if_id_inst|Q\(0))))) # (!\rf|value2[2]~20_combout\ & (((\rf|r12|Q\(2) & \if_id_inst|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r13|Q\(2),
	datab => \rf|r12|Q\(2),
	datac => \rf|value2[2]~20_combout\,
	datad => \if_id_inst|Q\(0),
	combout => \rf|value2[2]~21_combout\);

-- Location: LCCOMB_X112_Y55_N18
\rf|value2[2]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[2]~22_combout\ = (\if_id_inst|Q\(0) & (((\if_id_inst|Q\(16))))) # (!\if_id_inst|Q\(0) & ((\if_id_inst|Q\(16) & (\rf|r3|Q\(2))) # (!\if_id_inst|Q\(16) & ((\rf|r2|Q\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r3|Q\(2),
	datab => \rf|r2|Q\(2),
	datac => \if_id_inst|Q\(0),
	datad => \if_id_inst|Q\(16),
	combout => \rf|value2[2]~22_combout\);

-- Location: LCCOMB_X112_Y55_N8
\rf|value2[2]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[2]~23_combout\ = (\if_id_inst|Q\(0) & ((\rf|value2[2]~22_combout\ & ((\rf|r11|Q\(2)))) # (!\rf|value2[2]~22_combout\ & (\rf|r10|Q\(2))))) # (!\if_id_inst|Q\(0) & (((\rf|value2[2]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r10|Q\(2),
	datab => \rf|r11|Q\(2),
	datac => \if_id_inst|Q\(0),
	datad => \rf|value2[2]~22_combout\,
	combout => \rf|value2[2]~23_combout\);

-- Location: FF_X113_Y54_N5
\rf|r1|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r1|Q[2]~feeder_combout\,
	ena => \rf|m1|stage3|f[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r1|Q\(2));

-- Location: LCCOMB_X113_Y54_N30
\rf|value2[2]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[2]~24_combout\ = (\if_id_inst|Q\(16) & ((\rf|r1|Q\(2)) # ((\if_id_inst|Q\(0))))) # (!\if_id_inst|Q\(16) & (((\rf|r0|Q\(2) & !\if_id_inst|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \if_id_inst|Q\(16),
	datab => \rf|r1|Q\(2),
	datac => \rf|r0|Q\(2),
	datad => \if_id_inst|Q\(0),
	combout => \rf|value2[2]~24_combout\);

-- Location: LCCOMB_X113_Y53_N22
\rf|value2[2]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[2]~25_combout\ = (\rf|value2[2]~24_combout\ & (((\rf|r9|Q\(2)) # (!\if_id_inst|Q\(0))))) # (!\rf|value2[2]~24_combout\ & (\rf|r8|Q\(2) & ((\if_id_inst|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value2[2]~24_combout\,
	datab => \rf|r8|Q\(2),
	datac => \rf|r9|Q\(2),
	datad => \if_id_inst|Q\(0),
	combout => \rf|value2[2]~25_combout\);

-- Location: LCCOMB_X113_Y53_N28
\rf|value2[2]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[2]~26_combout\ = (\if_id_inst|Q\(18) & (\if_id_inst|Q\(17))) # (!\if_id_inst|Q\(18) & ((\if_id_inst|Q\(17) & ((\rf|value2[2]~23_combout\))) # (!\if_id_inst|Q\(17) & (\rf|value2[2]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \if_id_inst|Q\(18),
	datab => \if_id_inst|Q\(17),
	datac => \rf|value2[2]~25_combout\,
	datad => \rf|value2[2]~23_combout\,
	combout => \rf|value2[2]~26_combout\);

-- Location: FF_X112_Y53_N7
\rf|r14|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r14|Q[2]~feeder_combout\,
	ena => \rf|m14|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r14|Q\(2));

-- Location: LCCOMB_X110_Y55_N22
\rf|value2[2]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[2]~27_combout\ = (\if_id_inst|Q\(0) & (((\if_id_inst|Q\(16))))) # (!\if_id_inst|Q\(0) & ((\if_id_inst|Q\(16) & (\rf|r7|Q\(2))) # (!\if_id_inst|Q\(16) & ((\rf|r6|Q\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r7|Q\(2),
	datab => \rf|r6|Q\(2),
	datac => \if_id_inst|Q\(0),
	datad => \if_id_inst|Q\(16),
	combout => \rf|value2[2]~27_combout\);

-- Location: LCCOMB_X110_Y55_N20
\rf|value2[2]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[2]~28_combout\ = (\if_id_inst|Q\(0) & ((\rf|value2[2]~27_combout\ & ((\rf|r15|Q\(2)))) # (!\rf|value2[2]~27_combout\ & (\rf|r14|Q\(2))))) # (!\if_id_inst|Q\(0) & (((\rf|value2[2]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r14|Q\(2),
	datab => \if_id_inst|Q\(0),
	datac => \rf|value2[2]~27_combout\,
	datad => \rf|r15|Q\(2),
	combout => \rf|value2[2]~28_combout\);

-- Location: LCCOMB_X114_Y53_N22
\rf|value2[2]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[2]~29_combout\ = (\if_id_inst|Q\(18) & ((\rf|value2[2]~26_combout\ & (\rf|value2[2]~28_combout\)) # (!\rf|value2[2]~26_combout\ & ((\rf|value2[2]~21_combout\))))) # (!\if_id_inst|Q\(18) & (((\rf|value2[2]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value2[2]~28_combout\,
	datab => \if_id_inst|Q\(18),
	datac => \rf|value2[2]~21_combout\,
	datad => \rf|value2[2]~26_combout\,
	combout => \rf|value2[2]~29_combout\);

-- Location: LCCOMB_X113_Y55_N18
\rf|value2[3]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[3]~30_combout\ = (\if_id_inst|Q\(18) & ((\rf|r5|Q\(3)) # ((\if_id_inst|Q\(17))))) # (!\if_id_inst|Q\(18) & (((!\if_id_inst|Q\(17) & \rf|r1|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \if_id_inst|Q\(18),
	datab => \rf|r5|Q\(3),
	datac => \if_id_inst|Q\(17),
	datad => \rf|r1|Q\(3),
	combout => \rf|value2[3]~30_combout\);

-- Location: LCCOMB_X113_Y55_N24
\rf|value2[3]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[3]~31_combout\ = (\if_id_inst|Q\(17) & ((\rf|value2[3]~30_combout\ & (\rf|r7|Q\(3))) # (!\rf|value2[3]~30_combout\ & ((\rf|r3|Q\(3)))))) # (!\if_id_inst|Q\(17) & (((\rf|value2[3]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r7|Q\(3),
	datab => \if_id_inst|Q\(17),
	datac => \rf|r3|Q\(3),
	datad => \rf|value2[3]~30_combout\,
	combout => \rf|value2[3]~31_combout\);

-- Location: FF_X112_Y54_N3
\rf|r12|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r12|Q[3]~feeder_combout\,
	ena => \rf|m12|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r12|Q\(3));

-- Location: FF_X113_Y53_N7
\rf|r8|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r8|Q[3]~feeder_combout\,
	ena => \rf|m8|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r8|Q\(3));

-- Location: LCCOMB_X112_Y55_N4
\rf|value2[3]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[3]~32_combout\ = (\if_id_inst|Q\(18) & (\if_id_inst|Q\(17))) # (!\if_id_inst|Q\(18) & ((\if_id_inst|Q\(17) & (\rf|r10|Q\(3))) # (!\if_id_inst|Q\(17) & ((\rf|r8|Q\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \if_id_inst|Q\(18),
	datab => \if_id_inst|Q\(17),
	datac => \rf|r10|Q\(3),
	datad => \rf|r8|Q\(3),
	combout => \rf|value2[3]~32_combout\);

-- Location: LCCOMB_X112_Y53_N24
\rf|value2[3]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[3]~33_combout\ = (\rf|value2[3]~32_combout\ & ((\rf|r14|Q\(3)) # ((!\if_id_inst|Q\(18))))) # (!\rf|value2[3]~32_combout\ & (((\rf|r12|Q\(3) & \if_id_inst|Q\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r14|Q\(3),
	datab => \rf|r12|Q\(3),
	datac => \rf|value2[3]~32_combout\,
	datad => \if_id_inst|Q\(18),
	combout => \rf|value2[3]~33_combout\);

-- Location: FF_X111_Y54_N21
\rf|r4|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r4|Q[3]~feeder_combout\,
	ena => \rf|m4|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r4|Q\(3));

-- Location: FF_X112_Y54_N13
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

-- Location: LCCOMB_X112_Y54_N30
\rf|value2[3]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[3]~34_combout\ = (\if_id_inst|Q\(18) & (((\rf|r4|Q\(3)) # (\if_id_inst|Q\(17))))) # (!\if_id_inst|Q\(18) & (\rf|r0|Q\(3) & ((!\if_id_inst|Q\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r0|Q\(3),
	datab => \rf|r4|Q\(3),
	datac => \if_id_inst|Q\(18),
	datad => \if_id_inst|Q\(17),
	combout => \rf|value2[3]~34_combout\);

-- Location: LCCOMB_X112_Y53_N30
\rf|value2[3]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[3]~35_combout\ = (\if_id_inst|Q\(17) & ((\rf|value2[3]~34_combout\ & ((\rf|r6|Q\(3)))) # (!\rf|value2[3]~34_combout\ & (\rf|r2|Q\(3))))) # (!\if_id_inst|Q\(17) & (((\rf|value2[3]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \if_id_inst|Q\(17),
	datab => \rf|r2|Q\(3),
	datac => \rf|value2[3]~34_combout\,
	datad => \rf|r6|Q\(3),
	combout => \rf|value2[3]~35_combout\);

-- Location: LCCOMB_X112_Y53_N12
\rf|value2[3]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[3]~36_combout\ = (\if_id_inst|Q\(16) & (\if_id_inst|Q\(0))) # (!\if_id_inst|Q\(16) & ((\if_id_inst|Q\(0) & ((\rf|value2[3]~33_combout\))) # (!\if_id_inst|Q\(0) & (\rf|value2[3]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \if_id_inst|Q\(16),
	datab => \if_id_inst|Q\(0),
	datac => \rf|value2[3]~35_combout\,
	datad => \rf|value2[3]~33_combout\,
	combout => \rf|value2[3]~36_combout\);

-- Location: FF_X114_Y54_N25
\rf|r11|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r11|Q[3]~feeder_combout\,
	ena => \rf|m11|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r11|Q\(3));

-- Location: LCCOMB_X113_Y53_N24
\rf|value2[3]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[3]~37_combout\ = (\if_id_inst|Q\(18) & (((\if_id_inst|Q\(17))))) # (!\if_id_inst|Q\(18) & ((\if_id_inst|Q\(17) & (\rf|r11|Q\(3))) # (!\if_id_inst|Q\(17) & ((\rf|r9|Q\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \if_id_inst|Q\(18),
	datab => \rf|r11|Q\(3),
	datac => \rf|r9|Q\(3),
	datad => \if_id_inst|Q\(17),
	combout => \rf|value2[3]~37_combout\);

-- Location: FF_X114_Y52_N7
\rf|r15|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r15|Q[3]~feeder_combout\,
	ena => \rf|m15|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r15|Q\(3));

-- Location: LCCOMB_X113_Y53_N10
\rf|value2[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[3]~38_combout\ = (\if_id_inst|Q\(18) & ((\rf|value2[3]~37_combout\ & ((\rf|r15|Q\(3)))) # (!\rf|value2[3]~37_combout\ & (\rf|r13|Q\(3))))) # (!\if_id_inst|Q\(18) & (((\rf|value2[3]~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \if_id_inst|Q\(18),
	datab => \rf|r13|Q\(3),
	datac => \rf|r15|Q\(3),
	datad => \rf|value2[3]~37_combout\,
	combout => \rf|value2[3]~38_combout\);

-- Location: LCCOMB_X112_Y53_N28
\rf|value2[3]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[3]~39_combout\ = (\if_id_inst|Q\(16) & ((\rf|value2[3]~36_combout\ & (\rf|value2[3]~38_combout\)) # (!\rf|value2[3]~36_combout\ & ((\rf|value2[3]~31_combout\))))) # (!\if_id_inst|Q\(16) & (((\rf|value2[3]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \if_id_inst|Q\(16),
	datab => \rf|value2[3]~38_combout\,
	datac => \rf|value2[3]~31_combout\,
	datad => \rf|value2[3]~36_combout\,
	combout => \rf|value2[3]~39_combout\);

-- Location: LCCOMB_X111_Y54_N18
\rf|value1[3]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[3]~34_combout\ = (\if_id_inst|Q\(24) & (((\if_id_inst|Q\(23))))) # (!\if_id_inst|Q\(24) & ((\if_id_inst|Q\(23) & ((\rf|r4|Q\(3)))) # (!\if_id_inst|Q\(23) & (\rf|r0|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \if_id_inst|Q\(24),
	datab => \rf|r0|Q\(3),
	datac => \if_id_inst|Q\(23),
	datad => \rf|r4|Q\(3),
	combout => \rf|value1[3]~34_combout\);

-- Location: LCCOMB_X111_Y54_N4
\rf|value1[3]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[3]~35_combout\ = (\if_id_inst|Q\(24) & ((\rf|value1[3]~34_combout\ & (\rf|r12|Q\(3))) # (!\rf|value1[3]~34_combout\ & ((\rf|r8|Q\(3)))))) # (!\if_id_inst|Q\(24) & (((\rf|value1[3]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r12|Q\(3),
	datab => \rf|r8|Q\(3),
	datac => \if_id_inst|Q\(24),
	datad => \rf|value1[3]~34_combout\,
	combout => \rf|value1[3]~35_combout\);

-- Location: FF_X114_Y53_N27
\if_id_inst|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \im|output[14]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \if_id_inst|Q\(14));

-- Location: FF_X114_Y52_N3
\id_ex_Rd|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \id_ex_Rd|Q[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \id_ex_Rd|Q\(1));

-- Location: LCCOMB_X114_Y53_N26
\im|output[14]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \im|output[14]~8_combout\ = (\pc|Q\(3)) # (\pc|Q\(2) $ (((!\pc|Q\(1) & !\pc|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(1),
	datab => \pc|Q\(2),
	datac => \pc|Q\(3),
	datad => \pc|Q\(0),
	combout => \im|output[14]~8_combout\);

-- Location: LCCOMB_X114_Y55_N28
\rf|r5|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r5|Q[0]~feeder_combout\ = \rf|m1|stage3|f[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m1|stage3|f[0]~0_combout\,
	combout => \rf|r5|Q[0]~feeder_combout\);

-- Location: LCCOMB_X113_Y55_N14
\rf|r3|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r3|Q[0]~feeder_combout\ = \rf|m1|stage3|f[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|m1|stage3|f[0]~0_combout\,
	combout => \rf|r3|Q[0]~feeder_combout\);

-- Location: LCCOMB_X114_Y52_N2
\id_ex_Rd|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \id_ex_Rd|Q[1]~feeder_combout\ = \mx_redst|f[1]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mx_redst|f[1]~3_combout\,
	combout => \id_ex_Rd|Q[1]~feeder_combout\);

-- Location: LCCOMB_X114_Y54_N8
\rf|r11|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r11|Q[0]~feeder_combout\ = \rf|m0|stage3|f~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|m0|stage3|f~0_combout\,
	combout => \rf|r11|Q[0]~feeder_combout\);

-- Location: LCCOMB_X114_Y54_N18
\rf|r13|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r13|Q[0]~feeder_combout\ = \rf|m0|stage3|f~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|m0|stage3|f~0_combout\,
	combout => \rf|r13|Q[0]~feeder_combout\);

-- Location: LCCOMB_X112_Y55_N20
\rf|r10|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r10|Q[0]~feeder_combout\ = \rf|m0|stage3|f~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|m0|stage3|f~0_combout\,
	combout => \rf|r10|Q[0]~feeder_combout\);

-- Location: LCCOMB_X112_Y55_N10
\rf|r2|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r2|Q[0]~feeder_combout\ = \rf|m0|stage3|f~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|m0|stage3|f~0_combout\,
	combout => \rf|r2|Q[0]~feeder_combout\);

-- Location: LCCOMB_X110_Y55_N8
\rf|r6|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r6|Q[0]~feeder_combout\ = \rf|m0|stage3|f~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m0|stage3|f~0_combout\,
	combout => \rf|r6|Q[0]~feeder_combout\);

-- Location: LCCOMB_X113_Y54_N20
\rf|r13|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r13|Q[1]~feeder_combout\ = \rf|m0|stage3|f~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m0|stage3|f~2_combout\,
	combout => \rf|r13|Q[1]~feeder_combout\);

-- Location: LCCOMB_X113_Y55_N30
\rf|r5|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r5|Q[1]~feeder_combout\ = \rf|m0|stage3|f~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|m0|stage3|f~2_combout\,
	combout => \rf|r5|Q[1]~feeder_combout\);

-- Location: LCCOMB_X112_Y55_N22
\rf|r2|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r2|Q[1]~feeder_combout\ = \rf|m2|stage3|f[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|m2|stage3|f[1]~1_combout\,
	combout => \rf|r2|Q[1]~feeder_combout\);

-- Location: LCCOMB_X110_Y55_N6
\rf|r6|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r6|Q[1]~feeder_combout\ = \rf|m2|stage3|f[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|m2|stage3|f[1]~1_combout\,
	combout => \rf|r6|Q[1]~feeder_combout\);

-- Location: LCCOMB_X112_Y53_N6
\rf|r14|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r14|Q[2]~feeder_combout\ = \rf|m0|stage3|f~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m0|stage3|f~3_combout\,
	combout => \rf|r14|Q[2]~feeder_combout\);

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

-- Location: LCCOMB_X112_Y54_N22
\rf|r12|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r12|Q[2]~feeder_combout\ = \rf|m0|stage3|f~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m0|stage3|f~3_combout\,
	combout => \rf|r12|Q[2]~feeder_combout\);

-- Location: LCCOMB_X114_Y54_N24
\rf|r11|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r11|Q[3]~feeder_combout\ = \rf|m0|stage3|f~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m0|stage3|f~4_combout\,
	combout => \rf|r11|Q[3]~feeder_combout\);

-- Location: LCCOMB_X112_Y54_N12
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

-- Location: LCCOMB_X112_Y54_N2
\rf|r12|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r12|Q[3]~feeder_combout\ = \rf|m0|stage3|f~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m0|stage3|f~4_combout\,
	combout => \rf|r12|Q[3]~feeder_combout\);

-- Location: LCCOMB_X111_Y54_N20
\rf|r4|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r4|Q[3]~feeder_combout\ = \rf|m0|stage3|f~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m0|stage3|f~4_combout\,
	combout => \rf|r4|Q[3]~feeder_combout\);

-- Location: LCCOMB_X114_Y52_N6
\rf|r15|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r15|Q[3]~feeder_combout\ = \rf|m0|stage3|f~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m0|stage3|f~4_combout\,
	combout => \rf|r15|Q[3]~feeder_combout\);

-- Location: LCCOMB_X113_Y53_N6
\rf|r8|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r8|Q[3]~feeder_combout\ = \rf|m8|stage3|f[3]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|m8|stage3|f[3]~2_combout\,
	combout => \rf|r8|Q[3]~feeder_combout\);

-- Location: IOOBUF_X69_Y73_N16
\current_pc[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc|ALT_INV_Q\(0),
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
	i => \addpc|stage2|s~combout\,
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
	i => \addpc|stage3|s~combout\,
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
	i => \addpc|stage4|s~combout\,
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
	i => \mem_wb_result|Q\(0),
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
	i => \mem_wb_result|Q\(1),
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
	i => \mem_wb_result|Q\(2),
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
	i => \mem_wb_result|Q\(3),
	devoe => ww_devoe,
	o => \result[3]~output_o\);

-- Location: IOIBUF_X115_Y53_N15
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

-- Location: LCCOMB_X114_Y55_N4
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

-- Location: FF_X114_Y55_N5
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

-- Location: LCCOMB_X114_Y55_N26
\pc_mux|f~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_mux|f~1_combout\ = (!\reset~input_o\ & (\pc|Q\(0) $ (\pc|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pc|Q\(0),
	datac => \pc|Q\(1),
	datad => \reset~input_o\,
	combout => \pc_mux|f~1_combout\);

-- Location: FF_X114_Y55_N27
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

-- Location: LCCOMB_X111_Y55_N20
\addpc|stage2|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \addpc|stage2|s~combout\ = \pc|Q\(1) $ (\pc|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pc|Q\(1),
	datad => \pc|Q\(0),
	combout => \addpc|stage2|s~combout\);

-- Location: LCCOMB_X114_Y53_N24
\pc_mux|f~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_mux|f~2_combout\ = (!\reset~input_o\ & (\pc|Q\(2) $ (((\pc|Q\(1) & \pc|Q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(1),
	datab => \reset~input_o\,
	datac => \pc|Q\(2),
	datad => \pc|Q\(0),
	combout => \pc_mux|f~2_combout\);

-- Location: FF_X114_Y53_N25
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

-- Location: LCCOMB_X111_Y55_N10
\addpc|stage3|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \addpc|stage3|s~combout\ = \pc|Q\(2) $ (((\pc|Q\(0) & \pc|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(0),
	datab => \pc|Q\(2),
	datad => \pc|Q\(1),
	combout => \addpc|stage3|s~combout\);

-- Location: LCCOMB_X114_Y55_N8
\pc_mux|f~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_mux|f~3_combout\ = (\addpc|stage4|s~combout\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \addpc|stage4|s~combout\,
	datad => \reset~input_o\,
	combout => \pc_mux|f~3_combout\);

-- Location: FF_X114_Y55_N9
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

-- Location: LCCOMB_X114_Y55_N22
\addpc|stage4|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \addpc|stage4|s~combout\ = \pc|Q\(3) $ (((\pc|Q\(0) & (\pc|Q\(1) & \pc|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(3),
	datab => \pc|Q\(0),
	datac => \pc|Q\(1),
	datad => \pc|Q\(2),
	combout => \addpc|stage4|s~combout\);

-- Location: LCCOMB_X114_Y53_N16
\im|output[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \im|output[0]~1_combout\ = (\pc|Q\(3)) # ((\pc|Q\(1) & (\pc|Q\(2) & \pc|Q\(0))) # (!\pc|Q\(1) & (!\pc|Q\(2) & !\pc|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(1),
	datab => \pc|Q\(2),
	datac => \pc|Q\(3),
	datad => \pc|Q\(0),
	combout => \im|output[0]~1_combout\);

-- Location: FF_X114_Y53_N17
\if_id_inst|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \im|output[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \if_id_inst|Q\(0));

-- Location: LCCOMB_X112_Y53_N18
\rf|m0|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m0|stage3|f~0_combout\ = (\mem_wb_result|Q\(0) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mem_wb_result|Q\(0),
	datad => \reset~input_o\,
	combout => \rf|m0|stage3|f~0_combout\);

-- Location: LCCOMB_X112_Y53_N0
\rf|r14|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r14|Q[0]~feeder_combout\ = \rf|m0|stage3|f~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|m0|stage3|f~0_combout\,
	combout => \rf|r14|Q[0]~feeder_combout\);

-- Location: LCCOMB_X114_Y53_N14
\id_ex_regwrite|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \id_ex_regwrite|Q~0_combout\ = !\if_id_inst|Q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \if_id_inst|Q\(0),
	combout => \id_ex_regwrite|Q~0_combout\);

-- Location: LCCOMB_X114_Y53_N8
\mem_wb_regWrite|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem_wb_regWrite|process_0~0_combout\ = (\reset~input_o\ & \clock~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \clock~input_o\,
	combout => \mem_wb_regWrite|process_0~0_combout\);

-- Location: FF_X114_Y53_N15
\id_ex_regwrite|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \id_ex_regwrite|Q~0_combout\,
	clrn => \mem_wb_regWrite|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \id_ex_regwrite|Q~q\);

-- Location: FF_X114_Y53_N9
\ex_mem_RegWrite|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \id_ex_regwrite|Q~q\,
	clrn => \mem_wb_regWrite|ALT_INV_process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ex_mem_RegWrite|Q~q\);

-- Location: FF_X111_Y53_N7
\mem_wb_regWrite|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \ex_mem_RegWrite|Q~q\,
	clrn => \mem_wb_regWrite|ALT_INV_process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_wb_regWrite|Q~q\);

-- Location: LCCOMB_X114_Y53_N4
\id_ex_regdst|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \id_ex_regdst|Q~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \id_ex_regdst|Q~feeder_combout\);

-- Location: FF_X114_Y53_N5
\id_ex_regdst|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \id_ex_regdst|Q~feeder_combout\,
	clrn => \mem_wb_regWrite|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \id_ex_regdst|Q~q\);

-- Location: FF_X114_Y53_N11
\ex_mem_regdst|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \id_ex_regdst|Q~q\,
	clrn => \mem_wb_regWrite|ALT_INV_process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ex_mem_regdst|Q~q\);

-- Location: LCCOMB_X114_Y53_N6
\mem_wb_regdst|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem_wb_regdst|Q~feeder_combout\ = \ex_mem_regdst|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ex_mem_regdst|Q~q\,
	combout => \mem_wb_regdst|Q~feeder_combout\);

-- Location: FF_X114_Y53_N7
\mem_wb_regdst|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \mem_wb_regdst|Q~feeder_combout\,
	clrn => \mem_wb_regWrite|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_wb_regdst|Q~q\);

-- Location: LCCOMB_X114_Y53_N10
\mx_redst|f[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_redst|f[3]~1_combout\ = (\mem_wb_regdst|Q~q\ & (\if_id_inst|Q\(14))) # (!\mem_wb_regdst|Q~q\ & ((\if_id_inst|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \if_id_inst|Q\(14),
	datab => \if_id_inst|Q\(0),
	datad => \mem_wb_regdst|Q~q\,
	combout => \mx_redst|f[3]~1_combout\);

-- Location: LCCOMB_X113_Y53_N16
\rf|m8|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m8|stage3|f~0_combout\ = (!\mx_redst|f[0]~0_combout\ & (\mem_wb_regWrite|Q~q\ & \mx_redst|f[3]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mx_redst|f[0]~0_combout\,
	datab => \mem_wb_regWrite|Q~q\,
	datad => \mx_redst|f[3]~1_combout\,
	combout => \rf|m8|stage3|f~0_combout\);

-- Location: LCCOMB_X114_Y55_N24
\im|output[18]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \im|output[18]~0_combout\ = (\pc|Q\(3)) # ((\pc|Q\(0) & ((\pc|Q\(2)))) # (!\pc|Q\(0) & (!\pc|Q\(1) & !\pc|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(3),
	datab => \pc|Q\(0),
	datac => \pc|Q\(1),
	datad => \pc|Q\(2),
	combout => \im|output[18]~0_combout\);

-- Location: FF_X114_Y55_N25
\if_id_inst|Q[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \im|output[18]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \if_id_inst|Q\(18));

-- Location: LCCOMB_X114_Y55_N12
\im|output[13]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \im|output[13]~9_combout\ = (\pc|Q\(3)) # ((\pc|Q\(0) $ (!\pc|Q\(1))) # (!\pc|Q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(3),
	datab => \pc|Q\(0),
	datac => \pc|Q\(1),
	datad => \pc|Q\(2),
	combout => \im|output[13]~9_combout\);

-- Location: FF_X114_Y55_N13
\if_id_inst|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \im|output[13]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \if_id_inst|Q\(13));

-- Location: LCCOMB_X114_Y55_N2
\mx_redst|f[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_redst|f[2]~2_combout\ = (\mem_wb_regdst|Q~q\ & ((\if_id_inst|Q\(13)))) # (!\mem_wb_regdst|Q~q\ & (\if_id_inst|Q\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \if_id_inst|Q\(18),
	datac => \mem_wb_regdst|Q~q\,
	datad => \if_id_inst|Q\(13),
	combout => \mx_redst|f[2]~2_combout\);

-- Location: LCCOMB_X114_Y55_N14
\im|stage_dec|s1|y[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \im|stage_dec|s1|y[2]~0_combout\ = (\pc|Q\(3)) # (((\pc|Q\(1)) # (!\pc|Q\(2))) # (!\pc|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(3),
	datab => \pc|Q\(0),
	datac => \pc|Q\(1),
	datad => \pc|Q\(2),
	combout => \im|stage_dec|s1|y[2]~0_combout\);

-- Location: FF_X114_Y55_N15
\if_id_inst|Q[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \im|stage_dec|s1|y[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \if_id_inst|Q\(17));

-- Location: LCCOMB_X114_Y55_N0
\im|output[12]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \im|output[12]~10_combout\ = (\pc|Q\(3)) # (\pc|Q\(0) $ (!\pc|Q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(3),
	datac => \pc|Q\(0),
	datad => \pc|Q\(1),
	combout => \im|output[12]~10_combout\);

-- Location: FF_X114_Y55_N1
\if_id_inst|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \im|output[12]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \if_id_inst|Q\(12));

-- Location: LCCOMB_X114_Y55_N30
\mx_redst|f[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_redst|f[1]~3_combout\ = (\mem_wb_regdst|Q~q\ & ((\if_id_inst|Q\(12)))) # (!\mem_wb_regdst|Q~q\ & (\if_id_inst|Q\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \if_id_inst|Q\(17),
	datac => \mem_wb_regdst|Q~q\,
	datad => \if_id_inst|Q\(12),
	combout => \mx_redst|f[1]~3_combout\);

-- Location: LCCOMB_X112_Y53_N22
\rf|m14|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m14|stage3|f~0_combout\ = (\reset~input_o\) # ((\rf|m8|stage3|f~0_combout\ & (\mx_redst|f[2]~2_combout\ & \mx_redst|f[1]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \rf|m8|stage3|f~0_combout\,
	datac => \mx_redst|f[2]~2_combout\,
	datad => \mx_redst|f[1]~3_combout\,
	combout => \rf|m14|stage3|f~0_combout\);

-- Location: FF_X112_Y53_N1
\rf|r14|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r14|Q[0]~feeder_combout\,
	ena => \rf|m14|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r14|Q\(0));

-- Location: LCCOMB_X114_Y52_N24
\rf|r15|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r15|Q[0]~feeder_combout\ = \rf|m0|stage3|f~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m0|stage3|f~0_combout\,
	combout => \rf|r15|Q[0]~feeder_combout\);

-- Location: LCCOMB_X114_Y53_N12
\im|output[11]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \im|output[11]~2_combout\ = (\pc|Q\(3)) # (((\pc|Q\(1) & \pc|Q\(2))) # (!\pc|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(1),
	datab => \pc|Q\(2),
	datac => \pc|Q\(3),
	datad => \pc|Q\(0),
	combout => \im|output[11]~2_combout\);

-- Location: FF_X114_Y53_N13
\if_id_inst|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \im|output[11]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \if_id_inst|Q\(11));

-- Location: LCCOMB_X114_Y53_N0
\im|output[16]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \im|output[16]~3_combout\ = (\pc|Q\(3)) # ((\pc|Q\(1) & ((\pc|Q\(0)) # (!\pc|Q\(2)))) # (!\pc|Q\(1) & ((\pc|Q\(2)) # (!\pc|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(1),
	datab => \pc|Q\(2),
	datac => \pc|Q\(3),
	datad => \pc|Q\(0),
	combout => \im|output[16]~3_combout\);

-- Location: FF_X114_Y53_N1
\if_id_inst|Q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \im|output[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \if_id_inst|Q\(16));

-- Location: LCCOMB_X114_Y53_N20
\mx_redst|f[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mx_redst|f[0]~0_combout\ = (\mem_wb_regdst|Q~q\ & (\if_id_inst|Q\(11))) # (!\mem_wb_regdst|Q~q\ & ((\if_id_inst|Q\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_wb_regdst|Q~q\,
	datab => \if_id_inst|Q\(11),
	datad => \if_id_inst|Q\(16),
	combout => \mx_redst|f[0]~0_combout\);

-- Location: LCCOMB_X114_Y53_N30
\rf|m9|stage3|f[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m9|stage3|f[0]~0_combout\ = (\mx_redst|f[3]~1_combout\ & (\mem_wb_regWrite|Q~q\ & \mx_redst|f[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mx_redst|f[3]~1_combout\,
	datab => \mem_wb_regWrite|Q~q\,
	datad => \mx_redst|f[0]~0_combout\,
	combout => \rf|m9|stage3|f[0]~0_combout\);

-- Location: LCCOMB_X114_Y52_N4
\rf|m15|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m15|stage3|f~0_combout\ = (\reset~input_o\) # ((\mx_redst|f[2]~2_combout\ & (\rf|m9|stage3|f[0]~0_combout\ & \mx_redst|f[1]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \mx_redst|f[2]~2_combout\,
	datac => \rf|m9|stage3|f[0]~0_combout\,
	datad => \mx_redst|f[1]~3_combout\,
	combout => \rf|m15|stage3|f~0_combout\);

-- Location: FF_X114_Y52_N25
\rf|r15|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r15|Q[0]~feeder_combout\,
	ena => \rf|m15|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r15|Q\(0));

-- Location: LCCOMB_X112_Y54_N10
\rf|r12|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r12|Q[0]~feeder_combout\ = \rf|m0|stage3|f~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m0|stage3|f~0_combout\,
	combout => \rf|r12|Q[0]~feeder_combout\);

-- Location: LCCOMB_X112_Y54_N14
\rf|m12|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m12|stage3|f~0_combout\ = (\reset~input_o\) # ((!\mx_redst|f[1]~3_combout\ & (\mx_redst|f[2]~2_combout\ & \rf|m8|stage3|f~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \mx_redst|f[1]~3_combout\,
	datac => \mx_redst|f[2]~2_combout\,
	datad => \rf|m8|stage3|f~0_combout\,
	combout => \rf|m12|stage3|f~0_combout\);

-- Location: FF_X112_Y54_N11
\rf|r12|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r12|Q[0]~feeder_combout\,
	ena => \rf|m12|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r12|Q\(0));

-- Location: LCCOMB_X111_Y54_N28
\rf|value2[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[0]~7_combout\ = (\if_id_inst|Q\(16) & ((\rf|r13|Q\(0)) # ((\if_id_inst|Q\(17))))) # (!\if_id_inst|Q\(16) & (((\rf|r12|Q\(0) & !\if_id_inst|Q\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r13|Q\(0),
	datab => \if_id_inst|Q\(16),
	datac => \rf|r12|Q\(0),
	datad => \if_id_inst|Q\(17),
	combout => \rf|value2[0]~7_combout\);

-- Location: LCCOMB_X111_Y54_N26
\rf|value2[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[0]~8_combout\ = (\if_id_inst|Q\(17) & ((\rf|value2[0]~7_combout\ & ((\rf|r15|Q\(0)))) # (!\rf|value2[0]~7_combout\ & (\rf|r14|Q\(0))))) # (!\if_id_inst|Q\(17) & (((\rf|value2[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \if_id_inst|Q\(17),
	datab => \rf|r14|Q\(0),
	datac => \rf|r15|Q\(0),
	datad => \rf|value2[0]~7_combout\,
	combout => \rf|value2[0]~8_combout\);

-- Location: LCCOMB_X112_Y53_N26
\rf|m1|stage3|f[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m1|stage3|f[0]~0_combout\ = (\reset~input_o\) # (\mem_wb_result|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datad => \mem_wb_result|Q\(0),
	combout => \rf|m1|stage3|f[0]~0_combout\);

-- Location: LCCOMB_X113_Y54_N0
\rf|r1|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r1|Q[0]~feeder_combout\ = \rf|m1|stage3|f[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m1|stage3|f[0]~0_combout\,
	combout => \rf|r1|Q[0]~feeder_combout\);

-- Location: LCCOMB_X114_Y53_N2
\rf|m7|stage3|f[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m7|stage3|f[0]~0_combout\ = (!\mx_redst|f[3]~1_combout\ & (\mem_wb_regWrite|Q~q\ & \mx_redst|f[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mx_redst|f[3]~1_combout\,
	datab => \mem_wb_regWrite|Q~q\,
	datad => \mx_redst|f[0]~0_combout\,
	combout => \rf|m7|stage3|f[0]~0_combout\);

-- Location: LCCOMB_X113_Y54_N14
\rf|m1|stage3|f[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m1|stage3|f[0]~1_combout\ = (\reset~input_o\) # ((!\mx_redst|f[1]~3_combout\ & (!\mx_redst|f[2]~2_combout\ & \rf|m7|stage3|f[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \mx_redst|f[1]~3_combout\,
	datac => \mx_redst|f[2]~2_combout\,
	datad => \rf|m7|stage3|f[0]~0_combout\,
	combout => \rf|m1|stage3|f[0]~1_combout\);

-- Location: FF_X113_Y54_N1
\rf|r1|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r1|Q[0]~feeder_combout\,
	ena => \rf|m1|stage3|f[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r1|Q\(0));

-- Location: LCCOMB_X112_Y54_N0
\rf|r0|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r0|Q[0]~feeder_combout\ = \rf|m0|stage3|f~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m0|stage3|f~0_combout\,
	combout => \rf|r0|Q[0]~feeder_combout\);

-- Location: LCCOMB_X111_Y53_N0
\rf|m4|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m4|stage3|f~0_combout\ = (\mem_wb_regWrite|Q~q\ & (!\mx_redst|f[3]~1_combout\ & !\mx_redst|f[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_wb_regWrite|Q~q\,
	datab => \mx_redst|f[3]~1_combout\,
	datad => \mx_redst|f[0]~0_combout\,
	combout => \rf|m4|stage3|f~0_combout\);

-- Location: LCCOMB_X112_Y54_N8
\rf|m0|stage3|f~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m0|stage3|f~1_combout\ = (\reset~input_o\) # ((!\mx_redst|f[1]~3_combout\ & (\rf|m4|stage3|f~0_combout\ & !\mx_redst|f[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \mx_redst|f[1]~3_combout\,
	datac => \rf|m4|stage3|f~0_combout\,
	datad => \mx_redst|f[2]~2_combout\,
	combout => \rf|m0|stage3|f~1_combout\);

-- Location: FF_X112_Y54_N1
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

-- Location: LCCOMB_X113_Y55_N12
\rf|value2[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[0]~4_combout\ = (\if_id_inst|Q\(17) & ((\rf|r2|Q\(0)) # ((\if_id_inst|Q\(16))))) # (!\if_id_inst|Q\(17) & (((!\if_id_inst|Q\(16) & \rf|r0|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r2|Q\(0),
	datab => \if_id_inst|Q\(17),
	datac => \if_id_inst|Q\(16),
	datad => \rf|r0|Q\(0),
	combout => \rf|value2[0]~4_combout\);

-- Location: LCCOMB_X113_Y55_N20
\rf|value2[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[0]~5_combout\ = (\if_id_inst|Q\(16) & ((\rf|value2[0]~4_combout\ & (\rf|r3|Q\(0))) # (!\rf|value2[0]~4_combout\ & ((\rf|r1|Q\(0)))))) # (!\if_id_inst|Q\(16) & (((\rf|value2[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r3|Q\(0),
	datab => \rf|r1|Q\(0),
	datac => \if_id_inst|Q\(16),
	datad => \rf|value2[0]~4_combout\,
	combout => \rf|value2[0]~5_combout\);

-- Location: LCCOMB_X111_Y55_N26
\rf|r4|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r4|Q[0]~feeder_combout\ = \rf|m0|stage3|f~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m0|stage3|f~0_combout\,
	combout => \rf|r4|Q[0]~feeder_combout\);

-- Location: LCCOMB_X111_Y54_N22
\rf|m4|stage3|f~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m4|stage3|f~1_combout\ = (\reset~input_o\) # ((!\mx_redst|f[1]~3_combout\ & (\mx_redst|f[2]~2_combout\ & \rf|m4|stage3|f~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \mx_redst|f[1]~3_combout\,
	datac => \mx_redst|f[2]~2_combout\,
	datad => \rf|m4|stage3|f~0_combout\,
	combout => \rf|m4|stage3|f~1_combout\);

-- Location: FF_X111_Y55_N27
\rf|r4|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r4|Q[0]~feeder_combout\,
	ena => \rf|m4|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r4|Q\(0));

-- Location: LCCOMB_X110_Y55_N26
\rf|value2[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[0]~2_combout\ = (\if_id_inst|Q\(17) & ((\rf|r6|Q\(0)) # ((\if_id_inst|Q\(16))))) # (!\if_id_inst|Q\(17) & (((\rf|r4|Q\(0) & !\if_id_inst|Q\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r6|Q\(0),
	datab => \rf|r4|Q\(0),
	datac => \if_id_inst|Q\(17),
	datad => \if_id_inst|Q\(16),
	combout => \rf|value2[0]~2_combout\);

-- Location: LCCOMB_X110_Y55_N24
\rf|r7|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r7|Q[0]~feeder_combout\ = \rf|m1|stage3|f[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m1|stage3|f[0]~0_combout\,
	combout => \rf|r7|Q[0]~feeder_combout\);

-- Location: LCCOMB_X110_Y55_N12
\rf|m7|stage3|f[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m7|stage3|f[0]~1_combout\ = (\reset~input_o\) # ((\mx_redst|f[1]~3_combout\ & (\mx_redst|f[2]~2_combout\ & \rf|m7|stage3|f[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mx_redst|f[1]~3_combout\,
	datab => \reset~input_o\,
	datac => \mx_redst|f[2]~2_combout\,
	datad => \rf|m7|stage3|f[0]~0_combout\,
	combout => \rf|m7|stage3|f[0]~1_combout\);

-- Location: FF_X110_Y55_N25
\rf|r7|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r7|Q[0]~feeder_combout\,
	ena => \rf|m7|stage3|f[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r7|Q\(0));

-- Location: LCCOMB_X110_Y55_N14
\rf|value2[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[0]~3_combout\ = (\if_id_inst|Q\(16) & ((\rf|value2[0]~2_combout\ & ((\rf|r7|Q\(0)))) # (!\rf|value2[0]~2_combout\ & (\rf|r5|Q\(0))))) # (!\if_id_inst|Q\(16) & (((\rf|value2[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r5|Q\(0),
	datab => \if_id_inst|Q\(16),
	datac => \rf|value2[0]~2_combout\,
	datad => \rf|r7|Q\(0),
	combout => \rf|value2[0]~3_combout\);

-- Location: LCCOMB_X109_Y53_N18
\rf|value2[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[0]~6_combout\ = (\if_id_inst|Q\(18) & ((\if_id_inst|Q\(0)) # ((\rf|value2[0]~3_combout\)))) # (!\if_id_inst|Q\(18) & (!\if_id_inst|Q\(0) & (\rf|value2[0]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \if_id_inst|Q\(18),
	datab => \if_id_inst|Q\(0),
	datac => \rf|value2[0]~5_combout\,
	datad => \rf|value2[0]~3_combout\,
	combout => \rf|value2[0]~6_combout\);

-- Location: LCCOMB_X109_Y53_N30
\rf|value2[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[0]~9_combout\ = (\if_id_inst|Q\(0) & ((\rf|value2[0]~6_combout\ & ((\rf|value2[0]~8_combout\))) # (!\rf|value2[0]~6_combout\ & (\rf|value2[0]~1_combout\)))) # (!\if_id_inst|Q\(0) & (((\rf|value2[0]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value2[0]~1_combout\,
	datab => \if_id_inst|Q\(0),
	datac => \rf|value2[0]~8_combout\,
	datad => \rf|value2[0]~6_combout\,
	combout => \rf|value2[0]~9_combout\);

-- Location: FF_X109_Y53_N31
\id_ex_src2|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|value2[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \id_ex_src2|Q\(0));

-- Location: FF_X112_Y53_N23
\id_ex_Rd|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \mx_redst|f[2]~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \id_ex_Rd|Q\(2));

-- Location: FF_X112_Y53_N11
\ex_Mem_Rd|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \id_ex_Rd|Q\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ex_Mem_Rd|Q\(2));

-- Location: FF_X111_Y53_N9
\Mem_wb_Rd|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \ex_Mem_Rd|Q\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_wb_Rd|Q\(2));

-- Location: FF_X111_Y53_N5
\id_ex_RT|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \if_id_inst|Q\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \id_ex_RT|Q\(3));

-- Location: LCCOMB_X112_Y53_N4
\id_ex_RT|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \id_ex_RT|Q[2]~feeder_combout\ = \if_id_inst|Q\(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \if_id_inst|Q\(18),
	combout => \id_ex_RT|Q[2]~feeder_combout\);

-- Location: FF_X112_Y53_N5
\id_ex_RT|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \id_ex_RT|Q[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \id_ex_RT|Q\(2));

-- Location: LCCOMB_X111_Y53_N4
\forward|ForwardB~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \forward|ForwardB~0_combout\ = (\Mem_wb_Rd|Q\(3) & (\id_ex_RT|Q\(3) & (\Mem_wb_Rd|Q\(2) $ (!\id_ex_RT|Q\(2))))) # (!\Mem_wb_Rd|Q\(3) & (!\id_ex_RT|Q\(3) & (\Mem_wb_Rd|Q\(2) $ (!\id_ex_RT|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_wb_Rd|Q\(3),
	datab => \Mem_wb_Rd|Q\(2),
	datac => \id_ex_RT|Q\(3),
	datad => \id_ex_RT|Q\(2),
	combout => \forward|ForwardB~0_combout\);

-- Location: LCCOMB_X112_Y53_N8
\id_ex_Rd|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \id_ex_Rd|Q[0]~feeder_combout\ = \mx_redst|f[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mx_redst|f[0]~0_combout\,
	combout => \id_ex_Rd|Q[0]~feeder_combout\);

-- Location: FF_X112_Y53_N9
\id_ex_Rd|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \id_ex_Rd|Q[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \id_ex_Rd|Q\(0));

-- Location: FF_X112_Y53_N17
\ex_Mem_Rd|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \id_ex_Rd|Q\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ex_Mem_Rd|Q\(0));

-- Location: FF_X111_Y53_N17
\Mem_wb_Rd|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \ex_Mem_Rd|Q\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_wb_Rd|Q\(0));

-- Location: FF_X111_Y53_N21
\id_ex_RT|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \if_id_inst|Q\(17),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \id_ex_RT|Q\(1));

-- Location: FF_X111_Y53_N3
\id_ex_RT|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \if_id_inst|Q\(16),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \id_ex_RT|Q\(0));

-- Location: LCCOMB_X111_Y53_N20
\forward|ForwardB~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \forward|ForwardB~1_combout\ = (\Mem_wb_Rd|Q\(1) & (\id_ex_RT|Q\(1) & (\Mem_wb_Rd|Q\(0) $ (!\id_ex_RT|Q\(0))))) # (!\Mem_wb_Rd|Q\(1) & (!\id_ex_RT|Q\(1) & (\Mem_wb_Rd|Q\(0) $ (!\id_ex_RT|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_wb_Rd|Q\(1),
	datab => \Mem_wb_Rd|Q\(0),
	datac => \id_ex_RT|Q\(1),
	datad => \id_ex_RT|Q\(0),
	combout => \forward|ForwardB~1_combout\);

-- Location: LCCOMB_X111_Y53_N28
\forB_mux|stage1|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \forB_mux|stage1|f~0_combout\ = (!\forward|ForwardB~1_combout\) # (!\mem_wb_regWrite|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_wb_regWrite|Q~q\,
	datad => \forward|ForwardB~1_combout\,
	combout => \forB_mux|stage1|f~0_combout\);

-- Location: LCCOMB_X111_Y53_N22
\forB_mux|stage1|f~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \forB_mux|stage1|f~1_combout\ = (\id_ex_src2|Q\(0) & (((\forB_mux|stage1|f~0_combout\) # (!\forward|ForwardB~0_combout\)) # (!\forward|ForwardA~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \forward|ForwardA~0_combout\,
	datab => \id_ex_src2|Q\(0),
	datac => \forward|ForwardB~0_combout\,
	datad => \forB_mux|stage1|f~0_combout\,
	combout => \forB_mux|stage1|f~1_combout\);

-- Location: LCCOMB_X111_Y55_N16
\im|output[22]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \im|output[22]~4_combout\ = (\pc|Q\(3)) # ((\pc|Q\(2) & ((\pc|Q\(1)) # (\pc|Q\(0)))) # (!\pc|Q\(2) & ((!\pc|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(3),
	datab => \pc|Q\(1),
	datac => \pc|Q\(2),
	datad => \pc|Q\(0),
	combout => \im|output[22]~4_combout\);

-- Location: FF_X111_Y55_N17
\if_id_inst|Q[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \im|output[22]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \if_id_inst|Q\(22));

-- Location: FF_X111_Y53_N15
\id_ex_RS|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \if_id_inst|Q\(22),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \id_ex_RS|Q\(1));

-- Location: LCCOMB_X111_Y55_N14
\im|output[21]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \im|output[21]~5_combout\ = (\pc|Q\(3)) # ((\pc|Q\(1) & ((\pc|Q\(2)) # (!\pc|Q\(0)))) # (!\pc|Q\(1) & (!\pc|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(3),
	datab => \pc|Q\(1),
	datac => \pc|Q\(2),
	datad => \pc|Q\(0),
	combout => \im|output[21]~5_combout\);

-- Location: FF_X111_Y55_N15
\if_id_inst|Q[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \im|output[21]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \if_id_inst|Q\(21));

-- Location: FF_X111_Y53_N1
\id_ex_RS|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \if_id_inst|Q\(21),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \id_ex_RS|Q\(0));

-- Location: LCCOMB_X111_Y53_N14
\forward|ForwardA~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \forward|ForwardA~1_combout\ = (\Mem_wb_Rd|Q\(1) & (\id_ex_RS|Q\(1) & (\Mem_wb_Rd|Q\(0) $ (!\id_ex_RS|Q\(0))))) # (!\Mem_wb_Rd|Q\(1) & (!\id_ex_RS|Q\(1) & (\Mem_wb_Rd|Q\(0) $ (!\id_ex_RS|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_wb_Rd|Q\(1),
	datab => \Mem_wb_Rd|Q\(0),
	datac => \id_ex_RS|Q\(1),
	datad => \id_ex_RS|Q\(0),
	combout => \forward|ForwardA~1_combout\);

-- Location: FF_X114_Y53_N31
\id_ex_Rd|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \mx_redst|f[3]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \id_ex_Rd|Q\(3));

-- Location: FF_X114_Y53_N21
\ex_Mem_Rd|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \id_ex_Rd|Q\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ex_Mem_Rd|Q\(3));

-- Location: FF_X111_Y53_N27
\Mem_wb_Rd|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \ex_Mem_Rd|Q\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_wb_Rd|Q\(3));

-- Location: LCCOMB_X111_Y53_N26
\forward|ForwardA~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \forward|ForwardA~0_combout\ = (\Mem_wb_Rd|Q\(1)) # ((\Mem_wb_Rd|Q\(2)) # ((\Mem_wb_Rd|Q\(3)) # (\Mem_wb_Rd|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_wb_Rd|Q\(1),
	datab => \Mem_wb_Rd|Q\(2),
	datac => \Mem_wb_Rd|Q\(3),
	datad => \Mem_wb_Rd|Q\(0),
	combout => \forward|ForwardA~0_combout\);

-- Location: LCCOMB_X114_Y55_N6
\im|output[24]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \im|output[24]~6_combout\ = (\pc|Q\(3)) # ((\pc|Q\(0) & (\pc|Q\(1) & \pc|Q\(2))) # (!\pc|Q\(0) & (!\pc|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(3),
	datab => \pc|Q\(0),
	datac => \pc|Q\(1),
	datad => \pc|Q\(2),
	combout => \im|output[24]~6_combout\);

-- Location: FF_X114_Y55_N7
\if_id_inst|Q[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \im|output[24]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \if_id_inst|Q\(24));

-- Location: FF_X111_Y53_N11
\id_ex_RS|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \if_id_inst|Q\(24),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \id_ex_RS|Q\(3));

-- Location: LCCOMB_X114_Y55_N20
\im|output[23]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \im|output[23]~7_combout\ = (\pc|Q\(3)) # ((\pc|Q\(0) & ((\pc|Q\(1)) # (\pc|Q\(2)))) # (!\pc|Q\(0) & (\pc|Q\(1) $ (!\pc|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(3),
	datab => \pc|Q\(0),
	datac => \pc|Q\(1),
	datad => \pc|Q\(2),
	combout => \im|output[23]~7_combout\);

-- Location: FF_X114_Y55_N21
\if_id_inst|Q[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \im|output[23]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \if_id_inst|Q\(23));

-- Location: FF_X111_Y53_N29
\id_ex_RS|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \if_id_inst|Q\(23),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \id_ex_RS|Q\(2));

-- Location: LCCOMB_X111_Y53_N10
\forward|ForwardA~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \forward|ForwardA~2_combout\ = (\Mem_wb_Rd|Q\(3) & (\id_ex_RS|Q\(3) & (\Mem_wb_Rd|Q\(2) $ (!\id_ex_RS|Q\(2))))) # (!\Mem_wb_Rd|Q\(3) & (!\id_ex_RS|Q\(3) & (\Mem_wb_Rd|Q\(2) $ (!\id_ex_RS|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_wb_Rd|Q\(3),
	datab => \Mem_wb_Rd|Q\(2),
	datac => \id_ex_RS|Q\(3),
	datad => \id_ex_RS|Q\(2),
	combout => \forward|ForwardA~2_combout\);

-- Location: LCCOMB_X111_Y53_N12
\forward|ForwardA~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \forward|ForwardA~3_combout\ = (\mem_wb_regWrite|Q~q\ & (\forward|ForwardA~1_combout\ & (\forward|ForwardA~0_combout\ & \forward|ForwardA~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_wb_regWrite|Q~q\,
	datab => \forward|ForwardA~1_combout\,
	datac => \forward|ForwardA~0_combout\,
	datad => \forward|ForwardA~2_combout\,
	combout => \forward|ForwardA~3_combout\);

-- Location: LCCOMB_X111_Y53_N8
\forA_MUX|stage1|f[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \forA_MUX|stage1|f[0]~0_combout\ = (\forward|ForwardA~3_combout\ & ((\mem_wb_result|Q\(0)))) # (!\forward|ForwardA~3_combout\ & (\id_ex_src1|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \id_ex_src1|Q\(0),
	datab => \mem_wb_result|Q\(0),
	datad => \forward|ForwardA~3_combout\,
	combout => \forA_MUX|stage1|f[0]~0_combout\);

-- Location: LCCOMB_X114_Y53_N18
\id|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \id|process_0~0_combout\ = (\if_id_inst|Q\(11)) # ((\if_id_inst|Q\(0)) # (!\if_id_inst|Q\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \if_id_inst|Q\(11),
	datac => \if_id_inst|Q\(18),
	datad => \if_id_inst|Q\(0),
	combout => \id|process_0~0_combout\);

-- Location: FF_X114_Y53_N19
\id_ex_ALUop|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \id|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \id_ex_ALUop|Q\(0));

-- Location: LCCOMB_X110_Y53_N28
\alup|mux|stage3|f[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alup|mux|stage3|f[0]~0_combout\ = (\forA_MUX|stage1|f[0]~0_combout\ & (\id_ex_ALUop|Q\(0) $ (((\forB_mux|stage1|f~3_combout\) # (\forB_mux|stage1|f~1_combout\))))) # (!\forA_MUX|stage1|f[0]~0_combout\ & (\id_ex_ALUop|Q\(0) & 
-- ((\forB_mux|stage1|f~3_combout\) # (\forB_mux|stage1|f~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \forB_mux|stage1|f~3_combout\,
	datab => \forB_mux|stage1|f~1_combout\,
	datac => \forA_MUX|stage1|f[0]~0_combout\,
	datad => \id_ex_ALUop|Q\(0),
	combout => \alup|mux|stage3|f[0]~0_combout\);

-- Location: FF_X110_Y53_N29
\ex_mem_result|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \alup|mux|stage3|f[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ex_mem_result|Q\(0));

-- Location: FF_X112_Y53_N19
\mem_wb_result|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \ex_mem_result|Q\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_wb_result|Q\(0));

-- Location: LCCOMB_X112_Y53_N10
\rf|m0|stage3|f~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m0|stage3|f~2_combout\ = (!\reset~input_o\ & \mem_wb_result|Q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datad => \mem_wb_result|Q\(1),
	combout => \rf|m0|stage3|f~2_combout\);

-- Location: LCCOMB_X114_Y52_N10
\rf|r15|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r15|Q[1]~feeder_combout\ = \rf|m0|stage3|f~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|m0|stage3|f~2_combout\,
	combout => \rf|r15|Q[1]~feeder_combout\);

-- Location: FF_X114_Y52_N11
\rf|r15|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r15|Q[1]~feeder_combout\,
	ena => \rf|m15|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r15|Q\(1));

-- Location: LCCOMB_X112_Y55_N16
\rf|m2|stage3|f[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m2|stage3|f[1]~1_combout\ = (\reset~input_o\) # (\mem_wb_result|Q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datad => \mem_wb_result|Q\(1),
	combout => \rf|m2|stage3|f[1]~1_combout\);

-- Location: LCCOMB_X110_Y55_N4
\rf|r7|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r7|Q[1]~feeder_combout\ = \rf|m2|stage3|f[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|m2|stage3|f[1]~1_combout\,
	combout => \rf|r7|Q[1]~feeder_combout\);

-- Location: FF_X110_Y55_N5
\rf|r7|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r7|Q[1]~feeder_combout\,
	ena => \rf|m7|stage3|f[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r7|Q\(1));

-- Location: LCCOMB_X113_Y55_N10
\rf|m3|stage3|f[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m3|stage3|f[0]~0_combout\ = (\reset~input_o\) # ((\mx_redst|f[1]~3_combout\ & (\rf|m7|stage3|f[0]~0_combout\ & !\mx_redst|f[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mx_redst|f[1]~3_combout\,
	datab => \reset~input_o\,
	datac => \rf|m7|stage3|f[0]~0_combout\,
	datad => \mx_redst|f[2]~2_combout\,
	combout => \rf|m3|stage3|f[0]~0_combout\);

-- Location: FF_X113_Y55_N17
\rf|r3|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m2|stage3|f[1]~1_combout\,
	sload => VCC,
	ena => \rf|m3|stage3|f[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r3|Q\(1));

-- Location: LCCOMB_X113_Y55_N16
\rf|value1[1]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[1]~17_combout\ = (\if_id_inst|Q\(23) & ((\rf|r7|Q\(1)) # ((\if_id_inst|Q\(24))))) # (!\if_id_inst|Q\(23) & (((\rf|r3|Q\(1) & !\if_id_inst|Q\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \if_id_inst|Q\(23),
	datab => \rf|r7|Q\(1),
	datac => \rf|r3|Q\(1),
	datad => \if_id_inst|Q\(24),
	combout => \rf|value1[1]~17_combout\);

-- Location: LCCOMB_X114_Y54_N20
\rf|r11|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r11|Q[1]~feeder_combout\ = \rf|m0|stage3|f~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m0|stage3|f~2_combout\,
	combout => \rf|r11|Q[1]~feeder_combout\);

-- Location: LCCOMB_X114_Y54_N10
\rf|m11|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m11|stage3|f~0_combout\ = (\reset~input_o\) # ((\mx_redst|f[1]~3_combout\ & (!\mx_redst|f[2]~2_combout\ & \rf|m9|stage3|f[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \mx_redst|f[1]~3_combout\,
	datac => \mx_redst|f[2]~2_combout\,
	datad => \rf|m9|stage3|f[0]~0_combout\,
	combout => \rf|m11|stage3|f~0_combout\);

-- Location: FF_X114_Y54_N21
\rf|r11|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r11|Q[1]~feeder_combout\,
	ena => \rf|m11|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r11|Q\(1));

-- Location: LCCOMB_X109_Y53_N8
\rf|value1[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[1]~18_combout\ = (\if_id_inst|Q\(24) & ((\rf|value1[1]~17_combout\ & (\rf|r15|Q\(1))) # (!\rf|value1[1]~17_combout\ & ((\rf|r11|Q\(1)))))) # (!\if_id_inst|Q\(24) & (((\rf|value1[1]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \if_id_inst|Q\(24),
	datab => \rf|r15|Q\(1),
	datac => \rf|value1[1]~17_combout\,
	datad => \rf|r11|Q\(1),
	combout => \rf|value1[1]~18_combout\);

-- Location: LCCOMB_X112_Y54_N28
\rf|r12|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r12|Q[1]~feeder_combout\ = \rf|m0|stage3|f~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|m0|stage3|f~2_combout\,
	combout => \rf|r12|Q[1]~feeder_combout\);

-- Location: FF_X112_Y54_N29
\rf|r12|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r12|Q[1]~feeder_combout\,
	ena => \rf|m12|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r12|Q\(1));

-- Location: LCCOMB_X112_Y54_N18
\rf|r0|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r0|Q[1]~feeder_combout\ = \rf|m0|stage3|f~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|m0|stage3|f~2_combout\,
	combout => \rf|r0|Q[1]~feeder_combout\);

-- Location: FF_X112_Y54_N19
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

-- Location: LCCOMB_X113_Y53_N26
\rf|m8|stage3|f~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m8|stage3|f~1_combout\ = (\reset~input_o\) # ((!\mx_redst|f[1]~3_combout\ & (!\mx_redst|f[2]~2_combout\ & \rf|m8|stage3|f~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mx_redst|f[1]~3_combout\,
	datab => \reset~input_o\,
	datac => \mx_redst|f[2]~2_combout\,
	datad => \rf|m8|stage3|f~0_combout\,
	combout => \rf|m8|stage3|f~1_combout\);

-- Location: FF_X113_Y53_N19
\rf|r8|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m0|stage3|f~2_combout\,
	sload => VCC,
	ena => \rf|m8|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r8|Q\(1));

-- Location: LCCOMB_X112_Y54_N24
\rf|value1[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[1]~14_combout\ = (\if_id_inst|Q\(24) & (((\if_id_inst|Q\(23)) # (\rf|r8|Q\(1))))) # (!\if_id_inst|Q\(24) & (\rf|r0|Q\(1) & (!\if_id_inst|Q\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \if_id_inst|Q\(24),
	datab => \rf|r0|Q\(1),
	datac => \if_id_inst|Q\(23),
	datad => \rf|r8|Q\(1),
	combout => \rf|value1[1]~14_combout\);

-- Location: LCCOMB_X112_Y54_N26
\rf|value1[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[1]~15_combout\ = (\if_id_inst|Q\(23) & ((\rf|value1[1]~14_combout\ & ((\rf|r12|Q\(1)))) # (!\rf|value1[1]~14_combout\ & (\rf|r4|Q\(1))))) # (!\if_id_inst|Q\(23) & (((\rf|value1[1]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r4|Q\(1),
	datab => \rf|r12|Q\(1),
	datac => \if_id_inst|Q\(23),
	datad => \rf|value1[1]~14_combout\,
	combout => \rf|value1[1]~15_combout\);

-- Location: LCCOMB_X113_Y53_N8
\rf|m9|stage3|f[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m9|stage3|f[0]~1_combout\ = (\reset~input_o\) # ((!\mx_redst|f[2]~2_combout\ & (!\mx_redst|f[1]~3_combout\ & \rf|m9|stage3|f[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \mx_redst|f[2]~2_combout\,
	datac => \mx_redst|f[1]~3_combout\,
	datad => \rf|m9|stage3|f[0]~0_combout\,
	combout => \rf|m9|stage3|f[0]~1_combout\);

-- Location: FF_X113_Y53_N1
\rf|r9|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m0|stage3|f~2_combout\,
	sload => VCC,
	ena => \rf|m9|stage3|f[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r9|Q\(1));

-- Location: LCCOMB_X113_Y54_N18
\rf|r1|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r1|Q[1]~feeder_combout\ = \rf|m0|stage3|f~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m0|stage3|f~2_combout\,
	combout => \rf|r1|Q[1]~feeder_combout\);

-- Location: FF_X113_Y54_N19
\rf|r1|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r1|Q[1]~feeder_combout\,
	ena => \rf|m1|stage3|f[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r1|Q\(1));

-- Location: LCCOMB_X113_Y54_N26
\rf|value1[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[1]~12_combout\ = (\if_id_inst|Q\(23) & ((\rf|r5|Q\(1)) # ((\if_id_inst|Q\(24))))) # (!\if_id_inst|Q\(23) & (((\rf|r1|Q\(1) & !\if_id_inst|Q\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r5|Q\(1),
	datab => \rf|r1|Q\(1),
	datac => \if_id_inst|Q\(23),
	datad => \if_id_inst|Q\(24),
	combout => \rf|value1[1]~12_combout\);

-- Location: LCCOMB_X113_Y54_N16
\rf|value1[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[1]~13_combout\ = (\rf|value1[1]~12_combout\ & ((\rf|r13|Q\(1)) # ((!\if_id_inst|Q\(24))))) # (!\rf|value1[1]~12_combout\ & (((\rf|r9|Q\(1) & \if_id_inst|Q\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r13|Q\(1),
	datab => \rf|r9|Q\(1),
	datac => \rf|value1[1]~12_combout\,
	datad => \if_id_inst|Q\(24),
	combout => \rf|value1[1]~13_combout\);

-- Location: LCCOMB_X112_Y54_N20
\rf|value1[1]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[1]~16_combout\ = (\if_id_inst|Q\(22) & (\if_id_inst|Q\(21))) # (!\if_id_inst|Q\(22) & ((\if_id_inst|Q\(21) & ((\rf|value1[1]~13_combout\))) # (!\if_id_inst|Q\(21) & (\rf|value1[1]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \if_id_inst|Q\(22),
	datab => \if_id_inst|Q\(21),
	datac => \rf|value1[1]~15_combout\,
	datad => \rf|value1[1]~13_combout\,
	combout => \rf|value1[1]~16_combout\);

-- Location: LCCOMB_X109_Y53_N28
\rf|value1[1]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[1]~19_combout\ = (\if_id_inst|Q\(22) & ((\rf|value1[1]~16_combout\ & ((\rf|value1[1]~18_combout\))) # (!\rf|value1[1]~16_combout\ & (\rf|value1[1]~11_combout\)))) # (!\if_id_inst|Q\(22) & (((\rf|value1[1]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value1[1]~11_combout\,
	datab => \if_id_inst|Q\(22),
	datac => \rf|value1[1]~18_combout\,
	datad => \rf|value1[1]~16_combout\,
	combout => \rf|value1[1]~19_combout\);

-- Location: FF_X109_Y53_N29
\id_ex_src1|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|value1[1]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \id_ex_src1|Q\(1));

-- Location: LCCOMB_X110_Y53_N24
\forA_MUX|stage1|f[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \forA_MUX|stage1|f[1]~3_combout\ = (\forward|ForwardA~3_combout\ & (\mem_wb_result|Q\(1))) # (!\forward|ForwardA~3_combout\ & ((\id_ex_src1|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \forward|ForwardA~3_combout\,
	datac => \mem_wb_result|Q\(1),
	datad => \id_ex_src1|Q\(1),
	combout => \forA_MUX|stage1|f[1]~3_combout\);

-- Location: LCCOMB_X110_Y53_N14
\forA_MUX|stage1|f~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \forA_MUX|stage1|f~1_combout\ = (!\forward|ForwardA~3_combout\ & \id_ex_src1|Q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \forward|ForwardA~3_combout\,
	datad => \id_ex_src1|Q\(1),
	combout => \forA_MUX|stage1|f~1_combout\);

-- Location: LCCOMB_X114_Y53_N28
\id|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \id|Equal3~0_combout\ = (\if_id_inst|Q\(11) & (!\if_id_inst|Q\(18) & !\if_id_inst|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \if_id_inst|Q\(11),
	datac => \if_id_inst|Q\(18),
	datad => \if_id_inst|Q\(0),
	combout => \id|Equal3~0_combout\);

-- Location: FF_X114_Y53_N29
\id_ex_add_sub|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \id|Equal3~0_combout\,
	clrn => \mem_wb_regWrite|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \id_ex_add_sub|Q~q\);

-- Location: LCCOMB_X111_Y53_N18
\forward|ForwardB~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \forward|ForwardB~2_combout\ = (\mem_wb_regWrite|Q~q\ & (\forward|ForwardB~1_combout\ & (\forward|ForwardB~0_combout\ & \forward|ForwardA~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_wb_regWrite|Q~q\,
	datab => \forward|ForwardB~1_combout\,
	datac => \forward|ForwardB~0_combout\,
	datad => \forward|ForwardA~0_combout\,
	combout => \forward|ForwardB~2_combout\);

-- Location: LCCOMB_X110_Y53_N26
\alup|ripCarry|g[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \alup|ripCarry|g\(1) = \id_ex_add_sub|Q~q\ $ (((\forward|ForwardB~2_combout\ & ((\mem_wb_result|Q\(1)))) # (!\forward|ForwardB~2_combout\ & (\id_ex_src2|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \id_ex_src2|Q\(1),
	datab => \mem_wb_result|Q\(1),
	datac => \id_ex_add_sub|Q~q\,
	datad => \forward|ForwardB~2_combout\,
	combout => \alup|ripCarry|g\(1));

-- Location: LCCOMB_X112_Y53_N16
\forB_mux|stage1|f~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \forB_mux|stage1|f~2_combout\ = (\mem_wb_regWrite|Q~q\ & \mem_wb_result|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem_wb_regWrite|Q~q\,
	datad => \mem_wb_result|Q\(0),
	combout => \forB_mux|stage1|f~2_combout\);

-- Location: LCCOMB_X111_Y53_N24
\forB_mux|stage1|f~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \forB_mux|stage1|f~3_combout\ = (\forward|ForwardA~0_combout\ & (\forward|ForwardB~1_combout\ & (\forward|ForwardB~0_combout\ & \forB_mux|stage1|f~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \forward|ForwardA~0_combout\,
	datab => \forward|ForwardB~1_combout\,
	datac => \forward|ForwardB~0_combout\,
	datad => \forB_mux|stage1|f~2_combout\,
	combout => \forB_mux|stage1|f~3_combout\);

-- Location: LCCOMB_X110_Y53_N16
\alup|ripCarry|stage1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alup|ripCarry|stage1|Cout~0_combout\ = (\forB_mux|stage1|f~3_combout\ & (((\forA_MUX|stage1|f[0]~0_combout\)))) # (!\forB_mux|stage1|f~3_combout\ & ((\forB_mux|stage1|f~1_combout\ & ((\forA_MUX|stage1|f[0]~0_combout\))) # (!\forB_mux|stage1|f~1_combout\ 
-- & (\id_ex_add_sub|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \id_ex_add_sub|Q~q\,
	datab => \forB_mux|stage1|f~3_combout\,
	datac => \forA_MUX|stage1|f[0]~0_combout\,
	datad => \forB_mux|stage1|f~1_combout\,
	combout => \alup|ripCarry|stage1|Cout~0_combout\);

-- Location: LCCOMB_X110_Y53_N10
\alup|ripCarry|stage2|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \alup|ripCarry|stage2|s~combout\ = \alup|ripCarry|g\(1) $ (\alup|ripCarry|stage1|Cout~0_combout\ $ (((\forA_MUX|stage1|f~2_combout\) # (\forA_MUX|stage1|f~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \forA_MUX|stage1|f~2_combout\,
	datab => \forA_MUX|stage1|f~1_combout\,
	datac => \alup|ripCarry|g\(1),
	datad => \alup|ripCarry|stage1|Cout~0_combout\,
	combout => \alup|ripCarry|stage2|s~combout\);

-- Location: LCCOMB_X110_Y53_N30
\alup|mux|stage3|f[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \alup|mux|stage3|f[1]~2_combout\ = (\id_ex_ALUop|Q\(0) & (((\alup|ripCarry|stage2|s~combout\)))) # (!\id_ex_ALUop|Q\(0) & (\alup|mux|stage3|f[1]~1_combout\ & (\forA_MUX|stage1|f[1]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alup|mux|stage3|f[1]~1_combout\,
	datab => \id_ex_ALUop|Q\(0),
	datac => \forA_MUX|stage1|f[1]~3_combout\,
	datad => \alup|ripCarry|stage2|s~combout\,
	combout => \alup|mux|stage3|f[1]~2_combout\);

-- Location: FF_X110_Y53_N31
\ex_mem_result|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \alup|mux|stage3|f[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ex_mem_result|Q\(1));

-- Location: FF_X110_Y53_N25
\mem_wb_result|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \ex_mem_result|Q\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_wb_result|Q\(1));

-- Location: LCCOMB_X110_Y53_N4
\forA_MUX|stage1|f~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \forA_MUX|stage1|f~5_combout\ = (\mem_wb_result|Q\(2) & \forward|ForwardA~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem_wb_result|Q\(2),
	datac => \forward|ForwardA~3_combout\,
	combout => \forA_MUX|stage1|f~5_combout\);

-- Location: LCCOMB_X110_Y53_N22
\alup|ripCarry|g[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \alup|ripCarry|g\(2) = \id_ex_add_sub|Q~q\ $ (((\forward|ForwardB~2_combout\ & ((\mem_wb_result|Q\(2)))) # (!\forward|ForwardB~2_combout\ & (\id_ex_src2|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \id_ex_src2|Q\(2),
	datab => \mem_wb_result|Q\(2),
	datac => \id_ex_add_sub|Q~q\,
	datad => \forward|ForwardB~2_combout\,
	combout => \alup|ripCarry|g\(2));

-- Location: LCCOMB_X110_Y53_N18
\alup|ripCarry|stage2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alup|ripCarry|stage2|Cout~0_combout\ = (\alup|ripCarry|g\(1) & ((\forA_MUX|stage1|f~2_combout\) # ((\forA_MUX|stage1|f~1_combout\) # (\alup|ripCarry|stage1|Cout~0_combout\)))) # (!\alup|ripCarry|g\(1) & (\alup|ripCarry|stage1|Cout~0_combout\ & 
-- ((\forA_MUX|stage1|f~2_combout\) # (\forA_MUX|stage1|f~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \forA_MUX|stage1|f~2_combout\,
	datab => \forA_MUX|stage1|f~1_combout\,
	datac => \alup|ripCarry|g\(1),
	datad => \alup|ripCarry|stage1|Cout~0_combout\,
	combout => \alup|ripCarry|stage2|Cout~0_combout\);

-- Location: LCCOMB_X110_Y53_N8
\alup|ripCarry|stage3|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \alup|ripCarry|stage3|s~combout\ = \alup|ripCarry|g\(2) $ (\alup|ripCarry|stage2|Cout~0_combout\ $ (((\forA_MUX|stage1|f~4_combout\) # (\forA_MUX|stage1|f~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \forA_MUX|stage1|f~4_combout\,
	datab => \forA_MUX|stage1|f~5_combout\,
	datac => \alup|ripCarry|g\(2),
	datad => \alup|ripCarry|stage2|Cout~0_combout\,
	combout => \alup|ripCarry|stage3|s~combout\);

-- Location: LCCOMB_X111_Y54_N10
\rf|m4|stage3|f[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m4|stage3|f[2]~2_combout\ = (\mem_wb_result|Q\(2)) # (\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mem_wb_result|Q\(2),
	datad => \reset~input_o\,
	combout => \rf|m4|stage3|f[2]~2_combout\);

-- Location: LCCOMB_X110_Y55_N30
\rf|r7|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r7|Q[2]~feeder_combout\ = \rf|m4|stage3|f[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|m4|stage3|f[2]~2_combout\,
	combout => \rf|r7|Q[2]~feeder_combout\);

-- Location: FF_X110_Y55_N31
\rf|r7|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r7|Q[2]~feeder_combout\,
	ena => \rf|m7|stage3|f[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r7|Q\(2));

-- Location: LCCOMB_X110_Y55_N0
\rf|r6|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r6|Q[2]~feeder_combout\ = \rf|m4|stage3|f[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|m4|stage3|f[2]~2_combout\,
	combout => \rf|r6|Q[2]~feeder_combout\);

-- Location: LCCOMB_X110_Y55_N2
\rf|m6|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m6|stage3|f~0_combout\ = (\reset~input_o\) # ((\mx_redst|f[2]~2_combout\ & (\mx_redst|f[1]~3_combout\ & \rf|m4|stage3|f~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mx_redst|f[2]~2_combout\,
	datab => \reset~input_o\,
	datac => \mx_redst|f[1]~3_combout\,
	datad => \rf|m4|stage3|f~0_combout\,
	combout => \rf|m6|stage3|f~0_combout\);

-- Location: FF_X110_Y55_N1
\rf|r6|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r6|Q[2]~feeder_combout\,
	ena => \rf|m6|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r6|Q\(2));

-- Location: LCCOMB_X111_Y54_N8
\rf|r5|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r5|Q[2]~feeder_combout\ = \rf|m4|stage3|f[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|m4|stage3|f[2]~2_combout\,
	combout => \rf|r5|Q[2]~feeder_combout\);

-- Location: LCCOMB_X114_Y55_N16
\rf|m5|stage3|f[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m5|stage3|f[0]~0_combout\ = (\reset~input_o\) # ((\mx_redst|f[2]~2_combout\ & (!\mx_redst|f[1]~3_combout\ & \rf|m7|stage3|f[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \mx_redst|f[2]~2_combout\,
	datac => \mx_redst|f[1]~3_combout\,
	datad => \rf|m7|stage3|f[0]~0_combout\,
	combout => \rf|m5|stage3|f[0]~0_combout\);

-- Location: FF_X111_Y54_N9
\rf|r5|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r5|Q[2]~feeder_combout\,
	ena => \rf|m5|stage3|f[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r5|Q\(2));

-- Location: LCCOMB_X111_Y54_N14
\rf|value1[2]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[2]~20_combout\ = (\if_id_inst|Q\(22) & (((\if_id_inst|Q\(21))))) # (!\if_id_inst|Q\(22) & ((\if_id_inst|Q\(21) & ((\rf|r5|Q\(2)))) # (!\if_id_inst|Q\(21) & (\rf|r4|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r4|Q\(2),
	datab => \rf|r5|Q\(2),
	datac => \if_id_inst|Q\(22),
	datad => \if_id_inst|Q\(21),
	combout => \rf|value1[2]~20_combout\);

-- Location: LCCOMB_X111_Y55_N18
\rf|value1[2]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[2]~21_combout\ = (\if_id_inst|Q\(22) & ((\rf|value1[2]~20_combout\ & (\rf|r7|Q\(2))) # (!\rf|value1[2]~20_combout\ & ((\rf|r6|Q\(2)))))) # (!\if_id_inst|Q\(22) & (((\rf|value1[2]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \if_id_inst|Q\(22),
	datab => \rf|r7|Q\(2),
	datac => \rf|r6|Q\(2),
	datad => \rf|value1[2]~20_combout\,
	combout => \rf|value1[2]~21_combout\);

-- Location: LCCOMB_X109_Y53_N26
\rf|m0|stage3|f~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m0|stage3|f~3_combout\ = (!\reset~input_o\ & \mem_wb_result|Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \mem_wb_result|Q\(2),
	combout => \rf|m0|stage3|f~3_combout\);

-- Location: LCCOMB_X114_Y54_N0
\rf|r11|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r11|Q[2]~feeder_combout\ = \rf|m0|stage3|f~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|m0|stage3|f~3_combout\,
	combout => \rf|r11|Q[2]~feeder_combout\);

-- Location: FF_X114_Y54_N1
\rf|r11|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r11|Q[2]~feeder_combout\,
	ena => \rf|m11|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r11|Q\(2));

-- Location: FF_X113_Y53_N23
\rf|r9|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m0|stage3|f~3_combout\,
	sload => VCC,
	ena => \rf|m9|stage3|f[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r9|Q\(2));

-- Location: LCCOMB_X113_Y53_N4
\rf|r8|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r8|Q[2]~feeder_combout\ = \rf|m0|stage3|f~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m0|stage3|f~3_combout\,
	combout => \rf|r8|Q[2]~feeder_combout\);

-- Location: FF_X113_Y53_N5
\rf|r8|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r8|Q[2]~feeder_combout\,
	ena => \rf|m8|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r8|Q\(2));

-- Location: LCCOMB_X112_Y55_N0
\rf|m10|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m10|stage3|f~0_combout\ = (\reset~input_o\) # ((\mx_redst|f[1]~3_combout\ & (!\mx_redst|f[2]~2_combout\ & \rf|m8|stage3|f~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \mx_redst|f[1]~3_combout\,
	datac => \mx_redst|f[2]~2_combout\,
	datad => \rf|m8|stage3|f~0_combout\,
	combout => \rf|m10|stage3|f~0_combout\);

-- Location: FF_X112_Y55_N27
\rf|r10|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m0|stage3|f~3_combout\,
	sload => VCC,
	ena => \rf|m10|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r10|Q\(2));

-- Location: LCCOMB_X112_Y55_N26
\rf|value1[2]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[2]~22_combout\ = (\if_id_inst|Q\(22) & (((\rf|r10|Q\(2)) # (\if_id_inst|Q\(21))))) # (!\if_id_inst|Q\(22) & (\rf|r8|Q\(2) & ((!\if_id_inst|Q\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \if_id_inst|Q\(22),
	datab => \rf|r8|Q\(2),
	datac => \rf|r10|Q\(2),
	datad => \if_id_inst|Q\(21),
	combout => \rf|value1[2]~22_combout\);

-- Location: LCCOMB_X112_Y55_N14
\rf|value1[2]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[2]~23_combout\ = (\if_id_inst|Q\(21) & ((\rf|value1[2]~22_combout\ & (\rf|r11|Q\(2))) # (!\rf|value1[2]~22_combout\ & ((\rf|r9|Q\(2)))))) # (!\if_id_inst|Q\(21) & (((\rf|value1[2]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \if_id_inst|Q\(21),
	datab => \rf|r11|Q\(2),
	datac => \rf|r9|Q\(2),
	datad => \rf|value1[2]~22_combout\,
	combout => \rf|value1[2]~23_combout\);

-- Location: LCCOMB_X113_Y55_N2
\rf|r3|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r3|Q[2]~feeder_combout\ = \rf|m0|stage3|f~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m0|stage3|f~3_combout\,
	combout => \rf|r3|Q[2]~feeder_combout\);

-- Location: FF_X113_Y55_N3
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

-- Location: LCCOMB_X112_Y55_N30
\rf|m2|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m2|stage3|f~0_combout\ = (\reset~input_o\) # ((\mx_redst|f[1]~3_combout\ & (!\mx_redst|f[2]~2_combout\ & \rf|m4|stage3|f~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \mx_redst|f[1]~3_combout\,
	datac => \mx_redst|f[2]~2_combout\,
	datad => \rf|m4|stage3|f~0_combout\,
	combout => \rf|m2|stage3|f~0_combout\);

-- Location: FF_X112_Y55_N17
\rf|r2|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m0|stage3|f~3_combout\,
	sload => VCC,
	ena => \rf|m2|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r2|Q\(2));

-- Location: LCCOMB_X112_Y54_N16
\rf|r0|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r0|Q[2]~feeder_combout\ = \rf|m0|stage3|f~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m0|stage3|f~3_combout\,
	combout => \rf|r0|Q[2]~feeder_combout\);

-- Location: FF_X112_Y54_N17
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

-- Location: LCCOMB_X111_Y55_N12
\rf|value1[2]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[2]~24_combout\ = (\if_id_inst|Q\(22) & ((\rf|r2|Q\(2)) # ((\if_id_inst|Q\(21))))) # (!\if_id_inst|Q\(22) & (((!\if_id_inst|Q\(21) & \rf|r0|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \if_id_inst|Q\(22),
	datab => \rf|r2|Q\(2),
	datac => \if_id_inst|Q\(21),
	datad => \rf|r0|Q\(2),
	combout => \rf|value1[2]~24_combout\);

-- Location: LCCOMB_X111_Y55_N2
\rf|value1[2]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[2]~25_combout\ = (\if_id_inst|Q\(21) & ((\rf|value1[2]~24_combout\ & ((\rf|r3|Q\(2)))) # (!\rf|value1[2]~24_combout\ & (\rf|r1|Q\(2))))) # (!\if_id_inst|Q\(21) & (((\rf|value1[2]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r1|Q\(2),
	datab => \if_id_inst|Q\(21),
	datac => \rf|r3|Q\(2),
	datad => \rf|value1[2]~24_combout\,
	combout => \rf|value1[2]~25_combout\);

-- Location: LCCOMB_X111_Y55_N4
\rf|value1[2]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[2]~26_combout\ = (\if_id_inst|Q\(24) & ((\if_id_inst|Q\(23)) # ((\rf|value1[2]~23_combout\)))) # (!\if_id_inst|Q\(24) & (!\if_id_inst|Q\(23) & ((\rf|value1[2]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \if_id_inst|Q\(24),
	datab => \if_id_inst|Q\(23),
	datac => \rf|value1[2]~23_combout\,
	datad => \rf|value1[2]~25_combout\,
	combout => \rf|value1[2]~26_combout\);

-- Location: LCCOMB_X114_Y52_N12
\rf|r15|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r15|Q[2]~feeder_combout\ = \rf|m0|stage3|f~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m0|stage3|f~3_combout\,
	combout => \rf|r15|Q[2]~feeder_combout\);

-- Location: FF_X114_Y52_N13
\rf|r15|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r15|Q[2]~feeder_combout\,
	ena => \rf|m15|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r15|Q\(2));

-- Location: LCCOMB_X114_Y54_N22
\rf|r13|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r13|Q[2]~feeder_combout\ = \rf|m0|stage3|f~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|m0|stage3|f~3_combout\,
	combout => \rf|r13|Q[2]~feeder_combout\);

-- Location: LCCOMB_X114_Y54_N4
\rf|m13|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m13|stage3|f~0_combout\ = (\reset~input_o\) # ((!\mx_redst|f[1]~3_combout\ & (\mx_redst|f[2]~2_combout\ & \rf|m9|stage3|f[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \mx_redst|f[1]~3_combout\,
	datac => \mx_redst|f[2]~2_combout\,
	datad => \rf|m9|stage3|f[0]~0_combout\,
	combout => \rf|m13|stage3|f~0_combout\);

-- Location: FF_X114_Y54_N23
\rf|r13|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r13|Q[2]~feeder_combout\,
	ena => \rf|m13|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r13|Q\(2));

-- Location: LCCOMB_X112_Y54_N6
\rf|value1[2]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[2]~27_combout\ = (\if_id_inst|Q\(21) & (((\if_id_inst|Q\(22)) # (\rf|r13|Q\(2))))) # (!\if_id_inst|Q\(21) & (\rf|r12|Q\(2) & (!\if_id_inst|Q\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r12|Q\(2),
	datab => \if_id_inst|Q\(21),
	datac => \if_id_inst|Q\(22),
	datad => \rf|r13|Q\(2),
	combout => \rf|value1[2]~27_combout\);

-- Location: LCCOMB_X112_Y54_N4
\rf|value1[2]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[2]~28_combout\ = (\if_id_inst|Q\(22) & ((\rf|value1[2]~27_combout\ & ((\rf|r15|Q\(2)))) # (!\rf|value1[2]~27_combout\ & (\rf|r14|Q\(2))))) # (!\if_id_inst|Q\(22) & (((\rf|value1[2]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r14|Q\(2),
	datab => \rf|r15|Q\(2),
	datac => \if_id_inst|Q\(22),
	datad => \rf|value1[2]~27_combout\,
	combout => \rf|value1[2]~28_combout\);

-- Location: LCCOMB_X111_Y55_N24
\rf|value1[2]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[2]~29_combout\ = (\if_id_inst|Q\(23) & ((\rf|value1[2]~26_combout\ & ((\rf|value1[2]~28_combout\))) # (!\rf|value1[2]~26_combout\ & (\rf|value1[2]~21_combout\)))) # (!\if_id_inst|Q\(23) & (((\rf|value1[2]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \if_id_inst|Q\(23),
	datab => \rf|value1[2]~21_combout\,
	datac => \rf|value1[2]~26_combout\,
	datad => \rf|value1[2]~28_combout\,
	combout => \rf|value1[2]~29_combout\);

-- Location: FF_X111_Y55_N25
\id_ex_src1|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|value1[2]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \id_ex_src1|Q\(2));

-- Location: LCCOMB_X109_Y53_N22
\forA_MUX|stage1|f[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \forA_MUX|stage1|f[2]~6_combout\ = (\forward|ForwardA~3_combout\ & (\mem_wb_result|Q\(2))) # (!\forward|ForwardA~3_combout\ & ((\id_ex_src1|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_wb_result|Q\(2),
	datab => \id_ex_src1|Q\(2),
	datac => \forward|ForwardA~3_combout\,
	combout => \forA_MUX|stage1|f[2]~6_combout\);

-- Location: LCCOMB_X110_Y53_N0
\alup|mux|stage3|f[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \alup|mux|stage3|f[2]~4_combout\ = (\id_ex_ALUop|Q\(0) & (((\alup|ripCarry|stage3|s~combout\)))) # (!\id_ex_ALUop|Q\(0) & (\alup|mux|stage3|f[2]~3_combout\ & ((\forA_MUX|stage1|f[2]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alup|mux|stage3|f[2]~3_combout\,
	datab => \id_ex_ALUop|Q\(0),
	datac => \alup|ripCarry|stage3|s~combout\,
	datad => \forA_MUX|stage1|f[2]~6_combout\,
	combout => \alup|mux|stage3|f[2]~4_combout\);

-- Location: FF_X110_Y53_N1
\ex_mem_result|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \alup|mux|stage3|f[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ex_mem_result|Q\(2));

-- Location: FF_X110_Y53_N7
\mem_wb_result|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \ex_mem_result|Q\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_wb_result|Q\(2));

-- Location: LCCOMB_X109_Y53_N12
\rf|m0|stage3|f~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m0|stage3|f~4_combout\ = (!\reset~input_o\ & \mem_wb_result|Q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \mem_wb_result|Q\(3),
	combout => \rf|m0|stage3|f~4_combout\);

-- Location: LCCOMB_X114_Y54_N26
\rf|r13|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r13|Q[3]~feeder_combout\ = \rf|m0|stage3|f~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m0|stage3|f~4_combout\,
	combout => \rf|r13|Q[3]~feeder_combout\);

-- Location: FF_X114_Y54_N27
\rf|r13|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r13|Q[3]~feeder_combout\,
	ena => \rf|m13|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r13|Q\(3));

-- Location: LCCOMB_X109_Y53_N20
\rf|m8|stage3|f[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m8|stage3|f[3]~2_combout\ = (\reset~input_o\) # (\mem_wb_result|Q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \mem_wb_result|Q\(3),
	combout => \rf|m8|stage3|f[3]~2_combout\);

-- Location: FF_X113_Y53_N25
\rf|r9|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m8|stage3|f[3]~2_combout\,
	sload => VCC,
	ena => \rf|m9|stage3|f[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r9|Q\(3));

-- Location: LCCOMB_X113_Y54_N28
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

-- Location: FF_X113_Y54_N29
\rf|r1|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r1|Q[3]~feeder_combout\,
	ena => \rf|m1|stage3|f[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r1|Q\(3));

-- Location: LCCOMB_X113_Y55_N22
\rf|value1[3]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[3]~30_combout\ = (\if_id_inst|Q\(24) & ((\rf|r9|Q\(3)) # ((\if_id_inst|Q\(23))))) # (!\if_id_inst|Q\(24) & (((!\if_id_inst|Q\(23) & \rf|r1|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \if_id_inst|Q\(24),
	datab => \rf|r9|Q\(3),
	datac => \if_id_inst|Q\(23),
	datad => \rf|r1|Q\(3),
	combout => \rf|value1[3]~30_combout\);

-- Location: LCCOMB_X114_Y55_N18
\rf|r5|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r5|Q[3]~feeder_combout\ = \rf|m0|stage3|f~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|m0|stage3|f~4_combout\,
	combout => \rf|r5|Q[3]~feeder_combout\);

-- Location: FF_X114_Y55_N19
\rf|r5|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r5|Q[3]~feeder_combout\,
	ena => \rf|m5|stage3|f[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r5|Q\(3));

-- Location: LCCOMB_X113_Y55_N28
\rf|value1[3]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[3]~31_combout\ = (\if_id_inst|Q\(23) & ((\rf|value1[3]~30_combout\ & (\rf|r13|Q\(3))) # (!\rf|value1[3]~30_combout\ & ((\rf|r5|Q\(3)))))) # (!\if_id_inst|Q\(23) & (((\rf|value1[3]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \if_id_inst|Q\(23),
	datab => \rf|r13|Q\(3),
	datac => \rf|value1[3]~30_combout\,
	datad => \rf|r5|Q\(3),
	combout => \rf|value1[3]~31_combout\);

-- Location: LCCOMB_X110_Y55_N10
\rf|r7|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r7|Q[3]~feeder_combout\ = \rf|m0|stage3|f~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|m0|stage3|f~4_combout\,
	combout => \rf|r7|Q[3]~feeder_combout\);

-- Location: FF_X110_Y55_N11
\rf|r7|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r7|Q[3]~feeder_combout\,
	ena => \rf|m7|stage3|f[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r7|Q\(3));

-- Location: LCCOMB_X113_Y55_N8
\rf|r3|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r3|Q[3]~feeder_combout\ = \rf|m0|stage3|f~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|m0|stage3|f~4_combout\,
	combout => \rf|r3|Q[3]~feeder_combout\);

-- Location: FF_X113_Y55_N9
\rf|r3|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r3|Q[3]~feeder_combout\,
	ena => \rf|m3|stage3|f[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r3|Q\(3));

-- Location: LCCOMB_X113_Y55_N26
\rf|value1[3]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[3]~37_combout\ = (\if_id_inst|Q\(23) & (((\if_id_inst|Q\(24))))) # (!\if_id_inst|Q\(23) & ((\if_id_inst|Q\(24) & (\rf|r11|Q\(3))) # (!\if_id_inst|Q\(24) & ((\rf|r3|Q\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r11|Q\(3),
	datab => \rf|r3|Q\(3),
	datac => \if_id_inst|Q\(23),
	datad => \if_id_inst|Q\(24),
	combout => \rf|value1[3]~37_combout\);

-- Location: LCCOMB_X113_Y55_N0
\rf|value1[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[3]~38_combout\ = (\if_id_inst|Q\(23) & ((\rf|value1[3]~37_combout\ & (\rf|r15|Q\(3))) # (!\rf|value1[3]~37_combout\ & ((\rf|r7|Q\(3)))))) # (!\if_id_inst|Q\(23) & (((\rf|value1[3]~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r15|Q\(3),
	datab => \if_id_inst|Q\(23),
	datac => \rf|r7|Q\(3),
	datad => \rf|value1[3]~37_combout\,
	combout => \rf|value1[3]~38_combout\);

-- Location: FF_X112_Y53_N27
\rf|r14|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m0|stage3|f~4_combout\,
	sload => VCC,
	ena => \rf|m14|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r14|Q\(3));

-- Location: FF_X112_Y55_N5
\rf|r10|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m0|stage3|f~4_combout\,
	sload => VCC,
	ena => \rf|m10|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r10|Q\(3));

-- Location: FF_X112_Y55_N7
\rf|r2|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m0|stage3|f~4_combout\,
	sload => VCC,
	ena => \rf|m2|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r2|Q\(3));

-- Location: LCCOMB_X110_Y55_N16
\rf|r6|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r6|Q[3]~feeder_combout\ = \rf|m0|stage3|f~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|m0|stage3|f~4_combout\,
	combout => \rf|r6|Q[3]~feeder_combout\);

-- Location: FF_X110_Y55_N17
\rf|r6|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r6|Q[3]~feeder_combout\,
	ena => \rf|m6|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r6|Q\(3));

-- Location: LCCOMB_X112_Y55_N6
\rf|value1[3]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[3]~32_combout\ = (\if_id_inst|Q\(24) & (\if_id_inst|Q\(23))) # (!\if_id_inst|Q\(24) & ((\if_id_inst|Q\(23) & ((\rf|r6|Q\(3)))) # (!\if_id_inst|Q\(23) & (\rf|r2|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \if_id_inst|Q\(24),
	datab => \if_id_inst|Q\(23),
	datac => \rf|r2|Q\(3),
	datad => \rf|r6|Q\(3),
	combout => \rf|value1[3]~32_combout\);

-- Location: LCCOMB_X111_Y55_N6
\rf|value1[3]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[3]~33_combout\ = (\if_id_inst|Q\(24) & ((\rf|value1[3]~32_combout\ & (\rf|r14|Q\(3))) # (!\rf|value1[3]~32_combout\ & ((\rf|r10|Q\(3)))))) # (!\if_id_inst|Q\(24) & (((\rf|value1[3]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \if_id_inst|Q\(24),
	datab => \rf|r14|Q\(3),
	datac => \rf|r10|Q\(3),
	datad => \rf|value1[3]~32_combout\,
	combout => \rf|value1[3]~33_combout\);

-- Location: LCCOMB_X110_Y54_N2
\rf|value1[3]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[3]~36_combout\ = (\if_id_inst|Q\(21) & (((\if_id_inst|Q\(22))))) # (!\if_id_inst|Q\(21) & ((\if_id_inst|Q\(22) & ((\rf|value1[3]~33_combout\))) # (!\if_id_inst|Q\(22) & (\rf|value1[3]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value1[3]~35_combout\,
	datab => \if_id_inst|Q\(21),
	datac => \if_id_inst|Q\(22),
	datad => \rf|value1[3]~33_combout\,
	combout => \rf|value1[3]~36_combout\);

-- Location: LCCOMB_X110_Y54_N28
\rf|value1[3]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[3]~39_combout\ = (\if_id_inst|Q\(21) & ((\rf|value1[3]~36_combout\ & ((\rf|value1[3]~38_combout\))) # (!\rf|value1[3]~36_combout\ & (\rf|value1[3]~31_combout\)))) # (!\if_id_inst|Q\(21) & (((\rf|value1[3]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \if_id_inst|Q\(21),
	datab => \rf|value1[3]~31_combout\,
	datac => \rf|value1[3]~38_combout\,
	datad => \rf|value1[3]~36_combout\,
	combout => \rf|value1[3]~39_combout\);

-- Location: FF_X110_Y54_N29
\id_ex_src1|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|value1[3]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \id_ex_src1|Q\(3));

-- Location: LCCOMB_X109_Y53_N16
\forA_MUX|stage1|f[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \forA_MUX|stage1|f[3]~7_combout\ = (\forward|ForwardA~3_combout\ & (\mem_wb_result|Q\(3))) # (!\forward|ForwardA~3_combout\ & ((\id_ex_src1|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem_wb_result|Q\(3),
	datac => \forward|ForwardA~3_combout\,
	datad => \id_ex_src1|Q\(3),
	combout => \forA_MUX|stage1|f[3]~7_combout\);

-- Location: LCCOMB_X110_Y53_N12
\alup|ripCarry|stage3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alup|ripCarry|stage3|Cout~0_combout\ = (\alup|ripCarry|g\(2) & ((\forA_MUX|stage1|f~4_combout\) # ((\forA_MUX|stage1|f~5_combout\) # (\alup|ripCarry|stage2|Cout~0_combout\)))) # (!\alup|ripCarry|g\(2) & (\alup|ripCarry|stage2|Cout~0_combout\ & 
-- ((\forA_MUX|stage1|f~4_combout\) # (\forA_MUX|stage1|f~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \forA_MUX|stage1|f~4_combout\,
	datab => \forA_MUX|stage1|f~5_combout\,
	datac => \alup|ripCarry|g\(2),
	datad => \alup|ripCarry|stage2|Cout~0_combout\,
	combout => \alup|ripCarry|stage3|Cout~0_combout\);

-- Location: LCCOMB_X110_Y53_N2
\alup|ripCarry|stage4|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alup|ripCarry|stage4|s~0_combout\ = \id_ex_add_sub|Q~q\ $ (\alup|ripCarry|stage3|Cout~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \id_ex_add_sub|Q~q\,
	datad => \alup|ripCarry|stage3|Cout~0_combout\,
	combout => \alup|ripCarry|stage4|s~0_combout\);

-- Location: LCCOMB_X110_Y53_N20
\alup|mux|stage3|f[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \alup|mux|stage3|f[3]~6_combout\ = (\id_ex_ALUop|Q\(0) & (\alup|mux|stage3|f[3]~5_combout\ $ (\forA_MUX|stage1|f[3]~7_combout\ $ (\alup|ripCarry|stage4|s~0_combout\)))) # (!\id_ex_ALUop|Q\(0) & (\alup|mux|stage3|f[3]~5_combout\ & 
-- (\forA_MUX|stage1|f[3]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alup|mux|stage3|f[3]~5_combout\,
	datab => \id_ex_ALUop|Q\(0),
	datac => \forA_MUX|stage1|f[3]~7_combout\,
	datad => \alup|ripCarry|stage4|s~0_combout\,
	combout => \alup|mux|stage3|f[3]~6_combout\);

-- Location: FF_X110_Y53_N21
\ex_mem_result|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \alup|mux|stage3|f[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ex_mem_result|Q\(3));

-- Location: FF_X109_Y53_N21
\mem_wb_result|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \ex_mem_result|Q\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_wb_result|Q\(3));

ww_current_pc(0) <= \current_pc[0]~output_o\;

ww_current_pc(1) <= \current_pc[1]~output_o\;

ww_current_pc(2) <= \current_pc[2]~output_o\;

ww_current_pc(3) <= \current_pc[3]~output_o\;

ww_result(0) <= \result[0]~output_o\;

ww_result(1) <= \result[1]~output_o\;

ww_result(2) <= \result[2]~output_o\;

ww_result(3) <= \result[3]~output_o\;
END structure;


