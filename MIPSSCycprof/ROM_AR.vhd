--------------------------------------------------------------------------------
--
--	Filename		: RAM_SW_AR.vhd
--	Description		: Parameterizable ROM with:
--						1 asynchronous read port
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

entity ROM_AR is
	generic(addrBusSize	: integer := 4;
			dataBusSize	: integer := 8);
	port(address		: in  std_logic_vector((addrBusSize - 1) downto 0);
		 data			: out std_logic_vector((dataBusSize - 1) downto 0));
end ROM_AR;

architecture RTL of ROM_AR is

	constant NUM_WORDS : integer := (2 ** addrBusSize);

	subtype TDataWord is std_logic_vector((dataBusSize - 1) downto 0);
	type TMemory is array (0 to (NUM_WORDS - 1)) of TDataWord;
	constant s_memory : TMemory :=
		(X"00001020", -- main:	add   $2, $0, $0
		 X"34030001", --		ori   $3, $0, 1
		 X"00431022", --        sub   $2, $2, $3
		 X"7C421C10", --        addsc $3, $2, $2
		 X"7C002450", --        addwc $4, $0, $0
		 others => X"00000000");

	constant DELAY_READ  : time := DELAY_MEM_RD * addrBusSize;

begin
	data <= s_memory(CONV_INTEGER(address)) after DELAY_READ;
end RTL;
