----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:19:49 02/16/2011 
-- Design Name: 
-- Module Name:    Parte2 - Behavioral 
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
-------------------------------------------------------------------
entity Andport1 is
	 Port ( dataIn0 : in STD_LOGIC;
	        sel : in STD_LOGIC;
			  output0 : out STD_LOGIC);
end Andport1;

architecture Behavioral of Andport1 is
begin
	output0 <= dataIn0 and sel;
end Behavioral;

--------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity Andport2 is
	 Port ( dataIn1 : in STD_LOGIC;
	        sel : in STD_LOGIC;
			  output1 : out STD_LOGIC);
end Andport2;

architecture Behavioral of Andport2 is
begin
	output1 <= dataIn1 and not sel;
end Behavioral;

----------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity Parte2 is
    Port ( dataIn0 : in  STD_LOGIC;
           dataIn1 : in  STD_LOGIC;
           sel : in  STD_LOGIC;
           dataOut : out  STD_LOGIC);
end Parte2;

architecture Behavioral of Parte2 is

	component Andport1 is
    port(   dataIn0:	in std_logic;
    	    sel:	in std_logic;
            output0:	out std_logic
    );
    end component;

    component Andport2 is
    port(   dataIn1:	in std_logic;
    	    sel:	in std_logic;
    	    output1: out std_logic
    );
    end component;
	 
	 signal wire1, wire2:std_logic;
	 
begin
    	 AND1 : Andport1 port map (dataIn0,sel,wire1);
		 AND2 : Andport2 port map (dataIn1,sel,wire2);
		 dataOut <= wire1 or wire2;
	 
end Behavioral;

