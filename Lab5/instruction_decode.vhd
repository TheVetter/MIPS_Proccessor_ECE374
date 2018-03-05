------ This file describes the instruction decode operation -------------
LIBRARY ieee;
use ieee.std_logic_1164.all;
USE work.components.all;

entity instruction_decode is
	port(instr : in std_logic_vector(31 downto 0);
			MemRead, MemWrite, RegWrite, add_sub, alusrc, regdst, MemToReg, Branch, Jump: out std_logic;
			ALUOP: out std_logic_vector(1 downto 0);
			read_p1, read_p2, write_p, address_offset: out std_logic_vector(3 downto 0));
end instruction_decode;

architecture struc_behaviour of instruction_decode is
	signal opcode, funct : std_logic_vector(5 downto 0);
	signal shamt : std_logic_vector(4 downto 0);

begin

	opcode <= instr(31 downto 26);
	shamt <= instr(10 downto 6);
	funct <= instr(5 downto 0);

	read_p1 <= instr(24 downto 21);
	read_p2 <= instr(19 downto 16);
	write_p <= instr(14 downto 11);
	address_offset <= instr(3 downto 0); 
	
	MemRead <= '1' when (opcode = "100011") else '0';
	MemWrite <= '1' when (opcode = "101011") else '0';
	
	RegWrite <= '1' when (opcode = "000000") or (opcode = "100011") else '0';
	
	---						subtract function     SLT function 				beq function ---
	add_sub <= '1' when (funct = "100010") or (funct = "101010" ) or (opcode = "000100")  else '0';
	alusrc <= '1' when ((opcode = "100011") or (opcode = "101011")) else '0';
	regdst <= '0' when (opcode = "100011") else '1';
	MemToReg <= '1' when (opcode = "100011") else '0';
	Branch <= '1' when (opcode = "000100") else '0';
	Jump <= '1' when (opcode = "000010") else '0';
	
	process (funct, opcode)
		BEGIN
		--- alu op code mapping ---
		--- for jump and slt ---
		if ((funct = "101010") or (opcode = "000010")) then ---or (opcode = "000000")) then 
			ALUOP <= "00";
		--- AND condtion ----
		elsif ((opcode = "000000") and (funct = "100100")) then 
			ALUOP <= "10";
		--- Or function ---
		elsif ((opcode = "000000") and (funct = "100101")) then
			ALUOP <= "11";
		--- all other funtions --
		else
			ALUOP <= "01";
		end if;
	end process;
	
end struc_behaviour;