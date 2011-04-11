----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:25:19 03/14/2011 
-- Design Name: 
-- Module Name:    aula4_parte3 - Behavioral 
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

entity aula4_parte3 is
    Port ( writeClk : in  STD_LOGIC;
           writeEnable : in  STD_LOGIC;
           writeData : in  STD_LOGIC_VECTOR (1 downto 0);
           address : in  STD_LOGIC_VECTOR (2 downto 0);
           readData : out  STD_LOGIC_VECTOR (1 downto 0));
end aula4_parte3;

architecture RTL of aula4_parte3 is


	component ClkDivider50M is
		port( reset  : in std_logic;
			   clkIn  : in std_logic;
			   clkOut : out std_logic);
	end component;

	constant NUM_WORDS : integer := 8;
	subtype TDataWord is std_logic_vector(1 downto 0);
	type TMemory is array (0 to NUM_WORDS-1) of TDataWord;
	signal s_memory : TMemory;
	signal s_clk1Hz 		 : std_logic;
	
begin

	clk_div_inst : ClkDivider50M
	port map(
					reset => '0',
					clkIn => writeClk,
					clkOut => s_clk1Hz
				);

	process(s_clk1Hz)
	begin
		if (rising_edge(s_clk1Hz)) then
			if (writeEnable = '1') then
				s_memory(CONV_INTEGER(address)) <= writeData;
			end if;
		end if;
	end process;
	readData <= s_memory(CONV_INTEGER(address));
end RTL;

