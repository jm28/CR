-------------------------------------------------------------------------------
--
--	Filename		: ALU32.vhd
--	Description		: 32-bit Arithmetic and Logic Unit
--	Author			: Arnaldo Oliveira	(arnaldo.oliveira@ua.pt)
--	Copyright		: Arnaldo Oliveira - University of Aveiro (C) 2008
--
-------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;
use IEEE.STD_LOGIC_SIGNED.all;

library WORK;
use WORK.MIPSPack.all;

entity ALU32 is
	port(ctrl			: in  std_logic_vector(2 downto 0);
		 operand0		: in  std_logic_vector(31 downto 0);
		 operand1		: in  std_logic_vector(31 downto 0);
		 result			: out std_logic_vector(31 downto 0);
		 zero			: out std_logic);
end ALU32;

architecture RTL of ALU32 is

	signal s_result	: std_logic_vector(31 downto 0);

	constant DELAY_ARITH : time := DELAY_GATE * 32;
	constant DELAY_LOGIC : time := DELAY_GATE;

begin
	process(ctrl, operand0, operand1)
	begin
		case (ctrl) is
		when ALU_CTRL_ADD		=>
			s_result	<= operand0 + operand1 after DELAY_ARITH;

		when ALU_CTRL_SUB		=>
			s_result	<= operand0 - operand1 after DELAY_ARITH;

		when ALU_CTRL_AND		=>
			s_result	<= operand0 and operand1 after DELAY_LOGIC;

		when ALU_CTRL_OR		=>
			s_result	<= operand0 or operand1 after DELAY_LOGIC;

		when ALU_CTRL_SLT		=>
			if (operand0 < operand1) then
				s_result	<= X"00000001" after DELAY_ARITH;
			else
				s_result	<= X"00000000" after DELAY_ARITH;
			end if;

		when others				=>
			s_result	<= (others => '-') after DELAY_LOGIC;
		end case;
	end process;

	result	<= s_result;
	zero	<= '1' after DELAY_LOGIC when (s_result = X"00000000") else
			   '0' after DELAY_LOGIC;
end RTL;
