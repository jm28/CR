--------------------------------------------------------------------------------
--
--	Filename		: CntUpDownSRstEnN.vhd
--	Description		: Parameterizable N-bit Positive Edge Triggered Binary
--                    Up/Down Counter with Synchronous Reset and Clock Enable
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

entity CntUpDownSRstEnN is
	generic(size   : positive);
	port(reset     : in  std_logic;
         clk       : in  std_logic;
	     clkEnable : in  std_logic;
		 upDown_n  : in  std_logic;
		 cntOut    : out std_logic_vector((size - 1) downto 0));
end CntUpDownSRstEnN;

architecture RTL of CntUpDownSRstEnN is

	signal s_cntVal : std_logic_vector((size - 1) downto 0);
	
begin
	process(clk)
	begin
		if (rising_edge(clk)) then
			if (clkEnable = '1') then
				if (reset = '1') then
					s_cntVal <= (others => '0');
				else
					if (upDown_n = '1') then
						s_cntVal <= s_cntVal + 1;
					else
						s_cntVal <= s_cntVal - 1;
					end if;
				end if;
			end if;
		end if;
	end process;
	
	cntOut <= s_cntVal;
end RTL;

