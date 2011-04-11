--------------------------------------------------------------------------------
--
--	Filename		: ControlUnit.vhd
--	Description		: MIPS Single Cycle Control Unit
--	Author			: Arnaldo Oliveira	(arnaldo.oliveira@ua.pt)
--	Copyright		: Arnaldo Oliveira - University of Aveiro (C) 2008
--
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

library WORK;
use WORK.MIPSPack.all;

entity ControlUnit is
	port(opcode			: in  std_logic_vector(5 downto 0);
		 funct			: in  std_logic_vector(5 downto 0);
		 aluCtrl		: out std_logic_vector(2 downto 0);
		 aluSrc			: out std_logic;
		 regWrite		: out std_logic;
		 regDst			: out std_logic;
		 branch			: out std_logic;
		 memRead			: out std_logic;
		 memWrite		: out std_logic;
		 memtoReg		: out std_logic;
		 rsvdInst		: out std_logic);
end ControlUnit;

architecture RTL of ControlUnit is

	constant DELAY : time := DELAY_GATE * 2;

begin
	process(opcode, funct)
	begin
		case (opcode) is 
		when MIPS_OPCODE_R_TYPE	=>
			case (funct) is
			when MIPS_FUNCT_ADD		=>
				aluCtrl		<= ALU_CTRL_ADD after DELAY;
				rsvdInst	<= '0' after DELAY;

			when MIPS_FUNCT_SUB		=>
				aluCtrl		<= ALU_CTRL_SUB after DELAY;
				rsvdInst	<= '0' after DELAY;

			when MIPS_FUNCT_AND		=>
				aluCtrl		<= ALU_CTRL_AND after DELAY;
				rsvdInst	<= '0' after DELAY;

			when MIPS_FUNCT_OR		=>
				aluCtrl		<= ALU_CTRL_OR after DELAY;
				rsvdInst	<= '0' after DELAY;

			when MIPS_FUNCT_SLT		=>
				aluCtrl		<= ALU_CTRL_SLT after DELAY;
				rsvdInst	<= '0' after DELAY;
			
			when others				=>
				aluCtrl		<= (others => '-') after DELAY;
				rsvdInst	<= '1' after DELAY;
			end case;

			aluSrc		<= '0' after DELAY;
			regWrite	<= '1' after DELAY;
			regDst		<= '1' after DELAY;
			branch		<= '0' after DELAY;
			memRead		<= '0' after DELAY;
			memWrite		<= '0' after DELAY;
			memtoReg		<= '0' after DELAY;

		when MIPS_OPCODE_BEQ	=>
			aluCtrl		<= ALU_CTRL_SUB after DELAY;
			aluSrc		<= '0' after DELAY;
			regWrite	<= '0' after DELAY;
			regDst		<= '-' after DELAY;
			branch		<= '1' after DELAY;
			rsvdInst	<= '0' after DELAY;
			memRead		<= '0' after DELAY;
			memWrite		<= '0' after DELAY;
			memtoReg		<= '0' after DELAY;

		when MIPS_OPCODE_ADDI	=>
			aluCtrl		<= ALU_CTRL_ADD after DELAY;
			aluSrc		<= '1' after DELAY;
			regWrite	<= '1' after DELAY;
			regDst		<= '0' after DELAY;
			branch		<= '0' after DELAY;
			rsvdInst	<= '0' after DELAY;
			memRead		<= '0' after DELAY;
			memWrite		<= '0' after DELAY;
			memtoReg		<= '0' after DELAY;

		when MIPS_OPCODE_SLTI	=>
			aluCtrl		<= ALU_CTRL_SLT after DELAY;
			aluSrc		<= '1' after DELAY;
			regWrite	<= '1' after DELAY;
			regDst		<= '0' after DELAY;
			branch		<= '0' after DELAY;
			rsvdInst	<= '0' after DELAY;
			memRead		<= '0' after DELAY;
			memWrite		<= '0' after DELAY;
			memtoReg		<= '0' after DELAY;

		when MIPS_OPCODE_ANDI	=>
			aluCtrl		<= ALU_CTRL_AND after DELAY;
			aluSrc		<= '1' after DELAY;
			regWrite	<= '1' after DELAY;
			regDst		<= '0' after DELAY;
			branch		<= '0' after DELAY;
			rsvdInst	<= '0' after DELAY;
			memRead		<= '0' after DELAY;
			memWrite		<= '0' after DELAY;
			memtoReg		<= '0' after DELAY;

		when MIPS_OPCODE_ORI	=>
			aluCtrl		<= ALU_CTRL_OR after DELAY;
			aluSrc		<= '1' after DELAY;
			regWrite	<= '1' after DELAY;
			regDst		<= '0' after DELAY;
			branch		<= '0' after DELAY;
			rsvdInst	<= '0' after DELAY;
			memRead		<= '0' after DELAY;
			memWrite		<= '0' after DELAY;
			memtoReg		<= '0' after DELAY;
			
		when MIPS_OPCODE_LW =>
			aluCtrl 		<= ALU_CTRL_ADD after DELAY;
			aluSrc		<= '1' after DELAY;
			regWrite		<= '1' after DELAY;
		   regDst		<= '0' after DELAY;
			branch		<= '0' after DELAY;
			rsvdInst		<= '0' after DELAY;
			memRead		<= '1' after DELAY;
			memWrite		<= '0' after DELAY;
			memtoReg		<= '1' after DELAY;

		when MIPS_OPCODE_SW =>
			aluCtrl 		<= ALU_CTRL_ADD after DELAY;
			aluSrc		<= '1' after DELAY;
			regWrite		<= '0' after DELAY;
		   regDst		<= '0' after DELAY;
			branch		<= '0' after DELAY;
			rsvdInst		<= '0' after DELAY;
			memRead		<= '0' after DELAY;
			memWrite		<= '1' after DELAY;
			memtoReg		<= '0' after DELAY;
			
		when others				=>
			aluCtrl		<= (others => '-') after DELAY;
			aluSrc		<= '-' after DELAY;
			regWrite	<= '0' after DELAY;
			regDst		<= '-' after DELAY;
			branch		<= '0' after DELAY;
			rsvdInst	<= '1' after DELAY;
			memRead		<= '0' after DELAY;
			memWrite		<= '0' after DELAY;
			memtoReg		<= '0' after DELAY;
		end case;
	end process;
end RTL;
