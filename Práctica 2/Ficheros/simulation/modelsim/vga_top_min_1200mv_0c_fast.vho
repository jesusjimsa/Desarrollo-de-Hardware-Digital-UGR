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

-- DATE "05/13/2019 13:10:35"

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
	VGA_CLK : OUT std_logic;
	UP : IN std_logic;
	DOWN : IN std_logic
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
-- UP	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOWN	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_UP : std_logic;
SIGNAL ww_DOWN : std_logic;
SIGNAL \PLL|altpll_component|pll_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \PLL|altpll_component|pll_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \VGA|vga_vs~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \PLL|altpll_component|_clk0~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \PLL|altpll_component|pll~CLK1\ : std_logic;
SIGNAL \PLL|altpll_component|pll~CLK2\ : std_logic;
SIGNAL \PLL|altpll_component|pll~CLK3\ : std_logic;
SIGNAL \PLL|altpll_component|pll~CLK4\ : std_logic;
SIGNAL \BLADE|Add3~0_combout\ : std_logic;
SIGNAL \BLADE|Add3~2_combout\ : std_logic;
SIGNAL \BLADE|Add3~4_combout\ : std_logic;
SIGNAL \BLADE|Add2~1\ : std_logic;
SIGNAL \BLADE|Add2~0_combout\ : std_logic;
SIGNAL \BLADE|Add2~3\ : std_logic;
SIGNAL \BLADE|Add2~2_combout\ : std_logic;
SIGNAL \BLADE|Add2~5\ : std_logic;
SIGNAL \BLADE|Add2~4_combout\ : std_logic;
SIGNAL \BLADE|Add2~7\ : std_logic;
SIGNAL \BLADE|Add2~6_combout\ : std_logic;
SIGNAL \BLADE|Add2~9\ : std_logic;
SIGNAL \BLADE|Add2~8_combout\ : std_logic;
SIGNAL \BLADE|Add2~10_combout\ : std_logic;
SIGNAL \BLADE|LessThan2~1_cout\ : std_logic;
SIGNAL \BLADE|LessThan2~3_cout\ : std_logic;
SIGNAL \BLADE|LessThan2~5_cout\ : std_logic;
SIGNAL \BLADE|LessThan2~7_cout\ : std_logic;
SIGNAL \BLADE|LessThan2~9_cout\ : std_logic;
SIGNAL \BLADE|LessThan2~11_cout\ : std_logic;
SIGNAL \BLADE|LessThan2~13_cout\ : std_logic;
SIGNAL \BLADE|LessThan2~15_cout\ : std_logic;
SIGNAL \BLADE|LessThan2~16_combout\ : std_logic;
SIGNAL \BLADE|Add0~6_combout\ : std_logic;
SIGNAL \VGA|Add1~0_combout\ : std_logic;
SIGNAL \BLADE|LessThan1~1_combout\ : std_logic;
SIGNAL \BLADE|Mover_Pala~3_combout\ : std_logic;
SIGNAL \VGA|process_0~6_combout\ : std_logic;
SIGNAL \VGA|cont_vs[0]~9_combout\ : std_logic;
SIGNAL \VGA|Equal0~0_combout\ : std_logic;
SIGNAL \UP~input_o\ : std_logic;
SIGNAL \DOWN~input_o\ : std_logic;
SIGNAL \VGA|vga_vs~clkctrl_outclk\ : std_logic;
SIGNAL \VGA|pixel_y[3]~feeder_combout\ : std_logic;
SIGNAL \VGA|pixel_y[2]~feeder_combout\ : std_logic;
SIGNAL \VGA|pixel_y[1]~feeder_combout\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \PLL|altpll_component|pll~FBOUT\ : std_logic;
SIGNAL \PLL|altpll_component|_clk0\ : std_logic;
SIGNAL \PLL|altpll_component|_clk0~clkctrl_outclk\ : std_logic;
SIGNAL \BLADE|Pala_Y[5]~17_combout\ : std_logic;
SIGNAL \BLADE|Pala_Y[6]~19_combout\ : std_logic;
SIGNAL \BLADE|Mover_Pala~5_combout\ : std_logic;
SIGNAL \BLADE|Pala_Y[4]~15_combout\ : std_logic;
SIGNAL \BLADE|Mover_Pala~4_combout\ : std_logic;
SIGNAL \BLADE|Desplaza_Pala_Y~0_combout\ : std_logic;
SIGNAL \BLADE|Pala_Y[1]~10\ : std_logic;
SIGNAL \BLADE|Pala_Y[2]~11_combout\ : std_logic;
SIGNAL \BLADE|Pala_Y[2]~12\ : std_logic;
SIGNAL \BLADE|Pala_Y[3]~14\ : std_logic;
SIGNAL \BLADE|Pala_Y[4]~16\ : std_logic;
SIGNAL \BLADE|Pala_Y[5]~18\ : std_logic;
SIGNAL \BLADE|Pala_Y[6]~20\ : std_logic;
SIGNAL \BLADE|Pala_Y[7]~21_combout\ : std_logic;
SIGNAL \BLADE|Pala_Y[7]~22\ : std_logic;
SIGNAL \BLADE|Pala_Y[8]~24\ : std_logic;
SIGNAL \BLADE|Pala_Y[9]~25_combout\ : std_logic;
SIGNAL \BLADE|Mover_Pala~1_combout\ : std_logic;
SIGNAL \BLADE|Pala_Y[3]~13_combout\ : std_logic;
SIGNAL \BLADE|Mover_Pala~0_combout\ : std_logic;
SIGNAL \BLADE|Mover_Pala~2_combout\ : std_logic;
SIGNAL \BLADE|Pala_Y[8]~23_combout\ : std_logic;
SIGNAL \BLADE|Add3~1\ : std_logic;
SIGNAL \BLADE|Add3~3\ : std_logic;
SIGNAL \BLADE|Add3~5\ : std_logic;
SIGNAL \BLADE|Add3~7\ : std_logic;
SIGNAL \BLADE|Add3~9\ : std_logic;
SIGNAL \BLADE|Add3~10_combout\ : std_logic;
SIGNAL \VGA|Add0~0_combout\ : std_logic;
SIGNAL \VGA|Add0~1\ : std_logic;
SIGNAL \VGA|Add0~2_combout\ : std_logic;
SIGNAL \VGA|Add0~3\ : std_logic;
SIGNAL \VGA|Add0~5\ : std_logic;
SIGNAL \VGA|Add0~6_combout\ : std_logic;
SIGNAL \VGA|Add0~7\ : std_logic;
SIGNAL \VGA|Add0~9\ : std_logic;
SIGNAL \VGA|Add0~11\ : std_logic;
SIGNAL \VGA|Add0~13\ : std_logic;
SIGNAL \VGA|Add0~14_combout\ : std_logic;
SIGNAL \VGA|Add0~10_combout\ : std_logic;
SIGNAL \VGA|cont_hs~2_combout\ : std_logic;
SIGNAL \VGA|Equal0~1_combout\ : std_logic;
SIGNAL \VGA|Equal0~2_combout\ : std_logic;
SIGNAL \VGA|Add0~15\ : std_logic;
SIGNAL \VGA|Add0~16_combout\ : std_logic;
SIGNAL \VGA|cont_hs~1_combout\ : std_logic;
SIGNAL \VGA|Equal2~1_combout\ : std_logic;
SIGNAL \VGA|Add0~17\ : std_logic;
SIGNAL \VGA|Add0~18_combout\ : std_logic;
SIGNAL \VGA|cont_hs~0_combout\ : std_logic;
SIGNAL \VGA|Add0~8_combout\ : std_logic;
SIGNAL \VGA|Equal2~0_combout\ : std_logic;
SIGNAL \VGA|Equal2~2_combout\ : std_logic;
SIGNAL \VGA|Add1~1\ : std_logic;
SIGNAL \VGA|Add1~2_combout\ : std_logic;
SIGNAL \VGA|cont_vs[1]~8_combout\ : std_logic;
SIGNAL \VGA|Add1~3\ : std_logic;
SIGNAL \VGA|Add1~5\ : std_logic;
SIGNAL \VGA|Add1~7\ : std_logic;
SIGNAL \VGA|Add1~8_combout\ : std_logic;
SIGNAL \VGA|cont_vs[4]~5_combout\ : std_logic;
SIGNAL \VGA|Add1~9\ : std_logic;
SIGNAL \VGA|Add1~10_combout\ : std_logic;
SIGNAL \VGA|cont_vs[5]~2_combout\ : std_logic;
SIGNAL \VGA|Add1~11\ : std_logic;
SIGNAL \VGA|Add1~13\ : std_logic;
SIGNAL \VGA|Add1~15\ : std_logic;
SIGNAL \VGA|Add1~17\ : std_logic;
SIGNAL \VGA|Add1~18_combout\ : std_logic;
SIGNAL \VGA|cont_vs[9]~1_combout\ : std_logic;
SIGNAL \VGA|process_0~7_combout\ : std_logic;
SIGNAL \VGA|Add1~6_combout\ : std_logic;
SIGNAL \VGA|cont_vs[3]~6_combout\ : std_logic;
SIGNAL \VGA|process_0~5_combout\ : std_logic;
SIGNAL \VGA|process_0~8_combout\ : std_logic;
SIGNAL \VGA|process_0~9_combout\ : std_logic;
SIGNAL \VGA|Add1~16_combout\ : std_logic;
SIGNAL \VGA|cont_vs[8]~0_combout\ : std_logic;
SIGNAL \VGA|pixel_y[8]~feeder_combout\ : std_logic;
SIGNAL \VGA|Add1~12_combout\ : std_logic;
SIGNAL \VGA|cont_vs[6]~3_combout\ : std_logic;
SIGNAL \VGA|Add1~14_combout\ : std_logic;
SIGNAL \VGA|cont_vs[7]~4_combout\ : std_logic;
SIGNAL \VGA|LessThan6~0_combout\ : std_logic;
SIGNAL \VGA|LessThan6~1_combout\ : std_logic;
SIGNAL \BLADE|Add3~8_combout\ : std_logic;
SIGNAL \BLADE|Add3~6_combout\ : std_logic;
SIGNAL \VGA|pixel_y[5]~feeder_combout\ : std_logic;
SIGNAL \VGA|pixel_y[4]~feeder_combout\ : std_logic;
SIGNAL \BLADE|Pala_Y[1]~9_combout\ : std_logic;
SIGNAL \BLADE|LessThan3~1_cout\ : std_logic;
SIGNAL \BLADE|LessThan3~3_cout\ : std_logic;
SIGNAL \BLADE|LessThan3~5_cout\ : std_logic;
SIGNAL \BLADE|LessThan3~7_cout\ : std_logic;
SIGNAL \BLADE|LessThan3~9_cout\ : std_logic;
SIGNAL \BLADE|LessThan3~11_cout\ : std_logic;
SIGNAL \BLADE|LessThan3~13_cout\ : std_logic;
SIGNAL \BLADE|LessThan3~15_cout\ : std_logic;
SIGNAL \BLADE|LessThan3~16_combout\ : std_logic;
SIGNAL \VGA|LessThan5~0_combout\ : std_logic;
SIGNAL \VGA|Add0~4_combout\ : std_logic;
SIGNAL \BLADE|LessThan1~0_combout\ : std_logic;
SIGNAL \BLADE|Add0~1_cout\ : std_logic;
SIGNAL \BLADE|Add0~3_cout\ : std_logic;
SIGNAL \BLADE|Add0~5_cout\ : std_logic;
SIGNAL \BLADE|Add0~7\ : std_logic;
SIGNAL \BLADE|Add0~8_combout\ : std_logic;
SIGNAL \BLADE|Add0~9\ : std_logic;
SIGNAL \BLADE|Add0~10_combout\ : std_logic;
SIGNAL \VGA|Add0~12_combout\ : std_logic;
SIGNAL \BLADE|Add0~11\ : std_logic;
SIGNAL \BLADE|Add0~12_combout\ : std_logic;
SIGNAL \VGA|vga_r~0_combout\ : std_logic;
SIGNAL \BLADE|Add0~13\ : std_logic;
SIGNAL \BLADE|Add0~14_combout\ : std_logic;
SIGNAL \BLADE|Add0~15\ : std_logic;
SIGNAL \BLADE|Add0~16_combout\ : std_logic;
SIGNAL \VGA|vga_r~1_combout\ : std_logic;
SIGNAL \VGA|vga_r~2_combout\ : std_logic;
SIGNAL \BLADE|Add0~17\ : std_logic;
SIGNAL \BLADE|Add0~18_combout\ : std_logic;
SIGNAL \VGA|process_0~0_combout\ : std_logic;
SIGNAL \VGA|video_on~q\ : std_logic;
SIGNAL \VGA|vga_r~3_combout\ : std_logic;
SIGNAL \VGA|vga_r~4_combout\ : std_logic;
SIGNAL \VGA|vga_r~q\ : std_logic;
SIGNAL \VGA|vga_g~q\ : std_logic;
SIGNAL \VGA|vga_b~q\ : std_logic;
SIGNAL \VGA|vga_blank_N~feeder_combout\ : std_logic;
SIGNAL \VGA|vga_blank_N~q\ : std_logic;
SIGNAL \VGA|process_0~1_combout\ : std_logic;
SIGNAL \VGA|process_0~2_combout\ : std_logic;
SIGNAL \VGA|hs~q\ : std_logic;
SIGNAL \VGA|vga_hs~feeder_combout\ : std_logic;
SIGNAL \VGA|vga_hs~q\ : std_logic;
SIGNAL \VGA|Add1~4_combout\ : std_logic;
SIGNAL \VGA|cont_vs[2]~7_combout\ : std_logic;
SIGNAL \VGA|process_0~3_combout\ : std_logic;
SIGNAL \VGA|process_0~4_combout\ : std_logic;
SIGNAL \VGA|vs~q\ : std_logic;
SIGNAL \VGA|vga_vs~feeder_combout\ : std_logic;
SIGNAL \VGA|vga_vs~q\ : std_logic;
SIGNAL \VGA|pixel_y\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \VGA|pixel_x\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \VGA|cont_vs\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \VGA|cont_hs\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \BLADE|Pala_Y\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \BLADE|Desplaza_Pala_Y\ : std_logic_vector(9 DOWNTO 0);

BEGIN

ww_CLOCK_50 <= CLOCK_50;
VGA_R <= ww_VGA_R;
VGA_G <= ww_VGA_G;
VGA_B <= ww_VGA_B;
VGA_BLANK_N <= ww_VGA_BLANK_N;
VGA_HS <= ww_VGA_HS;
VGA_VS <= ww_VGA_VS;
VGA_CLK <= ww_VGA_CLK;
ww_UP <= UP;
ww_DOWN <= DOWN;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\PLL|altpll_component|pll_INCLK_bus\ <= (gnd & \CLOCK_50~input_o\);

\PLL|altpll_component|_clk0\ <= \PLL|altpll_component|pll_CLK_bus\(0);
\PLL|altpll_component|pll~CLK1\ <= \PLL|altpll_component|pll_CLK_bus\(1);
\PLL|altpll_component|pll~CLK2\ <= \PLL|altpll_component|pll_CLK_bus\(2);
\PLL|altpll_component|pll~CLK3\ <= \PLL|altpll_component|pll_CLK_bus\(3);
\PLL|altpll_component|pll~CLK4\ <= \PLL|altpll_component|pll_CLK_bus\(4);

\VGA|vga_vs~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \VGA|vga_vs~q\);

\PLL|altpll_component|_clk0~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \PLL|altpll_component|_clk0\);

-- Location: LCCOMB_X32_Y69_N2
\BLADE|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLADE|Add3~0_combout\ = (\BLADE|Pala_Y\(4) & (\BLADE|Pala_Y\(3) $ (VCC))) # (!\BLADE|Pala_Y\(4) & (\BLADE|Pala_Y\(3) & VCC))
-- \BLADE|Add3~1\ = CARRY((\BLADE|Pala_Y\(4) & \BLADE|Pala_Y\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BLADE|Pala_Y\(4),
	datab => \BLADE|Pala_Y\(3),
	datad => VCC,
	combout => \BLADE|Add3~0_combout\,
	cout => \BLADE|Add3~1\);

-- Location: LCCOMB_X32_Y69_N4
\BLADE|Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLADE|Add3~2_combout\ = (\BLADE|Pala_Y\(5) & (!\BLADE|Add3~1\)) # (!\BLADE|Pala_Y\(5) & ((\BLADE|Add3~1\) # (GND)))
-- \BLADE|Add3~3\ = CARRY((!\BLADE|Add3~1\) # (!\BLADE|Pala_Y\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BLADE|Pala_Y\(5),
	datad => VCC,
	cin => \BLADE|Add3~1\,
	combout => \BLADE|Add3~2_combout\,
	cout => \BLADE|Add3~3\);

-- Location: LCCOMB_X32_Y69_N6
\BLADE|Add3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLADE|Add3~4_combout\ = (\BLADE|Pala_Y\(6) & (\BLADE|Add3~3\ $ (GND))) # (!\BLADE|Pala_Y\(6) & (!\BLADE|Add3~3\ & VCC))
-- \BLADE|Add3~5\ = CARRY((\BLADE|Pala_Y\(6) & !\BLADE|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BLADE|Pala_Y\(6),
	datad => VCC,
	cin => \BLADE|Add3~3\,
	combout => \BLADE|Add3~4_combout\,
	cout => \BLADE|Add3~5\);

-- Location: LCCOMB_X30_Y69_N18
\BLADE|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLADE|Add2~0_combout\ = (\VGA|pixel_y\(4) & (\VGA|pixel_y\(3) $ (VCC))) # (!\VGA|pixel_y\(4) & (\VGA|pixel_y\(3) & VCC))
-- \BLADE|Add2~1\ = CARRY((\VGA|pixel_y\(4) & \VGA|pixel_y\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_y\(4),
	datab => \VGA|pixel_y\(3),
	datad => VCC,
	combout => \BLADE|Add2~0_combout\,
	cout => \BLADE|Add2~1\);

-- Location: LCCOMB_X30_Y69_N20
\BLADE|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLADE|Add2~2_combout\ = (\VGA|pixel_y\(5) & (!\BLADE|Add2~1\)) # (!\VGA|pixel_y\(5) & ((\BLADE|Add2~1\) # (GND)))
-- \BLADE|Add2~3\ = CARRY((!\BLADE|Add2~1\) # (!\VGA|pixel_y\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA|pixel_y\(5),
	datad => VCC,
	cin => \BLADE|Add2~1\,
	combout => \BLADE|Add2~2_combout\,
	cout => \BLADE|Add2~3\);

-- Location: LCCOMB_X30_Y69_N22
\BLADE|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLADE|Add2~4_combout\ = (\VGA|pixel_y\(6) & (\BLADE|Add2~3\ $ (GND))) # (!\VGA|pixel_y\(6) & (!\BLADE|Add2~3\ & VCC))
-- \BLADE|Add2~5\ = CARRY((\VGA|pixel_y\(6) & !\BLADE|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA|pixel_y\(6),
	datad => VCC,
	cin => \BLADE|Add2~3\,
	combout => \BLADE|Add2~4_combout\,
	cout => \BLADE|Add2~5\);

-- Location: LCCOMB_X30_Y69_N24
\BLADE|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLADE|Add2~6_combout\ = (\VGA|pixel_y\(7) & (!\BLADE|Add2~5\)) # (!\VGA|pixel_y\(7) & ((\BLADE|Add2~5\) # (GND)))
-- \BLADE|Add2~7\ = CARRY((!\BLADE|Add2~5\) # (!\VGA|pixel_y\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA|pixel_y\(7),
	datad => VCC,
	cin => \BLADE|Add2~5\,
	combout => \BLADE|Add2~6_combout\,
	cout => \BLADE|Add2~7\);

-- Location: LCCOMB_X30_Y69_N26
\BLADE|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLADE|Add2~8_combout\ = (\VGA|pixel_y\(8) & (\BLADE|Add2~7\ $ (GND))) # (!\VGA|pixel_y\(8) & (!\BLADE|Add2~7\ & VCC))
-- \BLADE|Add2~9\ = CARRY((\VGA|pixel_y\(8) & !\BLADE|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_y\(8),
	datad => VCC,
	cin => \BLADE|Add2~7\,
	combout => \BLADE|Add2~8_combout\,
	cout => \BLADE|Add2~9\);

-- Location: LCCOMB_X30_Y69_N28
\BLADE|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLADE|Add2~10_combout\ = \BLADE|Add2~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \BLADE|Add2~9\,
	combout => \BLADE|Add2~10_combout\);

-- Location: LCCOMB_X30_Y69_N0
\BLADE|LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLADE|LessThan2~1_cout\ = CARRY((\BLADE|Pala_Y\(1) & !\VGA|pixel_y\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BLADE|Pala_Y\(1),
	datab => \VGA|pixel_y\(1),
	datad => VCC,
	cout => \BLADE|LessThan2~1_cout\);

-- Location: LCCOMB_X30_Y69_N2
\BLADE|LessThan2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLADE|LessThan2~3_cout\ = CARRY((\BLADE|Pala_Y\(2) & (\VGA|pixel_y\(2) & !\BLADE|LessThan2~1_cout\)) # (!\BLADE|Pala_Y\(2) & ((\VGA|pixel_y\(2)) # (!\BLADE|LessThan2~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BLADE|Pala_Y\(2),
	datab => \VGA|pixel_y\(2),
	datad => VCC,
	cin => \BLADE|LessThan2~1_cout\,
	cout => \BLADE|LessThan2~3_cout\);

-- Location: LCCOMB_X30_Y69_N4
\BLADE|LessThan2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLADE|LessThan2~5_cout\ = CARRY((\BLADE|Pala_Y\(3) & ((\VGA|pixel_y\(3)) # (!\BLADE|LessThan2~3_cout\))) # (!\BLADE|Pala_Y\(3) & (\VGA|pixel_y\(3) & !\BLADE|LessThan2~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BLADE|Pala_Y\(3),
	datab => \VGA|pixel_y\(3),
	datad => VCC,
	cin => \BLADE|LessThan2~3_cout\,
	cout => \BLADE|LessThan2~5_cout\);

-- Location: LCCOMB_X30_Y69_N6
\BLADE|LessThan2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLADE|LessThan2~7_cout\ = CARRY((\BLADE|Pala_Y\(4) & (\BLADE|Add2~0_combout\ & !\BLADE|LessThan2~5_cout\)) # (!\BLADE|Pala_Y\(4) & ((\BLADE|Add2~0_combout\) # (!\BLADE|LessThan2~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BLADE|Pala_Y\(4),
	datab => \BLADE|Add2~0_combout\,
	datad => VCC,
	cin => \BLADE|LessThan2~5_cout\,
	cout => \BLADE|LessThan2~7_cout\);

-- Location: LCCOMB_X30_Y69_N8
\BLADE|LessThan2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLADE|LessThan2~9_cout\ = CARRY((\BLADE|Pala_Y\(5) & ((!\BLADE|LessThan2~7_cout\) # (!\BLADE|Add2~2_combout\))) # (!\BLADE|Pala_Y\(5) & (!\BLADE|Add2~2_combout\ & !\BLADE|LessThan2~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BLADE|Pala_Y\(5),
	datab => \BLADE|Add2~2_combout\,
	datad => VCC,
	cin => \BLADE|LessThan2~7_cout\,
	cout => \BLADE|LessThan2~9_cout\);

-- Location: LCCOMB_X30_Y69_N10
\BLADE|LessThan2~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLADE|LessThan2~11_cout\ = CARRY((\BLADE|Pala_Y\(6) & (\BLADE|Add2~4_combout\ & !\BLADE|LessThan2~9_cout\)) # (!\BLADE|Pala_Y\(6) & ((\BLADE|Add2~4_combout\) # (!\BLADE|LessThan2~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BLADE|Pala_Y\(6),
	datab => \BLADE|Add2~4_combout\,
	datad => VCC,
	cin => \BLADE|LessThan2~9_cout\,
	cout => \BLADE|LessThan2~11_cout\);

-- Location: LCCOMB_X30_Y69_N12
\BLADE|LessThan2~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLADE|LessThan2~13_cout\ = CARRY((\BLADE|Pala_Y\(7) & ((!\BLADE|LessThan2~11_cout\) # (!\BLADE|Add2~6_combout\))) # (!\BLADE|Pala_Y\(7) & (!\BLADE|Add2~6_combout\ & !\BLADE|LessThan2~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BLADE|Pala_Y\(7),
	datab => \BLADE|Add2~6_combout\,
	datad => VCC,
	cin => \BLADE|LessThan2~11_cout\,
	cout => \BLADE|LessThan2~13_cout\);

-- Location: LCCOMB_X30_Y69_N14
\BLADE|LessThan2~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLADE|LessThan2~15_cout\ = CARRY((\BLADE|Add2~8_combout\ & ((!\BLADE|LessThan2~13_cout\) # (!\BLADE|Pala_Y\(8)))) # (!\BLADE|Add2~8_combout\ & (!\BLADE|Pala_Y\(8) & !\BLADE|LessThan2~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BLADE|Add2~8_combout\,
	datab => \BLADE|Pala_Y\(8),
	datad => VCC,
	cin => \BLADE|LessThan2~13_cout\,
	cout => \BLADE|LessThan2~15_cout\);

-- Location: LCCOMB_X30_Y69_N16
\BLADE|LessThan2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLADE|LessThan2~16_combout\ = (\BLADE|Add2~10_combout\ & (!\BLADE|LessThan2~15_cout\ & \BLADE|Pala_Y\(9))) # (!\BLADE|Add2~10_combout\ & ((\BLADE|Pala_Y\(9)) # (!\BLADE|LessThan2~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BLADE|Add2~10_combout\,
	datad => \BLADE|Pala_Y\(9),
	cin => \BLADE|LessThan2~15_cout\,
	combout => \BLADE|LessThan2~16_combout\);

-- Location: LCCOMB_X33_Y70_N18
\BLADE|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLADE|Add0~6_combout\ = (\VGA|pixel_x\(3) & (!\BLADE|Add0~5_cout\)) # (!\VGA|pixel_x\(3) & ((\BLADE|Add0~5_cout\) # (GND)))
-- \BLADE|Add0~7\ = CARRY((!\BLADE|Add0~5_cout\) # (!\VGA|pixel_x\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA|pixel_x\(3),
	datad => VCC,
	cin => \BLADE|Add0~5_cout\,
	combout => \BLADE|Add0~6_combout\,
	cout => \BLADE|Add0~7\);

-- Location: LCCOMB_X35_Y69_N2
\VGA|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|Add1~0_combout\ = \VGA|cont_vs\(0) $ (VCC)
-- \VGA|Add1~1\ = CARRY(\VGA|cont_vs\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|cont_vs\(0),
	datad => VCC,
	combout => \VGA|Add1~0_combout\,
	cout => \VGA|Add1~1\);

-- Location: FF_X31_Y69_N1
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

-- Location: FF_X31_Y69_N29
\VGA|pixel_y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	d => \VGA|pixel_y[3]~feeder_combout\,
	ena => \VGA|LessThan6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|pixel_y\(3));

-- Location: FF_X34_Y69_N25
\VGA|pixel_y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	d => \VGA|pixel_y[2]~feeder_combout\,
	ena => \VGA|LessThan6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|pixel_y\(2));

-- Location: FF_X31_Y69_N27
\VGA|pixel_y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	d => \VGA|pixel_y[1]~feeder_combout\,
	ena => \VGA|LessThan6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|pixel_y\(1));

-- Location: FF_X31_Y69_N7
\VGA|pixel_y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	asdata => \VGA|cont_vs\(0),
	sload => VCC,
	ena => \VGA|LessThan6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|pixel_y\(0));

-- Location: FF_X33_Y70_N13
\VGA|pixel_x[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	asdata => \VGA|cont_hs\(0),
	sload => VCC,
	ena => \VGA|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|pixel_x\(0));

-- Location: LCCOMB_X33_Y70_N10
\BLADE|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLADE|LessThan1~1_combout\ = (\VGA|pixel_x\(7)) # ((\VGA|pixel_x\(8)) # ((\VGA|pixel_x\(6) & \VGA|pixel_x\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_x\(6),
	datab => \VGA|pixel_x\(7),
	datac => \VGA|pixel_x\(8),
	datad => \VGA|pixel_x\(5),
	combout => \BLADE|LessThan1~1_combout\);

-- Location: FF_X35_Y69_N23
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

-- Location: LCCOMB_X33_Y69_N12
\BLADE|Mover_Pala~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLADE|Mover_Pala~3_combout\ = (\DOWN~input_o\ & (((!\BLADE|Pala_Y\(2) & !\BLADE|Pala_Y\(1))) # (!\BLADE|Pala_Y\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOWN~input_o\,
	datab => \BLADE|Pala_Y\(3),
	datac => \BLADE|Pala_Y\(2),
	datad => \BLADE|Pala_Y\(1),
	combout => \BLADE|Mover_Pala~3_combout\);

-- Location: LCCOMB_X34_Y69_N26
\VGA|process_0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|process_0~6_combout\ = (!\VGA|cont_vs\(7) & (\VGA|cont_vs\(2) & (!\VGA|cont_vs\(6) & !\VGA|cont_vs\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|cont_vs\(7),
	datab => \VGA|cont_vs\(2),
	datac => \VGA|cont_vs\(6),
	datad => \VGA|cont_vs\(5),
	combout => \VGA|process_0~6_combout\);

-- Location: LCCOMB_X35_Y69_N22
\VGA|cont_vs[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|cont_vs[0]~9_combout\ = (!\VGA|process_0~9_combout\ & ((\VGA|Equal2~2_combout\ & (\VGA|cont_vs\(0))) # (!\VGA|Equal2~2_combout\ & ((\VGA|Add1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|process_0~9_combout\,
	datab => \VGA|Equal2~2_combout\,
	datac => \VGA|cont_vs\(0),
	datad => \VGA|Add1~0_combout\,
	combout => \VGA|cont_vs[0]~9_combout\);

-- Location: LCCOMB_X35_Y70_N2
\VGA|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|Equal0~0_combout\ = (!\VGA|cont_hs\(6) & (\VGA|cont_hs\(9) & (\VGA|cont_hs\(4) & \VGA|cont_hs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|cont_hs\(6),
	datab => \VGA|cont_hs\(9),
	datac => \VGA|cont_hs\(4),
	datad => \VGA|cont_hs\(0),
	combout => \VGA|Equal0~0_combout\);

-- Location: IOIBUF_X115_Y53_N15
\UP~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_UP,
	o => \UP~input_o\);

-- Location: IOIBUF_X115_Y40_N8
\DOWN~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DOWN,
	o => \DOWN~input_o\);

-- Location: CLKCTRL_G12
\VGA|vga_vs~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \VGA|vga_vs~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \VGA|vga_vs~clkctrl_outclk\);

-- Location: LCCOMB_X31_Y69_N28
\VGA|pixel_y[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|pixel_y[3]~feeder_combout\ = \VGA|cont_vs\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA|cont_vs\(3),
	combout => \VGA|pixel_y[3]~feeder_combout\);

-- Location: LCCOMB_X34_Y69_N24
\VGA|pixel_y[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|pixel_y[2]~feeder_combout\ = \VGA|cont_vs\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA|cont_vs\(2),
	combout => \VGA|pixel_y[2]~feeder_combout\);

-- Location: LCCOMB_X31_Y69_N26
\VGA|pixel_y[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|pixel_y[1]~feeder_combout\ = \VGA|cont_vs\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA|cont_vs\(1),
	combout => \VGA|pixel_y[1]~feeder_combout\);

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

-- Location: LCCOMB_X32_Y69_N22
\BLADE|Pala_Y[5]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLADE|Pala_Y[5]~17_combout\ = ((\BLADE|Pala_Y\(5) $ (\BLADE|Desplaza_Pala_Y\(2) $ (!\BLADE|Pala_Y[4]~16\)))) # (GND)
-- \BLADE|Pala_Y[5]~18\ = CARRY((\BLADE|Pala_Y\(5) & ((\BLADE|Desplaza_Pala_Y\(2)) # (!\BLADE|Pala_Y[4]~16\))) # (!\BLADE|Pala_Y\(5) & (\BLADE|Desplaza_Pala_Y\(2) & !\BLADE|Pala_Y[4]~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BLADE|Pala_Y\(5),
	datab => \BLADE|Desplaza_Pala_Y\(2),
	datad => VCC,
	cin => \BLADE|Pala_Y[4]~16\,
	combout => \BLADE|Pala_Y[5]~17_combout\,
	cout => \BLADE|Pala_Y[5]~18\);

-- Location: FF_X32_Y69_N23
\BLADE|Pala_Y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	d => \BLADE|Pala_Y[5]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLADE|Pala_Y\(5));

-- Location: LCCOMB_X32_Y69_N24
\BLADE|Pala_Y[6]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLADE|Pala_Y[6]~19_combout\ = (\BLADE|Pala_Y\(6) & ((\BLADE|Desplaza_Pala_Y\(2) & (\BLADE|Pala_Y[5]~18\ & VCC)) # (!\BLADE|Desplaza_Pala_Y\(2) & (!\BLADE|Pala_Y[5]~18\)))) # (!\BLADE|Pala_Y\(6) & ((\BLADE|Desplaza_Pala_Y\(2) & (!\BLADE|Pala_Y[5]~18\)) # 
-- (!\BLADE|Desplaza_Pala_Y\(2) & ((\BLADE|Pala_Y[5]~18\) # (GND)))))
-- \BLADE|Pala_Y[6]~20\ = CARRY((\BLADE|Pala_Y\(6) & (!\BLADE|Desplaza_Pala_Y\(2) & !\BLADE|Pala_Y[5]~18\)) # (!\BLADE|Pala_Y\(6) & ((!\BLADE|Pala_Y[5]~18\) # (!\BLADE|Desplaza_Pala_Y\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BLADE|Pala_Y\(6),
	datab => \BLADE|Desplaza_Pala_Y\(2),
	datad => VCC,
	cin => \BLADE|Pala_Y[5]~18\,
	combout => \BLADE|Pala_Y[6]~19_combout\,
	cout => \BLADE|Pala_Y[6]~20\);

-- Location: FF_X32_Y69_N25
\BLADE|Pala_Y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	d => \BLADE|Pala_Y[6]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLADE|Pala_Y\(6));

-- Location: LCCOMB_X33_Y69_N4
\BLADE|Mover_Pala~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLADE|Mover_Pala~5_combout\ = (!\BLADE|Pala_Y\(5) & !\BLADE|Pala_Y\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BLADE|Pala_Y\(5),
	datad => \BLADE|Pala_Y\(6),
	combout => \BLADE|Mover_Pala~5_combout\);

-- Location: LCCOMB_X32_Y69_N20
\BLADE|Pala_Y[4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLADE|Pala_Y[4]~15_combout\ = (\BLADE|Pala_Y\(4) & ((\BLADE|Desplaza_Pala_Y\(2) & (\BLADE|Pala_Y[3]~14\ & VCC)) # (!\BLADE|Desplaza_Pala_Y\(2) & (!\BLADE|Pala_Y[3]~14\)))) # (!\BLADE|Pala_Y\(4) & ((\BLADE|Desplaza_Pala_Y\(2) & (!\BLADE|Pala_Y[3]~14\)) # 
-- (!\BLADE|Desplaza_Pala_Y\(2) & ((\BLADE|Pala_Y[3]~14\) # (GND)))))
-- \BLADE|Pala_Y[4]~16\ = CARRY((\BLADE|Pala_Y\(4) & (!\BLADE|Desplaza_Pala_Y\(2) & !\BLADE|Pala_Y[3]~14\)) # (!\BLADE|Pala_Y\(4) & ((!\BLADE|Pala_Y[3]~14\) # (!\BLADE|Desplaza_Pala_Y\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BLADE|Pala_Y\(4),
	datab => \BLADE|Desplaza_Pala_Y\(2),
	datad => VCC,
	cin => \BLADE|Pala_Y[3]~14\,
	combout => \BLADE|Pala_Y[4]~15_combout\,
	cout => \BLADE|Pala_Y[4]~16\);

-- Location: FF_X32_Y69_N21
\BLADE|Pala_Y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	d => \BLADE|Pala_Y[4]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLADE|Pala_Y\(4));

-- Location: LCCOMB_X33_Y69_N26
\BLADE|Mover_Pala~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLADE|Mover_Pala~4_combout\ = (!\BLADE|Pala_Y\(7) & (!\BLADE|Pala_Y\(8) & (!\BLADE|Pala_Y\(4) & !\BLADE|Pala_Y\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BLADE|Pala_Y\(7),
	datab => \BLADE|Pala_Y\(8),
	datac => \BLADE|Pala_Y\(4),
	datad => \BLADE|Pala_Y\(9),
	combout => \BLADE|Mover_Pala~4_combout\);

-- Location: LCCOMB_X33_Y69_N30
\BLADE|Desplaza_Pala_Y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLADE|Desplaza_Pala_Y~0_combout\ = (\BLADE|Mover_Pala~2_combout\) # ((\BLADE|Mover_Pala~3_combout\ & (\BLADE|Mover_Pala~5_combout\ & \BLADE|Mover_Pala~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BLADE|Mover_Pala~3_combout\,
	datab => \BLADE|Mover_Pala~5_combout\,
	datac => \BLADE|Mover_Pala~4_combout\,
	datad => \BLADE|Mover_Pala~2_combout\,
	combout => \BLADE|Desplaza_Pala_Y~0_combout\);

-- Location: FF_X32_Y69_N5
\BLADE|Desplaza_Pala_Y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	asdata => \BLADE|Desplaza_Pala_Y~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLADE|Desplaza_Pala_Y\(1));

-- Location: LCCOMB_X32_Y69_N14
\BLADE|Pala_Y[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLADE|Pala_Y[1]~9_combout\ = (\BLADE|Pala_Y\(1) & (\BLADE|Desplaza_Pala_Y\(1) $ (VCC))) # (!\BLADE|Pala_Y\(1) & (\BLADE|Desplaza_Pala_Y\(1) & VCC))
-- \BLADE|Pala_Y[1]~10\ = CARRY((\BLADE|Pala_Y\(1) & \BLADE|Desplaza_Pala_Y\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BLADE|Pala_Y\(1),
	datab => \BLADE|Desplaza_Pala_Y\(1),
	datad => VCC,
	combout => \BLADE|Pala_Y[1]~9_combout\,
	cout => \BLADE|Pala_Y[1]~10\);

-- Location: LCCOMB_X32_Y69_N16
\BLADE|Pala_Y[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLADE|Pala_Y[2]~11_combout\ = (\BLADE|Desplaza_Pala_Y\(2) & ((\BLADE|Pala_Y\(2) & (\BLADE|Pala_Y[1]~10\ & VCC)) # (!\BLADE|Pala_Y\(2) & (!\BLADE|Pala_Y[1]~10\)))) # (!\BLADE|Desplaza_Pala_Y\(2) & ((\BLADE|Pala_Y\(2) & (!\BLADE|Pala_Y[1]~10\)) # 
-- (!\BLADE|Pala_Y\(2) & ((\BLADE|Pala_Y[1]~10\) # (GND)))))
-- \BLADE|Pala_Y[2]~12\ = CARRY((\BLADE|Desplaza_Pala_Y\(2) & (!\BLADE|Pala_Y\(2) & !\BLADE|Pala_Y[1]~10\)) # (!\BLADE|Desplaza_Pala_Y\(2) & ((!\BLADE|Pala_Y[1]~10\) # (!\BLADE|Pala_Y\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BLADE|Desplaza_Pala_Y\(2),
	datab => \BLADE|Pala_Y\(2),
	datad => VCC,
	cin => \BLADE|Pala_Y[1]~10\,
	combout => \BLADE|Pala_Y[2]~11_combout\,
	cout => \BLADE|Pala_Y[2]~12\);

-- Location: FF_X32_Y69_N17
\BLADE|Pala_Y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	d => \BLADE|Pala_Y[2]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLADE|Pala_Y\(2));

-- Location: LCCOMB_X32_Y69_N18
\BLADE|Pala_Y[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLADE|Pala_Y[3]~13_combout\ = ((\BLADE|Pala_Y\(3) $ (\BLADE|Desplaza_Pala_Y\(2) $ (!\BLADE|Pala_Y[2]~12\)))) # (GND)
-- \BLADE|Pala_Y[3]~14\ = CARRY((\BLADE|Pala_Y\(3) & ((\BLADE|Desplaza_Pala_Y\(2)) # (!\BLADE|Pala_Y[2]~12\))) # (!\BLADE|Pala_Y\(3) & (\BLADE|Desplaza_Pala_Y\(2) & !\BLADE|Pala_Y[2]~12\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BLADE|Pala_Y\(3),
	datab => \BLADE|Desplaza_Pala_Y\(2),
	datad => VCC,
	cin => \BLADE|Pala_Y[2]~12\,
	combout => \BLADE|Pala_Y[3]~13_combout\,
	cout => \BLADE|Pala_Y[3]~14\);

-- Location: LCCOMB_X32_Y69_N26
\BLADE|Pala_Y[7]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLADE|Pala_Y[7]~21_combout\ = ((\BLADE|Desplaza_Pala_Y\(2) $ (\BLADE|Pala_Y\(7) $ (!\BLADE|Pala_Y[6]~20\)))) # (GND)
-- \BLADE|Pala_Y[7]~22\ = CARRY((\BLADE|Desplaza_Pala_Y\(2) & ((\BLADE|Pala_Y\(7)) # (!\BLADE|Pala_Y[6]~20\))) # (!\BLADE|Desplaza_Pala_Y\(2) & (\BLADE|Pala_Y\(7) & !\BLADE|Pala_Y[6]~20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BLADE|Desplaza_Pala_Y\(2),
	datab => \BLADE|Pala_Y\(7),
	datad => VCC,
	cin => \BLADE|Pala_Y[6]~20\,
	combout => \BLADE|Pala_Y[7]~21_combout\,
	cout => \BLADE|Pala_Y[7]~22\);

-- Location: FF_X32_Y69_N27
\BLADE|Pala_Y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	d => \BLADE|Pala_Y[7]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLADE|Pala_Y\(7));

-- Location: LCCOMB_X32_Y69_N28
\BLADE|Pala_Y[8]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLADE|Pala_Y[8]~23_combout\ = (\BLADE|Pala_Y\(8) & ((\BLADE|Desplaza_Pala_Y\(2) & (\BLADE|Pala_Y[7]~22\ & VCC)) # (!\BLADE|Desplaza_Pala_Y\(2) & (!\BLADE|Pala_Y[7]~22\)))) # (!\BLADE|Pala_Y\(8) & ((\BLADE|Desplaza_Pala_Y\(2) & (!\BLADE|Pala_Y[7]~22\)) # 
-- (!\BLADE|Desplaza_Pala_Y\(2) & ((\BLADE|Pala_Y[7]~22\) # (GND)))))
-- \BLADE|Pala_Y[8]~24\ = CARRY((\BLADE|Pala_Y\(8) & (!\BLADE|Desplaza_Pala_Y\(2) & !\BLADE|Pala_Y[7]~22\)) # (!\BLADE|Pala_Y\(8) & ((!\BLADE|Pala_Y[7]~22\) # (!\BLADE|Desplaza_Pala_Y\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BLADE|Pala_Y\(8),
	datab => \BLADE|Desplaza_Pala_Y\(2),
	datad => VCC,
	cin => \BLADE|Pala_Y[7]~22\,
	combout => \BLADE|Pala_Y[8]~23_combout\,
	cout => \BLADE|Pala_Y[8]~24\);

-- Location: LCCOMB_X32_Y69_N30
\BLADE|Pala_Y[9]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLADE|Pala_Y[9]~25_combout\ = \BLADE|Pala_Y\(9) $ (\BLADE|Pala_Y[8]~24\ $ (!\BLADE|Desplaza_Pala_Y\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BLADE|Pala_Y\(9),
	datad => \BLADE|Desplaza_Pala_Y\(2),
	cin => \BLADE|Pala_Y[8]~24\,
	combout => \BLADE|Pala_Y[9]~25_combout\);

-- Location: FF_X32_Y69_N31
\BLADE|Pala_Y[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	d => \BLADE|Pala_Y[9]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLADE|Pala_Y\(9));

-- Location: LCCOMB_X32_Y69_N0
\BLADE|Mover_Pala~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLADE|Mover_Pala~1_combout\ = (\BLADE|Pala_Y\(6) & \BLADE|Pala_Y\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BLADE|Pala_Y\(6),
	datad => \BLADE|Pala_Y\(7),
	combout => \BLADE|Mover_Pala~1_combout\);

-- Location: FF_X32_Y69_N19
\BLADE|Pala_Y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	d => \BLADE|Pala_Y[3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLADE|Pala_Y\(3));

-- Location: LCCOMB_X33_Y69_N20
\BLADE|Mover_Pala~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLADE|Mover_Pala~0_combout\ = (\BLADE|Pala_Y\(8) & ((\BLADE|Pala_Y\(5)) # ((\BLADE|Pala_Y\(3) & \BLADE|Pala_Y\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BLADE|Pala_Y\(5),
	datab => \BLADE|Pala_Y\(3),
	datac => \BLADE|Pala_Y\(4),
	datad => \BLADE|Pala_Y\(8),
	combout => \BLADE|Mover_Pala~0_combout\);

-- Location: LCCOMB_X33_Y69_N10
\BLADE|Mover_Pala~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLADE|Mover_Pala~2_combout\ = (\UP~input_o\ & ((\BLADE|Pala_Y\(9)) # ((\BLADE|Mover_Pala~1_combout\ & \BLADE|Mover_Pala~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UP~input_o\,
	datab => \BLADE|Pala_Y\(9),
	datac => \BLADE|Mover_Pala~1_combout\,
	datad => \BLADE|Mover_Pala~0_combout\,
	combout => \BLADE|Mover_Pala~2_combout\);

-- Location: FF_X32_Y69_N1
\BLADE|Desplaza_Pala_Y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	asdata => \BLADE|Mover_Pala~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLADE|Desplaza_Pala_Y\(2));

-- Location: FF_X32_Y69_N29
\BLADE|Pala_Y[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	d => \BLADE|Pala_Y[8]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLADE|Pala_Y\(8));

-- Location: LCCOMB_X32_Y69_N8
\BLADE|Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLADE|Add3~6_combout\ = (\BLADE|Pala_Y\(7) & (!\BLADE|Add3~5\)) # (!\BLADE|Pala_Y\(7) & ((\BLADE|Add3~5\) # (GND)))
-- \BLADE|Add3~7\ = CARRY((!\BLADE|Add3~5\) # (!\BLADE|Pala_Y\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BLADE|Pala_Y\(7),
	datad => VCC,
	cin => \BLADE|Add3~5\,
	combout => \BLADE|Add3~6_combout\,
	cout => \BLADE|Add3~7\);

-- Location: LCCOMB_X32_Y69_N10
\BLADE|Add3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLADE|Add3~8_combout\ = (\BLADE|Pala_Y\(8) & (\BLADE|Add3~7\ $ (GND))) # (!\BLADE|Pala_Y\(8) & (!\BLADE|Add3~7\ & VCC))
-- \BLADE|Add3~9\ = CARRY((\BLADE|Pala_Y\(8) & !\BLADE|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BLADE|Pala_Y\(8),
	datad => VCC,
	cin => \BLADE|Add3~7\,
	combout => \BLADE|Add3~8_combout\,
	cout => \BLADE|Add3~9\);

-- Location: LCCOMB_X32_Y69_N12
\BLADE|Add3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLADE|Add3~10_combout\ = \BLADE|Pala_Y\(9) $ (\BLADE|Add3~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BLADE|Pala_Y\(9),
	cin => \BLADE|Add3~9\,
	combout => \BLADE|Add3~10_combout\);

-- Location: LCCOMB_X34_Y70_N8
\VGA|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|Add0~0_combout\ = \VGA|cont_hs\(0) $ (VCC)
-- \VGA|Add0~1\ = CARRY(\VGA|cont_hs\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA|cont_hs\(0),
	datad => VCC,
	combout => \VGA|Add0~0_combout\,
	cout => \VGA|Add0~1\);

-- Location: FF_X34_Y70_N9
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

-- Location: LCCOMB_X34_Y70_N10
\VGA|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|Add0~2_combout\ = (\VGA|cont_hs\(1) & (!\VGA|Add0~1\)) # (!\VGA|cont_hs\(1) & ((\VGA|Add0~1\) # (GND)))
-- \VGA|Add0~3\ = CARRY((!\VGA|Add0~1\) # (!\VGA|cont_hs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|cont_hs\(1),
	datad => VCC,
	cin => \VGA|Add0~1\,
	combout => \VGA|Add0~2_combout\,
	cout => \VGA|Add0~3\);

-- Location: FF_X34_Y70_N11
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

-- Location: LCCOMB_X34_Y70_N12
\VGA|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|Add0~4_combout\ = (\VGA|cont_hs\(2) & (\VGA|Add0~3\ $ (GND))) # (!\VGA|cont_hs\(2) & (!\VGA|Add0~3\ & VCC))
-- \VGA|Add0~5\ = CARRY((\VGA|cont_hs\(2) & !\VGA|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|cont_hs\(2),
	datad => VCC,
	cin => \VGA|Add0~3\,
	combout => \VGA|Add0~4_combout\,
	cout => \VGA|Add0~5\);

-- Location: LCCOMB_X34_Y70_N14
\VGA|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|Add0~6_combout\ = (\VGA|cont_hs\(3) & (!\VGA|Add0~5\)) # (!\VGA|cont_hs\(3) & ((\VGA|Add0~5\) # (GND)))
-- \VGA|Add0~7\ = CARRY((!\VGA|Add0~5\) # (!\VGA|cont_hs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA|cont_hs\(3),
	datad => VCC,
	cin => \VGA|Add0~5\,
	combout => \VGA|Add0~6_combout\,
	cout => \VGA|Add0~7\);

-- Location: FF_X34_Y70_N15
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

-- Location: LCCOMB_X34_Y70_N16
\VGA|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|Add0~8_combout\ = (\VGA|cont_hs\(4) & (\VGA|Add0~7\ $ (GND))) # (!\VGA|cont_hs\(4) & (!\VGA|Add0~7\ & VCC))
-- \VGA|Add0~9\ = CARRY((\VGA|cont_hs\(4) & !\VGA|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|cont_hs\(4),
	datad => VCC,
	cin => \VGA|Add0~7\,
	combout => \VGA|Add0~8_combout\,
	cout => \VGA|Add0~9\);

-- Location: LCCOMB_X34_Y70_N18
\VGA|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|Add0~10_combout\ = (\VGA|cont_hs\(5) & (!\VGA|Add0~9\)) # (!\VGA|cont_hs\(5) & ((\VGA|Add0~9\) # (GND)))
-- \VGA|Add0~11\ = CARRY((!\VGA|Add0~9\) # (!\VGA|cont_hs\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|cont_hs\(5),
	datad => VCC,
	cin => \VGA|Add0~9\,
	combout => \VGA|Add0~10_combout\,
	cout => \VGA|Add0~11\);

-- Location: LCCOMB_X34_Y70_N20
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

-- Location: LCCOMB_X34_Y70_N22
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

-- Location: FF_X34_Y70_N23
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

-- Location: LCCOMB_X34_Y70_N6
\VGA|cont_hs~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|cont_hs~2_combout\ = (\VGA|Add0~10_combout\ & !\VGA|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA|Add0~10_combout\,
	datad => \VGA|Equal0~2_combout\,
	combout => \VGA|cont_hs~2_combout\);

-- Location: FF_X34_Y70_N7
\VGA|cont_hs[5]\ : dffeas
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
	q => \VGA|cont_hs\(5));

-- Location: LCCOMB_X34_Y70_N2
\VGA|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|Equal0~1_combout\ = (\VGA|cont_hs\(2) & (!\VGA|cont_hs\(5) & (\VGA|cont_hs\(3) & \VGA|cont_hs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|cont_hs\(2),
	datab => \VGA|cont_hs\(5),
	datac => \VGA|cont_hs\(3),
	datad => \VGA|cont_hs\(1),
	combout => \VGA|Equal0~1_combout\);

-- Location: LCCOMB_X34_Y70_N0
\VGA|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|Equal0~2_combout\ = (\VGA|Equal0~0_combout\ & (\VGA|Equal0~1_combout\ & (!\VGA|cont_hs\(7) & \VGA|cont_hs\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|Equal0~0_combout\,
	datab => \VGA|Equal0~1_combout\,
	datac => \VGA|cont_hs\(7),
	datad => \VGA|cont_hs\(8),
	combout => \VGA|Equal0~2_combout\);

-- Location: LCCOMB_X34_Y70_N24
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

-- Location: LCCOMB_X35_Y70_N6
\VGA|cont_hs~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|cont_hs~1_combout\ = (!\VGA|Equal0~2_combout\ & \VGA|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA|Equal0~2_combout\,
	datad => \VGA|Add0~16_combout\,
	combout => \VGA|cont_hs~1_combout\);

-- Location: FF_X35_Y70_N7
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

-- Location: LCCOMB_X34_Y70_N28
\VGA|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|Equal2~1_combout\ = (\VGA|cont_hs\(2)) # ((\VGA|cont_hs\(1)) # ((\VGA|cont_hs\(8)) # (!\VGA|cont_hs\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|cont_hs\(2),
	datab => \VGA|cont_hs\(1),
	datac => \VGA|cont_hs\(7),
	datad => \VGA|cont_hs\(8),
	combout => \VGA|Equal2~1_combout\);

-- Location: LCCOMB_X34_Y70_N26
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

-- Location: LCCOMB_X35_Y70_N24
\VGA|cont_hs~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|cont_hs~0_combout\ = (!\VGA|Equal0~2_combout\ & \VGA|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|Equal0~2_combout\,
	datac => \VGA|Add0~18_combout\,
	combout => \VGA|cont_hs~0_combout\);

-- Location: FF_X35_Y70_N25
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

-- Location: FF_X34_Y70_N17
\VGA|cont_hs[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	d => \VGA|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|cont_hs\(4));

-- Location: LCCOMB_X35_Y70_N4
\VGA|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|Equal2~0_combout\ = (\VGA|cont_hs\(6)) # (((\VGA|cont_hs\(0)) # (!\VGA|cont_hs\(4))) # (!\VGA|cont_hs\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|cont_hs\(6),
	datab => \VGA|cont_hs\(9),
	datac => \VGA|cont_hs\(4),
	datad => \VGA|cont_hs\(0),
	combout => \VGA|Equal2~0_combout\);

-- Location: LCCOMB_X34_Y70_N4
\VGA|Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|Equal2~2_combout\ = ((\VGA|Equal2~1_combout\) # ((\VGA|cont_hs\(3)) # (\VGA|Equal2~0_combout\))) # (!\VGA|cont_hs\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|cont_hs\(5),
	datab => \VGA|Equal2~1_combout\,
	datac => \VGA|cont_hs\(3),
	datad => \VGA|Equal2~0_combout\,
	combout => \VGA|Equal2~2_combout\);

-- Location: LCCOMB_X35_Y69_N4
\VGA|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|Add1~2_combout\ = (\VGA|cont_vs\(1) & (!\VGA|Add1~1\)) # (!\VGA|cont_vs\(1) & ((\VGA|Add1~1\) # (GND)))
-- \VGA|Add1~3\ = CARRY((!\VGA|Add1~1\) # (!\VGA|cont_vs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA|cont_vs\(1),
	datad => VCC,
	cin => \VGA|Add1~1\,
	combout => \VGA|Add1~2_combout\,
	cout => \VGA|Add1~3\);

-- Location: LCCOMB_X35_Y69_N28
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

-- Location: FF_X35_Y69_N29
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

-- Location: LCCOMB_X35_Y69_N6
\VGA|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|Add1~4_combout\ = (\VGA|cont_vs\(2) & (\VGA|Add1~3\ $ (GND))) # (!\VGA|cont_vs\(2) & (!\VGA|Add1~3\ & VCC))
-- \VGA|Add1~5\ = CARRY((\VGA|cont_vs\(2) & !\VGA|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|cont_vs\(2),
	datad => VCC,
	cin => \VGA|Add1~3\,
	combout => \VGA|Add1~4_combout\,
	cout => \VGA|Add1~5\);

-- Location: LCCOMB_X35_Y69_N8
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

-- Location: LCCOMB_X35_Y69_N10
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

-- Location: LCCOMB_X35_Y69_N24
\VGA|cont_vs[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|cont_vs[4]~5_combout\ = (!\VGA|process_0~9_combout\ & ((\VGA|Equal2~2_combout\ & (\VGA|cont_vs\(4))) # (!\VGA|Equal2~2_combout\ & ((\VGA|Add1~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|process_0~9_combout\,
	datab => \VGA|Equal2~2_combout\,
	datac => \VGA|cont_vs\(4),
	datad => \VGA|Add1~8_combout\,
	combout => \VGA|cont_vs[4]~5_combout\);

-- Location: FF_X35_Y69_N25
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

-- Location: LCCOMB_X35_Y69_N12
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

-- Location: LCCOMB_X34_Y69_N18
\VGA|cont_vs[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|cont_vs[5]~2_combout\ = (!\VGA|process_0~9_combout\ & ((\VGA|Equal2~2_combout\ & (\VGA|cont_vs\(5))) # (!\VGA|Equal2~2_combout\ & ((\VGA|Add1~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|Equal2~2_combout\,
	datab => \VGA|process_0~9_combout\,
	datac => \VGA|cont_vs\(5),
	datad => \VGA|Add1~10_combout\,
	combout => \VGA|cont_vs[5]~2_combout\);

-- Location: FF_X34_Y69_N19
\VGA|cont_vs[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	d => \VGA|cont_vs[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|cont_vs\(5));

-- Location: LCCOMB_X35_Y69_N14
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

-- Location: LCCOMB_X35_Y69_N16
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

-- Location: LCCOMB_X35_Y69_N18
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

-- Location: LCCOMB_X35_Y69_N20
\VGA|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|Add1~18_combout\ = \VGA|cont_vs\(9) $ (\VGA|Add1~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|cont_vs\(9),
	cin => \VGA|Add1~17\,
	combout => \VGA|Add1~18_combout\);

-- Location: LCCOMB_X34_Y69_N16
\VGA|cont_vs[9]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|cont_vs[9]~1_combout\ = (!\VGA|process_0~9_combout\ & ((\VGA|Equal2~2_combout\ & (\VGA|cont_vs\(9))) # (!\VGA|Equal2~2_combout\ & ((\VGA|Add1~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|Equal2~2_combout\,
	datab => \VGA|process_0~9_combout\,
	datac => \VGA|cont_vs\(9),
	datad => \VGA|Add1~18_combout\,
	combout => \VGA|cont_vs[9]~1_combout\);

-- Location: FF_X34_Y69_N17
\VGA|cont_vs[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	d => \VGA|cont_vs[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|cont_vs\(9));

-- Location: LCCOMB_X34_Y70_N30
\VGA|process_0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|process_0~7_combout\ = (\VGA|cont_hs\(7) & ((\VGA|cont_hs\(6)) # ((\VGA|cont_hs\(4) & \VGA|cont_hs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|cont_hs\(6),
	datab => \VGA|cont_hs\(4),
	datac => \VGA|cont_hs\(7),
	datad => \VGA|cont_hs\(5),
	combout => \VGA|process_0~7_combout\);

-- Location: LCCOMB_X35_Y69_N30
\VGA|cont_vs[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|cont_vs[3]~6_combout\ = (!\VGA|process_0~9_combout\ & ((\VGA|Equal2~2_combout\ & ((\VGA|cont_vs\(3)))) # (!\VGA|Equal2~2_combout\ & (\VGA|Add1~6_combout\))))

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
	combout => \VGA|cont_vs[3]~6_combout\);

-- Location: FF_X35_Y69_N31
\VGA|cont_vs[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	d => \VGA|cont_vs[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|cont_vs\(3));

-- Location: LCCOMB_X35_Y69_N26
\VGA|process_0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|process_0~5_combout\ = (!\VGA|cont_vs\(0) & (!\VGA|cont_vs\(1) & (\VGA|cont_vs\(3) & !\VGA|cont_vs\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|cont_vs\(0),
	datab => \VGA|cont_vs\(1),
	datac => \VGA|cont_vs\(3),
	datad => \VGA|cont_vs\(4),
	combout => \VGA|process_0~5_combout\);

-- Location: LCCOMB_X34_Y69_N4
\VGA|process_0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|process_0~8_combout\ = (\VGA|process_0~6_combout\ & (\VGA|process_0~5_combout\ & ((\VGA|process_0~7_combout\) # (\VGA|cont_hs\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|process_0~6_combout\,
	datab => \VGA|process_0~7_combout\,
	datac => \VGA|cont_hs\(8),
	datad => \VGA|process_0~5_combout\,
	combout => \VGA|process_0~8_combout\);

-- Location: LCCOMB_X34_Y69_N14
\VGA|process_0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|process_0~9_combout\ = (!\VGA|cont_vs\(8) & (\VGA|cont_vs\(9) & (\VGA|process_0~8_combout\ & \VGA|cont_hs\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|cont_vs\(8),
	datab => \VGA|cont_vs\(9),
	datac => \VGA|process_0~8_combout\,
	datad => \VGA|cont_hs\(9),
	combout => \VGA|process_0~9_combout\);

-- Location: LCCOMB_X34_Y69_N30
\VGA|cont_vs[8]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|cont_vs[8]~0_combout\ = (!\VGA|process_0~9_combout\ & ((\VGA|Equal2~2_combout\ & (\VGA|cont_vs\(8))) # (!\VGA|Equal2~2_combout\ & ((\VGA|Add1~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|Equal2~2_combout\,
	datab => \VGA|process_0~9_combout\,
	datac => \VGA|cont_vs\(8),
	datad => \VGA|Add1~16_combout\,
	combout => \VGA|cont_vs[8]~0_combout\);

-- Location: FF_X34_Y69_N31
\VGA|cont_vs[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	d => \VGA|cont_vs[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|cont_vs\(8));

-- Location: LCCOMB_X31_Y69_N2
\VGA|pixel_y[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|pixel_y[8]~feeder_combout\ = \VGA|cont_vs\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA|cont_vs\(8),
	combout => \VGA|pixel_y[8]~feeder_combout\);

-- Location: LCCOMB_X34_Y69_N8
\VGA|cont_vs[6]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|cont_vs[6]~3_combout\ = (!\VGA|process_0~9_combout\ & ((\VGA|Equal2~2_combout\ & (\VGA|cont_vs\(6))) # (!\VGA|Equal2~2_combout\ & ((\VGA|Add1~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|Equal2~2_combout\,
	datab => \VGA|process_0~9_combout\,
	datac => \VGA|cont_vs\(6),
	datad => \VGA|Add1~12_combout\,
	combout => \VGA|cont_vs[6]~3_combout\);

-- Location: FF_X34_Y69_N9
\VGA|cont_vs[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	d => \VGA|cont_vs[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|cont_vs\(6));

-- Location: LCCOMB_X34_Y69_N2
\VGA|cont_vs[7]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|cont_vs[7]~4_combout\ = (!\VGA|process_0~9_combout\ & ((\VGA|Equal2~2_combout\ & (\VGA|cont_vs\(7))) # (!\VGA|Equal2~2_combout\ & ((\VGA|Add1~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|Equal2~2_combout\,
	datab => \VGA|process_0~9_combout\,
	datac => \VGA|cont_vs\(7),
	datad => \VGA|Add1~14_combout\,
	combout => \VGA|cont_vs[7]~4_combout\);

-- Location: FF_X34_Y69_N3
\VGA|cont_vs[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	d => \VGA|cont_vs[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|cont_vs\(7));

-- Location: LCCOMB_X34_Y69_N28
\VGA|LessThan6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|LessThan6~0_combout\ = (\VGA|cont_vs\(8) & (\VGA|cont_vs\(5) & (\VGA|cont_vs\(6) & \VGA|cont_vs\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|cont_vs\(8),
	datab => \VGA|cont_vs\(5),
	datac => \VGA|cont_vs\(6),
	datad => \VGA|cont_vs\(7),
	combout => \VGA|LessThan6~0_combout\);

-- Location: LCCOMB_X34_Y69_N10
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

-- Location: FF_X31_Y69_N3
\VGA|pixel_y[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	d => \VGA|pixel_y[8]~feeder_combout\,
	ena => \VGA|LessThan6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|pixel_y\(8));

-- Location: FF_X31_Y69_N13
\VGA|pixel_y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	asdata => \VGA|cont_vs\(6),
	sload => VCC,
	ena => \VGA|LessThan6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|pixel_y\(6));

-- Location: LCCOMB_X31_Y69_N24
\VGA|pixel_y[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|pixel_y[5]~feeder_combout\ = \VGA|cont_vs\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA|cont_vs\(5),
	combout => \VGA|pixel_y[5]~feeder_combout\);

-- Location: FF_X31_Y69_N25
\VGA|pixel_y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	d => \VGA|pixel_y[5]~feeder_combout\,
	ena => \VGA|LessThan6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|pixel_y\(5));

-- Location: LCCOMB_X31_Y69_N30
\VGA|pixel_y[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|pixel_y[4]~feeder_combout\ = \VGA|cont_vs\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA|cont_vs\(4),
	combout => \VGA|pixel_y[4]~feeder_combout\);

-- Location: FF_X31_Y69_N31
\VGA|pixel_y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	d => \VGA|pixel_y[4]~feeder_combout\,
	ena => \VGA|LessThan6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|pixel_y\(4));

-- Location: FF_X32_Y69_N15
\BLADE|Pala_Y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	d => \BLADE|Pala_Y[1]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLADE|Pala_Y\(1));

-- Location: LCCOMB_X31_Y69_N6
\BLADE|LessThan3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLADE|LessThan3~1_cout\ = CARRY(\VGA|pixel_y\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_y\(0),
	datad => VCC,
	cout => \BLADE|LessThan3~1_cout\);

-- Location: LCCOMB_X31_Y69_N8
\BLADE|LessThan3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLADE|LessThan3~3_cout\ = CARRY((\VGA|pixel_y\(1) & (\BLADE|Pala_Y\(1) & !\BLADE|LessThan3~1_cout\)) # (!\VGA|pixel_y\(1) & ((\BLADE|Pala_Y\(1)) # (!\BLADE|LessThan3~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_y\(1),
	datab => \BLADE|Pala_Y\(1),
	datad => VCC,
	cin => \BLADE|LessThan3~1_cout\,
	cout => \BLADE|LessThan3~3_cout\);

-- Location: LCCOMB_X31_Y69_N10
\BLADE|LessThan3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLADE|LessThan3~5_cout\ = CARRY((\VGA|pixel_y\(2) & ((!\BLADE|LessThan3~3_cout\) # (!\BLADE|Pala_Y\(2)))) # (!\VGA|pixel_y\(2) & (!\BLADE|Pala_Y\(2) & !\BLADE|LessThan3~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_y\(2),
	datab => \BLADE|Pala_Y\(2),
	datad => VCC,
	cin => \BLADE|LessThan3~3_cout\,
	cout => \BLADE|LessThan3~5_cout\);

-- Location: LCCOMB_X31_Y69_N12
\BLADE|LessThan3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLADE|LessThan3~7_cout\ = CARRY((\VGA|pixel_y\(3) & (!\BLADE|Pala_Y\(3) & !\BLADE|LessThan3~5_cout\)) # (!\VGA|pixel_y\(3) & ((!\BLADE|LessThan3~5_cout\) # (!\BLADE|Pala_Y\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_y\(3),
	datab => \BLADE|Pala_Y\(3),
	datad => VCC,
	cin => \BLADE|LessThan3~5_cout\,
	cout => \BLADE|LessThan3~7_cout\);

-- Location: LCCOMB_X31_Y69_N14
\BLADE|LessThan3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLADE|LessThan3~9_cout\ = CARRY((\BLADE|Add3~0_combout\ & (\VGA|pixel_y\(4) & !\BLADE|LessThan3~7_cout\)) # (!\BLADE|Add3~0_combout\ & ((\VGA|pixel_y\(4)) # (!\BLADE|LessThan3~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BLADE|Add3~0_combout\,
	datab => \VGA|pixel_y\(4),
	datad => VCC,
	cin => \BLADE|LessThan3~7_cout\,
	cout => \BLADE|LessThan3~9_cout\);

-- Location: LCCOMB_X31_Y69_N16
\BLADE|LessThan3~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLADE|LessThan3~11_cout\ = CARRY((\BLADE|Add3~2_combout\ & ((!\BLADE|LessThan3~9_cout\) # (!\VGA|pixel_y\(5)))) # (!\BLADE|Add3~2_combout\ & (!\VGA|pixel_y\(5) & !\BLADE|LessThan3~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BLADE|Add3~2_combout\,
	datab => \VGA|pixel_y\(5),
	datad => VCC,
	cin => \BLADE|LessThan3~9_cout\,
	cout => \BLADE|LessThan3~11_cout\);

-- Location: LCCOMB_X31_Y69_N18
\BLADE|LessThan3~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLADE|LessThan3~13_cout\ = CARRY((\BLADE|Add3~4_combout\ & (\VGA|pixel_y\(6) & !\BLADE|LessThan3~11_cout\)) # (!\BLADE|Add3~4_combout\ & ((\VGA|pixel_y\(6)) # (!\BLADE|LessThan3~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BLADE|Add3~4_combout\,
	datab => \VGA|pixel_y\(6),
	datad => VCC,
	cin => \BLADE|LessThan3~11_cout\,
	cout => \BLADE|LessThan3~13_cout\);

-- Location: LCCOMB_X31_Y69_N20
\BLADE|LessThan3~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLADE|LessThan3~15_cout\ = CARRY((\VGA|pixel_y\(7) & (\BLADE|Add3~6_combout\ & !\BLADE|LessThan3~13_cout\)) # (!\VGA|pixel_y\(7) & ((\BLADE|Add3~6_combout\) # (!\BLADE|LessThan3~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_y\(7),
	datab => \BLADE|Add3~6_combout\,
	datad => VCC,
	cin => \BLADE|LessThan3~13_cout\,
	cout => \BLADE|LessThan3~15_cout\);

-- Location: LCCOMB_X31_Y69_N22
\BLADE|LessThan3~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLADE|LessThan3~16_combout\ = (\VGA|pixel_y\(8) & ((!\BLADE|Add3~8_combout\) # (!\BLADE|LessThan3~15_cout\))) # (!\VGA|pixel_y\(8) & (!\BLADE|LessThan3~15_cout\ & !\BLADE|Add3~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA|pixel_y\(8),
	datad => \BLADE|Add3~8_combout\,
	cin => \BLADE|LessThan3~15_cout\,
	combout => \BLADE|LessThan3~16_combout\);

-- Location: LCCOMB_X33_Y70_N2
\VGA|LessThan5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|LessThan5~0_combout\ = ((!\VGA|cont_hs\(7) & !\VGA|cont_hs\(8))) # (!\VGA|cont_hs\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|cont_hs\(7),
	datab => \VGA|cont_hs\(8),
	datac => \VGA|cont_hs\(9),
	combout => \VGA|LessThan5~0_combout\);

-- Location: FF_X33_Y70_N19
\VGA|pixel_x[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	asdata => \VGA|cont_hs\(3),
	sload => VCC,
	ena => \VGA|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|pixel_x\(3));

-- Location: FF_X34_Y70_N13
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

-- Location: FF_X33_Y70_N17
\VGA|pixel_x[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	asdata => \VGA|cont_hs\(2),
	sload => VCC,
	ena => \VGA|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|pixel_x\(2));

-- Location: FF_X34_Y70_N19
\VGA|pixel_x[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	asdata => \VGA|cont_hs\(4),
	sload => VCC,
	ena => \VGA|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|pixel_x\(4));

-- Location: LCCOMB_X33_Y70_N0
\BLADE|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLADE|LessThan1~0_combout\ = (\VGA|pixel_x\(6) & (\VGA|pixel_x\(3) & (\VGA|pixel_x\(2) & \VGA|pixel_x\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_x\(6),
	datab => \VGA|pixel_x\(3),
	datac => \VGA|pixel_x\(2),
	datad => \VGA|pixel_x\(4),
	combout => \BLADE|LessThan1~0_combout\);

-- Location: FF_X33_Y70_N31
\VGA|pixel_x[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	asdata => \VGA|cont_hs\(9),
	sload => VCC,
	ena => \VGA|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|pixel_x\(9));

-- Location: FF_X33_Y70_N15
\VGA|pixel_x[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	asdata => \VGA|cont_hs\(1),
	sload => VCC,
	ena => \VGA|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|pixel_x\(1));

-- Location: LCCOMB_X33_Y70_N12
\BLADE|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLADE|Add0~1_cout\ = CARRY(\VGA|pixel_x\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_x\(0),
	datad => VCC,
	cout => \BLADE|Add0~1_cout\);

-- Location: LCCOMB_X33_Y70_N14
\BLADE|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLADE|Add0~3_cout\ = CARRY((!\VGA|pixel_x\(1) & !\BLADE|Add0~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA|pixel_x\(1),
	datad => VCC,
	cin => \BLADE|Add0~1_cout\,
	cout => \BLADE|Add0~3_cout\);

-- Location: LCCOMB_X33_Y70_N16
\BLADE|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLADE|Add0~5_cout\ = CARRY((\VGA|pixel_x\(2) & !\BLADE|Add0~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA|pixel_x\(2),
	datad => VCC,
	cin => \BLADE|Add0~3_cout\,
	cout => \BLADE|Add0~5_cout\);

-- Location: LCCOMB_X33_Y70_N20
\BLADE|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLADE|Add0~8_combout\ = (\VGA|pixel_x\(4) & (\BLADE|Add0~7\ $ (GND))) # (!\VGA|pixel_x\(4) & (!\BLADE|Add0~7\ & VCC))
-- \BLADE|Add0~9\ = CARRY((\VGA|pixel_x\(4) & !\BLADE|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA|pixel_x\(4),
	datad => VCC,
	cin => \BLADE|Add0~7\,
	combout => \BLADE|Add0~8_combout\,
	cout => \BLADE|Add0~9\);

-- Location: FF_X34_Y70_N27
\VGA|pixel_x[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	asdata => \VGA|cont_hs\(5),
	sload => VCC,
	ena => \VGA|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|pixel_x\(5));

-- Location: LCCOMB_X33_Y70_N22
\BLADE|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLADE|Add0~10_combout\ = (\VGA|pixel_x\(5) & (!\BLADE|Add0~9\)) # (!\VGA|pixel_x\(5) & ((\BLADE|Add0~9\) # (GND)))
-- \BLADE|Add0~11\ = CARRY((!\BLADE|Add0~9\) # (!\VGA|pixel_x\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA|pixel_x\(5),
	datad => VCC,
	cin => \BLADE|Add0~9\,
	combout => \BLADE|Add0~10_combout\,
	cout => \BLADE|Add0~11\);

-- Location: FF_X34_Y70_N21
\VGA|cont_hs[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	d => \VGA|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|cont_hs\(6));

-- Location: FF_X34_Y70_N25
\VGA|pixel_x[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	asdata => \VGA|cont_hs\(6),
	sload => VCC,
	ena => \VGA|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|pixel_x\(6));

-- Location: LCCOMB_X33_Y70_N24
\BLADE|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLADE|Add0~12_combout\ = (\VGA|pixel_x\(6) & (\BLADE|Add0~11\ $ (GND))) # (!\VGA|pixel_x\(6) & (!\BLADE|Add0~11\ & VCC))
-- \BLADE|Add0~13\ = CARRY((\VGA|pixel_x\(6) & !\BLADE|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA|pixel_x\(6),
	datad => VCC,
	cin => \BLADE|Add0~11\,
	combout => \BLADE|Add0~12_combout\,
	cout => \BLADE|Add0~13\);

-- Location: LCCOMB_X33_Y70_N4
\VGA|vga_r~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|vga_r~0_combout\ = (\BLADE|Add0~12_combout\ & ((\BLADE|Add0~10_combout\) # ((\BLADE|Add0~6_combout\ & \BLADE|Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BLADE|Add0~6_combout\,
	datab => \BLADE|Add0~8_combout\,
	datac => \BLADE|Add0~10_combout\,
	datad => \BLADE|Add0~12_combout\,
	combout => \VGA|vga_r~0_combout\);

-- Location: FF_X33_Y70_N27
\VGA|pixel_x[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	asdata => \VGA|cont_hs\(7),
	sload => VCC,
	ena => \VGA|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|pixel_x\(7));

-- Location: LCCOMB_X33_Y70_N26
\BLADE|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLADE|Add0~14_combout\ = (\VGA|pixel_x\(7) & (!\BLADE|Add0~13\)) # (!\VGA|pixel_x\(7) & ((\BLADE|Add0~13\) # (GND)))
-- \BLADE|Add0~15\ = CARRY((!\BLADE|Add0~13\) # (!\VGA|pixel_x\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA|pixel_x\(7),
	datad => VCC,
	cin => \BLADE|Add0~13\,
	combout => \BLADE|Add0~14_combout\,
	cout => \BLADE|Add0~15\);

-- Location: FF_X33_Y70_N29
\VGA|pixel_x[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	asdata => \VGA|cont_hs\(8),
	sload => VCC,
	ena => \VGA|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|pixel_x\(8));

-- Location: LCCOMB_X33_Y70_N28
\BLADE|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLADE|Add0~16_combout\ = (\VGA|pixel_x\(8) & (\BLADE|Add0~15\ $ (GND))) # (!\VGA|pixel_x\(8) & (!\BLADE|Add0~15\ & VCC))
-- \BLADE|Add0~17\ = CARRY((\VGA|pixel_x\(8) & !\BLADE|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA|pixel_x\(8),
	datad => VCC,
	cin => \BLADE|Add0~15\,
	combout => \BLADE|Add0~16_combout\,
	cout => \BLADE|Add0~17\);

-- Location: LCCOMB_X33_Y70_N6
\VGA|vga_r~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|vga_r~1_combout\ = (\VGA|vga_r~0_combout\) # ((\BLADE|Add0~14_combout\) # (\BLADE|Add0~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA|vga_r~0_combout\,
	datac => \BLADE|Add0~14_combout\,
	datad => \BLADE|Add0~16_combout\,
	combout => \VGA|vga_r~1_combout\);

-- Location: LCCOMB_X33_Y70_N8
\VGA|vga_r~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|vga_r~2_combout\ = (\VGA|vga_r~1_combout\ & (((!\BLADE|LessThan1~1_combout\ & !\BLADE|LessThan1~0_combout\)) # (!\VGA|pixel_x\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BLADE|LessThan1~1_combout\,
	datab => \BLADE|LessThan1~0_combout\,
	datac => \VGA|pixel_x\(9),
	datad => \VGA|vga_r~1_combout\,
	combout => \VGA|vga_r~2_combout\);

-- Location: LCCOMB_X33_Y70_N30
\BLADE|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLADE|Add0~18_combout\ = \VGA|pixel_x\(9) $ (\BLADE|Add0~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_x\(9),
	cin => \BLADE|Add0~17\,
	combout => \BLADE|Add0~18_combout\);

-- Location: LCCOMB_X34_Y69_N22
\VGA|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|process_0~0_combout\ = (!\VGA|LessThan6~0_combout\ & (\VGA|LessThan5~0_combout\ & !\VGA|cont_vs\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA|LessThan6~0_combout\,
	datac => \VGA|LessThan5~0_combout\,
	datad => \VGA|cont_vs\(9),
	combout => \VGA|process_0~0_combout\);

-- Location: FF_X34_Y69_N23
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

-- Location: LCCOMB_X33_Y69_N22
\VGA|vga_r~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|vga_r~3_combout\ = (\VGA|vga_r~2_combout\ & (\BLADE|Add0~18_combout\ & \VGA|video_on~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA|vga_r~2_combout\,
	datac => \BLADE|Add0~18_combout\,
	datad => \VGA|video_on~q\,
	combout => \VGA|vga_r~3_combout\);

-- Location: LCCOMB_X31_Y69_N4
\VGA|vga_r~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|vga_r~4_combout\ = (!\BLADE|LessThan2~16_combout\ & (\VGA|vga_r~3_combout\ & ((\BLADE|Add3~10_combout\) # (!\BLADE|LessThan3~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BLADE|LessThan2~16_combout\,
	datab => \BLADE|Add3~10_combout\,
	datac => \BLADE|LessThan3~16_combout\,
	datad => \VGA|vga_r~3_combout\,
	combout => \VGA|vga_r~4_combout\);

-- Location: FF_X31_Y69_N5
\VGA|vga_r\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	d => \VGA|vga_r~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|vga_r~q\);

-- Location: FF_X31_Y69_N9
\VGA|vga_g\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	asdata => \VGA|vga_r~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|vga_g~q\);

-- Location: FF_X31_Y69_N11
\VGA|vga_b\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	asdata => \VGA|vga_r~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|vga_b~q\);

-- Location: LCCOMB_X33_Y69_N0
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

-- Location: FF_X33_Y69_N1
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

-- Location: LCCOMB_X36_Y70_N4
\VGA|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|process_0~1_combout\ = (\VGA|cont_hs\(9) & (\VGA|cont_hs\(7) & !\VGA|cont_hs\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA|cont_hs\(9),
	datac => \VGA|cont_hs\(7),
	datad => \VGA|cont_hs\(8),
	combout => \VGA|process_0~1_combout\);

-- Location: LCCOMB_X35_Y70_N18
\VGA|process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|process_0~2_combout\ = ((\VGA|cont_hs\(6) & (\VGA|cont_hs\(5) & \VGA|cont_hs\(4))) # (!\VGA|cont_hs\(6) & (!\VGA|cont_hs\(5) & !\VGA|cont_hs\(4)))) # (!\VGA|process_0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|cont_hs\(6),
	datab => \VGA|cont_hs\(5),
	datac => \VGA|cont_hs\(4),
	datad => \VGA|process_0~1_combout\,
	combout => \VGA|process_0~2_combout\);

-- Location: FF_X35_Y70_N19
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

-- Location: LCCOMB_X35_Y70_N20
\VGA|vga_hs~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|vga_hs~feeder_combout\ = \VGA|hs~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA|hs~q\,
	combout => \VGA|vga_hs~feeder_combout\);

-- Location: FF_X35_Y70_N21
\VGA|vga_hs\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	d => \VGA|vga_hs~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|vga_hs~q\);

-- Location: LCCOMB_X34_Y69_N0
\VGA|cont_vs[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|cont_vs[2]~7_combout\ = (!\VGA|process_0~9_combout\ & ((\VGA|Equal2~2_combout\ & (\VGA|cont_vs\(2))) # (!\VGA|Equal2~2_combout\ & ((\VGA|Add1~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|Equal2~2_combout\,
	datab => \VGA|process_0~9_combout\,
	datac => \VGA|cont_vs\(2),
	datad => \VGA|Add1~4_combout\,
	combout => \VGA|cont_vs[2]~7_combout\);

-- Location: FF_X34_Y69_N1
\VGA|cont_vs[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	d => \VGA|cont_vs[2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|cont_vs\(2));

-- Location: LCCOMB_X35_Y69_N0
\VGA|process_0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|process_0~3_combout\ = (((\VGA|cont_vs\(2)) # (\VGA|cont_vs\(4))) # (!\VGA|cont_vs\(1))) # (!\VGA|cont_vs\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|cont_vs\(3),
	datab => \VGA|cont_vs\(1),
	datac => \VGA|cont_vs\(2),
	datad => \VGA|cont_vs\(4),
	combout => \VGA|process_0~3_combout\);

-- Location: LCCOMB_X34_Y69_N20
\VGA|process_0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|process_0~4_combout\ = ((\VGA|process_0~3_combout\) # (\VGA|cont_vs\(9))) # (!\VGA|LessThan6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA|LessThan6~0_combout\,
	datac => \VGA|process_0~3_combout\,
	datad => \VGA|cont_vs\(9),
	combout => \VGA|process_0~4_combout\);

-- Location: FF_X34_Y69_N21
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

-- Location: LCCOMB_X55_Y69_N4
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

-- Location: FF_X55_Y69_N5
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


