----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:46:50 02/26/2011 
-- Design Name: 
-- Module Name:    aula3_parte2 - Behavioral 
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
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity aula3_parte2 is
    Port ( inValue : in  STD_LOGIC_VECTOR (7 downto 0);
           clkEnable : in  STD_LOGIC;
           upDown_n : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           load_n : in  STD_LOGIC;
           clk : in  STD_LOGIC;
			  outValue : out  STD_LOGIC_VECTOR (7 downto 0));
end aula3_parte2;

-----------------------------------------------------------
--				Segunda parte do segundo problema				--
-----------------------------------------------------------
architecture Behavioral of aula3_parte2 is
	signal s_cntValue : std_logic_vector(31 downto 0);
begin
		process(clk)
		begin
			
			if (falling_edge(clk)) then
				if (reset = '1') then
					s_cntValue <= (others => '0');
				elsif (clkEnable = '1') then
					if (load_n = '0') then
						s_cntValue(31 downto 24) <= inValue;
						s_cntValue(23 downto 0) <= (others => '0');
					elsif(upDown_n = '0') then
						s_cntValue <= s_cntValue + 1;
					else
						s_cntValue <= s_cntValue - 1;
					end if;
				end if;
			end if;
		end process;
		
		outValue <= s_cntValue(31 downto 24);
		
end Behavioral;


-----------------------------------------------------------
--				Primeira parte do segundo problema				--
-----------------------------------------------------------
--architecture Behavioral of aula3_parte2 is 
--	signal s_cntValue : std_logic_vector(31 downto 0);
--begin
--	process(reset, clk)
--	begin
--		if (reset = '1') then
--			s_cntValue <= (others <= '0');
--		elsif (clk 'event = '0') then
--			if (clkEnable = '1') then
--				s_cntValue <= s_cntValue + 1;
--			end if;
--		end if;
--	end process;
--	outValue <= s_cntValue(31 downto 24);
--end Behavioral;

