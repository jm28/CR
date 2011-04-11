--------------------------------------------------------------------------------
--
--	Filename		: Chronometer.vhd
--	Description		: Chronometer Top Level
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

entity Chronometer is
    port(reset      : in  std_logic;
	     clk        : in  std_logic;
		 statop		: in  std_logic;
		 laprst		: in  std_logic;
         dispOut_n  : out std_logic_vector(6 downto 0);
         dispEnb_n  : out std_logic_vector(3 downto 0));
end Chronometer;

architecture RTL of Chronometer is

	signal s_clk200Hz, s_clk100Hz 		: std_logic;
	signal s_cntReset, s_cntEnable		: std_logic;
	signal s_regEnable 					: std_logic;
	signal s_counterOut, s_registerOut	: std_logic_vector(15 downto 0);
	signal s_hexDigit				  	: std_logic_vector(3 downto 0);
	signal s_digitSel				  	: std_logic_vector(1 downto 0);
	
begin
	clk_divider_250000 : entity WORK.ClkDividerN(RTL)
		generic map(divFactor => 250000)
		port map(reset		=> '0',
				 clkIn		=> clk,
				 clkOut		=> s_clk200Hz);
				 
	clk_divider_2 : entity WORK.ClkDividerN(RTL)
		generic map(divFactor => 2)
		port map(reset		=> '0',
				 clkIn		=> s_clk200Hz,
				 clkOut		=> s_clk100Hz);
	
	control_unit : entity WORK.ControlUnit(RTL)
		port map(reset     => reset,
				 clk       => s_clk200Hz,
				 statop    => statop,
				 laprst    => laprst,
				 cntReset  => s_cntReset,
				 cntEnable => s_cntEnable,
				 regEnable => s_regEnable);

	bcd_counter : entity WORK.CntBCDUp4(RTL)
		port map(reset		=> s_cntReset,
				 clk		=> s_clk100Hz,
				 clkEnable	=> s_cntEnable,
				 count		=> s_counterOut);
				 
	freeze_register : entity WORK.RegN(RTL)
		generic map(size		=> 16,
					resetValue	=> X"0000")
		port map(asyncReset		=> '0',
				 clk			=> s_clk200Hz,
				 clkEnable		=> s_regEnable,
				 syncReset		=> '0',
				 dataIn			=> s_counterOut,
				 dataOut		=> s_registerOut);
	
	digit_sel_counter : entity WORK.CntUpDownSRstEnN(RTL)
		generic map(size	=> 2)
		port map(reset		=> '0',
				 clk		=> s_clk200Hz,
				 clkEnable	=> '1',
				 upDown_n	=> '1',
				 cntOut		=> s_digitSel);

	digit_sel_decoder : entity WORK.BinDecoderN(RTL)
		generic map(inSize	=> 2)
		port map(enable		=> '1',
				 inputs		=> s_digitSel,
				 outputs_n 	=> dispEnb_n);
	
	digit_mux : entity WORK.Mux4N(RTL)
		generic map(size	=> 4)
		port map(selection	=> s_digitSel,
				 dataIn0	=> s_registerOut(3 downto 0),
				 dataIn1	=> s_registerOut(7 downto 4),
				 dataIn2	=> s_registerOut(11 downto 8),
				 dataIn3	=> s_registerOut(15 downto 12),
				 dataOut	=> s_hexDigit);

	display_decoder : entity WORK.Bin7SegDecoder(RTL)
		port map(binInput	=> s_hexDigit,
                 decOut_n	=> dispOut_n);
end RTL;
