--------------------------------------------------------------------------------
--
--	Filename		: MIPSPack.vhd
--	Description		: MIPS Definitions Package
--	Author			: Arnaldo Oliveira	(arnaldo.oliveira@det.ua.pt)
--	Copyright		: Arnaldo Oliveira - University of Aveiro (C) 2008
--
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.all;

package MIPSPack is

	constant DELAY_GATE			: time := 0 ns;
	constant DELAY_MEM_RD		: time := 0 ns;
	constant DELAY_MEM_WR		: time := 0 ns;

	constant RESET_PC		: std_logic_vector(31 downto 0) := X"00400000";
	constant DATA_BASE		: std_logic_vector(31 downto 0) := X"00008000";
	constant PORT_BASE		: std_logic_vector(31 downto 0) := X"0000C000";

	constant MIPS_OPCODE_R_TYPE	: std_logic_vector(5 downto 0) := "000000";
	constant MIPS_OPCODE_BEQ	: std_logic_vector(5 downto 0) := "000100";
	constant MIPS_OPCODE_ADDI	: std_logic_vector(5 downto 0) := "001000";
	constant MIPS_OPCODE_SLTI	: std_logic_vector(5 downto 0) := "001010";
	constant MIPS_OPCODE_ANDI	: std_logic_vector(5 downto 0) := "001100";
	constant MIPS_OPCODE_ORI	: std_logic_vector(5 downto 0) := "001101";
	constant MIPS_OPCODE_SPEC_3	: std_logic_vector(5 downto 0) := "011111";
	
	constant MIPS_SHAMT_ADDSC	: std_logic_vector(4 downto 0) := "10000";
	constant MIPS_SHAMT_ADDWC	: std_logic_vector(4 downto 0) := "10001";
	
	constant MIPS_FUNCT_ADDU_QB	: std_logic_vector(5 downto 0) := "010000";
	constant MIPS_FUNCT_ADD		: std_logic_vector(5 downto 0) := "100000";
	constant MIPS_FUNCT_SUB		: std_logic_vector(5 downto 0) := "100010";
	constant MIPS_FUNCT_AND		: std_logic_vector(5 downto 0) := "100100";
	constant MIPS_FUNCT_OR		: std_logic_vector(5 downto 0) := "100101";
	constant MIPS_FUNCT_SLT		: std_logic_vector(5 downto 0) := "101010";

	constant ALU_CTRL_ADD		: std_logic_vector(2 downto 0) := "010";
	constant ALU_CTRL_ADD_CY	: std_logic_vector(2 downto 0) := "011";
	constant ALU_CTRL_SUB		: std_logic_vector(2 downto 0) := "110";
	constant ALU_CTRL_AND		: std_logic_vector(2 downto 0) := "000";
	constant ALU_CTRL_OR		: std_logic_vector(2 downto 0) := "001";
	constant ALU_CTRL_SLT		: std_logic_vector(2 downto 0) := "111";

end MIPSPack;

package body MIPSPack is
end MIPSPack;
