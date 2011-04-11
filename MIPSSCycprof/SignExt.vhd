--------------------------------------------------------------------------------
--
--	Filename		: SignExt.vhd
--	Description		: Sign Extender
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

entity SignExt is
	port(dataIn			: in  std_logic_vector(15 downto 0);
		 dataOut		: out std_logic_vector(31 downto 0));
end SignExt;

architecture RTL of SignExt is
begin
	dataOut(31 downto 16)	<= (others => dataIn(15));
	dataOut(15 downto 0)	<= dataIn;
end RTL;
