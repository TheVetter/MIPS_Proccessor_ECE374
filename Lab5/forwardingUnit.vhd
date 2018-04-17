library ieee;
use ieee.std_logic_1164.all;
use work.components.all;

entity forwardingUnit is
	port( EX_MEM_RegWrite, MEM_WB_RegWrite: in std_logic;
		ID_EX_RegisterRs, ID_EX_RegisterRt, EX_MEM_RegisterRd, MEM_WB_RegisterRd  : in std_logic_vector(3 downto 0);
		ForwardA, ForwardB: out std_logic_vector(1 downto 0));
end forwardingUnit;

architecture behaviour of forwardingUnit is


begin
	ForwardA <= "10" when ((EX_MEM_RegWrite = '1') and (EX_MEM_RegisterRd /= "0000") and (EX_MEM_RegisterRd = ID_EX_RegisterRs)) else 
					"01" when ((MEM_WB_RegWrite = '1') and (MEM_WB_RegisterRd /= "0000") and not (((EX_MEM_RegWrite = '1' )and (EX_MEM_RegisterRd /= "0000")
									and (EX_MEM_RegisterRd /= ID_EX_RegisterRs)))and (MEM_WB_RegisterRd = ID_EX_RegisterRs)) else "00";

	ForwardB <= "10" when ((EX_MEM_RegWrite = '1') and (EX_MEM_RegisterRd /= "0000") and (EX_MEM_RegisterRd = ID_EX_RegisterRt)) else 
					"01" when ((MEM_WB_RegWrite = '1') and (MEM_WB_RegisterRd /= "0000") and not((EX_MEM_RegWrite = '1') and (EX_MEM_RegisterRd /= "0000") 
									and (EX_MEM_RegisterRd /= ID_EX_RegisterRt)) and (MEM_WB_RegisterRd = ID_EX_RegisterRt)) else "00" ;
	


end behaviour;