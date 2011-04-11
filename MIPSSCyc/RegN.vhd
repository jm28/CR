--------------------------------------------------------------------------------
--
--	Filename		: RegN.vhd
--	Description		: Parameterizable N-bit Register
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

entity RegN is
	generic(size		: integer := 32;
			resetValue	: std_logic_vector);
	port(asyncReset		: in  std_logic;
		 clk			: in  std_logic;
		 clkEnable		: in  std_logic;
		 syncReset		: in  std_logic;
		 dataIn			: in  std_logic_vector((size - 1) downto 0);
		 dataOut		: out std_logic_vector((size - 1) downto 0));
end RegN;

architecture RTL of RegN is
begin
	process(asyncReset, clk)
	begin
		if (asyncReset = '1') then
			dataOut <= resetValue after DELAY_MEM_WR;
		elsif (rising_edge(clk)) then
			if (clkEnable = '1') then
				if (syncReset = '1') then
					dataOut <= resetValue after DELAY_MEM_WR;
				else
					dataOut <= dataIn after DELAY_MEM_WR;
				end if;
			end if;
		end if;
	end process;
end RTL;
