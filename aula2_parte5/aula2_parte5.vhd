----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:51:48 02/19/2011 
-- Design Name: 
-- Module Name:    aula2_parte5 - Behavioral 
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

entity xorGate is
	port(	A,B : in STD_LOGIC;
			F	 : out STD_LOGIC);
end xorGate;

architecture func of xorGate is
begin
	F <= A xor B;
end func;
--------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Full_Adder is
	port( X, Y, Cin : in STD_LOGIC;
			sum, Cout : out STD_LOGIC);
end Full_Adder;

architecture func of Full_Adder is
begin
	sum <= (X xor Y) xor Cin;
	Cout <= (X and (Y or Cin)) or (Cin and Y);
end func;
-----------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

--
-- addsub == '1' => subtracção
-- addsub == '0' => addição

entity aula2_parte5 is
    Port ( addsub   : in STD_LOGIC;
			  operand0 : in  STD_LOGIC_VECTOR (3 downto 0);
           operand1 : in  STD_LOGIC_VECTOR (3 downto 0);
           overflow : out  STD_LOGIC;
           encodeOut : out  STD_LOGIC_VECTOR (6 downto 0);
           zero : out  STD_LOGIC);
end aula2_parte5;

architecture struct of aula2_parte5 is

	component xorGate is
		port( A, B : in STD_LOGIC;
					F : out STD_LOGIC);
	end component;
	
	component Full_Adder is
		port( X, Y, Cin : in STD_LOGIC;
				sum, Cout : out STD_LOGIC);
	end component;
	
	--interconnecting wires
	signal C1, C2, C3, C4: STD_LOGIC; --intermediate carries
	signal result: STD_LOGIC_VECTOR (3 downto 0);
	signal xor0, xor1, xor2, xor3 : STD_LOGIC; --xor outputs
begin
	GX0: xorGate port map(addsub, operand1(0), xor0);
	GX1: xorGate port map(addsub, operand1(1), xor1);
	GX2: xorGate port map(addsub, operand1(2), xor2);
	GX3: xorGate port map(addsub, operand1(3), xor3);

	FA0: Full_Adder port map(operand0(0), xor0, addsub, result(0), C1); --S0
	FA1: Full_Adder port map(operand0(1), xor1, C1, result(1), C2); --S1
	FA2: Full_Adder port map(operand0(2), xor2, C2, result(2), C3); --S2
	FA3: Full_Adder port map(operand0(3), xor3, C3, result(3), C4); --S3
	
	zeroOut: xorGate port map(C3, C4, zero); --zero
	overflow <= C4; --overflow
	
	with result SELect
	encodeOut <= "1111001" when "0001",   --1
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
end struct;

