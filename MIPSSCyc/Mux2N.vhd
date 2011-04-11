--------------------------------------------------------------------------------
--
--	Filename		: Mux2N.vhd
--	Description		: Parameterizable 2->1 N-bit Multiplexer
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

entity Mux2N is
	generic(size		: integer := 32);
	port(selection		: in  std_logic;
		 dataIn0		: in  std_logic_vector((size - 1) downto 0);
		 dataIn1		: in  std_logic_vector((size - 1) downto 0);
		 dataOut		: out std_logic_vector((size - 1) downto 0));
end Mux2N;

architecture RTL of Mux2N is
begin
	dataOut <= dataIn1 after DELAY_GATE when (selection = '1') else
			   dataIn0 after DELAY_GATE;
end RTL;
