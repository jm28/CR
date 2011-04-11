--------------------------------------------------------------------------------
--
--	Filename		: AndGate2.vhd
--	Description		: 2 Input And Gate
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

entity AndGate2 is
	port(input0			: in  std_logic;
		 input1			: in  std_logic;
		 output			: out std_logic);
end AndGate2;

architecture RTL of AndGate2 is
begin
	output <= input0 and input1 after DELAY_GATE;
end RTL;
