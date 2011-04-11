--------------------------------------------------------------------------------
--
--	Filename		: DebounceUnit.vhd
--	Description		: Debounce Unit
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

entity DebounceUnit is
	port(reset      : in  std_logic;
         clk        : in  std_logic;
		 dirtyInput : in  std_logic;
		 pulsedOut  : out std_logic);
end DebounceUnit;

architecture RTL of DebounceUnit is

	signal s_dirtyInput, s_resetPulse, s_pulsedOut : std_logic;
	signal s_debounceCnt : std_logic_vector(4 downto 0);
	
begin
	process(clk)
	begin
		if (falling_edge(clk)) then
			s_dirtyInput <= dirtyInput;
		end if;
	end process;
	
	process(reset, s_resetPulse, s_dirtyInput)
	begin
		if ((reset = '1') or (s_resetPulse = '1')) then
			s_pulsedOut <= '0';
		elsif (rising_edge(s_dirtyInput)) then
			s_pulsedOut <= '1';
		end if;
	end process;

	pulsedOut <= s_pulsedOut;
	
	process(reset, clk)
	begin
		if (reset = '1') then
			s_debounceCnt <= (others => '0');
			s_resetPulse  <= '0';
		elsif (rising_edge(clk)) then
			if (CONV_INTEGER(s_debounceCnt) /= 0) then
				s_debounceCnt <= s_debounceCnt - 1;
				s_resetPulse  <= '1';
			elsif (s_pulsedOut = '1') then
				s_debounceCnt <= (others => '1');
				s_resetPulse  <= '1';
			else
				s_resetPulse  <= '0';
			end if;
		end if;
	end process;
end RTL;
