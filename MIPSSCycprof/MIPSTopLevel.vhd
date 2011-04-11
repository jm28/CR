--------------------------------------------------------------------------------
--
--	Filename		: MIPSTopLevel.vhd
--	Description		: MIPS Single Cycle Implementation Top Level File
--	Author			: Arnaldo Oliveira	(arnaldo.oliveira@ua.pt)
--	Copyright		: Arnaldo Oliveira - University of Aveiro (C) 2008
--
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

library WORK;
use WORK.MIPSPack.all;

entity MIPSTopLevel is
	port(reset			: in  std_logic;
		 clk			: in  std_logic;
		 error			: out std_logic);
end MIPSTopLevel;

architecture RTL of MIPSTopLevel is

	signal s_clk								: std_logic;

	signal s_aluSrc, s_regWrite, s_regDst		: std_logic;
	signal s_branch, s_aluZero, s_branchTaken	: std_logic;
	signal s_carryWrite, s_aluCarry, s_dspCarry	: std_logic;
	signal s_aluCtrl							: std_logic_vector (2 downto 0);
	signal s_dstRegIndex						: std_logic_vector (4 downto 0);

	signal s_pcCurrent, s_pcNext, s_pcPlus4		: std_logic_vector (31 downto 0);
	signal s_instruction, s_immediate			: std_logic_vector (31 downto 0);
	signal s_regSData, s_regTData				: std_logic_vector (31 downto 0);
	signal s_aluOperand1, s_aluResult			: std_logic_vector (31 downto 0);
	signal s_bAddrOffset, s_bTargetAddr			: std_logic_vector (31 downto 0);

begin
	s_clk	 <= clk;

	pc : entity WORK.RegN(RTL)
		generic map(size		=> 32,
					resetValue	=> RESET_PC)
		port map(asyncReset		=> '0',
				 clk			=> s_clk,
				 clkEnable		=> '1',
				 syncReset		=> reset,
				 dataIn			=> s_pcNext,
				 dataOut		=> s_pcCurrent);

	pc4_adder : entity WORK.AdderN(RTL)
		generic map(size		=> 32)
		port map(carryIn		=> '0',
				 operand0		=> s_pcCurrent,
				 operand1		=> X"00000004",
				 result			=> s_pcPlus4,
				 carryOut		=> open);

	inst_memory : entity WORK.ROM_AR(RTL)
		generic map(addrBusSize	=> 6,
					dataBusSize	=> 32)
		port map(address		=> s_pcCurrent(7 downto 2),
				 data			=> s_instruction);

	ctrl_unit : entity WORK.ControlUnit(RTL)
		port map(opcode			=> s_instruction(31 downto 26),
				 shamt			=> s_instruction(10 downto 6),
				 funct			=> s_instruction(5 downto 0),
				 aluCtrl		=> s_aluCtrl,
				 aluSrc			=> s_aluSrc,
				 regWrite		=> s_regWrite,
				 regDst			=> s_regDst,
				 branch			=> s_branch,
				 carryWrite		=> s_carryWrite,
				 rsvdInst		=> error);

	rt_rd_mux : entity WORK.Mux2N(RTL)
		generic map(size		=> 5)
		port map(selection		=> s_regDst,
				 dataIn0		=> s_instruction(20 downto 16),
				 dataIn1		=> s_instruction(15 downto 11),
				 dataOut		=> s_dstRegIndex);

	reg_bank : entity WORK.RegBank32_32(RTL)
		port map(writeClk		=> s_clk,
				 writeEnable	=> s_regWrite,
				 writeRegIndex	=> s_dstRegIndex,
				 writeData		=> s_aluResult,
				 readRegIndex0	=> s_instruction(25 downto 21),
				 readRegIndex1	=> s_instruction(20 downto 16),
				 readData0		=> s_regSData,
				 readData1		=> s_regTData);

	sign_ext : entity WORK.SignExt(RTL)
		port map(dataIn			=> s_instruction(15 downto 0),
				 dataOut		=> s_immediate);

	alu_in_mux : entity WORK.Mux2N(RTL)
		generic map(size		=> 32)
		port map(selection		=> s_aluSrc,
				 dataIn0		=> s_regTData,
				 dataIn1		=> s_immediate,
				 dataOut		=> s_aluOperand1);

	alu : entity WORK.ALU32(RTL)
		port map(ctrl			=> s_aluCtrl,
				 carryIn		=> s_dspCarry,
				 operand0		=> s_regSData,
				 operand1		=> s_aluOperand1,
				 result			=> s_aluResult,
				 zero			=> s_aluZero,
				 carryOut		=> s_aluCarry);
	
	dsp_carry_proc : process(s_clk)
	begin
		if (rising_edge(s_clk)) then
			if (s_carryWrite = '1') then
				s_dspCarry <= s_aluCarry;
			end if;
		end if;
	end process;
	
	branch_shifter : entity WORK.LeftShifter2(RTL)
		port map(dataIn			=> s_immediate,
				 dataOut		=> s_bAddrOffset);

	b_t_a_adder : entity WORK.AdderN(RTL)
		generic map(size		=> 32)
		port map(carryIn		=> '0',
				 operand0		=> s_pcPlus4,
				 operand1		=> s_bAddrOffset,
				 result			=> s_bTargetAddr,
				 carryOut		=> open);

	branch_gate : entity WORK.AndGate2(RTL)
		port map(input0			=> s_branch,
				 input1			=> s_aluZero,
				 output			=> s_branchTaken);

	branch_mux : entity WORK.Mux2N(RTL)
		generic map(size		=> 32)
		port map(selection		=> s_branchTaken,
				 dataIn0		=> s_pcPlus4,
				 dataIn1		=> s_bTargetAddr,
				 dataOut		=> s_pcNext);
end RTL;
