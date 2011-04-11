--------------------------------------------------------------------------------
--
--	Filename		: Mux4N.vhd
--	Description		: Parameterizable 4->1 N-bit Multiplexer
--	Author			: Arnaldo Oliveira	(arnaldo.oliveira@ua.pt)
--	Copyright		: Arnaldo Oliveira - University of Aveiro (C) 2011
--					  Model placed into the public domain by the author.
--					  Provided 'as is' without warranty.
--					  Author liable for nothing.
--
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity Mux4N is
	generic(size	: positive);
	port(selection	: in  std_logic_vector(1 downto 0);
		 dataIn0	: in  std_logic_vector((size - 1) downto 0);
		 dataIn1	: in  std_logic_vector((size - 1) downto 0);
		 dataIn2	: in  std_logic_vector((size - 1) downto 0);
		 dataIn3	: in  std_logic_vector((size - 1) downto 0);
		 dataOut	: out std_logic_vector((size - 1) downto 0));
end Mux4N;

architecture RTL of Mux4N is
begin
	dataOut <= dataIn3 when (selection = "11") else
			   dataIn2 when (selection = "10") else
			   dataIn1 when (selection = "01") else
			   dataIn0;
end RTL;

