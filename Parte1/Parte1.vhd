----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:11:36 02/16/2011 
-- Design Name: 
-- Module Name:    Parte1 - Behavioral 
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

entity Parte1 is
    Port ( input0 : in  STD_LOGIC;
           input1 : in  STD_LOGIC;
           output : out  STD_LOGIC);
end Parte1;

architecture Behavioral of Parte1 is

begin

	output <= input0 and input1;

end Behavioral;

