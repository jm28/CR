--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:35:31 02/19/2011
-- Design Name:   
-- Module Name:   C:/Users/rafa/aula2_parte2/aula2_parte2tb.vhd
-- Project Name:  aula2_parte2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: aula2_parte2
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY aula2_parte2tb IS
END aula2_parte2tb;
 
ARCHITECTURE behavior OF aula2_parte2tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT aula2_parte2
    PORT(
         decodeIn : IN  std_logic_vector(3 downto 0);
         encodeOut : OUT  std_logic_vector(1 downto 0);
         validOut : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal decodeIn : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal encodeOut : std_logic_vector(1 downto 0);
   signal validOut : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: aula2_parte2 PORT MAP (
          decodeIn => decodeIn,
          encodeOut => encodeOut,
          validOut => validOut
        );

   -- Stimulus process
   stim_proc: process
   begin		
			-- hold reset state for 100 ns.
			wait for 100 ns;	
			
			decodeIn <= "0000";
			wait for 100 ns;
			
			decodeIn <= "0010";
			wait for 100 ns;
			
			decodeIn <= "0100";
			wait for 100 ns;
			
			decodeIn <= "1000";
			wait for 100 ns;
			
      wait;
   end process;

END;
