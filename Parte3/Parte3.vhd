----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:33:44 02/16/2011 
-- Design Name: 
-- Module Name:    Parte3 - Behavioral 
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

entity Parte3 is
    Port ( dataIn0 : in  STD_LOGIC;
           dataIn1 : in  STD_LOGIC;
			  sel : in STD_LOGIC;
           dataOut : out  STD_LOGIC);
end Parte3;

architecture Behavioral of Parte3 is

begin
--dataOut <= (dataIn0 and sel) or (dataIn1 and not sel); -- alínea (a

dataOut <= dataIn0 when (sel = '0') else dataIn1;

end Behavioral;

