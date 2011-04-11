--------------------------------------------------------------------------------
--
--	Filename		: ControlUnit.vhd
--	Description		: Control Unit for the Chronometer
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

entity ControlUnit is
	port(reset     : in  std_logic;
         clk       : in  std_logic;
		 statop    : in  std_logic;
		 laprst    : in  std_logic;
		 cntReset  : out std_logic;
		 cntEnable : out std_logic;
		 regEnable : out std_logic);
end ControlUnit;

architecture RTL of ControlUnit is

	type TState is (TCleared, TStarted, TStopped, TPaused); 
	signal s_currentState, s_nextState : TState;

	signal s_statop, s_laprst : std_logic;

begin
	statop_debounce : entity WORK.DebounceUnit(RTL)
		port map(reset      => reset,
				 clk        => clk,
				 dirtyInput => statop,
				 pulsedOut  => s_statop);

	laprst_debounce : entity WORK.DebounceUnit(RTL)
		port map(reset      => reset,
				 clk        => clk,
				 dirtyInput => laprst,
				 pulsedOut  => s_laprst);

	sync_proc : process(clk)
	begin
		if (rising_edge(clk)) then
			if (reset = '1') then
				s_currentState <= TCleared;
			else
				s_currentState <= s_nextState;
			end if;
		end if;
	end process;

	output_decode : process(s_currentState)
	begin
		case (s_currentState) is
		when TCleared =>
			cntReset  <= '1';
			cntEnable <= '1';
			regEnable <= '1';
		when TStarted =>
			cntReset  <= '0';
			cntEnable <= '1';
			regEnable <= '1';
		when TStopped =>
			cntReset  <= '0';
			cntEnable <= '0';
			regEnable <= '1';
		when TPaused  =>
			cntReset  <= '0';
			cntEnable <= '1';
			regEnable <= '0';
		end case;
	end process;

	next_state_decode : process (s_currentState, s_statop, s_laprst)
	begin
		s_nextState <= s_currentState;
		
		case (s_currentState) is
		when TCleared =>
			if (s_statop = '1') then
				s_nextState <= TStarted;
			end if;
		when TStarted =>
			if (s_statop = '1') then
				s_nextState <= TStopped;
			elsif (s_laprst = '1') then
				s_nextState <= TPaused;
			end if;
		when TStopped =>
			if (s_statop = '1') then
				s_nextState <= TStarted;
			elsif (s_laprst = '1') then
				s_nextState <= TCleared;
			end if;
		when TPaused  =>
			if (s_laprst = '1') then
				s_nextState <= TStarted;
			end if;
		end case;
   end process;

end RTL;

