--------------------------------------------------------------------------------
--
--	Filename		: LeftShifter2.vhd
--	Description		: 2 Bit Left Shifter
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

entity LeftShifter2 is
	port(dataIn			: in  std_logic_vector(31 downto 0);
		 dataOut		: out std_logic_vector(31 downto 0));
end LeftShifter2;

architecture RTL of LeftShifter2 is
begin
	dataOut <= dataIn(29 downto 0) & "00";
end RTL;
