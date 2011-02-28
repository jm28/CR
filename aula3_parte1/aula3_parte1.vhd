----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:55:55 02/26/2011 
-- Design Name: 
-- Module Name:    aula3_parte1 - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity aula3_parte1 is
    Port ( dataIn : in  STD_LOGIC_VECTOR (3 downto 0);
           clk : in  STD_LOGIC;
           clkEnable : in  STD_LOGIC;
           reset_n : in  STD_LOGIC;
           dataOut : out  STD_LOGIC_VECTOR (3 downto 0));
end aula3_parte1;

architecture Behavioral of aula3_parte1 is

begin
	process(clk, reset_n)
	begin
		if (reset_n = '0') then
			dataOut <= "0000";
		elsif (rising_edge(clk)) then
			if (clkEnable = '1') then
				dataOut <= dataIn;
			end if;
		end if;
	end process;
end Behavioral;

