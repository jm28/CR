----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:49:39 02/16/2011 
-- Design Name: 
-- Module Name:    Parte4 - Behavioral 
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

entity Parte4 is
    Port ( input0 : in STD_LOGIC;
			  input1 : in STD_LOGIC;
           enable : in STD_LOGIC;
           outputs: out  STD_LOGIC_VECTOR (3 downto 0));
end Parte4;

architecture Behavioral of Parte4 is
	
begin
	outputs(0) <= enable or (not input0 nand not input1);
	outputs(1) <= enable or (input0 nand not input1);
	outputs(2) <= enable or (not input0 nand input1);
	outputs(3) <= enable or (input0 nand input1);
end Behavioral;

