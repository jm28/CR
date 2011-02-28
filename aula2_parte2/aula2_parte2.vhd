----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:05:05 02/19/2011 
-- Design Name: 
-- Module Name:    aula2_parte2 - Behavioral 
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

entity aula2_parte2 is
    Port ( decodeIn : in  STD_LOGIC_VECTOR (3 downto 0);
           encodeOut : out  STD_LOGIC_VECTOR (1 downto 0);
           validOut : out  STD_LOGIC);
end aula2_parte2;

architecture Behavioral of aula2_parte2 is

begin

	encodeOut(0) <= decodeIn(0) or decodeIn(1);
	encodeOut(1) <= decodeIn(0) or (not decodeIn(1) and decodeIn(2));
	validOut <= not decodeIn(0) and not decodeIn(1) and not decodeIn(2) and not decodeIn(3);

end Behavioral;

