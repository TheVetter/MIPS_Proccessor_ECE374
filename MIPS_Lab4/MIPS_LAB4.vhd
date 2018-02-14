library ieee;
use ieee.std_logic_1164.all;
use work.components.all;

entity MIPS_LAB4 is
	port( clock, reset : in std_logic;
	current_pc, result : out std_logic_vector(3 downto 0));
end MIPS_LAB4;

architecture behaviour of MIPS_LAB4 is
	constant initial_pc : std_logic_vector(3 downto 0) := (others => '0');
	signal update_pc, read_port1, read_port2, write_port, w_value, src1, src2, aluOut, Dmem_out,rout, mout, mem_alu_out, address_offset, regdst_mx_out, alu_mux_out : std_logic_vector(3 downto 0);
	signal instr_from_im : std_logic_vector(31 downto 0);
	signal ALUOP : std_logic_vector(1 downto 0);
	signal MemRead, MemWrite, RegWrite, MemToReg, add_sub, alusrc, regdst, zero2 : std_logic;
	
begin
	pc_mux : mux2to1 generic map (n=>4) port map (reset, update_pc, initial_pc, mout);					--- multiplexer
	pc	: regN generic map (n=>4) port map (clock, mout, rout);												--- register
	
	---------- pc = pc +1 ------------------------------------------
	addpc : ripple_carry port map ('0', rout, "0001", update_pc);

	----------- IM -------------------------------------------------
	im : instruction_memory port map (clock, reset, rout, instr_from_im);
	
	------------- ID ------------------------------------------------
	id : instruction_decode port map (instr_from_im, MemRead, MemWrite, RegWrite, add_sub, alusrc, regdst, ALUOP, read_port1, read_port2, write_port, address_offset);
	
	--register destination mux before the register_file-----
	mx_redst : mux2to1 port map ( regdst, read_port2, write_port, regdst_mx_out );
	
	------------- RF --------------------------------------------------
	rf : register_file port map (clock, reset, RegWrite, read_port1, read_port2, regdst_mx_out, aluOut, src1, src2);
	
	
	mux_alu : mux2to1 port map (alusrc, src2, address_offset, alu_mux_out);
	
	------------ALU-----------------------------------------
	alup : alu port map ( src1, alu_mux_out, add_sub, ALUOP, aluOut, zero2);
	
	---------- data_memory----------------------------------------
	dm : data_memory port map( clock, reset, MemWrite,  aluOut, read_port2, Dmem_out);
	
	mx_wb : mux2to1 port map( MemToReg, Dmem_out, aluOut, mem_alu_out);
	
	
	current_pc <= rout;
	result <= src2 when (MemWrite ='1') else mem_alu_out;

end behaviour;