--------------------------------------------------------------------------------
--
--	Filename		: CntBCDUp4.vhd
--	Description		: Positive Edge Triggered 4 digit BCD Up Counter
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

entity CntBCDUp4 is
	port(reset     : in  std_logic;
         clk       : in  std_logic;
	     clkEnable : in  std_logic;
		 count     : out std_logic_vector(15 downto 0));
end CntBCDUp4;

architecture RTL of CntBCDUp4 is

	signal s_count : std_logic_vector(15 downto 0);
	
begin
	process(clk)
	begin
		if (rising_edge(clk)) then
			if (reset = '1') then
				s_count <= (others => '0');
			elsif (clkEnable = '1') then
				if (s_count(3 downto 0) = "1001") then
					s_count(3 downto 0) <= "0000";
					if (s_count(7 downto 4) = "1001") then
						s_count(7 downto 4) <= "0000";
						if (s_count(11 downto 8) = "1001") then
							s_count(11 downto 8) <= "0000";
							if (s_count(15 downto 12) = "1001") then
								s_count(15 downto 12) <= "0000";
							else
								s_count(15 downto 12) <= s_count(15 downto 12) + 1;
							end if;
						else
							s_count(11 downto 8) <= s_count(11 downto 8) + 1;
						end if;
					else
						s_count(7 downto 4) <= s_count(7 downto 4) + 1;
					end if;
				else
					s_count(3 downto 0) <= s_count(3 downto 0) + 1;
				end if;
			end if;
		end if;
	end process;
	
	count <= s_count;
end RTL;

