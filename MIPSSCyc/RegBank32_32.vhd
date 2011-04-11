--------------------------------------------------------------------------------
--
--	Filename		: RegBank32_32.vhd
--	Description		: 32 * 32-bit Register Bank
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

entity RegBank32_32 is
	port(writeClk		: in  std_logic;
		 writeEnable	: in  std_logic;
		 writeRegIndex	: in  std_logic_vector(4 downto 0);
		 writeData		: in  std_logic_vector(31 downto 0);
		 readRegIndex0	: in  std_logic_vector(4 downto 0);
		 readRegIndex1	: in  std_logic_vector(4 downto 0);
		 readData0		: out std_logic_vector(31 downto 0);
		 readData1		: out std_logic_vector(31 downto 0));
end RegBank32_32;

architecture RTL of RegBank32_32 is

	subtype TDataWord is std_logic_vector(31 downto 0);
	type TMemory is array (0 to 31) of TDataWord;
	signal s_memory : TMemory;

	constant DELAY_WRITE : time := DELAY_MEM_WR * 5;
	constant DELAY_READ  : time := DELAY_MEM_RD * 5;

begin
	process(writeClk)
	begin
		if (rising_edge(writeClk)) then
			if (writeEnable = '1') then
				s_memory(CONV_INTEGER(writeRegIndex)) <= writeData
														  after DELAY_WRITE;
			end if;
		end if;
	end process;

	readData0 <= (others => '0') after DELAY_READ
								  when (readRegIndex0 = "00000") else
				 s_memory(CONV_INTEGER(readRegIndex0))
								  after DELAY_READ;
	readData1 <= (others => '0') after DELAY_READ
								  when (readRegIndex1 = "00000") else
				 s_memory(CONV_INTEGER(readRegIndex1))
								  after DELAY_READ;
end RTL;
