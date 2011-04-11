----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:45:04 03/14/2011 
-- Design Name: 
-- Module Name:    aula4_parte5 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity aula4_parte5 is
    Port ( writeClk 		: in  STD_LOGIC;
           writeEnable 	: in  STD_LOGIC;
           writeAddress : in  STD_LOGIC_VECTOR (2 downto 0);
           writeData 	: in  STD_LOGIC_VECTOR (1 downto 0);
			  readClk		: in 	STD_LOGIC;
           readAddress 	: in  STD_LOGIC_VECTOR (7 downto 5);
           readData 		: out STD_LOGIC_VECTOR (1 downto 0));
end aula4_parte5;

architecture RTL of aula4_parte5 is

	constant NUM_WORDS : integer := 8;
	subtype TDataWord is std_logic_vector(2 downto 0);
	type TMemory is array (0 to NUM_WORDS -1) of TDataWord;
	signal s_memory : TMemory;
begin
	write_proc : process(writeClk)
	begin
		if (rising_edge(writeClk)) then
			if (writeEnable = '1') then
				s_memory(CONV_INTEGER(writeAddress)) <= writeData;
			end if;
		end if;
	end process;
	
	read_proc : process(readClk)
	begin
		if (rising_edge(readClk)) then
			readData <= s_memory(CONV_INTEGER(readAddress));
		end if;
	end process;
end RTL;

