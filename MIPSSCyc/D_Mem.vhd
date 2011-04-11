----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:06:35 04/09/2011 
-- Design Name: 
-- Module Name:    D_MEM - Behavioral 
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
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

library WORK;
use WORK.MIPSPack.all;

entity D_MEM is
	 generic(n_words      : integer := 64;
				size_words   : integer := 32); 
    Port ( address 		 : in  STD_LOGIC_VECTOR(31 downto 2);
           write_data    : in  STD_LOGIC_VECTOR(31 downto 0);
			  MemWrite 		 : in  STD_LOGIC;
			  MemRead		 : in  STD_LOGIC;
           clk 			 : in  STD_LOGIC;
           read_data     : out STD_LOGIC_VECTOR(31 downto 0));
end D_MEM;

architecture RTL of D_MEM is
	subtype TDataWord is STD_LOGIC_VECTOR(size_words-1 downto 0);
	type TMemory is array (0 to n_words-1) of TDataWord;
	signal s_memory : TMemory;
begin
	process(clk, MemWrite)
	begin
		if (rising_edge(clk)) then
			if (MemWrite = '1') then
				s_memory(CONV_INTEGER(address)) <= write_data;
			end if;
		end if;
	end process;
	
	process(MemRead, s_memory)
	begin
		if (MemRead = '1') then
			read_data <= s_memory(CONV_INTEGER(address));
		end if;
	end process;
end RTL;

