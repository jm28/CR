--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:31:05 02/19/2011
-- Design Name:   
-- Module Name:   C:/Users/rafa/aula2_parte3/aula2_parte3tb.vhd
-- Project Name:  aula2_parte3
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: aula2_parte3
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
 
ENTITY aula2_parte3tb IS
END aula2_parte3tb;
 
ARCHITECTURE behavior OF aula2_parte3tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT aula2_parte3
    PORT(
         addsub : IN  std_logic;
         operand0 : IN  std_logic_vector(3 downto 0);
         operand1 : IN  std_logic_vector(3 downto 0);
         overflow : OUT  std_logic;
         result : OUT  std_logic_vector(3 downto 0);
         zero : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal addsub : std_logic := '0';
   signal operand0 : std_logic_vector(3 downto 0) := (others => '0');
   signal operand1 : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal overflow : std_logic;
   signal result : std_logic_vector(3 downto 0);
   signal zero : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
  
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: aula2_parte3 PORT MAP (
          addsub => addsub,
          operand0 => operand0,
          operand1 => operand1,
          overflow => overflow,
          result => result,
          zero => zero
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
			operand0 <= "0101";
		operand1 <= "1010";
		wait for 100 ns;
		
		addsub <= '1';
		operand0 <= "0011";
		operand1 <= "1010";
		wait for 100 ns;
		
		addsub <= '0';
		operand0 <= "0100";
		operand1 <= "0110";
		wait for 100 ns;
		
		addsub <= '1';
		operand0 <= "0011";
		operand1 <= "1011";
		wait for 100 ns;
		
		addsub <= '0';
		operand0 <= "0110";
		operand1 <= "1011";
		wait for 100 ns;

      wait;
   end process;

END;
