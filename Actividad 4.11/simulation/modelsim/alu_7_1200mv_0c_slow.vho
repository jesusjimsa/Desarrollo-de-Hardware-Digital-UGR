-- Copyright (C) 1991-2012 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 12.0 Build 263 08/02/2012 Service Pack 2 SJ Web Edition"

-- DATE "05/14/2019 12:03:26"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ALU IS
    PORT (
	Op_code : IN std_logic_vector(2 DOWNTO 0);
	A_input : IN std_logic_vector(7 DOWNTO 0);
	B_input : IN std_logic_vector(7 DOWNTO 0);
	ALU_output : OUT std_logic_vector(7 DOWNTO 0)
	);
END ALU;

-- Design Ports Information
-- ALU_output[0]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_output[1]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_output[2]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_output[3]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_output[4]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_output[5]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_output[6]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_output[7]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Op_code[2]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Op_code[1]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_input[0]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_input[0]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Op_code[0]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_input[1]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_input[1]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_input[2]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_input[2]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_input[3]	=>  Location: PIN_AC10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_input[3]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_input[4]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_input[4]	=>  Location: PIN_AC4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_input[5]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_input[5]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_input[6]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_input[6]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_input[7]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_input[7]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ALU IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Op_code : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_A_input : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_B_input : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_ALU_output : std_logic_vector(7 DOWNTO 0);
SIGNAL \Add0~36\ : std_logic;
SIGNAL \Add0~39_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~7_combout\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Add0~29_combout\ : std_logic;
SIGNAL \Add0~33_combout\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \B_input[1]~input_o\ : std_logic;
SIGNAL \A_input[1]~input_o\ : std_logic;
SIGNAL \A_input[2]~input_o\ : std_logic;
SIGNAL \A_input[3]~input_o\ : std_logic;
SIGNAL \B_input[5]~input_o\ : std_logic;
SIGNAL \A_input[6]~input_o\ : std_logic;
SIGNAL \A_input[7]~input_o\ : std_logic;
SIGNAL \ALU_output[0]~output_o\ : std_logic;
SIGNAL \ALU_output[1]~output_o\ : std_logic;
SIGNAL \ALU_output[2]~output_o\ : std_logic;
SIGNAL \ALU_output[3]~output_o\ : std_logic;
SIGNAL \ALU_output[4]~output_o\ : std_logic;
SIGNAL \ALU_output[5]~output_o\ : std_logic;
SIGNAL \ALU_output[6]~output_o\ : std_logic;
SIGNAL \ALU_output[7]~output_o\ : std_logic;
SIGNAL \A_input[0]~input_o\ : std_logic;
SIGNAL \Add0~4_cout\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \Op_code[0]~input_o\ : std_logic;
SIGNAL \B_input[0]~input_o\ : std_logic;
SIGNAL \Op_code[2]~input_o\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \ALU_output~0_combout\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Op_code[1]~input_o\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~9_combout\ : std_logic;
SIGNAL \Add0~11_combout\ : std_logic;
SIGNAL \ALU_output~1_combout\ : std_logic;
SIGNAL \B_input[2]~input_o\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~15_combout\ : std_logic;
SIGNAL \Add0~13_combout\ : std_logic;
SIGNAL \Add0~17_combout\ : std_logic;
SIGNAL \ALU_output~2_combout\ : std_logic;
SIGNAL \B_input[3]~input_o\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~19_combout\ : std_logic;
SIGNAL \Add0~16\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \ALU_output~3_combout\ : std_logic;
SIGNAL \A_input[4]~input_o\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~25_combout\ : std_logic;
SIGNAL \B_input[4]~input_o\ : std_logic;
SIGNAL \Add0~23_combout\ : std_logic;
SIGNAL \Add0~27_combout\ : std_logic;
SIGNAL \ALU_output~4_combout\ : std_logic;
SIGNAL \A_input[5]~input_o\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \ALU_output~5_combout\ : std_logic;
SIGNAL \B_input[6]~input_o\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~35_combout\ : std_logic;
SIGNAL \Add0~37_combout\ : std_logic;
SIGNAL \ALU_output~6_combout\ : std_logic;
SIGNAL \B_input[7]~input_o\ : std_logic;
SIGNAL \ALU_output~8_combout\ : std_logic;
SIGNAL \ALU_output~7_combout\ : std_logic;
SIGNAL \ALU_output~9_combout\ : std_logic;

BEGIN

ww_Op_code <= Op_code;
ww_A_input <= A_input;
ww_B_input <= B_input;
ALU_output <= ww_ALU_output;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: LCCOMB_X48_Y3_N26
\Add0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~35_combout\ = (\A_input[6]~input_o\ & ((\Add0~34_combout\ & (\Add0~31\ & VCC)) # (!\Add0~34_combout\ & (!\Add0~31\)))) # (!\A_input[6]~input_o\ & ((\Add0~34_combout\ & (!\Add0~31\)) # (!\Add0~34_combout\ & ((\Add0~31\) # (GND)))))
-- \Add0~36\ = CARRY((\A_input[6]~input_o\ & (!\Add0~34_combout\ & !\Add0~31\)) # (!\A_input[6]~input_o\ & ((!\Add0~31\) # (!\Add0~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A_input[6]~input_o\,
	datab => \Add0~34_combout\,
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~35_combout\,
	cout => \Add0~36\);

-- Location: LCCOMB_X48_Y3_N28
\Add0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~39_combout\ = \Add0~38_combout\ $ (\A_input[7]~input_o\ $ (!\Add0~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~38_combout\,
	datab => \A_input[7]~input_o\,
	cin => \Add0~36\,
	combout => \Add0~39_combout\);

-- Location: LCCOMB_X47_Y3_N0
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = \B_input[0]~input_o\ $ (\Op_code[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_input[0]~input_o\,
	datad => \Op_code[1]~input_o\,
	combout => \Add0~2_combout\);

-- Location: LCCOMB_X48_Y3_N2
\Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~7_combout\ = (\Op_code[2]~input_o\ & ((\A_input[1]~input_o\ & ((\B_input[1]~input_o\) # (\Op_code[1]~input_o\))) # (!\A_input[1]~input_o\ & (\B_input[1]~input_o\ & \Op_code[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_input[1]~input_o\,
	datab => \B_input[1]~input_o\,
	datac => \Op_code[1]~input_o\,
	datad => \Op_code[2]~input_o\,
	combout => \Add0~7_combout\);

-- Location: LCCOMB_X47_Y3_N16
\Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = \B_input[4]~input_o\ $ (\Op_code[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B_input[4]~input_o\,
	datad => \Op_code[1]~input_o\,
	combout => \Add0~24_combout\);

-- Location: LCCOMB_X48_Y3_N10
\Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (\Op_code[2]~input_o\ & ((\B_input[5]~input_o\ & ((\A_input[5]~input_o\) # (\Op_code[1]~input_o\))) # (!\B_input[5]~input_o\ & (\A_input[5]~input_o\ & \Op_code[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_input[5]~input_o\,
	datab => \A_input[5]~input_o\,
	datac => \Op_code[1]~input_o\,
	datad => \Op_code[2]~input_o\,
	combout => \Add0~28_combout\);

-- Location: LCCOMB_X47_Y3_N2
\Add0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~29_combout\ = \B_input[5]~input_o\ $ (\Op_code[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B_input[5]~input_o\,
	datad => \Op_code[1]~input_o\,
	combout => \Add0~29_combout\);

-- Location: LCCOMB_X48_Y3_N6
\Add0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~33_combout\ = (\Op_code[2]~input_o\ & ((\Op_code[1]~input_o\ & ((\B_input[6]~input_o\) # (\A_input[6]~input_o\))) # (!\Op_code[1]~input_o\ & (\B_input[6]~input_o\ & \A_input[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op_code[1]~input_o\,
	datab => \B_input[6]~input_o\,
	datac => \A_input[6]~input_o\,
	datad => \Op_code[2]~input_o\,
	combout => \Add0~33_combout\);

-- Location: LCCOMB_X47_Y3_N14
\Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = \Op_code[1]~input_o\ $ (\B_input[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Op_code[1]~input_o\,
	datac => \B_input[7]~input_o\,
	combout => \Add0~38_combout\);

-- Location: IOIBUF_X42_Y0_N15
\B_input[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B_input(1),
	o => \B_input[1]~input_o\);

-- Location: IOIBUF_X52_Y0_N8
\A_input[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_input(1),
	o => \A_input[1]~input_o\);

-- Location: IOIBUF_X47_Y73_N1
\A_input[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_input(2),
	o => \A_input[2]~input_o\);

-- Location: IOIBUF_X52_Y0_N15
\A_input[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_input(3),
	o => \A_input[3]~input_o\);

-- Location: IOIBUF_X40_Y0_N22
\B_input[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B_input(5),
	o => \B_input[5]~input_o\);

-- Location: IOIBUF_X54_Y0_N22
\A_input[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_input(6),
	o => \A_input[6]~input_o\);

-- Location: IOIBUF_X49_Y0_N15
\A_input[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_input(7),
	o => \A_input[7]~input_o\);

-- Location: IOOBUF_X49_Y0_N23
\ALU_output[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_output~0_combout\,
	devoe => ww_devoe,
	o => \ALU_output[0]~output_o\);

-- Location: IOOBUF_X115_Y4_N16
\ALU_output[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_output~1_combout\,
	devoe => ww_devoe,
	o => \ALU_output[1]~output_o\);

-- Location: IOOBUF_X52_Y0_N2
\ALU_output[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_output~2_combout\,
	devoe => ww_devoe,
	o => \ALU_output[2]~output_o\);

-- Location: IOOBUF_X54_Y0_N16
\ALU_output[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_output~3_combout\,
	devoe => ww_devoe,
	o => \ALU_output[3]~output_o\);

-- Location: IOOBUF_X45_Y0_N23
\ALU_output[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_output~4_combout\,
	devoe => ww_devoe,
	o => \ALU_output[4]~output_o\);

-- Location: IOOBUF_X49_Y0_N9
\ALU_output[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_output~5_combout\,
	devoe => ww_devoe,
	o => \ALU_output[5]~output_o\);

-- Location: IOOBUF_X47_Y0_N9
\ALU_output[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_output~6_combout\,
	devoe => ww_devoe,
	o => \ALU_output[6]~output_o\);

-- Location: IOOBUF_X52_Y0_N23
\ALU_output[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_output~9_combout\,
	devoe => ww_devoe,
	o => \ALU_output[7]~output_o\);

-- Location: IOIBUF_X54_Y0_N8
\A_input[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_input(0),
	o => \A_input[0]~input_o\);

-- Location: LCCOMB_X48_Y3_N12
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_cout\ = CARRY(\Op_code[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op_code[1]~input_o\,
	datad => VCC,
	cout => \Add0~4_cout\);

-- Location: LCCOMB_X48_Y3_N14
\Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~5_combout\ = (\Add0~2_combout\ & ((\A_input[0]~input_o\ & (\Add0~4_cout\ & VCC)) # (!\A_input[0]~input_o\ & (!\Add0~4_cout\)))) # (!\Add0~2_combout\ & ((\A_input[0]~input_o\ & (!\Add0~4_cout\)) # (!\A_input[0]~input_o\ & ((\Add0~4_cout\) # (GND)))))
-- \Add0~6\ = CARRY((\Add0~2_combout\ & (!\A_input[0]~input_o\ & !\Add0~4_cout\)) # (!\Add0~2_combout\ & ((!\Add0~4_cout\) # (!\A_input[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \A_input[0]~input_o\,
	datad => VCC,
	cin => \Add0~4_cout\,
	combout => \Add0~5_combout\,
	cout => \Add0~6\);

-- Location: IOIBUF_X54_Y0_N1
\Op_code[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Op_code(0),
	o => \Op_code[0]~input_o\);

-- Location: IOIBUF_X47_Y73_N15
\B_input[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B_input(0),
	o => \B_input[0]~input_o\);

-- Location: IOIBUF_X60_Y0_N1
\Op_code[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Op_code(2),
	o => \Op_code[2]~input_o\);

-- Location: LCCOMB_X48_Y3_N8
\Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = (\Op_code[2]~input_o\ & ((\Op_code[1]~input_o\ & ((\B_input[0]~input_o\) # (\A_input[0]~input_o\))) # (!\Op_code[1]~input_o\ & (\B_input[0]~input_o\ & \A_input[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op_code[1]~input_o\,
	datab => \B_input[0]~input_o\,
	datac => \A_input[0]~input_o\,
	datad => \Op_code[2]~input_o\,
	combout => \Add0~1_combout\);

-- Location: LCCOMB_X49_Y3_N24
\ALU_output~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_output~0_combout\ = (!\Op_code[0]~input_o\ & ((\Add0~1_combout\) # ((\Add0~5_combout\ & !\Op_code[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~5_combout\,
	datab => \Op_code[0]~input_o\,
	datac => \Add0~1_combout\,
	datad => \Op_code[2]~input_o\,
	combout => \ALU_output~0_combout\);

-- Location: LCCOMB_X49_Y3_N20
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (\Add0~5_combout\ & !\Op_code[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~5_combout\,
	datad => \Op_code[2]~input_o\,
	combout => \Add0~12_combout\);

-- Location: IOIBUF_X49_Y0_N1
\Op_code[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Op_code(1),
	o => \Op_code[1]~input_o\);

-- Location: LCCOMB_X47_Y3_N10
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = \B_input[1]~input_o\ $ (\Op_code[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_input[1]~input_o\,
	datad => \Op_code[1]~input_o\,
	combout => \Add0~8_combout\);

-- Location: LCCOMB_X48_Y3_N16
\Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~9_combout\ = ((\A_input[1]~input_o\ $ (\Add0~8_combout\ $ (!\Add0~6\)))) # (GND)
-- \Add0~10\ = CARRY((\A_input[1]~input_o\ & ((\Add0~8_combout\) # (!\Add0~6\))) # (!\A_input[1]~input_o\ & (\Add0~8_combout\ & !\Add0~6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A_input[1]~input_o\,
	datab => \Add0~8_combout\,
	datad => VCC,
	cin => \Add0~6\,
	combout => \Add0~9_combout\,
	cout => \Add0~10\);

-- Location: LCCOMB_X49_Y3_N2
\Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~11_combout\ = (\Add0~7_combout\) # ((\Add0~9_combout\ & !\Op_code[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~7_combout\,
	datac => \Add0~9_combout\,
	datad => \Op_code[2]~input_o\,
	combout => \Add0~11_combout\);

-- Location: LCCOMB_X49_Y3_N22
\ALU_output~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_output~1_combout\ = (\Op_code[0]~input_o\ & ((\Add0~1_combout\) # ((\Add0~12_combout\)))) # (!\Op_code[0]~input_o\ & (((\Add0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~1_combout\,
	datab => \Add0~12_combout\,
	datac => \Add0~11_combout\,
	datad => \Op_code[0]~input_o\,
	combout => \ALU_output~1_combout\);

-- Location: IOIBUF_X45_Y0_N15
\B_input[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B_input(2),
	o => \B_input[2]~input_o\);

-- Location: LCCOMB_X47_Y3_N4
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = \B_input[2]~input_o\ $ (\Op_code[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B_input[2]~input_o\,
	datad => \Op_code[1]~input_o\,
	combout => \Add0~14_combout\);

-- Location: LCCOMB_X48_Y3_N18
\Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~15_combout\ = (\A_input[2]~input_o\ & ((\Add0~14_combout\ & (\Add0~10\ & VCC)) # (!\Add0~14_combout\ & (!\Add0~10\)))) # (!\A_input[2]~input_o\ & ((\Add0~14_combout\ & (!\Add0~10\)) # (!\Add0~14_combout\ & ((\Add0~10\) # (GND)))))
-- \Add0~16\ = CARRY((\A_input[2]~input_o\ & (!\Add0~14_combout\ & !\Add0~10\)) # (!\A_input[2]~input_o\ & ((!\Add0~10\) # (!\Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A_input[2]~input_o\,
	datab => \Add0~14_combout\,
	datad => VCC,
	cin => \Add0~10\,
	combout => \Add0~15_combout\,
	cout => \Add0~16\);

-- Location: LCCOMB_X48_Y3_N4
\Add0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~13_combout\ = (\Op_code[2]~input_o\ & ((\A_input[2]~input_o\ & ((\B_input[2]~input_o\) # (\Op_code[1]~input_o\))) # (!\A_input[2]~input_o\ & (\B_input[2]~input_o\ & \Op_code[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_input[2]~input_o\,
	datab => \B_input[2]~input_o\,
	datac => \Op_code[1]~input_o\,
	datad => \Op_code[2]~input_o\,
	combout => \Add0~13_combout\);

-- Location: LCCOMB_X49_Y3_N0
\Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~17_combout\ = (\Add0~13_combout\) # ((\Add0~15_combout\ & !\Op_code[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~15_combout\,
	datac => \Add0~13_combout\,
	datad => \Op_code[2]~input_o\,
	combout => \Add0~17_combout\);

-- Location: LCCOMB_X49_Y3_N10
\ALU_output~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_output~2_combout\ = (\Op_code[0]~input_o\ & ((\Add0~11_combout\))) # (!\Op_code[0]~input_o\ & (\Add0~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~17_combout\,
	datac => \Add0~11_combout\,
	datad => \Op_code[0]~input_o\,
	combout => \ALU_output~2_combout\);

-- Location: IOIBUF_X38_Y0_N1
\B_input[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B_input(3),
	o => \B_input[3]~input_o\);

-- Location: LCCOMB_X48_Y3_N30
\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (\Op_code[2]~input_o\ & ((\A_input[3]~input_o\ & ((\B_input[3]~input_o\) # (\Op_code[1]~input_o\))) # (!\A_input[3]~input_o\ & (\B_input[3]~input_o\ & \Op_code[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_input[3]~input_o\,
	datab => \B_input[3]~input_o\,
	datac => \Op_code[1]~input_o\,
	datad => \Op_code[2]~input_o\,
	combout => \Add0~18_combout\);

-- Location: LCCOMB_X47_Y3_N6
\Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~19_combout\ = \B_input[3]~input_o\ $ (\Op_code[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_input[3]~input_o\,
	datad => \Op_code[1]~input_o\,
	combout => \Add0~19_combout\);

-- Location: LCCOMB_X48_Y3_N20
\Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = ((\A_input[3]~input_o\ $ (\Add0~19_combout\ $ (!\Add0~16\)))) # (GND)
-- \Add0~21\ = CARRY((\A_input[3]~input_o\ & ((\Add0~19_combout\) # (!\Add0~16\))) # (!\A_input[3]~input_o\ & (\Add0~19_combout\ & !\Add0~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A_input[3]~input_o\,
	datab => \Add0~19_combout\,
	datad => VCC,
	cin => \Add0~16\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X49_Y3_N4
\Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (\Add0~18_combout\) # ((\Add0~20_combout\ & !\Op_code[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~18_combout\,
	datac => \Add0~20_combout\,
	datad => \Op_code[2]~input_o\,
	combout => \Add0~22_combout\);

-- Location: LCCOMB_X49_Y3_N30
\ALU_output~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_output~3_combout\ = (\Op_code[0]~input_o\ & (\Add0~17_combout\)) # (!\Op_code[0]~input_o\ & ((\Add0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~17_combout\,
	datac => \Add0~22_combout\,
	datad => \Op_code[0]~input_o\,
	combout => \ALU_output~3_combout\);

-- Location: IOIBUF_X0_Y4_N1
\A_input[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_input(4),
	o => \A_input[4]~input_o\);

-- Location: LCCOMB_X48_Y3_N22
\Add0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~25_combout\ = (\Add0~24_combout\ & ((\A_input[4]~input_o\ & (\Add0~21\ & VCC)) # (!\A_input[4]~input_o\ & (!\Add0~21\)))) # (!\Add0~24_combout\ & ((\A_input[4]~input_o\ & (!\Add0~21\)) # (!\A_input[4]~input_o\ & ((\Add0~21\) # (GND)))))
-- \Add0~26\ = CARRY((\Add0~24_combout\ & (!\A_input[4]~input_o\ & !\Add0~21\)) # (!\Add0~24_combout\ & ((!\Add0~21\) # (!\A_input[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~24_combout\,
	datab => \A_input[4]~input_o\,
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~25_combout\,
	cout => \Add0~26\);

-- Location: IOIBUF_X47_Y0_N1
\B_input[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B_input(4),
	o => \B_input[4]~input_o\);

-- Location: LCCOMB_X48_Y3_N0
\Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~23_combout\ = (\Op_code[2]~input_o\ & ((\A_input[4]~input_o\ & ((\B_input[4]~input_o\) # (\Op_code[1]~input_o\))) # (!\A_input[4]~input_o\ & (\B_input[4]~input_o\ & \Op_code[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_input[4]~input_o\,
	datab => \B_input[4]~input_o\,
	datac => \Op_code[1]~input_o\,
	datad => \Op_code[2]~input_o\,
	combout => \Add0~23_combout\);

-- Location: LCCOMB_X49_Y3_N16
\Add0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~27_combout\ = (\Add0~23_combout\) # ((\Add0~25_combout\ & !\Op_code[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~25_combout\,
	datac => \Add0~23_combout\,
	datad => \Op_code[2]~input_o\,
	combout => \Add0~27_combout\);

-- Location: LCCOMB_X49_Y3_N18
\ALU_output~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_output~4_combout\ = (\Op_code[0]~input_o\ & ((\Add0~22_combout\))) # (!\Op_code[0]~input_o\ & (\Add0~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~27_combout\,
	datac => \Add0~22_combout\,
	datad => \Op_code[0]~input_o\,
	combout => \ALU_output~4_combout\);

-- Location: IOIBUF_X56_Y0_N8
\A_input[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_input(5),
	o => \A_input[5]~input_o\);

-- Location: LCCOMB_X48_Y3_N24
\Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = ((\Add0~29_combout\ $ (\A_input[5]~input_o\ $ (!\Add0~26\)))) # (GND)
-- \Add0~31\ = CARRY((\Add0~29_combout\ & ((\A_input[5]~input_o\) # (!\Add0~26\))) # (!\Add0~29_combout\ & (\A_input[5]~input_o\ & !\Add0~26\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~29_combout\,
	datab => \A_input[5]~input_o\,
	datad => VCC,
	cin => \Add0~26\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X49_Y3_N28
\Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (\Add0~28_combout\) # ((\Add0~30_combout\ & !\Op_code[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~28_combout\,
	datab => \Add0~30_combout\,
	datad => \Op_code[2]~input_o\,
	combout => \Add0~32_combout\);

-- Location: LCCOMB_X49_Y3_N14
\ALU_output~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_output~5_combout\ = (\Op_code[0]~input_o\ & (\Add0~27_combout\)) # (!\Op_code[0]~input_o\ & ((\Add0~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~27_combout\,
	datac => \Add0~32_combout\,
	datad => \Op_code[0]~input_o\,
	combout => \ALU_output~5_combout\);

-- Location: IOIBUF_X42_Y0_N22
\B_input[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B_input(6),
	o => \B_input[6]~input_o\);

-- Location: LCCOMB_X47_Y3_N12
\Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = \B_input[6]~input_o\ $ (\Op_code[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B_input[6]~input_o\,
	datad => \Op_code[1]~input_o\,
	combout => \Add0~34_combout\);

-- Location: LCCOMB_X50_Y3_N8
\Add0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~37_combout\ = (\Add0~33_combout\) # ((\Add0~35_combout\ & !\Op_code[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~33_combout\,
	datac => \Add0~35_combout\,
	datad => \Op_code[2]~input_o\,
	combout => \Add0~37_combout\);

-- Location: LCCOMB_X49_Y3_N8
\ALU_output~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_output~6_combout\ = (\Op_code[0]~input_o\ & (\Add0~32_combout\)) # (!\Op_code[0]~input_o\ & ((\Add0~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~32_combout\,
	datac => \Add0~37_combout\,
	datad => \Op_code[0]~input_o\,
	combout => \ALU_output~6_combout\);

-- Location: IOIBUF_X56_Y0_N1
\B_input[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B_input(7),
	o => \B_input[7]~input_o\);

-- Location: LCCOMB_X49_Y3_N12
\ALU_output~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_output~8_combout\ = (!\Op_code[0]~input_o\ & ((\A_input[7]~input_o\ & ((\Op_code[1]~input_o\) # (\B_input[7]~input_o\))) # (!\A_input[7]~input_o\ & (\Op_code[1]~input_o\ & \B_input[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_input[7]~input_o\,
	datab => \Op_code[0]~input_o\,
	datac => \Op_code[1]~input_o\,
	datad => \B_input[7]~input_o\,
	combout => \ALU_output~8_combout\);

-- Location: LCCOMB_X49_Y3_N26
\ALU_output~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_output~7_combout\ = (\Op_code[0]~input_o\ & (((\Add0~37_combout\)))) # (!\Op_code[0]~input_o\ & (\Add0~39_combout\ & ((!\Op_code[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~39_combout\,
	datab => \Op_code[0]~input_o\,
	datac => \Add0~37_combout\,
	datad => \Op_code[2]~input_o\,
	combout => \ALU_output~7_combout\);

-- Location: LCCOMB_X49_Y3_N6
\ALU_output~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_output~9_combout\ = (\ALU_output~7_combout\) # ((\ALU_output~8_combout\ & \Op_code[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_output~8_combout\,
	datac => \ALU_output~7_combout\,
	datad => \Op_code[2]~input_o\,
	combout => \ALU_output~9_combout\);

ww_ALU_output(0) <= \ALU_output[0]~output_o\;

ww_ALU_output(1) <= \ALU_output[1]~output_o\;

ww_ALU_output(2) <= \ALU_output[2]~output_o\;

ww_ALU_output(3) <= \ALU_output[3]~output_o\;

ww_ALU_output(4) <= \ALU_output[4]~output_o\;

ww_ALU_output(5) <= \ALU_output[5]~output_o\;

ww_ALU_output(6) <= \ALU_output[6]~output_o\;

ww_ALU_output(7) <= \ALU_output[7]~output_o\;
END structure;


