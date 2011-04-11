----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:00:23 03/14/2011 
-- Design Name: 
-- Module Name:    aula4_parte2 - Behavioral 
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

entity aula4_parte2 is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           start : in  STD_LOGIC;
           isParBit : in  STD_LOGIC;
           inputBit : in  STD_LOGIC;
           parError : out  STD_LOGIC);
end aula4_parte2;

architecture Behavioral of aula4_parte2 is

	component ClkDivider50M is
		port( reset  : in std_logic;
			   clkIn  : in std_logic;
			   clkOut : out std_logic);
	end component;


	type TState is ( ST_EVEN, 
						  ST_ODD,
						  ST_IDLE,
						  ST_PARITY
						 );
	signal s_currentState : TState;
	signal s_nextState    : TState;
	signal s_clk1Hz 		 : std_logic;

begin
	
		clk_div_inst : ClkDivider50M
	port map(
					reset => reset,
					clkIn => clk,
					clkOut => s_clk1Hz
				);
	
	state_register : process(reset, s_clk1Hz)
	
	begin 
		if (reset = '1') then
			s_currentState <= ST_IDLE;
		elsif (rising_edge(s_clk1Hz)) then
			s_currentState <= s_nextState;
		end if;
	end process;

	next_st_logic : process(s_currentState, start,
									inputBit, isParBit)
	begin 
		parError <= '0';
		case (s_currentState) is
			when ST_EVEN =>
				if (isParBit = '0') then
					if (inputBit = '0') then
						s_nextState <= ST_EVEN;
					else
						s_nextState <= ST_ODD;
					end if;
				else
					parError <= inputBit;
					s_nextState <= ST_PARITY;
				end if;
			when ST_ODD =>
				if (isParBit = '0') then
					if (inputBit = '0') then
						s_nextState <= ST_ODD;
					else
						s_nextState <= ST_EVEN;
					end if;
				else
					parError <= not inputBit;
					s_nextState <= ST_PARITY;
				end if;
			when ST_IDLE =>
				if (start = '1') then
					if (inputBit = '0') then
						s_nextState <= ST_EVEN;
					else
						s_nextState <= ST_ODD;
					end if;
				else 
					s_nextState <= ST_IDLE;
				end if;
			when ST_PARITY =>
				s_nextState <= ST_IDLE;
				end case;
		end process;
end Behavioral;

