--------------------------------------------------------------------------------
--
--	Filename		: MIPSTestBench.vhd
--	Description		: MIPS Single Cycle Test Bench File
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

entity MIPSTestBench is
end MIPSTestBench;

architecture Stimulus of MIPSTestBench is

	signal s_reset		: std_logic := '0';
	signal s_clk		: std_logic := '0';
	signal s_error		: std_logic;

	constant CLK_PERIOD	: time := 20 ns;

begin

	uut : entity WORK.MIPSTopLevel(RTL)
		port map(reset		=> s_reset,
				 clk		=> s_clk,
				 error		=> s_error);

	reset_process : process
	begin
		s_reset		<= '1';
		wait for 100 ns;
		s_reset		<= '0';
		wait;
	end process;

	clk_process : process
	begin
		s_clk	<= '0';
		wait for (CLK_PERIOD / 2);
		s_clk	<= '1';
		wait for (CLK_PERIOD / 2);
	end process;
	
end Stimulus;

