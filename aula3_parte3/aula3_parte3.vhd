----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:25:50 02/28/2011 
-- Design Name: 
-- Module Name:    aula3_parte3 - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity aula3_parte3 is
    Port ( inValue : in  STD_LOGIC_VECTOR (3 downto 0);
           clkEnable : in  STD_LOGIC;
           upDown_n : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           load_n : in  STD_LOGIC;
           clk : in  STD_LOGIC;
			  outValue : out  STD_LOGIC_VECTOR (6 downto 0));
end aula3_parte3;

architecture Behavioral of aula3_parte3 is

component ClkDivider50M is
    port(reset  : in  std_logic;
	 clkIn  : in  std_logic;
         clkOut : out std_logic);
end component;
	
	signal s_cntValue : STD_LOGIC_VECTOR(3 downto 0);
	signal s_clk1Hz	: STD_LOGIC;
	
begin


clk_div_inst : ClkDivider50M
port map(
		reset		=> reset,
		clkIn		=> clk,
		clkOut	=> s_clk1Hz
		);
		
		
		process(s_clk1Hz)
		begin
			
			if (falling_edge(s_clk1Hz)) then
				if (reset = '1') then
					s_cntValue <= (others => '0');
				elsif (clkEnable = '1') then
					if (load_n = '0') then
						s_cntValue <= inValue;
					elsif(upDown_n = '0') then
						s_cntValue <= s_cntValue + 1;
					else
						s_cntValue <= s_cntValue - 1;
					end if;
				end if;
			end if;
		end process;

	with s_cntValue SELECT
   outValue<= "1111001" when "0001",   --1
				  "0100100" when "0010",   --2
				  "0110000" when "0011",   --3
				  "0011001" when "0100",   --4
				  "0010010" when "0101",   --5
				  "0000010" when "0110",   --6
				  "1111000" when "0111",   --7
              "0000000" when "1000",   --8
              "0010000" when "1001",   --9
				  "0001000" when "1010",   --A
              "0000011" when "1011",   --b
				  "1000110" when "1100",   --C
				  "0100001" when "1101",   --d
              "0000110" when "1110",   --E
				  "0001110" when "1111",   --F
				  "1000000" when others;   --0		
		
end Behavioral;

