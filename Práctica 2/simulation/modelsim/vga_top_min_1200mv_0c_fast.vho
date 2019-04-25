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

-- DATE "04/23/2019 17:03:12"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	vga_top IS
    PORT (
	CLOCK_50 : IN std_logic;
	VGA_R : OUT std_logic_vector(0 TO 7);
	VGA_G : OUT std_logic_vector(0 TO 7);
	VGA_B : OUT std_logic_vector(0 TO 7);
	VGA_BLANK_N : OUT std_logic;
	VGA_HS : OUT std_logic;
	VGA_VS : OUT std_logic;
	VGA_CLK : OUT std_logic
	);
END vga_top;

-- Design Ports Information
-- VGA_R[7]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[6]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[5]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[4]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[3]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[2]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[1]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[0]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[7]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[6]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[5]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[4]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[3]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[2]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[1]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[0]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[7]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[6]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[5]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[4]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[3]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[2]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[1]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[0]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_BLANK_N	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_HS	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_VS	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_CLK	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF vga_top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_VGA_R : std_logic_vector(0 TO 7);
SIGNAL ww_VGA_G : std_logic_vector(0 TO 7);
SIGNAL ww_VGA_B : std_logic_vector(0 TO 7);
SIGNAL ww_VGA_BLANK_N : std_logic;
SIGNAL ww_VGA_HS : std_logic;
SIGNAL ww_VGA_VS : std_logic;
SIGNAL ww_VGA_CLK : std_logic;
SIGNAL \PLL|altpll_component|pll_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \PLL|altpll_component|pll_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \PLL|altpll_component|_clk0~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \PLL|altpll_component|pll~CLK1\ : std_logic;
SIGNAL \PLL|altpll_component|pll~CLK2\ : std_logic;
SIGNAL \PLL|altpll_component|pll~CLK3\ : std_logic;
SIGNAL \PLL|altpll_component|pll~CLK4\ : std_logic;
SIGNAL \VGA|Add1~6_combout\ : std_logic;
SIGNAL \VGA|Add0~6_combout\ : std_logic;
SIGNAL \VGA|Add0~8_combout\ : std_logic;
SIGNAL \VGA|Equal2~1_combout\ : std_logic;
SIGNAL \VGA|process_0~5_combout\ : std_logic;
SIGNAL \VGA|process_0~6_combout\ : std_logic;
SIGNAL \VGA|process_0~7_combout\ : std_logic;
SIGNAL \VGA|process_0~8_combout\ : std_logic;
SIGNAL \VGA|process_0~9_combout\ : std_logic;
SIGNAL \VGA|Equal0~0_combout\ : std_logic;
SIGNAL \VGA|cont_vs[3]~7_combout\ : std_logic;
SIGNAL \VGA|pixel_y[6]~feeder_combout\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \PLL|altpll_component|pll~FBOUT\ : std_logic;
SIGNAL \PLL|altpll_component|_clk0\ : std_logic;
SIGNAL \PLL|altpll_component|_clk0~clkctrl_outclk\ : std_logic;
SIGNAL \VGA|Add0~1\ : std_logic;
SIGNAL \VGA|Add0~2_combout\ : std_logic;
SIGNAL \VGA|Add0~3\ : std_logic;
SIGNAL \VGA|Add0~4_combout\ : std_logic;
SIGNAL \VGA|Add0~0_combout\ : std_logic;
SIGNAL \VGA|Equal0~1_combout\ : std_logic;
SIGNAL \VGA|Add0~5\ : std_logic;
SIGNAL \VGA|Add0~7\ : std_logic;
SIGNAL \VGA|Add0~9\ : std_logic;
SIGNAL \VGA|Add0~10_combout\ : std_logic;
SIGNAL \VGA|Add0~11\ : std_logic;
SIGNAL \VGA|Add0~13\ : std_logic;
SIGNAL \VGA|Add0~14_combout\ : std_logic;
SIGNAL \VGA|Add0~15\ : std_logic;
SIGNAL \VGA|Add0~17\ : std_logic;
SIGNAL \VGA|Add0~18_combout\ : std_logic;
SIGNAL \VGA|cont_hs~0_combout\ : std_logic;
SIGNAL \VGA|Equal0~2_combout\ : std_logic;
SIGNAL \VGA|cont_hs~3_combout\ : std_logic;
SIGNAL \VGA|Equal2~0_combout\ : std_logic;
SIGNAL \VGA|Add0~16_combout\ : std_logic;
SIGNAL \VGA|cont_hs~1_combout\ : std_logic;
SIGNAL \VGA|Equal2~2_combout\ : std_logic;
SIGNAL \VGA|Add1~0_combout\ : std_logic;
SIGNAL \VGA|cont_vs[0]~9_combout\ : std_logic;
SIGNAL \VGA|Add1~1\ : std_logic;
SIGNAL \VGA|Add1~3\ : std_logic;
SIGNAL \VGA|Add1~4_combout\ : std_logic;
SIGNAL \VGA|cont_vs[2]~6_combout\ : std_logic;
SIGNAL \VGA|Add1~5\ : std_logic;
SIGNAL \VGA|Add1~7\ : std_logic;
SIGNAL \VGA|Add1~8_combout\ : std_logic;
SIGNAL \VGA|cont_vs[4]~5_combout\ : std_logic;
SIGNAL \VGA|Add1~9\ : std_logic;
SIGNAL \VGA|Add1~10_combout\ : std_logic;
SIGNAL \VGA|cont_vs[5]~1_combout\ : std_logic;
SIGNAL \VGA|Add1~11\ : std_logic;
SIGNAL \VGA|Add1~13\ : std_logic;
SIGNAL \VGA|Add1~14_combout\ : std_logic;
SIGNAL \VGA|cont_vs[7]~3_combout\ : std_logic;
SIGNAL \VGA|Add1~12_combout\ : std_logic;
SIGNAL \VGA|cont_vs[6]~2_combout\ : std_logic;
SIGNAL \VGA|Add1~15\ : std_logic;
SIGNAL \VGA|Add1~16_combout\ : std_logic;
SIGNAL \VGA|cont_vs[8]~4_combout\ : std_logic;
SIGNAL \VGA|LessThan6~0_combout\ : std_logic;
SIGNAL \VGA|Add1~17\ : std_logic;
SIGNAL \VGA|Add1~18_combout\ : std_logic;
SIGNAL \VGA|cont_vs[9]~0_combout\ : std_logic;
SIGNAL \VGA|LessThan6~1_combout\ : std_logic;
SIGNAL \VGA|vga_r~0_combout\ : std_logic;
SIGNAL \VGA|vga_r~q\ : std_logic;
SIGNAL \VGA|process_0~0_combout\ : std_logic;
SIGNAL \VGA|video_on~q\ : std_logic;
SIGNAL \VGA|vga_g~0_combout\ : std_logic;
SIGNAL \VGA|vga_g~q\ : std_logic;
SIGNAL \VGA|vga_b~0_combout\ : std_logic;
SIGNAL \VGA|vga_b~q\ : std_logic;
SIGNAL \VGA|vga_blank_N~feeder_combout\ : std_logic;
SIGNAL \VGA|vga_blank_N~q\ : std_logic;
SIGNAL \VGA|Add0~12_combout\ : std_logic;
SIGNAL \VGA|cont_hs~2_combout\ : std_logic;
SIGNAL \VGA|process_0~1_combout\ : std_logic;
SIGNAL \VGA|process_0~2_combout\ : std_logic;
SIGNAL \VGA|hs~q\ : std_logic;
SIGNAL \VGA|vga_hs~q\ : std_logic;
SIGNAL \VGA|Add1~2_combout\ : std_logic;
SIGNAL \VGA|cont_vs[1]~8_combout\ : std_logic;
SIGNAL \VGA|process_0~3_combout\ : std_logic;
SIGNAL \VGA|process_0~4_combout\ : std_logic;
SIGNAL \VGA|vs~q\ : std_logic;
SIGNAL \VGA|vga_vs~feeder_combout\ : std_logic;
SIGNAL \VGA|vga_vs~q\ : std_logic;
SIGNAL \VGA|pixel_y\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \VGA|cont_vs\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \VGA|cont_hs\ : std_logic_vector(9 DOWNTO 0);

BEGIN

ww_CLOCK_50 <= CLOCK_50;
VGA_R <= ww_VGA_R;
VGA_G <= ww_VGA_G;
VGA_B <= ww_VGA_B;
VGA_BLANK_N <= ww_VGA_BLANK_N;
VGA_HS <= ww_VGA_HS;
VGA_VS <= ww_VGA_VS;
VGA_CLK <= ww_VGA_CLK;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\PLL|altpll_component|pll_INCLK_bus\ <= (gnd & \CLOCK_50~input_o\);

\PLL|altpll_component|_clk0\ <= \PLL|altpll_component|pll_CLK_bus\(0);
\PLL|altpll_component|pll~CLK1\ <= \PLL|altpll_component|pll_CLK_bus\(1);
\PLL|altpll_component|pll~CLK2\ <= \PLL|altpll_component|pll_CLK_bus\(2);
\PLL|altpll_component|pll~CLK3\ <= \PLL|altpll_component|pll_CLK_bus\(3);
\PLL|altpll_component|pll~CLK4\ <= \PLL|altpll_component|pll_CLK_bus\(4);

\PLL|altpll_component|_clk0~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \PLL|altpll_component|_clk0\);

-- Location: LCCOMB_X25_Y72_N16
\VGA|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|Add1~6_combout\ = (\VGA|cont_vs\(3) & (!\VGA|Add1~5\)) # (!\VGA|cont_vs\(3) & ((\VGA|Add1~5\) # (GND)))
-- \VGA|Add1~7\ = CARRY((!\VGA|Add1~5\) # (!\VGA|cont_vs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|cont_vs\(3),
	datad => VCC,
	cin => \VGA|Add1~5\,
	combout => \VGA|Add1~6_combout\,
	cout => \VGA|Add1~7\);

-- Location: LCCOMB_X27_Y72_N12
\VGA|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|Add0~6_combout\ = (\VGA|cont_hs\(3) & (!\VGA|Add0~5\)) # (!\VGA|cont_hs\(3) & ((\VGA|Add0~5\) # (GND)))
-- \VGA|Add0~7\ = CARRY((!\VGA|Add0~5\) # (!\VGA|cont_hs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|cont_hs\(3),
	datad => VCC,
	cin => \VGA|Add0~5\,
	combout => \VGA|Add0~6_combout\,
	cout => \VGA|Add0~7\);

-- Location: LCCOMB_X27_Y72_N14
\VGA|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|Add0~8_combout\ = (\VGA|cont_hs\(4) & (\VGA|Add0~7\ $ (GND))) # (!\VGA|cont_hs\(4) & (!\VGA|Add0~7\ & VCC))
-- \VGA|Add0~9\ = CARRY((\VGA|cont_hs\(4) & !\VGA|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA|cont_hs\(4),
	datad => VCC,
	cin => \VGA|Add0~7\,
	combout => \VGA|Add0~8_combout\,
	cout => \VGA|Add0~9\);

-- Location: FF_X24_Y72_N13
\VGA|pixel_y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	d => \VGA|pixel_y[6]~feeder_combout\,
	ena => \VGA|LessThan6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|pixel_y\(6));

-- Location: FF_X26_Y72_N3
\VGA|cont_vs[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	d => \VGA|cont_vs[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|cont_vs\(3));

-- Location: FF_X27_Y72_N13
\VGA|cont_hs[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	d => \VGA|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|cont_hs\(3));

-- Location: LCCOMB_X26_Y72_N10
\VGA|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|Equal2~1_combout\ = ((\VGA|cont_hs\(3)) # ((\VGA|cont_hs\(2)) # (\VGA|cont_hs\(6)))) # (!\VGA|cont_hs\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|cont_hs\(7),
	datab => \VGA|cont_hs\(3),
	datac => \VGA|cont_hs\(2),
	datad => \VGA|cont_hs\(6),
	combout => \VGA|Equal2~1_combout\);

-- Location: LCCOMB_X26_Y72_N30
\VGA|process_0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|process_0~5_combout\ = (!\VGA|cont_vs\(4) & (!\VGA|cont_vs\(0) & (!\VGA|cont_vs\(1) & \VGA|cont_vs\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|cont_vs\(4),
	datab => \VGA|cont_vs\(0),
	datac => \VGA|cont_vs\(1),
	datad => \VGA|cont_vs\(3),
	combout => \VGA|process_0~5_combout\);

-- Location: LCCOMB_X26_Y72_N8
\VGA|process_0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|process_0~6_combout\ = (!\VGA|cont_vs\(6) & (!\VGA|cont_vs\(7) & (!\VGA|cont_vs\(5) & \VGA|cont_vs\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|cont_vs\(6),
	datab => \VGA|cont_vs\(7),
	datac => \VGA|cont_vs\(5),
	datad => \VGA|cont_vs\(2),
	combout => \VGA|process_0~6_combout\);

-- Location: LCCOMB_X26_Y72_N18
\VGA|process_0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|process_0~7_combout\ = (\VGA|cont_hs\(7) & ((\VGA|cont_hs\(6)) # ((\VGA|cont_hs\(4) & \VGA|cont_hs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|cont_hs\(7),
	datab => \VGA|cont_hs\(6),
	datac => \VGA|cont_hs\(4),
	datad => \VGA|cont_hs\(5),
	combout => \VGA|process_0~7_combout\);

-- Location: LCCOMB_X26_Y72_N20
\VGA|process_0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|process_0~8_combout\ = (\VGA|process_0~5_combout\ & (\VGA|process_0~6_combout\ & ((\VGA|process_0~7_combout\) # (\VGA|cont_hs\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|process_0~5_combout\,
	datab => \VGA|process_0~7_combout\,
	datac => \VGA|process_0~6_combout\,
	datad => \VGA|cont_hs\(8),
	combout => \VGA|process_0~8_combout\);

-- Location: LCCOMB_X26_Y72_N6
\VGA|process_0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|process_0~9_combout\ = (!\VGA|cont_vs\(8) & (\VGA|cont_vs\(9) & (\VGA|cont_hs\(9) & \VGA|process_0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|cont_vs\(8),
	datab => \VGA|cont_vs\(9),
	datac => \VGA|cont_hs\(9),
	datad => \VGA|process_0~8_combout\,
	combout => \VGA|process_0~9_combout\);

-- Location: LCCOMB_X27_Y72_N2
\VGA|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|Equal0~0_combout\ = (\VGA|cont_hs\(6) & (!\VGA|cont_hs\(7) & (\VGA|cont_hs\(8) & !\VGA|cont_hs\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|cont_hs\(6),
	datab => \VGA|cont_hs\(7),
	datac => \VGA|cont_hs\(8),
	datad => \VGA|cont_hs\(5),
	combout => \VGA|Equal0~0_combout\);

-- Location: LCCOMB_X26_Y72_N2
\VGA|cont_vs[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|cont_vs[3]~7_combout\ = (!\VGA|process_0~9_combout\ & ((\VGA|Equal2~2_combout\ & ((\VGA|cont_vs\(3)))) # (!\VGA|Equal2~2_combout\ & (\VGA|Add1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|process_0~9_combout\,
	datab => \VGA|Add1~6_combout\,
	datac => \VGA|cont_vs\(3),
	datad => \VGA|Equal2~2_combout\,
	combout => \VGA|cont_vs[3]~7_combout\);

-- Location: LCCOMB_X24_Y72_N12
\VGA|pixel_y[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|pixel_y[6]~feeder_combout\ = \VGA|cont_vs\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA|cont_vs\(6),
	combout => \VGA|pixel_y[6]~feeder_combout\);

-- Location: IOOBUF_X20_Y73_N16
\VGA_R[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|vga_r~q\,
	devoe => ww_devoe,
	o => ww_VGA_R(7));

-- Location: IOOBUF_X11_Y73_N23
\VGA_R[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_R(6));

-- Location: IOOBUF_X40_Y73_N9
\VGA_R[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_R(5));

-- Location: IOOBUF_X20_Y73_N9
\VGA_R[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_R(4));

-- Location: IOOBUF_X33_Y73_N9
\VGA_R[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_R(3));

-- Location: IOOBUF_X35_Y73_N23
\VGA_R[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_R(2));

-- Location: IOOBUF_X31_Y73_N2
\VGA_R[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_R(1));

-- Location: IOOBUF_X33_Y73_N2
\VGA_R[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_R(0));

-- Location: IOOBUF_X23_Y73_N16
\VGA_G[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|vga_g~q\,
	devoe => ww_devoe,
	o => ww_VGA_G(7));

-- Location: IOOBUF_X20_Y73_N2
\VGA_G[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_G(6));

-- Location: IOOBUF_X16_Y73_N2
\VGA_G[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_G(5));

-- Location: IOOBUF_X16_Y73_N9
\VGA_G[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_G(4));

-- Location: IOOBUF_X25_Y73_N23
\VGA_G[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_G(3));

-- Location: IOOBUF_X11_Y73_N9
\VGA_G[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_G(2));

-- Location: IOOBUF_X25_Y73_N16
\VGA_G[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_G(1));

-- Location: IOOBUF_X11_Y73_N16
\VGA_G[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_G(0));

-- Location: IOOBUF_X52_Y73_N23
\VGA_B[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|vga_b~q\,
	devoe => ww_devoe,
	o => ww_VGA_B(7));

-- Location: IOOBUF_X23_Y73_N9
\VGA_B[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_B(6));

-- Location: IOOBUF_X52_Y73_N16
\VGA_B[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_B(5));

-- Location: IOOBUF_X42_Y73_N2
\VGA_B[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_B(4));

-- Location: IOOBUF_X42_Y73_N9
\VGA_B[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_B(3));

-- Location: IOOBUF_X23_Y73_N2
\VGA_B[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_B(2));

-- Location: IOOBUF_X38_Y73_N2
\VGA_B[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_B(1));

-- Location: IOOBUF_X38_Y73_N9
\VGA_B[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_B(0));

-- Location: IOOBUF_X31_Y73_N9
\VGA_BLANK_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|vga_blank_N~q\,
	devoe => ww_devoe,
	o => ww_VGA_BLANK_N);

-- Location: IOOBUF_X38_Y73_N16
\VGA_HS~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|vga_hs~q\,
	devoe => ww_devoe,
	o => ww_VGA_HS);

-- Location: IOOBUF_X54_Y73_N2
\VGA_VS~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|vga_vs~q\,
	devoe => ww_devoe,
	o => ww_VGA_VS);

-- Location: IOOBUF_X47_Y73_N2
\VGA_CLK~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	devoe => ww_devoe,
	o => ww_VGA_CLK);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: PLL_1
\PLL|altpll_component|pll\ : cycloneive_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 10,
	c0_initial => 1,
	c0_low => 10,
	c0_mode => "even",
	c0_ph => 0,
	c1_high => 0,
	c1_initial => 0,
	c1_low => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c1_use_casc_in => "off",
	c2_high => 0,
	c2_initial => 0,
	c2_low => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 0,
	c3_initial => 0,
	c3_low => 0,
	c3_mode => "bypass",
	c3_ph => 0,
	c3_use_casc_in => "off",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "c0",
	clk0_divide_by => 2,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 1,
	clk0_phase_shift => "-3000",
	clk1_counter => "unused",
	clk1_divide_by => 0,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 0,
	clk1_phase_shift => "0",
	clk2_counter => "unused",
	clk2_divide_by => 0,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 0,
	clk2_phase_shift => "0",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock0",
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 27,
	m => 10,
	m_initial => 2,
	m_ph => 4,
	n => 1,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	pll_compensation_delay => 3789,
	self_reset_on_loss_lock => "off",
	simulation_type => "timing",
	switch_over_type => "manual",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 250,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	fbin => \PLL|altpll_component|pll~FBOUT\,
	inclk => \PLL|altpll_component|pll_INCLK_bus\,
	fbout => \PLL|altpll_component|pll~FBOUT\,
	clk => \PLL|altpll_component|pll_CLK_bus\);

-- Location: CLKCTRL_G3
\PLL|altpll_component|_clk0~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \PLL|altpll_component|_clk0~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \PLL|altpll_component|_clk0~clkctrl_outclk\);

-- Location: LCCOMB_X27_Y72_N6
\VGA|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|Add0~0_combout\ = \VGA|cont_hs\(0) $ (VCC)
-- \VGA|Add0~1\ = CARRY(\VGA|cont_hs\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|cont_hs\(0),
	datad => VCC,
	combout => \VGA|Add0~0_combout\,
	cout => \VGA|Add0~1\);

-- Location: LCCOMB_X27_Y72_N8
\VGA|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|Add0~2_combout\ = (\VGA|cont_hs\(1) & (!\VGA|Add0~1\)) # (!\VGA|cont_hs\(1) & ((\VGA|Add0~1\) # (GND)))
-- \VGA|Add0~3\ = CARRY((!\VGA|Add0~1\) # (!\VGA|cont_hs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA|cont_hs\(1),
	datad => VCC,
	cin => \VGA|Add0~1\,
	combout => \VGA|Add0~2_combout\,
	cout => \VGA|Add0~3\);

-- Location: FF_X27_Y72_N9
\VGA|cont_hs[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	d => \VGA|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|cont_hs\(1));

-- Location: LCCOMB_X27_Y72_N10
\VGA|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|Add0~4_combout\ = (\VGA|cont_hs\(2) & (\VGA|Add0~3\ $ (GND))) # (!\VGA|cont_hs\(2) & (!\VGA|Add0~3\ & VCC))
-- \VGA|Add0~5\ = CARRY((\VGA|cont_hs\(2) & !\VGA|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA|cont_hs\(2),
	datad => VCC,
	cin => \VGA|Add0~3\,
	combout => \VGA|Add0~4_combout\,
	cout => \VGA|Add0~5\);

-- Location: FF_X27_Y72_N11
\VGA|cont_hs[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	d => \VGA|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|cont_hs\(2));

-- Location: FF_X27_Y72_N7
\VGA|cont_hs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	d => \VGA|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|cont_hs\(0));

-- Location: LCCOMB_X27_Y72_N4
\VGA|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|Equal0~1_combout\ = (\VGA|cont_hs\(3) & (\VGA|cont_hs\(2) & (\VGA|cont_hs\(1) & \VGA|cont_hs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|cont_hs\(3),
	datab => \VGA|cont_hs\(2),
	datac => \VGA|cont_hs\(1),
	datad => \VGA|cont_hs\(0),
	combout => \VGA|Equal0~1_combout\);

-- Location: LCCOMB_X27_Y72_N16
\VGA|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|Add0~10_combout\ = (\VGA|cont_hs\(5) & (!\VGA|Add0~9\)) # (!\VGA|cont_hs\(5) & ((\VGA|Add0~9\) # (GND)))
-- \VGA|Add0~11\ = CARRY((!\VGA|Add0~9\) # (!\VGA|cont_hs\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA|cont_hs\(5),
	datad => VCC,
	cin => \VGA|Add0~9\,
	combout => \VGA|Add0~10_combout\,
	cout => \VGA|Add0~11\);

-- Location: FF_X27_Y72_N17
\VGA|cont_hs[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	d => \VGA|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|cont_hs\(5));

-- Location: LCCOMB_X27_Y72_N18
\VGA|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|Add0~12_combout\ = (\VGA|cont_hs\(6) & (\VGA|Add0~11\ $ (GND))) # (!\VGA|cont_hs\(6) & (!\VGA|Add0~11\ & VCC))
-- \VGA|Add0~13\ = CARRY((\VGA|cont_hs\(6) & !\VGA|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|cont_hs\(6),
	datad => VCC,
	cin => \VGA|Add0~11\,
	combout => \VGA|Add0~12_combout\,
	cout => \VGA|Add0~13\);

-- Location: LCCOMB_X27_Y72_N20
\VGA|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|Add0~14_combout\ = (\VGA|cont_hs\(7) & (!\VGA|Add0~13\)) # (!\VGA|cont_hs\(7) & ((\VGA|Add0~13\) # (GND)))
-- \VGA|Add0~15\ = CARRY((!\VGA|Add0~13\) # (!\VGA|cont_hs\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA|cont_hs\(7),
	datad => VCC,
	cin => \VGA|Add0~13\,
	combout => \VGA|Add0~14_combout\,
	cout => \VGA|Add0~15\);

-- Location: FF_X27_Y72_N21
\VGA|cont_hs[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	d => \VGA|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|cont_hs\(7));

-- Location: LCCOMB_X27_Y72_N22
\VGA|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|Add0~16_combout\ = (\VGA|cont_hs\(8) & (\VGA|Add0~15\ $ (GND))) # (!\VGA|cont_hs\(8) & (!\VGA|Add0~15\ & VCC))
-- \VGA|Add0~17\ = CARRY((\VGA|cont_hs\(8) & !\VGA|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|cont_hs\(8),
	datad => VCC,
	cin => \VGA|Add0~15\,
	combout => \VGA|Add0~16_combout\,
	cout => \VGA|Add0~17\);

-- Location: LCCOMB_X27_Y72_N24
\VGA|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|Add0~18_combout\ = \VGA|Add0~17\ $ (\VGA|cont_hs\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \VGA|cont_hs\(9),
	cin => \VGA|Add0~17\,
	combout => \VGA|Add0~18_combout\);

-- Location: LCCOMB_X27_Y72_N0
\VGA|cont_hs~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|cont_hs~0_combout\ = (\VGA|Add0~18_combout\ & !\VGA|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA|Add0~18_combout\,
	datac => \VGA|Equal0~2_combout\,
	combout => \VGA|cont_hs~0_combout\);

-- Location: FF_X27_Y72_N1
\VGA|cont_hs[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	d => \VGA|cont_hs~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|cont_hs\(9));

-- Location: LCCOMB_X27_Y72_N30
\VGA|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|Equal0~2_combout\ = (\VGA|Equal0~0_combout\ & (\VGA|Equal0~1_combout\ & (!\VGA|cont_hs\(4) & \VGA|cont_hs\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|Equal0~0_combout\,
	datab => \VGA|Equal0~1_combout\,
	datac => \VGA|cont_hs\(4),
	datad => \VGA|cont_hs\(9),
	combout => \VGA|Equal0~2_combout\);

-- Location: LCCOMB_X28_Y72_N8
\VGA|cont_hs~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|cont_hs~3_combout\ = (\VGA|Add0~8_combout\ & !\VGA|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|Add0~8_combout\,
	datad => \VGA|Equal0~2_combout\,
	combout => \VGA|cont_hs~3_combout\);

-- Location: FF_X28_Y72_N9
\VGA|cont_hs[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	d => \VGA|cont_hs~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|cont_hs\(4));

-- Location: LCCOMB_X26_Y72_N16
\VGA|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|Equal2~0_combout\ = (((\VGA|cont_hs\(1)) # (\VGA|cont_hs\(0))) # (!\VGA|cont_hs\(4))) # (!\VGA|cont_hs\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|cont_hs\(5),
	datab => \VGA|cont_hs\(4),
	datac => \VGA|cont_hs\(1),
	datad => \VGA|cont_hs\(0),
	combout => \VGA|Equal2~0_combout\);

-- Location: LCCOMB_X27_Y72_N26
\VGA|cont_hs~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|cont_hs~1_combout\ = (!\VGA|Equal0~2_combout\ & \VGA|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|Equal0~2_combout\,
	datac => \VGA|Add0~16_combout\,
	combout => \VGA|cont_hs~1_combout\);

-- Location: FF_X27_Y72_N27
\VGA|cont_hs[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	d => \VGA|cont_hs~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|cont_hs\(8));

-- Location: LCCOMB_X26_Y72_N12
\VGA|Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|Equal2~2_combout\ = (\VGA|Equal2~1_combout\) # ((\VGA|Equal2~0_combout\) # ((\VGA|cont_hs\(8)) # (!\VGA|cont_hs\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|Equal2~1_combout\,
	datab => \VGA|Equal2~0_combout\,
	datac => \VGA|cont_hs\(9),
	datad => \VGA|cont_hs\(8),
	combout => \VGA|Equal2~2_combout\);

-- Location: LCCOMB_X25_Y72_N10
\VGA|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|Add1~0_combout\ = \VGA|cont_vs\(0) $ (VCC)
-- \VGA|Add1~1\ = CARRY(\VGA|cont_vs\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA|cont_vs\(0),
	datad => VCC,
	combout => \VGA|Add1~0_combout\,
	cout => \VGA|Add1~1\);

-- Location: LCCOMB_X26_Y72_N14
\VGA|cont_vs[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|cont_vs[0]~9_combout\ = (!\VGA|process_0~9_combout\ & ((\VGA|Equal2~2_combout\ & ((\VGA|cont_vs\(0)))) # (!\VGA|Equal2~2_combout\ & (\VGA|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|process_0~9_combout\,
	datab => \VGA|Add1~0_combout\,
	datac => \VGA|cont_vs\(0),
	datad => \VGA|Equal2~2_combout\,
	combout => \VGA|cont_vs[0]~9_combout\);

-- Location: FF_X26_Y72_N15
\VGA|cont_vs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	d => \VGA|cont_vs[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|cont_vs\(0));

-- Location: LCCOMB_X25_Y72_N12
\VGA|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|Add1~2_combout\ = (\VGA|cont_vs\(1) & (!\VGA|Add1~1\)) # (!\VGA|cont_vs\(1) & ((\VGA|Add1~1\) # (GND)))
-- \VGA|Add1~3\ = CARRY((!\VGA|Add1~1\) # (!\VGA|cont_vs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|cont_vs\(1),
	datad => VCC,
	cin => \VGA|Add1~1\,
	combout => \VGA|Add1~2_combout\,
	cout => \VGA|Add1~3\);

-- Location: LCCOMB_X25_Y72_N14
\VGA|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|Add1~4_combout\ = (\VGA|cont_vs\(2) & (\VGA|Add1~3\ $ (GND))) # (!\VGA|cont_vs\(2) & (!\VGA|Add1~3\ & VCC))
-- \VGA|Add1~5\ = CARRY((\VGA|cont_vs\(2) & !\VGA|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA|cont_vs\(2),
	datad => VCC,
	cin => \VGA|Add1~3\,
	combout => \VGA|Add1~4_combout\,
	cout => \VGA|Add1~5\);

-- Location: LCCOMB_X26_Y72_N0
\VGA|cont_vs[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|cont_vs[2]~6_combout\ = (!\VGA|process_0~9_combout\ & ((\VGA|Equal2~2_combout\ & ((\VGA|cont_vs\(2)))) # (!\VGA|Equal2~2_combout\ & (\VGA|Add1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|process_0~9_combout\,
	datab => \VGA|Add1~4_combout\,
	datac => \VGA|cont_vs\(2),
	datad => \VGA|Equal2~2_combout\,
	combout => \VGA|cont_vs[2]~6_combout\);

-- Location: FF_X26_Y72_N1
\VGA|cont_vs[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	d => \VGA|cont_vs[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|cont_vs\(2));

-- Location: LCCOMB_X25_Y72_N18
\VGA|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|Add1~8_combout\ = (\VGA|cont_vs\(4) & (\VGA|Add1~7\ $ (GND))) # (!\VGA|cont_vs\(4) & (!\VGA|Add1~7\ & VCC))
-- \VGA|Add1~9\ = CARRY((\VGA|cont_vs\(4) & !\VGA|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA|cont_vs\(4),
	datad => VCC,
	cin => \VGA|Add1~7\,
	combout => \VGA|Add1~8_combout\,
	cout => \VGA|Add1~9\);

-- Location: LCCOMB_X26_Y72_N22
\VGA|cont_vs[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|cont_vs[4]~5_combout\ = (!\VGA|process_0~9_combout\ & ((\VGA|Equal2~2_combout\ & ((\VGA|cont_vs\(4)))) # (!\VGA|Equal2~2_combout\ & (\VGA|Add1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|process_0~9_combout\,
	datab => \VGA|Add1~8_combout\,
	datac => \VGA|cont_vs\(4),
	datad => \VGA|Equal2~2_combout\,
	combout => \VGA|cont_vs[4]~5_combout\);

-- Location: FF_X26_Y72_N23
\VGA|cont_vs[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	d => \VGA|cont_vs[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|cont_vs\(4));

-- Location: LCCOMB_X25_Y72_N20
\VGA|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|Add1~10_combout\ = (\VGA|cont_vs\(5) & (!\VGA|Add1~9\)) # (!\VGA|cont_vs\(5) & ((\VGA|Add1~9\) # (GND)))
-- \VGA|Add1~11\ = CARRY((!\VGA|Add1~9\) # (!\VGA|cont_vs\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA|cont_vs\(5),
	datad => VCC,
	cin => \VGA|Add1~9\,
	combout => \VGA|Add1~10_combout\,
	cout => \VGA|Add1~11\);

-- Location: LCCOMB_X25_Y72_N4
\VGA|cont_vs[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|cont_vs[5]~1_combout\ = (!\VGA|process_0~9_combout\ & ((\VGA|Equal2~2_combout\ & (\VGA|cont_vs\(5))) # (!\VGA|Equal2~2_combout\ & ((\VGA|Add1~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|process_0~9_combout\,
	datab => \VGA|Equal2~2_combout\,
	datac => \VGA|cont_vs\(5),
	datad => \VGA|Add1~10_combout\,
	combout => \VGA|cont_vs[5]~1_combout\);

-- Location: FF_X25_Y72_N5
\VGA|cont_vs[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	d => \VGA|cont_vs[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|cont_vs\(5));

-- Location: LCCOMB_X25_Y72_N22
\VGA|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|Add1~12_combout\ = (\VGA|cont_vs\(6) & (\VGA|Add1~11\ $ (GND))) # (!\VGA|cont_vs\(6) & (!\VGA|Add1~11\ & VCC))
-- \VGA|Add1~13\ = CARRY((\VGA|cont_vs\(6) & !\VGA|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|cont_vs\(6),
	datad => VCC,
	cin => \VGA|Add1~11\,
	combout => \VGA|Add1~12_combout\,
	cout => \VGA|Add1~13\);

-- Location: LCCOMB_X25_Y72_N24
\VGA|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|Add1~14_combout\ = (\VGA|cont_vs\(7) & (!\VGA|Add1~13\)) # (!\VGA|cont_vs\(7) & ((\VGA|Add1~13\) # (GND)))
-- \VGA|Add1~15\ = CARRY((!\VGA|Add1~13\) # (!\VGA|cont_vs\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|cont_vs\(7),
	datad => VCC,
	cin => \VGA|Add1~13\,
	combout => \VGA|Add1~14_combout\,
	cout => \VGA|Add1~15\);

-- Location: LCCOMB_X25_Y72_N30
\VGA|cont_vs[7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|cont_vs[7]~3_combout\ = (!\VGA|process_0~9_combout\ & ((\VGA|Equal2~2_combout\ & (\VGA|cont_vs\(7))) # (!\VGA|Equal2~2_combout\ & ((\VGA|Add1~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|process_0~9_combout\,
	datab => \VGA|Equal2~2_combout\,
	datac => \VGA|cont_vs\(7),
	datad => \VGA|Add1~14_combout\,
	combout => \VGA|cont_vs[7]~3_combout\);

-- Location: FF_X25_Y72_N31
\VGA|cont_vs[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	d => \VGA|cont_vs[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|cont_vs\(7));

-- Location: LCCOMB_X26_Y72_N26
\VGA|cont_vs[6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|cont_vs[6]~2_combout\ = (!\VGA|process_0~9_combout\ & ((\VGA|Equal2~2_combout\ & ((\VGA|cont_vs\(6)))) # (!\VGA|Equal2~2_combout\ & (\VGA|Add1~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|process_0~9_combout\,
	datab => \VGA|Add1~12_combout\,
	datac => \VGA|cont_vs\(6),
	datad => \VGA|Equal2~2_combout\,
	combout => \VGA|cont_vs[6]~2_combout\);

-- Location: FF_X26_Y72_N27
\VGA|cont_vs[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	d => \VGA|cont_vs[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|cont_vs\(6));

-- Location: LCCOMB_X25_Y72_N26
\VGA|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|Add1~16_combout\ = (\VGA|cont_vs\(8) & (\VGA|Add1~15\ $ (GND))) # (!\VGA|cont_vs\(8) & (!\VGA|Add1~15\ & VCC))
-- \VGA|Add1~17\ = CARRY((\VGA|cont_vs\(8) & !\VGA|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA|cont_vs\(8),
	datad => VCC,
	cin => \VGA|Add1~15\,
	combout => \VGA|Add1~16_combout\,
	cout => \VGA|Add1~17\);

-- Location: LCCOMB_X26_Y72_N28
\VGA|cont_vs[8]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|cont_vs[8]~4_combout\ = (!\VGA|process_0~9_combout\ & ((\VGA|Equal2~2_combout\ & ((\VGA|cont_vs\(8)))) # (!\VGA|Equal2~2_combout\ & (\VGA|Add1~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|process_0~9_combout\,
	datab => \VGA|Add1~16_combout\,
	datac => \VGA|cont_vs\(8),
	datad => \VGA|Equal2~2_combout\,
	combout => \VGA|cont_vs[8]~4_combout\);

-- Location: FF_X26_Y72_N29
\VGA|cont_vs[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	d => \VGA|cont_vs[8]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|cont_vs\(8));

-- Location: LCCOMB_X25_Y72_N0
\VGA|LessThan6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|LessThan6~0_combout\ = (\VGA|cont_vs\(7) & (\VGA|cont_vs\(5) & (\VGA|cont_vs\(6) & \VGA|cont_vs\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|cont_vs\(7),
	datab => \VGA|cont_vs\(5),
	datac => \VGA|cont_vs\(6),
	datad => \VGA|cont_vs\(8),
	combout => \VGA|LessThan6~0_combout\);

-- Location: LCCOMB_X25_Y72_N28
\VGA|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|Add1~18_combout\ = \VGA|Add1~17\ $ (\VGA|cont_vs\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \VGA|cont_vs\(9),
	cin => \VGA|Add1~17\,
	combout => \VGA|Add1~18_combout\);

-- Location: LCCOMB_X26_Y72_N24
\VGA|cont_vs[9]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|cont_vs[9]~0_combout\ = (!\VGA|process_0~9_combout\ & ((\VGA|Equal2~2_combout\ & ((\VGA|cont_vs\(9)))) # (!\VGA|Equal2~2_combout\ & (\VGA|Add1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|process_0~9_combout\,
	datab => \VGA|Add1~18_combout\,
	datac => \VGA|cont_vs\(9),
	datad => \VGA|Equal2~2_combout\,
	combout => \VGA|cont_vs[9]~0_combout\);

-- Location: FF_X26_Y72_N25
\VGA|cont_vs[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	d => \VGA|cont_vs[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|cont_vs\(9));

-- Location: LCCOMB_X25_Y72_N6
\VGA|LessThan6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|LessThan6~1_combout\ = (!\VGA|LessThan6~0_combout\ & !\VGA|cont_vs\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA|LessThan6~0_combout\,
	datad => \VGA|cont_vs\(9),
	combout => \VGA|LessThan6~1_combout\);

-- Location: FF_X25_Y72_N9
\VGA|pixel_y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	asdata => \VGA|cont_vs\(7),
	sload => VCC,
	ena => \VGA|LessThan6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|pixel_y\(7));

-- Location: LCCOMB_X24_Y72_N24
\VGA|vga_r~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|vga_r~0_combout\ = (\VGA|video_on~q\ & \VGA|pixel_y\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|video_on~q\,
	datac => \VGA|pixel_y\(7),
	combout => \VGA|vga_r~0_combout\);

-- Location: FF_X24_Y72_N25
\VGA|vga_r\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	d => \VGA|vga_r~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|vga_r~q\);

-- Location: LCCOMB_X24_Y72_N10
\VGA|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|process_0~0_combout\ = (\VGA|LessThan6~1_combout\ & (((!\VGA|cont_hs\(8) & !\VGA|cont_hs\(7))) # (!\VGA|cont_hs\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|LessThan6~1_combout\,
	datab => \VGA|cont_hs\(8),
	datac => \VGA|cont_hs\(9),
	datad => \VGA|cont_hs\(7),
	combout => \VGA|process_0~0_combout\);

-- Location: FF_X24_Y72_N11
\VGA|video_on\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	d => \VGA|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|video_on~q\);

-- Location: LCCOMB_X24_Y72_N2
\VGA|vga_g~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|vga_g~0_combout\ = (\VGA|pixel_y\(6) & \VGA|video_on~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_y\(6),
	datad => \VGA|video_on~q\,
	combout => \VGA|vga_g~0_combout\);

-- Location: FF_X24_Y72_N3
\VGA|vga_g\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	d => \VGA|vga_g~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|vga_g~q\);

-- Location: FF_X25_Y72_N3
\VGA|pixel_y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	asdata => \VGA|cont_vs\(5),
	sload => VCC,
	ena => \VGA|LessThan6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|pixel_y\(5));

-- Location: LCCOMB_X24_Y72_N4
\VGA|vga_b~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|vga_b~0_combout\ = (\VGA|video_on~q\ & \VGA|pixel_y\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|video_on~q\,
	datad => \VGA|pixel_y\(5),
	combout => \VGA|vga_b~0_combout\);

-- Location: FF_X24_Y72_N5
\VGA|vga_b\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	d => \VGA|vga_b~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|vga_b~q\);

-- Location: LCCOMB_X24_Y72_N6
\VGA|vga_blank_N~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|vga_blank_N~feeder_combout\ = \VGA|video_on~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA|video_on~q\,
	combout => \VGA|vga_blank_N~feeder_combout\);

-- Location: FF_X24_Y72_N7
\VGA|vga_blank_N\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	d => \VGA|vga_blank_N~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|vga_blank_N~q\);

-- Location: LCCOMB_X27_Y72_N28
\VGA|cont_hs~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|cont_hs~2_combout\ = (\VGA|Add0~12_combout\ & !\VGA|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA|Add0~12_combout\,
	datac => \VGA|Equal0~2_combout\,
	combout => \VGA|cont_hs~2_combout\);

-- Location: FF_X27_Y72_N29
\VGA|cont_hs[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	d => \VGA|cont_hs~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|cont_hs\(6));

-- Location: LCCOMB_X24_Y72_N0
\VGA|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|process_0~1_combout\ = (\VGA|cont_hs\(7) & (((\VGA|cont_hs\(8)) # (!\VGA|cont_hs\(6))))) # (!\VGA|cont_hs\(7) & ((\VGA|cont_hs\(5)) # ((\VGA|cont_hs\(6)) # (!\VGA|cont_hs\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|cont_hs\(5),
	datab => \VGA|cont_hs\(7),
	datac => \VGA|cont_hs\(6),
	datad => \VGA|cont_hs\(8),
	combout => \VGA|process_0~1_combout\);

-- Location: LCCOMB_X24_Y72_N22
\VGA|process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|process_0~2_combout\ = (\VGA|process_0~1_combout\) # (!\VGA|cont_hs\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA|process_0~1_combout\,
	datac => \VGA|cont_hs\(9),
	combout => \VGA|process_0~2_combout\);

-- Location: FF_X24_Y72_N23
\VGA|hs\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	d => \VGA|process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|hs~q\);

-- Location: FF_X24_Y72_N17
\VGA|vga_hs\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	asdata => \VGA|hs~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|vga_hs~q\);

-- Location: LCCOMB_X26_Y72_N4
\VGA|cont_vs[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|cont_vs[1]~8_combout\ = (!\VGA|process_0~9_combout\ & ((\VGA|Equal2~2_combout\ & ((\VGA|cont_vs\(1)))) # (!\VGA|Equal2~2_combout\ & (\VGA|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|process_0~9_combout\,
	datab => \VGA|Add1~2_combout\,
	datac => \VGA|cont_vs\(1),
	datad => \VGA|Equal2~2_combout\,
	combout => \VGA|cont_vs[1]~8_combout\);

-- Location: FF_X26_Y72_N5
\VGA|cont_vs[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	d => \VGA|cont_vs[1]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|cont_vs\(1));

-- Location: LCCOMB_X29_Y72_N12
\VGA|process_0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|process_0~3_combout\ = ((\VGA|cont_vs\(4)) # ((\VGA|cont_vs\(2)) # (!\VGA|cont_vs\(1)))) # (!\VGA|cont_vs\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|cont_vs\(3),
	datab => \VGA|cont_vs\(4),
	datac => \VGA|cont_vs\(1),
	datad => \VGA|cont_vs\(2),
	combout => \VGA|process_0~3_combout\);

-- Location: LCCOMB_X29_Y72_N2
\VGA|process_0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|process_0~4_combout\ = (\VGA|cont_vs\(9)) # ((\VGA|process_0~3_combout\) # (!\VGA|LessThan6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|cont_vs\(9),
	datac => \VGA|LessThan6~0_combout\,
	datad => \VGA|process_0~3_combout\,
	combout => \VGA|process_0~4_combout\);

-- Location: FF_X29_Y72_N3
\VGA|vs\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	d => \VGA|process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|vs~q\);

-- Location: LCCOMB_X29_Y72_N0
\VGA|vga_vs~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|vga_vs~feeder_combout\ = \VGA|vs~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA|vs~q\,
	combout => \VGA|vga_vs~feeder_combout\);

-- Location: FF_X29_Y72_N1
\VGA|vga_vs\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	d => \VGA|vga_vs~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|vga_vs~q\);
END structure;


