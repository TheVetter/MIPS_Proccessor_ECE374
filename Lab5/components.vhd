library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;

package components is
------------ full adder ---------------
component fulladd IS
	PORT ( Cin, x, y : IN STD_LOGIC;
		s, Cout : OUT STD_LOGIC );
END component;

------------- n stage ripple carry adder -------------------
component ripple_carry IS
	PORT ( Cin: IN STD_LOGIC;
			x,y : IN STD_LOGIC_VECTOR(3 downto 0);
			s : OUT STD_LOGIC_VECTOR(3 downto 0);
			Cout : OUT STD_LOGIC );
END component;

--------- multiplexer -----------------------
component mux2to1 IS
	generic(n : integer := 4);
	PORT ( s : IN std_logic;
			a, b : in std_logic_vector((n-1) downto 0);
			f : OUT std_logic_vector((n-1) downto 0));
END component;

component mux4to1 IS
	generic  (n : integer:= 4);
	PORT ( w0, w1, w2, w3 : IN STD_LOGIC_VECTOR((n-1) downto 0);
		s : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		f : OUT STD_LOGIC_VECTOR((n-1) downto 0));
END component;

---------------- decoders -------------------------
component dec2to4 IS
	PORT ( w : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
			En : IN STD_LOGIC;
			y : OUT STD_LOGIC_VECTOR(3 downto 0));
END component;

component dec4to16 IS
	PORT (w : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			En : IN STD_LOGIC;
			y : OUT STD_LOGIC_VECTOR(15 downto 0));
END component;

------------- n stage tri-state buffer ------------------------
component trin IS
	GENERIC (N : INTEGER := 8);
	PORT (X : IN STD_LOGIC_VECTOR((N-1) DOWNTO 0);
			E : IN STD_LOGIC;
			F : OUT STD_LOGIC_VECTOR((N-1) DOWNTO 0));
END component;

------------ n bit register -----------------------
component regN is
	generic(N: integer:= 32);
	port (clock : in std_logic;
	  D : in std_logic_vector(N-1 downto 0);
	  Q : out std_logic_vector(N-1 downto 0));
END component;
----------------- 1 bit register ------------------------------------------------------------------------
component reg1 is
	port (clock : in std_logic;
	  reset, D : in std_logic;
	  Q : out std_logic);
END component;

-------------- instruction memeory --------------------------
component instruction_memory is
	port(clock, reset : in std_logic;
			input : in std_logic_vector(3 downto 0);
			output : out std_logic_vector(31 downto 0));
END component;

--------------- register file -------------------------------
component register_file is
	port(clock, reset, RegWrite : in std_logic;
			read_port1, read_port2, write_port, write_value : in std_logic_vector(3 downto 0);
			value1, value2 : out std_logic_vector(3 downto 0));
end component;

------------- instrcution decode ----------------------------
component instruction_decode is
	port(instr : in std_logic_vector(31 downto 0);
			MemRead, MemWrite, RegWrite, add_sub, alusrc, regdst, MemToReg, Branch, Jump : out std_logic;
			ALUOP : out std_LOGIC_VECTOR(1 downto 0);
			read_p1, read_p2, write_p, address_offset: out std_logic_vector(3 downto 0));
end component;

------------ arthimetic logic unit ___------------------------------
component alu is
	port( X, Y :in std_logic_vector(3 downto 0);
			add_sub : in std_logic;
			ALUOP : in std_logic_vector(1 downto 0);
			s: out std_logic_vector(3 downto 0);
			zero2: out std_logic);
end component;

------------ data memory guy_______======-------------
component data_memory is 
	port(clock, reset, MemWrite : in std_logic;
			read_port1,  write_port, write_value : in std_logic_vector(3 downto 0);
			value1 : out std_logic_vector(3 downto 0));
end component;
--------------------------------------------------------------------------------------------------------------------------forwarding unit
component forwardingUnit is
	port( EX_MEM_RegWrite, MEM_WB_RegWrite: in std_logic;
	ID_EX_RegisterRs, ID_EX_RegisterRt, EX_MEM_RegisterRd, MEM_WB_RegisterRd  : in std_logic_vector(3 downto 0);
	ForwardA, ForwardB: out std_logic_vector(1 downto 0));
end component;

end components;