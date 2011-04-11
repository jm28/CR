--------------------------------------------------------------------------------
--
--	Filename		: BinDecoderN.vhd
--	Description		: Parameterizable N->2^N Binary Decoder w/Active Low Outputs
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

entity BinDecoderN is
	generic(inSize : positive);
    port(enable	   : in  std_logic;
		 inputs	   : in  std_logic_vector((inSize - 1) downto 0);
         outputs_n : out std_logic_vector(((2 ** inSize) - 1) downto 0));
end BinDecoderN;

architecture RTL of BinDecoderN is
begin
	process(enable, inputs)
	begin
		for i in 0 to ((2 ** inSize) - 1) loop
			if (i = CONV_INTEGER(inputs)) then
				outputs_n(i) <= not enable;
			else
				outputs_n(i) <= '1';
			end if;
		end loop;
	end process;
end RTL;

