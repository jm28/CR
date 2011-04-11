--------------------------------------------------------------------------------
--
--	Filename		: AdderN.vhd
--	Description		: Parameterizable N-bit Adder
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

entity AdderN is
	generic(size		: integer := 32);
	port(carryIn		: in  std_logic;
		 operand0		: in  std_logic_vector((size - 1) downto 0);
		 operand1		: in  std_logic_vector((size - 1) downto 0);
		 result			: out std_logic_vector((size - 1) downto 0);
		 carryOut		: out std_logic);
end AdderN;

architecture RTL of AdderN is

	signal s_operand0, s_operand1, s_result : std_logic_vector(size downto 0);

	constant DELAY : time := DELAY_GATE * size;

begin
	s_operand0	<= "0" & operand0;
	s_operand1	<= "0" & operand1;

	s_result	<= s_operand0 + s_operand1 + carryIn;

	result		<= s_result((size - 1) downto 0) after DELAY;
	carryOut	<= s_result(size);
end RTL;
