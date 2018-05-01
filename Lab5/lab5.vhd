library ieee;
use ieee.std_logic_1164.all;
use work.components.all;

entity lab5 is
	port( clock, reset : in std_logic;
	current_pc, result : out std_logic_vector(3 downto 0));
end lab5;

architecture behaviour of lab5 is
	constant initial_pc : std_logic_vector(3 downto 0) := (others => '0');
	signal if_pc, id_pc, ex_pc, read_port1, read_port2, write_port, w_value, id_src1, wbMux_out,ex_src2, ex_src1, id_src2, mem_Dmem_out,wb_dmem,rout, 
		wb_result, mout, mem_alu_out, id_address_offset,ex_address_offset, forb_out, forA_out, ex_Rd, mem_Rd, wb_rd,
		regdst_mx_out, alu_mux_out, Branch_out, Jump_out, branchAdder_out, stupid : std_logic_vector(3 downto 0);
	signal if_inst,id_inst: std_logic_vector(31 downto 0);
	signal ex_ALUop, id_ALUop, forwardA, forwardB : std_logic_vector(1 downto 0);
	signal id_MemRead, ex_MemRead, id_MemWrite, id_RegWrite, ex_RegWrite, wb_regdst,ex_MemWrite, wb_memtoReg, mem_regdst, wb_regwrite, id_memToReg, ex_zero, mem_zero,ex_memToReg, id_add_sub, ex_add_sub, id_alusrc, ex_alusrc, id_regdst,ex_regdst, zero2, id_Branch,ex_Branch, Jump, and_out : std_logic;
	signal mem_result, mem_src2,  mem_pc, ex_result,wb_pc, ex_RS, ex_RT  : std_logic_vector(3 downto 0);
	signal mem_RegWrite, mem_MemToReg, mem_MemWrite, mem_Branch : std_logic;
	
begin
-------- IF----------------
	----------------------------------pc crap --------------------------
	pc_mux : mux2to1 generic map (n=>4) port map (reset, if_pc, initial_pc, mout);					--- multiplexer
	pc	: regN generic map (n=>4) port map (clock, mout, rout);												--- register
	---------- pc = pc +1 ------------------------------------------
	addpc : ripple_carry port map ('0', rout, "0001", if_pc);
	----------- IM -------------------------------------------------
	im : instruction_memory port map (clock, reset, rout, if_inst);
	
	if_id_pc : regN generic map (n=>4) port map (clock, if_pc, id_pc );
	if_id_inst : regN generic map (n=>32) port map (clock, if_inst, id_inst );
	
	------------- ID ------------------------------------------------
	id : instruction_decode port map (id_inst, id_MemRead, id_MemWrite, id_RegWrite, id_add_sub, id_alusrc, id_regdst, id_memToReg, id_Branch, Jump, id_ALUop, read_port1, read_port2, write_port, id_address_offset);
	
	--register destination mux before the register_file-----
	mx_redst : mux2to1 port map ( wb_regdst, read_port2, write_port, regdst_mx_out );
	
	------------- RF --------------------------------------------------
	rf : register_file port map (clock, reset, wb_regwrite, read_port1, read_port2, regdst_mx_out, wbMux_out, id_src1, id_src2);
	
	
	id_ex_src1 : regN generic map (n=>4) port map (clock, id_src1, ex_src1 );
	id_ex_src2 : regN generic map (n=>4) port map (clock, id_src2, ex_src2 );
	id_ex_regwrite : reg1 port map (clock, reset, id_RegWrite, ex_RegWrite);
	id_ex_memToReg : reg1 port map (clock, reset, id_memToReg, ex_memToReg);
	id_ex_MemWrite : reg1 port map (clock, reset, id_MemWrite, ex_MemWrite);
	id_ex_MemRead : reg1 port map (clock, reset, id_MemRead, ex_MemRead);
	id_ex_Branch : reg1 port map (clock, reset, id_Branch, ex_Branch);
	id_ex_add_sub : reg1 port map (clock, reset, id_add_sub, ex_add_sub);
	id_ex_address_offset : regN generic map(n=>4) port map(clock, id_address_offset, ex_address_offset);
	id_ex_alusrc : reg1 port map (clock, reset, id_alusrc, ex_alusrc);
	id_ex_regdst : reg1 port map (clock, reset, id_regdst, ex_regdst);
	id_ex_pc : regN generic map (n=>4) port map (clock, id_pc, ex_pc);
	id_ex_ALUop : regN generic map (n=>2) port map (clock, id_ALUop, ex_ALUop);
	id_ex_RT : regN generic map (n=>4) port map (clock, read_port2, ex_RT);
	id_ex_RS : regN generic map (n=>4) port map (clock, read_port1, ex_RS);
	id_ex_Rd : regN generic map (n=>4) port map (clock, regdst_mx_out, ex_Rd);
	
	--------------ex -----------------
	
	forA_MUX : mux4to1 generic map (n=>4) port map( ex_src1, wbMux_out, mem_result, stupid , forwardA, forA_out  ) ;
	forB_mux : mux4to1 generic map (n=>4) port map(ex_src2, wbmux_out, mem_result, stupid , forwardB, forb_out);
			
	mux_alu : mux2to1 port map (ex_alusrc, forb_out, ex_address_offset, alu_mux_out);		
	------------ALU-----------------------------------------
	alup : alu port map ( forA_out, alu_mux_out, ex_add_sub, ex_ALUop, ex_result, ex_zero);
	

	ex_mem_result : regN generic map (n=>4) port map (clock, ex_result, mem_result);
	ex_mem_zero : reg1 port map (clock, reset, ex_zero, mem_zero );
	ex_mem_src2 : regN generic map (n=>4) port map (clock, ex_src2, mem_src2);
	ex_mem_RegWrite : reg1 port map (clock, reset, ex_RegWrite, mem_RegWrite);
	ex_mem_MemToReg : reg1 port map (clock, reset, ex_memToReg, mem_MemToReg);
	ex_mem_MemWrite : reg1 port map (clock, reset, ex_MemWrite, mem_MemWrite);
	ex_mem_Branch : reg1 port map (clock, reset, ex_Branch, mem_Branch);
	ex_mem_pc : regN generic map (n=>4) port map (clock, ex_pc, mem_pc);
	ex_mem_regdst : reg1 port map (clock, reset, ex_regdst, mem_regdst);
	ex_Mem_Rd : regN generic map (n=>4) port map (clock, ex_Rd, mem_Rd);

	
	forward : forwardingUnit port map(mem_MemToReg, wb_regwrite, ex_RS, ex_RT, mem_Rd, wb_rd, forwardA, forwardB );
	
	--------------DM-------------------
	---------- data_memory----------------------------------------
	dm : data_memory port map( clock, reset, mem_MemWrite,  mem_result, mem_result, mem_src2, mem_Dmem_out);
	-----and thingy
	mem_wb_dmem : regN generic map (n=>4) port map (clock, mem_Dmem_out, wb_dmem);
	mem_wb_result : regN generic map (n=>4) port map (clock, mem_result, wb_result);
	mem_wb_regdst : reg1 port map (clock, reset, mem_regdst, wb_regdst);
	mem_wb_memtoReg : reg1 port map (clock, reset, mem_MemToReg, wb_memtoReg);
	mem_wb_regWrite : reg1 port map (clock, reset, mem_RegWrite, wb_regwrite);
	mem_wb_pc : regN generic map (n=>4) port map (clock, mem_pc, wb_pc);
	Mem_wb_Rd : regN generic map (n=>4) port map (clock, mem_Rd, wb_rd);
	
	
	mx_wb : mux2to1 port map( wb_memtoReg, wb_result, mem_Dmem_out, wbMux_out );
	
	
	
	
	---and_out <= mem_Branch and mem_zero;
	
	---branch adder-----
	--branch_adder: ripple_carry port map('0', mem_pc, ex_address_offset, branchAdder_out );

	-------------Branch Mux----------------------------------
	---Branch_Mux : mux2to1 port map (and_out, mem_pc, branchAdder_out , Branch_out);
	
	-------------Jump Mux-----------------------------------
	---Jump_Mux : mux2to1 port map (Jump, Branch_out, ex_address_offset, Jump_out);
	
	current_pc <= if_pc;
	result <=  mem_src2 when (ex_MemWrite ='1') else wbMux_out;

end behaviour;