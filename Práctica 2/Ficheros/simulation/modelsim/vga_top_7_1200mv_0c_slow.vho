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

-- DATE "05/14/2019 16:08:25"

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
SIGNAL \BALL|Add1~1\ : std_logic;
SIGNAL \BALL|Add1~0_combout\ : std_logic;
SIGNAL \BALL|Add1~3\ : std_logic;
SIGNAL \BALL|Add1~2_combout\ : std_logic;
SIGNAL \BALL|Add1~5\ : std_logic;
SIGNAL \BALL|Add1~4_combout\ : std_logic;
SIGNAL \BALL|Add1~7\ : std_logic;
SIGNAL \BALL|Add1~6_combout\ : std_logic;
SIGNAL \BALL|Add1~9\ : std_logic;
SIGNAL \BALL|Add1~8_combout\ : std_logic;
SIGNAL \BALL|Add1~10_combout\ : std_logic;
SIGNAL \BALL|LessThan1~1_cout\ : std_logic;
SIGNAL \BALL|LessThan1~3_cout\ : std_logic;
SIGNAL \BALL|LessThan1~5_cout\ : std_logic;
SIGNAL \BALL|LessThan1~7_cout\ : std_logic;
SIGNAL \BALL|LessThan1~9_cout\ : std_logic;
SIGNAL \BALL|LessThan1~11_cout\ : std_logic;
SIGNAL \BALL|LessThan1~13_cout\ : std_logic;
SIGNAL \BALL|LessThan1~15_cout\ : std_logic;
SIGNAL \BALL|LessThan1~17_cout\ : std_logic;
SIGNAL \BALL|LessThan1~18_combout\ : std_logic;
SIGNAL \BALL|Add0~0_combout\ : std_logic;
SIGNAL \BALL|Add0~4_combout\ : std_logic;
SIGNAL \BALL|Add0~6_combout\ : std_logic;
SIGNAL \BALL|Add0~8_combout\ : std_logic;
SIGNAL \BALL|Add2~1\ : std_logic;
SIGNAL \BALL|Add2~0_combout\ : std_logic;
SIGNAL \BALL|Add2~3\ : std_logic;
SIGNAL \BALL|Add2~2_combout\ : std_logic;
SIGNAL \BALL|Add2~5\ : std_logic;
SIGNAL \BALL|Add2~4_combout\ : std_logic;
SIGNAL \BALL|Add2~7\ : std_logic;
SIGNAL \BALL|Add2~6_combout\ : std_logic;
SIGNAL \BALL|Add2~9\ : std_logic;
SIGNAL \BALL|Add2~8_combout\ : std_logic;
SIGNAL \BALL|Add2~10_combout\ : std_logic;
SIGNAL \BALL|LessThan2~1_cout\ : std_logic;
SIGNAL \BALL|LessThan2~3_cout\ : std_logic;
SIGNAL \BALL|LessThan2~5_cout\ : std_logic;
SIGNAL \BALL|LessThan2~7_cout\ : std_logic;
SIGNAL \BALL|LessThan2~9_cout\ : std_logic;
SIGNAL \BALL|LessThan2~11_cout\ : std_logic;
SIGNAL \BALL|LessThan2~13_cout\ : std_logic;
SIGNAL \BALL|LessThan2~15_cout\ : std_logic;
SIGNAL \BALL|LessThan2~16_combout\ : std_logic;
SIGNAL \BALL|Add3~4_combout\ : std_logic;
SIGNAL \BLADE|Add2~12_combout\ : std_logic;
SIGNAL \BLADE|Add2~14_combout\ : std_logic;
SIGNAL \BLADE|Add0~1_cout\ : std_logic;
SIGNAL \BLADE|Add0~3_cout\ : std_logic;
SIGNAL \BLADE|Add0~5\ : std_logic;
SIGNAL \BLADE|Add0~4_combout\ : std_logic;
SIGNAL \BLADE|Add0~7\ : std_logic;
SIGNAL \BLADE|Add0~6_combout\ : std_logic;
SIGNAL \BLADE|Add0~9\ : std_logic;
SIGNAL \BLADE|Add0~8_combout\ : std_logic;
SIGNAL \BLADE|Add0~11\ : std_logic;
SIGNAL \BLADE|Add0~10_combout\ : std_logic;
SIGNAL \BLADE|Add0~13\ : std_logic;
SIGNAL \BLADE|Add0~12_combout\ : std_logic;
SIGNAL \BLADE|Add0~15\ : std_logic;
SIGNAL \BLADE|Add0~14_combout\ : std_logic;
SIGNAL \BLADE|Add0~17\ : std_logic;
SIGNAL \BLADE|Add0~16_combout\ : std_logic;
SIGNAL \BLADE|Add0~18_combout\ : std_logic;
SIGNAL \BLADE|Add3~2_combout\ : std_logic;
SIGNAL \BLADE|Add3~4_combout\ : std_logic;
SIGNAL \BLADE|Add3~6_combout\ : std_logic;
SIGNAL \BALL|Bola_Y[5]~16_combout\ : std_logic;
SIGNAL \BALL|Bola_Y[6]~18_combout\ : std_logic;
SIGNAL \VGA|Add1~10_combout\ : std_logic;
SIGNAL \VGA|Add1~12_combout\ : std_logic;
SIGNAL \VGA|Add1~16_combout\ : std_logic;
SIGNAL \VGA|vga_r~1_combout\ : std_logic;
SIGNAL \BLADE|LessThan0~0_combout\ : std_logic;
SIGNAL \VGA|vga_r~3_combout\ : std_logic;
SIGNAL \VGA|vga_r~4_combout\ : std_logic;
SIGNAL \BALL|Desplaza_Bola_X[2]~0_combout\ : std_logic;
SIGNAL \BALL|Desplaza_Bola_X[2]~1_combout\ : std_logic;
SIGNAL \BALL|Desplaza_Bola_X[2]~2_combout\ : std_logic;
SIGNAL \VGA|Equal0~1_combout\ : std_logic;
SIGNAL \VGA|Equal2~1_combout\ : std_logic;
SIGNAL \VGA|process_0~5_combout\ : std_logic;
SIGNAL \VGA|process_0~6_combout\ : std_logic;
SIGNAL \VGA|process_0~7_combout\ : std_logic;
SIGNAL \VGA|process_0~8_combout\ : std_logic;
SIGNAL \BLADE|Desplaza_Pala_Y~1_combout\ : std_logic;
SIGNAL \UP~input_o\ : std_logic;
SIGNAL \VGA|vga_vs~clkctrl_outclk\ : std_logic;
SIGNAL \VGA|pixel_y[7]~feeder_combout\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \PLL|altpll_component|pll~FBOUT\ : std_logic;
SIGNAL \PLL|altpll_component|_clk0\ : std_logic;
SIGNAL \PLL|altpll_component|_clk0~clkctrl_outclk\ : std_logic;
SIGNAL \VGA|Add0~0_combout\ : std_logic;
SIGNAL \VGA|Add0~1\ : std_logic;
SIGNAL \VGA|Add0~2_combout\ : std_logic;
SIGNAL \VGA|Add0~3\ : std_logic;
SIGNAL \VGA|Add0~4_combout\ : std_logic;
SIGNAL \VGA|Add0~5\ : std_logic;
SIGNAL \VGA|Add0~7\ : std_logic;
SIGNAL \VGA|Add0~8_combout\ : std_logic;
SIGNAL \VGA|Add0~9\ : std_logic;
SIGNAL \VGA|Add0~10_combout\ : std_logic;
SIGNAL \VGA|cont_hs~2_combout\ : std_logic;
SIGNAL \VGA|Add0~11\ : std_logic;
SIGNAL \VGA|Add0~13\ : std_logic;
SIGNAL \VGA|Add0~14_combout\ : std_logic;
SIGNAL \VGA|Add0~15\ : std_logic;
SIGNAL \VGA|Add0~16_combout\ : std_logic;
SIGNAL \VGA|cont_hs~1_combout\ : std_logic;
SIGNAL \VGA|Equal0~0_combout\ : std_logic;
SIGNAL \VGA|Equal0~2_combout\ : std_logic;
SIGNAL \VGA|Add0~17\ : std_logic;
SIGNAL \VGA|Add0~18_combout\ : std_logic;
SIGNAL \VGA|cont_hs~0_combout\ : std_logic;
SIGNAL \VGA|LessThan5~0_combout\ : std_logic;
SIGNAL \BALL|Add0~1\ : std_logic;
SIGNAL \BALL|Add0~3\ : std_logic;
SIGNAL \BALL|Add0~5\ : std_logic;
SIGNAL \BALL|Add0~7\ : std_logic;
SIGNAL \BALL|Add0~9\ : std_logic;
SIGNAL \BALL|Add0~10_combout\ : std_logic;
SIGNAL \BALL|Bola_X[1]~10\ : std_logic;
SIGNAL \BALL|Bola_X[2]~11_combout\ : std_logic;
SIGNAL \BALL|Bola_X[2]~12\ : std_logic;
SIGNAL \BALL|Bola_X[3]~14\ : std_logic;
SIGNAL \BALL|Bola_X[4]~16\ : std_logic;
SIGNAL \BALL|Bola_X[5]~17_combout\ : std_logic;
SIGNAL \BALL|Bola_X[5]~18\ : std_logic;
SIGNAL \BALL|Bola_X[6]~19_combout\ : std_logic;
SIGNAL \BALL|Bola_X[6]~20\ : std_logic;
SIGNAL \BALL|Bola_X[7]~21_combout\ : std_logic;
SIGNAL \BALL|Desplaza_Bola_X[2]~3_combout\ : std_logic;
SIGNAL \BALL|Bola_X[7]~22\ : std_logic;
SIGNAL \BALL|Bola_X[8]~23_combout\ : std_logic;
SIGNAL \BALL|Bola_X[8]~24\ : std_logic;
SIGNAL \BALL|Bola_X[9]~25_combout\ : std_logic;
SIGNAL \BALL|Add0~2_combout\ : std_logic;
SIGNAL \BALL|Bola_X[4]~15_combout\ : std_logic;
SIGNAL \BALL|Bola_X[3]~13_combout\ : std_logic;
SIGNAL \BALL|LessThan0~1_cout\ : std_logic;
SIGNAL \BALL|LessThan0~3_cout\ : std_logic;
SIGNAL \BALL|LessThan0~5_cout\ : std_logic;
SIGNAL \BALL|LessThan0~7_cout\ : std_logic;
SIGNAL \BALL|LessThan0~9_cout\ : std_logic;
SIGNAL \BALL|LessThan0~11_cout\ : std_logic;
SIGNAL \BALL|LessThan0~13_cout\ : std_logic;
SIGNAL \BALL|LessThan0~15_cout\ : std_logic;
SIGNAL \BALL|LessThan0~16_combout\ : std_logic;
SIGNAL \BALL|Bola_Y[2]~9_cout\ : std_logic;
SIGNAL \BALL|Bola_Y[2]~11\ : std_logic;
SIGNAL \BALL|Bola_Y[3]~13\ : std_logic;
SIGNAL \BALL|Bola_Y[4]~14_combout\ : std_logic;
SIGNAL \BALL|Bola_Y[4]~15\ : std_logic;
SIGNAL \BALL|Bola_Y[5]~17\ : std_logic;
SIGNAL \BALL|Bola_Y[6]~19\ : std_logic;
SIGNAL \BALL|Bola_Y[7]~20_combout\ : std_logic;
SIGNAL \BALL|Bola_Y[7]~21\ : std_logic;
SIGNAL \BALL|Bola_Y[8]~22_combout\ : std_logic;
SIGNAL \BALL|Desplaza_Bola_Y[2]~0_combout\ : std_logic;
SIGNAL \BALL|Bola_X[1]~9_combout\ : std_logic;
SIGNAL \BALL|Bola_Y[2]~10_combout\ : std_logic;
SIGNAL \BALL|Desplaza_Bola_Y[2]~1_combout\ : std_logic;
SIGNAL \BALL|Desplaza_Bola_Y[2]~2_combout\ : std_logic;
SIGNAL \BALL|Desplaza_Bola_Y[2]~3_combout\ : std_logic;
SIGNAL \BALL|Bola_Y[8]~23\ : std_logic;
SIGNAL \BALL|Bola_Y[9]~24_combout\ : std_logic;
SIGNAL \BALL|Bola_Y[3]~12_combout\ : std_logic;
SIGNAL \BALL|Add3~1\ : std_logic;
SIGNAL \BALL|Add3~3\ : std_logic;
SIGNAL \BALL|Add3~5\ : std_logic;
SIGNAL \BALL|Add3~7\ : std_logic;
SIGNAL \BALL|Add3~9\ : std_logic;
SIGNAL \BALL|Add3~10_combout\ : std_logic;
SIGNAL \VGA|Equal2~0_combout\ : std_logic;
SIGNAL \VGA|Add0~6_combout\ : std_logic;
SIGNAL \VGA|Equal2~2_combout\ : std_logic;
SIGNAL \VGA|cont_vs[8]~0_combout\ : std_logic;
SIGNAL \VGA|cont_vs[5]~2_combout\ : std_logic;
SIGNAL \VGA|Add1~1\ : std_logic;
SIGNAL \VGA|Add1~2_combout\ : std_logic;
SIGNAL \VGA|cont_vs[1]~8_combout\ : std_logic;
SIGNAL \VGA|Add1~3\ : std_logic;
SIGNAL \VGA|Add1~5\ : std_logic;
SIGNAL \VGA|Add1~6_combout\ : std_logic;
SIGNAL \VGA|cont_vs[3]~6_combout\ : std_logic;
SIGNAL \VGA|Add1~7\ : std_logic;
SIGNAL \VGA|Add1~8_combout\ : std_logic;
SIGNAL \VGA|cont_vs[4]~5_combout\ : std_logic;
SIGNAL \VGA|Add1~9\ : std_logic;
SIGNAL \VGA|Add1~11\ : std_logic;
SIGNAL \VGA|Add1~13\ : std_logic;
SIGNAL \VGA|Add1~15\ : std_logic;
SIGNAL \VGA|Add1~17\ : std_logic;
SIGNAL \VGA|Add1~18_combout\ : std_logic;
SIGNAL \VGA|cont_vs[9]~1_combout\ : std_logic;
SIGNAL \VGA|process_0~9_combout\ : std_logic;
SIGNAL \VGA|cont_vs[6]~3_combout\ : std_logic;
SIGNAL \VGA|Add1~14_combout\ : std_logic;
SIGNAL \VGA|cont_vs[7]~4_combout\ : std_logic;
SIGNAL \VGA|LessThan6~0_combout\ : std_logic;
SIGNAL \VGA|process_0~0_combout\ : std_logic;
SIGNAL \VGA|video_on~q\ : std_logic;
SIGNAL \VGA|pixel_y[8]~feeder_combout\ : std_logic;
SIGNAL \VGA|LessThan6~1_combout\ : std_logic;
SIGNAL \BALL|Add3~8_combout\ : std_logic;
SIGNAL \BALL|Add3~6_combout\ : std_logic;
SIGNAL \BALL|Add3~2_combout\ : std_logic;
SIGNAL \BALL|Add3~0_combout\ : std_logic;
SIGNAL \VGA|Add1~0_combout\ : std_logic;
SIGNAL \VGA|cont_vs[0]~9_combout\ : std_logic;
SIGNAL \VGA|pixel_y[0]~feeder_combout\ : std_logic;
SIGNAL \BALL|LessThan3~1_cout\ : std_logic;
SIGNAL \BALL|LessThan3~3_cout\ : std_logic;
SIGNAL \BALL|LessThan3~5_cout\ : std_logic;
SIGNAL \BALL|LessThan3~7_cout\ : std_logic;
SIGNAL \BALL|LessThan3~9_cout\ : std_logic;
SIGNAL \BALL|LessThan3~11_cout\ : std_logic;
SIGNAL \BALL|LessThan3~13_cout\ : std_logic;
SIGNAL \BALL|LessThan3~15_cout\ : std_logic;
SIGNAL \BALL|LessThan3~16_combout\ : std_logic;
SIGNAL \VGA|vga_r~0_combout\ : std_logic;
SIGNAL \DOWN~input_o\ : std_logic;
SIGNAL \BLADE|Pala_Y[6]~20\ : std_logic;
SIGNAL \BLADE|Pala_Y[7]~21_combout\ : std_logic;
SIGNAL \BLADE|Pala_Y[7]~22\ : std_logic;
SIGNAL \BLADE|Pala_Y[8]~23_combout\ : std_logic;
SIGNAL \BLADE|Desplaza_Pala_Y~0_combout\ : std_logic;
SIGNAL \BLADE|Desplaza_Pala_Y~2_combout\ : std_logic;
SIGNAL \BLADE|Desplaza_Pala_Y~3_combout\ : std_logic;
SIGNAL \BLADE|Pala_Y[1]~10\ : std_logic;
SIGNAL \BLADE|Pala_Y[2]~11_combout\ : std_logic;
SIGNAL \BLADE|Pala_Y[2]~12\ : std_logic;
SIGNAL \BLADE|Pala_Y[3]~14\ : std_logic;
SIGNAL \BLADE|Pala_Y[4]~16\ : std_logic;
SIGNAL \BLADE|Pala_Y[5]~17_combout\ : std_logic;
SIGNAL \BLADE|Pala_Y[5]~18\ : std_logic;
SIGNAL \BLADE|Pala_Y[6]~19_combout\ : std_logic;
SIGNAL \BLADE|LessThan4~1_combout\ : std_logic;
SIGNAL \BLADE|Pala_Y[1]~9_combout\ : std_logic;
SIGNAL \BLADE|Pala_Y[4]~15_combout\ : std_logic;
SIGNAL \BLADE|LessThan4~0_combout\ : std_logic;
SIGNAL \BLADE|Mover_Pala~0_combout\ : std_logic;
SIGNAL \BLADE|Pala_Y[8]~24\ : std_logic;
SIGNAL \BLADE|Pala_Y[9]~25_combout\ : std_logic;
SIGNAL \BLADE|Pala_Y[3]~13_combout\ : std_logic;
SIGNAL \BLADE|Add3~1_cout\ : std_logic;
SIGNAL \BLADE|Add3~3\ : std_logic;
SIGNAL \BLADE|Add3~5\ : std_logic;
SIGNAL \BLADE|Add3~7\ : std_logic;
SIGNAL \BLADE|Add3~9\ : std_logic;
SIGNAL \BLADE|Add3~11\ : std_logic;
SIGNAL \BLADE|Add3~13\ : std_logic;
SIGNAL \BLADE|Add3~15\ : std_logic;
SIGNAL \BLADE|Add3~16_combout\ : std_logic;
SIGNAL \BLADE|Add3~14_combout\ : std_logic;
SIGNAL \BLADE|Add3~12_combout\ : std_logic;
SIGNAL \BLADE|Add3~10_combout\ : std_logic;
SIGNAL \BLADE|Add3~8_combout\ : std_logic;
SIGNAL \VGA|pixel_y[3]~feeder_combout\ : std_logic;
SIGNAL \VGA|Add1~4_combout\ : std_logic;
SIGNAL \VGA|cont_vs[2]~7_combout\ : std_logic;
SIGNAL \VGA|pixel_y[2]~feeder_combout\ : std_logic;
SIGNAL \BLADE|LessThan3~1_cout\ : std_logic;
SIGNAL \BLADE|LessThan3~3_cout\ : std_logic;
SIGNAL \BLADE|LessThan3~5_cout\ : std_logic;
SIGNAL \BLADE|LessThan3~7_cout\ : std_logic;
SIGNAL \BLADE|LessThan3~9_cout\ : std_logic;
SIGNAL \BLADE|LessThan3~11_cout\ : std_logic;
SIGNAL \BLADE|LessThan3~13_cout\ : std_logic;
SIGNAL \BLADE|LessThan3~15_cout\ : std_logic;
SIGNAL \BLADE|LessThan3~16_combout\ : std_logic;
SIGNAL \BLADE|Add2~1_cout\ : std_logic;
SIGNAL \BLADE|Add2~3\ : std_logic;
SIGNAL \BLADE|Add2~5\ : std_logic;
SIGNAL \BLADE|Add2~7\ : std_logic;
SIGNAL \BLADE|Add2~9\ : std_logic;
SIGNAL \BLADE|Add2~11\ : std_logic;
SIGNAL \BLADE|Add2~13\ : std_logic;
SIGNAL \BLADE|Add2~15\ : std_logic;
SIGNAL \BLADE|Add2~16_combout\ : std_logic;
SIGNAL \BLADE|Add2~10_combout\ : std_logic;
SIGNAL \BLADE|Add2~8_combout\ : std_logic;
SIGNAL \BLADE|Add2~6_combout\ : std_logic;
SIGNAL \BLADE|Add2~4_combout\ : std_logic;
SIGNAL \BLADE|Add2~2_combout\ : std_logic;
SIGNAL \BLADE|LessThan2~1_cout\ : std_logic;
SIGNAL \BLADE|LessThan2~3_cout\ : std_logic;
SIGNAL \BLADE|LessThan2~5_cout\ : std_logic;
SIGNAL \BLADE|LessThan2~7_cout\ : std_logic;
SIGNAL \BLADE|LessThan2~9_cout\ : std_logic;
SIGNAL \BLADE|LessThan2~11_cout\ : std_logic;
SIGNAL \BLADE|LessThan2~13_cout\ : std_logic;
SIGNAL \BLADE|LessThan2~15_cout\ : std_logic;
SIGNAL \BLADE|LessThan2~16_combout\ : std_logic;
SIGNAL \VGA|vga_r~2_combout\ : std_logic;
SIGNAL \VGA|vga_r~5_combout\ : std_logic;
SIGNAL \VGA|vga_r~6_combout\ : std_logic;
SIGNAL \VGA|vga_r~feeder_combout\ : std_logic;
SIGNAL \VGA|vga_r~q\ : std_logic;
SIGNAL \VGA|vga_g~feeder_combout\ : std_logic;
SIGNAL \VGA|vga_g~q\ : std_logic;
SIGNAL \VGA|vga_b~q\ : std_logic;
SIGNAL \VGA|vga_blank_N~feeder_combout\ : std_logic;
SIGNAL \VGA|vga_blank_N~q\ : std_logic;
SIGNAL \VGA|Add0~12_combout\ : std_logic;
SIGNAL \VGA|process_0~1_combout\ : std_logic;
SIGNAL \VGA|process_0~2_combout\ : std_logic;
SIGNAL \VGA|hs~q\ : std_logic;
SIGNAL \VGA|vga_hs~feeder_combout\ : std_logic;
SIGNAL \VGA|vga_hs~q\ : std_logic;
SIGNAL \VGA|process_0~3_combout\ : std_logic;
SIGNAL \VGA|process_0~4_combout\ : std_logic;
SIGNAL \VGA|vs~q\ : std_logic;
SIGNAL \VGA|vga_vs~feeder_combout\ : std_logic;
SIGNAL \VGA|vga_vs~q\ : std_logic;
SIGNAL \VGA|pixel_y\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \VGA|pixel_x\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \VGA|cont_vs\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \VGA|cont_hs\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \BALL|Desplaza_Bola_Y\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \BALL|Desplaza_Bola_X\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \BALL|Bola_Y\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \BALL|Bola_X\ : std_logic_vector(9 DOWNTO 0);
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

-- Location: LCCOMB_X54_Y70_N0
\BALL|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add1~0_combout\ = (\BALL|Bola_X\(3) & (\BALL|Bola_X\(4) $ (VCC))) # (!\BALL|Bola_X\(3) & (\BALL|Bola_X\(4) & VCC))
-- \BALL|Add1~1\ = CARRY((\BALL|Bola_X\(3) & \BALL|Bola_X\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Bola_X\(3),
	datab => \BALL|Bola_X\(4),
	datad => VCC,
	combout => \BALL|Add1~0_combout\,
	cout => \BALL|Add1~1\);

-- Location: LCCOMB_X54_Y70_N2
\BALL|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add1~2_combout\ = (\BALL|Bola_X\(5) & (!\BALL|Add1~1\)) # (!\BALL|Bola_X\(5) & ((\BALL|Add1~1\) # (GND)))
-- \BALL|Add1~3\ = CARRY((!\BALL|Add1~1\) # (!\BALL|Bola_X\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BALL|Bola_X\(5),
	datad => VCC,
	cin => \BALL|Add1~1\,
	combout => \BALL|Add1~2_combout\,
	cout => \BALL|Add1~3\);

-- Location: LCCOMB_X54_Y70_N4
\BALL|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add1~4_combout\ = (\BALL|Bola_X\(6) & (\BALL|Add1~3\ $ (GND))) # (!\BALL|Bola_X\(6) & (!\BALL|Add1~3\ & VCC))
-- \BALL|Add1~5\ = CARRY((\BALL|Bola_X\(6) & !\BALL|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Bola_X\(6),
	datad => VCC,
	cin => \BALL|Add1~3\,
	combout => \BALL|Add1~4_combout\,
	cout => \BALL|Add1~5\);

-- Location: LCCOMB_X54_Y70_N6
\BALL|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add1~6_combout\ = (\BALL|Bola_X\(7) & (!\BALL|Add1~5\)) # (!\BALL|Bola_X\(7) & ((\BALL|Add1~5\) # (GND)))
-- \BALL|Add1~7\ = CARRY((!\BALL|Add1~5\) # (!\BALL|Bola_X\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BALL|Bola_X\(7),
	datad => VCC,
	cin => \BALL|Add1~5\,
	combout => \BALL|Add1~6_combout\,
	cout => \BALL|Add1~7\);

-- Location: LCCOMB_X54_Y70_N8
\BALL|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add1~8_combout\ = (\BALL|Bola_X\(8) & (\BALL|Add1~7\ $ (GND))) # (!\BALL|Bola_X\(8) & (!\BALL|Add1~7\ & VCC))
-- \BALL|Add1~9\ = CARRY((\BALL|Bola_X\(8) & !\BALL|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BALL|Bola_X\(8),
	datad => VCC,
	cin => \BALL|Add1~7\,
	combout => \BALL|Add1~8_combout\,
	cout => \BALL|Add1~9\);

-- Location: LCCOMB_X54_Y70_N10
\BALL|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add1~10_combout\ = \BALL|Add1~9\ $ (\BALL|Bola_X\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \BALL|Bola_X\(9),
	cin => \BALL|Add1~9\,
	combout => \BALL|Add1~10_combout\);

-- Location: LCCOMB_X54_Y70_N12
\BALL|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan1~1_cout\ = CARRY(\VGA|pixel_x\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA|pixel_x\(0),
	datad => VCC,
	cout => \BALL|LessThan1~1_cout\);

-- Location: LCCOMB_X54_Y70_N14
\BALL|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan1~3_cout\ = CARRY((\VGA|pixel_x\(1) & (\BALL|Bola_X\(1) & !\BALL|LessThan1~1_cout\)) # (!\VGA|pixel_x\(1) & ((\BALL|Bola_X\(1)) # (!\BALL|LessThan1~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_x\(1),
	datab => \BALL|Bola_X\(1),
	datad => VCC,
	cin => \BALL|LessThan1~1_cout\,
	cout => \BALL|LessThan1~3_cout\);

-- Location: LCCOMB_X54_Y70_N16
\BALL|LessThan1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan1~5_cout\ = CARRY((\BALL|Bola_X\(2) & (\VGA|pixel_x\(2) & !\BALL|LessThan1~3_cout\)) # (!\BALL|Bola_X\(2) & ((\VGA|pixel_x\(2)) # (!\BALL|LessThan1~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Bola_X\(2),
	datab => \VGA|pixel_x\(2),
	datad => VCC,
	cin => \BALL|LessThan1~3_cout\,
	cout => \BALL|LessThan1~5_cout\);

-- Location: LCCOMB_X54_Y70_N18
\BALL|LessThan1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan1~7_cout\ = CARRY((\BALL|Bola_X\(3) & (!\VGA|pixel_x\(3) & !\BALL|LessThan1~5_cout\)) # (!\BALL|Bola_X\(3) & ((!\BALL|LessThan1~5_cout\) # (!\VGA|pixel_x\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Bola_X\(3),
	datab => \VGA|pixel_x\(3),
	datad => VCC,
	cin => \BALL|LessThan1~5_cout\,
	cout => \BALL|LessThan1~7_cout\);

-- Location: LCCOMB_X54_Y70_N20
\BALL|LessThan1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan1~9_cout\ = CARRY((\VGA|pixel_x\(4) & ((!\BALL|LessThan1~7_cout\) # (!\BALL|Add1~0_combout\))) # (!\VGA|pixel_x\(4) & (!\BALL|Add1~0_combout\ & !\BALL|LessThan1~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_x\(4),
	datab => \BALL|Add1~0_combout\,
	datad => VCC,
	cin => \BALL|LessThan1~7_cout\,
	cout => \BALL|LessThan1~9_cout\);

-- Location: LCCOMB_X54_Y70_N22
\BALL|LessThan1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan1~11_cout\ = CARRY((\VGA|pixel_x\(5) & (\BALL|Add1~2_combout\ & !\BALL|LessThan1~9_cout\)) # (!\VGA|pixel_x\(5) & ((\BALL|Add1~2_combout\) # (!\BALL|LessThan1~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_x\(5),
	datab => \BALL|Add1~2_combout\,
	datad => VCC,
	cin => \BALL|LessThan1~9_cout\,
	cout => \BALL|LessThan1~11_cout\);

-- Location: LCCOMB_X54_Y70_N24
\BALL|LessThan1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan1~13_cout\ = CARRY((\VGA|pixel_x\(6) & ((!\BALL|LessThan1~11_cout\) # (!\BALL|Add1~4_combout\))) # (!\VGA|pixel_x\(6) & (!\BALL|Add1~4_combout\ & !\BALL|LessThan1~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_x\(6),
	datab => \BALL|Add1~4_combout\,
	datad => VCC,
	cin => \BALL|LessThan1~11_cout\,
	cout => \BALL|LessThan1~13_cout\);

-- Location: LCCOMB_X54_Y70_N26
\BALL|LessThan1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan1~15_cout\ = CARRY((\BALL|Add1~6_combout\ & ((!\BALL|LessThan1~13_cout\) # (!\VGA|pixel_x\(7)))) # (!\BALL|Add1~6_combout\ & (!\VGA|pixel_x\(7) & !\BALL|LessThan1~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Add1~6_combout\,
	datab => \VGA|pixel_x\(7),
	datad => VCC,
	cin => \BALL|LessThan1~13_cout\,
	cout => \BALL|LessThan1~15_cout\);

-- Location: LCCOMB_X54_Y70_N28
\BALL|LessThan1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan1~17_cout\ = CARRY((\VGA|pixel_x\(8) & ((!\BALL|LessThan1~15_cout\) # (!\BALL|Add1~8_combout\))) # (!\VGA|pixel_x\(8) & (!\BALL|Add1~8_combout\ & !\BALL|LessThan1~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_x\(8),
	datab => \BALL|Add1~8_combout\,
	datad => VCC,
	cin => \BALL|LessThan1~15_cout\,
	cout => \BALL|LessThan1~17_cout\);

-- Location: LCCOMB_X54_Y70_N30
\BALL|LessThan1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan1~18_combout\ = (\VGA|pixel_x\(9) & ((\BALL|LessThan1~17_cout\) # (!\BALL|Add1~10_combout\))) # (!\VGA|pixel_x\(9) & (\BALL|LessThan1~17_cout\ & !\BALL|Add1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_x\(9),
	datad => \BALL|Add1~10_combout\,
	cin => \BALL|LessThan1~17_cout\,
	combout => \BALL|LessThan1~18_combout\);

-- Location: LCCOMB_X52_Y70_N18
\BALL|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add0~0_combout\ = (\VGA|pixel_x\(3) & (\VGA|pixel_x\(4) $ (VCC))) # (!\VGA|pixel_x\(3) & (\VGA|pixel_x\(4) & VCC))
-- \BALL|Add0~1\ = CARRY((\VGA|pixel_x\(3) & \VGA|pixel_x\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_x\(3),
	datab => \VGA|pixel_x\(4),
	datad => VCC,
	combout => \BALL|Add0~0_combout\,
	cout => \BALL|Add0~1\);

-- Location: LCCOMB_X52_Y70_N22
\BALL|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add0~4_combout\ = (\VGA|pixel_x\(6) & (\BALL|Add0~3\ $ (GND))) # (!\VGA|pixel_x\(6) & (!\BALL|Add0~3\ & VCC))
-- \BALL|Add0~5\ = CARRY((\VGA|pixel_x\(6) & !\BALL|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_x\(6),
	datad => VCC,
	cin => \BALL|Add0~3\,
	combout => \BALL|Add0~4_combout\,
	cout => \BALL|Add0~5\);

-- Location: LCCOMB_X52_Y70_N24
\BALL|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add0~6_combout\ = (\VGA|pixel_x\(7) & (!\BALL|Add0~5\)) # (!\VGA|pixel_x\(7) & ((\BALL|Add0~5\) # (GND)))
-- \BALL|Add0~7\ = CARRY((!\BALL|Add0~5\) # (!\VGA|pixel_x\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_x\(7),
	datad => VCC,
	cin => \BALL|Add0~5\,
	combout => \BALL|Add0~6_combout\,
	cout => \BALL|Add0~7\);

-- Location: LCCOMB_X52_Y70_N26
\BALL|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add0~8_combout\ = (\VGA|pixel_x\(8) & (\BALL|Add0~7\ $ (GND))) # (!\VGA|pixel_x\(8) & (!\BALL|Add0~7\ & VCC))
-- \BALL|Add0~9\ = CARRY((\VGA|pixel_x\(8) & !\BALL|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_x\(8),
	datad => VCC,
	cin => \BALL|Add0~7\,
	combout => \BALL|Add0~8_combout\,
	cout => \BALL|Add0~9\);

-- Location: LCCOMB_X52_Y72_N20
\BALL|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add2~0_combout\ = (\VGA|pixel_y\(3) & (\VGA|pixel_y\(4) $ (VCC))) # (!\VGA|pixel_y\(3) & (\VGA|pixel_y\(4) & VCC))
-- \BALL|Add2~1\ = CARRY((\VGA|pixel_y\(3) & \VGA|pixel_y\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_y\(3),
	datab => \VGA|pixel_y\(4),
	datad => VCC,
	combout => \BALL|Add2~0_combout\,
	cout => \BALL|Add2~1\);

-- Location: LCCOMB_X52_Y72_N22
\BALL|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add2~2_combout\ = (\VGA|pixel_y\(5) & (!\BALL|Add2~1\)) # (!\VGA|pixel_y\(5) & ((\BALL|Add2~1\) # (GND)))
-- \BALL|Add2~3\ = CARRY((!\BALL|Add2~1\) # (!\VGA|pixel_y\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_y\(5),
	datad => VCC,
	cin => \BALL|Add2~1\,
	combout => \BALL|Add2~2_combout\,
	cout => \BALL|Add2~3\);

-- Location: LCCOMB_X52_Y72_N24
\BALL|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add2~4_combout\ = (\VGA|pixel_y\(6) & (\BALL|Add2~3\ $ (GND))) # (!\VGA|pixel_y\(6) & (!\BALL|Add2~3\ & VCC))
-- \BALL|Add2~5\ = CARRY((\VGA|pixel_y\(6) & !\BALL|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA|pixel_y\(6),
	datad => VCC,
	cin => \BALL|Add2~3\,
	combout => \BALL|Add2~4_combout\,
	cout => \BALL|Add2~5\);

-- Location: LCCOMB_X52_Y72_N26
\BALL|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add2~6_combout\ = (\VGA|pixel_y\(7) & (!\BALL|Add2~5\)) # (!\VGA|pixel_y\(7) & ((\BALL|Add2~5\) # (GND)))
-- \BALL|Add2~7\ = CARRY((!\BALL|Add2~5\) # (!\VGA|pixel_y\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA|pixel_y\(7),
	datad => VCC,
	cin => \BALL|Add2~5\,
	combout => \BALL|Add2~6_combout\,
	cout => \BALL|Add2~7\);

-- Location: LCCOMB_X52_Y72_N28
\BALL|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add2~8_combout\ = (\VGA|pixel_y\(8) & (\BALL|Add2~7\ $ (GND))) # (!\VGA|pixel_y\(8) & (!\BALL|Add2~7\ & VCC))
-- \BALL|Add2~9\ = CARRY((\VGA|pixel_y\(8) & !\BALL|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_y\(8),
	datad => VCC,
	cin => \BALL|Add2~7\,
	combout => \BALL|Add2~8_combout\,
	cout => \BALL|Add2~9\);

-- Location: LCCOMB_X52_Y72_N30
\BALL|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add2~10_combout\ = \BALL|Add2~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \BALL|Add2~9\,
	combout => \BALL|Add2~10_combout\);

-- Location: FF_X53_Y72_N13
\BALL|Bola_Y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	d => \BALL|Bola_Y[6]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BALL|Bola_Y\(6));

-- Location: FF_X53_Y72_N11
\BALL|Bola_Y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	d => \BALL|Bola_Y[5]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BALL|Bola_Y\(5));

-- Location: LCCOMB_X52_Y72_N2
\BALL|LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan2~1_cout\ = CARRY((!\VGA|pixel_y\(1) & \BALL|Bola_X\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_y\(1),
	datab => \BALL|Bola_X\(1),
	datad => VCC,
	cout => \BALL|LessThan2~1_cout\);

-- Location: LCCOMB_X52_Y72_N4
\BALL|LessThan2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan2~3_cout\ = CARRY((\BALL|Bola_Y\(2) & (\VGA|pixel_y\(2) & !\BALL|LessThan2~1_cout\)) # (!\BALL|Bola_Y\(2) & ((\VGA|pixel_y\(2)) # (!\BALL|LessThan2~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Bola_Y\(2),
	datab => \VGA|pixel_y\(2),
	datad => VCC,
	cin => \BALL|LessThan2~1_cout\,
	cout => \BALL|LessThan2~3_cout\);

-- Location: LCCOMB_X52_Y72_N6
\BALL|LessThan2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan2~5_cout\ = CARRY((\BALL|Bola_Y\(3) & ((\VGA|pixel_y\(3)) # (!\BALL|LessThan2~3_cout\))) # (!\BALL|Bola_Y\(3) & (\VGA|pixel_y\(3) & !\BALL|LessThan2~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Bola_Y\(3),
	datab => \VGA|pixel_y\(3),
	datad => VCC,
	cin => \BALL|LessThan2~3_cout\,
	cout => \BALL|LessThan2~5_cout\);

-- Location: LCCOMB_X52_Y72_N8
\BALL|LessThan2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan2~7_cout\ = CARRY((\BALL|Add2~0_combout\ & ((!\BALL|LessThan2~5_cout\) # (!\BALL|Bola_Y\(4)))) # (!\BALL|Add2~0_combout\ & (!\BALL|Bola_Y\(4) & !\BALL|LessThan2~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Add2~0_combout\,
	datab => \BALL|Bola_Y\(4),
	datad => VCC,
	cin => \BALL|LessThan2~5_cout\,
	cout => \BALL|LessThan2~7_cout\);

-- Location: LCCOMB_X52_Y72_N10
\BALL|LessThan2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan2~9_cout\ = CARRY((\BALL|Add2~2_combout\ & (\BALL|Bola_Y\(5) & !\BALL|LessThan2~7_cout\)) # (!\BALL|Add2~2_combout\ & ((\BALL|Bola_Y\(5)) # (!\BALL|LessThan2~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Add2~2_combout\,
	datab => \BALL|Bola_Y\(5),
	datad => VCC,
	cin => \BALL|LessThan2~7_cout\,
	cout => \BALL|LessThan2~9_cout\);

-- Location: LCCOMB_X52_Y72_N12
\BALL|LessThan2~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan2~11_cout\ = CARRY((\BALL|Add2~4_combout\ & ((!\BALL|LessThan2~9_cout\) # (!\BALL|Bola_Y\(6)))) # (!\BALL|Add2~4_combout\ & (!\BALL|Bola_Y\(6) & !\BALL|LessThan2~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Add2~4_combout\,
	datab => \BALL|Bola_Y\(6),
	datad => VCC,
	cin => \BALL|LessThan2~9_cout\,
	cout => \BALL|LessThan2~11_cout\);

-- Location: LCCOMB_X52_Y72_N14
\BALL|LessThan2~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan2~13_cout\ = CARRY((\BALL|Add2~6_combout\ & (\BALL|Bola_Y\(7) & !\BALL|LessThan2~11_cout\)) # (!\BALL|Add2~6_combout\ & ((\BALL|Bola_Y\(7)) # (!\BALL|LessThan2~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Add2~6_combout\,
	datab => \BALL|Bola_Y\(7),
	datad => VCC,
	cin => \BALL|LessThan2~11_cout\,
	cout => \BALL|LessThan2~13_cout\);

-- Location: LCCOMB_X52_Y72_N16
\BALL|LessThan2~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan2~15_cout\ = CARRY((\BALL|Add2~8_combout\ & ((!\BALL|LessThan2~13_cout\) # (!\BALL|Bola_Y\(8)))) # (!\BALL|Add2~8_combout\ & (!\BALL|Bola_Y\(8) & !\BALL|LessThan2~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Add2~8_combout\,
	datab => \BALL|Bola_Y\(8),
	datad => VCC,
	cin => \BALL|LessThan2~13_cout\,
	cout => \BALL|LessThan2~15_cout\);

-- Location: LCCOMB_X52_Y72_N18
\BALL|LessThan2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan2~16_combout\ = (\BALL|Add2~10_combout\ & (!\BALL|LessThan2~15_cout\ & \BALL|Bola_Y\(9))) # (!\BALL|Add2~10_combout\ & ((\BALL|Bola_Y\(9)) # (!\BALL|LessThan2~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Add2~10_combout\,
	datad => \BALL|Bola_Y\(9),
	cin => \BALL|LessThan2~15_cout\,
	combout => \BALL|LessThan2~16_combout\);

-- Location: LCCOMB_X54_Y72_N22
\BALL|Add3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add3~4_combout\ = (\BALL|Bola_Y\(6) & (\BALL|Add3~3\ $ (GND))) # (!\BALL|Bola_Y\(6) & (!\BALL|Add3~3\ & VCC))
-- \BALL|Add3~5\ = CARRY((\BALL|Bola_Y\(6) & !\BALL|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Bola_Y\(6),
	datad => VCC,
	cin => \BALL|Add3~3\,
	combout => \BALL|Add3~4_combout\,
	cout => \BALL|Add3~5\);

-- Location: LCCOMB_X57_Y71_N18
\BLADE|Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLADE|Add2~12_combout\ = (\VGA|pixel_y\(7) & (\BLADE|Add2~11\ $ (GND))) # (!\VGA|pixel_y\(7) & (!\BLADE|Add2~11\ & VCC))
-- \BLADE|Add2~13\ = CARRY((\VGA|pixel_y\(7) & !\BLADE|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_y\(7),
	datad => VCC,
	cin => \BLADE|Add2~11\,
	combout => \BLADE|Add2~12_combout\,
	cout => \BLADE|Add2~13\);

-- Location: LCCOMB_X57_Y71_N20
\BLADE|Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLADE|Add2~14_combout\ = (\VGA|pixel_y\(8) & (!\BLADE|Add2~13\)) # (!\VGA|pixel_y\(8) & ((\BLADE|Add2~13\) # (GND)))
-- \BLADE|Add2~15\ = CARRY((!\BLADE|Add2~13\) # (!\VGA|pixel_y\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_y\(8),
	datad => VCC,
	cin => \BLADE|Add2~13\,
	combout => \BLADE|Add2~14_combout\,
	cout => \BLADE|Add2~15\);

-- Location: LCCOMB_X55_Y70_N12
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

-- Location: LCCOMB_X55_Y70_N14
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

-- Location: LCCOMB_X55_Y70_N16
\BLADE|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLADE|Add0~4_combout\ = (\VGA|pixel_x\(2) & (\BLADE|Add0~3_cout\ $ (GND))) # (!\VGA|pixel_x\(2) & (!\BLADE|Add0~3_cout\ & VCC))
-- \BLADE|Add0~5\ = CARRY((\VGA|pixel_x\(2) & !\BLADE|Add0~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA|pixel_x\(2),
	datad => VCC,
	cin => \BLADE|Add0~3_cout\,
	combout => \BLADE|Add0~4_combout\,
	cout => \BLADE|Add0~5\);

-- Location: LCCOMB_X55_Y70_N18
\BLADE|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLADE|Add0~6_combout\ = (\VGA|pixel_x\(3) & (!\BLADE|Add0~5\)) # (!\VGA|pixel_x\(3) & ((\BLADE|Add0~5\) # (GND)))
-- \BLADE|Add0~7\ = CARRY((!\BLADE|Add0~5\) # (!\VGA|pixel_x\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_x\(3),
	datad => VCC,
	cin => \BLADE|Add0~5\,
	combout => \BLADE|Add0~6_combout\,
	cout => \BLADE|Add0~7\);

-- Location: LCCOMB_X55_Y70_N20
\BLADE|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLADE|Add0~8_combout\ = (\VGA|pixel_x\(4) & (\BLADE|Add0~7\ $ (GND))) # (!\VGA|pixel_x\(4) & (!\BLADE|Add0~7\ & VCC))
-- \BLADE|Add0~9\ = CARRY((\VGA|pixel_x\(4) & !\BLADE|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_x\(4),
	datad => VCC,
	cin => \BLADE|Add0~7\,
	combout => \BLADE|Add0~8_combout\,
	cout => \BLADE|Add0~9\);

-- Location: LCCOMB_X55_Y70_N22
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

-- Location: LCCOMB_X55_Y70_N24
\BLADE|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLADE|Add0~12_combout\ = (\VGA|pixel_x\(6) & (\BLADE|Add0~11\ $ (GND))) # (!\VGA|pixel_x\(6) & (!\BLADE|Add0~11\ & VCC))
-- \BLADE|Add0~13\ = CARRY((\VGA|pixel_x\(6) & !\BLADE|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_x\(6),
	datad => VCC,
	cin => \BLADE|Add0~11\,
	combout => \BLADE|Add0~12_combout\,
	cout => \BLADE|Add0~13\);

-- Location: LCCOMB_X55_Y70_N26
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

-- Location: LCCOMB_X55_Y70_N28
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

-- Location: LCCOMB_X55_Y70_N30
\BLADE|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLADE|Add0~18_combout\ = \BLADE|Add0~17\ $ (\VGA|pixel_x\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \VGA|pixel_x\(9),
	cin => \BLADE|Add0~17\,
	combout => \BLADE|Add0~18_combout\);

-- Location: LCCOMB_X54_Y71_N2
\BLADE|Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLADE|Add3~2_combout\ = (\BLADE|Pala_Y\(2) & (\BLADE|Add3~1_cout\ & VCC)) # (!\BLADE|Pala_Y\(2) & (!\BLADE|Add3~1_cout\))
-- \BLADE|Add3~3\ = CARRY((!\BLADE|Pala_Y\(2) & !\BLADE|Add3~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BLADE|Pala_Y\(2),
	datad => VCC,
	cin => \BLADE|Add3~1_cout\,
	combout => \BLADE|Add3~2_combout\,
	cout => \BLADE|Add3~3\);

-- Location: LCCOMB_X54_Y71_N4
\BLADE|Add3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLADE|Add3~4_combout\ = (\BLADE|Pala_Y\(3) & ((GND) # (!\BLADE|Add3~3\))) # (!\BLADE|Pala_Y\(3) & (\BLADE|Add3~3\ $ (GND)))
-- \BLADE|Add3~5\ = CARRY((\BLADE|Pala_Y\(3)) # (!\BLADE|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BLADE|Pala_Y\(3),
	datad => VCC,
	cin => \BLADE|Add3~3\,
	combout => \BLADE|Add3~4_combout\,
	cout => \BLADE|Add3~5\);

-- Location: LCCOMB_X54_Y71_N6
\BLADE|Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLADE|Add3~6_combout\ = (\BLADE|Pala_Y\(4) & (\BLADE|Add3~5\ & VCC)) # (!\BLADE|Pala_Y\(4) & (!\BLADE|Add3~5\))
-- \BLADE|Add3~7\ = CARRY((!\BLADE|Pala_Y\(4) & !\BLADE|Add3~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BLADE|Pala_Y\(4),
	datad => VCC,
	cin => \BLADE|Add3~5\,
	combout => \BLADE|Add3~6_combout\,
	cout => \BLADE|Add3~7\);

-- Location: LCCOMB_X53_Y72_N10
\BALL|Bola_Y[5]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Bola_Y[5]~16_combout\ = ((\BALL|Bola_Y\(5) $ (\BALL|Desplaza_Bola_Y\(2) $ (!\BALL|Bola_Y[4]~15\)))) # (GND)
-- \BALL|Bola_Y[5]~17\ = CARRY((\BALL|Bola_Y\(5) & ((\BALL|Desplaza_Bola_Y\(2)) # (!\BALL|Bola_Y[4]~15\))) # (!\BALL|Bola_Y\(5) & (\BALL|Desplaza_Bola_Y\(2) & !\BALL|Bola_Y[4]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Bola_Y\(5),
	datab => \BALL|Desplaza_Bola_Y\(2),
	datad => VCC,
	cin => \BALL|Bola_Y[4]~15\,
	combout => \BALL|Bola_Y[5]~16_combout\,
	cout => \BALL|Bola_Y[5]~17\);

-- Location: LCCOMB_X53_Y72_N12
\BALL|Bola_Y[6]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Bola_Y[6]~18_combout\ = (\BALL|Bola_Y\(6) & ((\BALL|Desplaza_Bola_Y\(2) & (\BALL|Bola_Y[5]~17\ & VCC)) # (!\BALL|Desplaza_Bola_Y\(2) & (!\BALL|Bola_Y[5]~17\)))) # (!\BALL|Bola_Y\(6) & ((\BALL|Desplaza_Bola_Y\(2) & (!\BALL|Bola_Y[5]~17\)) # 
-- (!\BALL|Desplaza_Bola_Y\(2) & ((\BALL|Bola_Y[5]~17\) # (GND)))))
-- \BALL|Bola_Y[6]~19\ = CARRY((\BALL|Bola_Y\(6) & (!\BALL|Desplaza_Bola_Y\(2) & !\BALL|Bola_Y[5]~17\)) # (!\BALL|Bola_Y\(6) & ((!\BALL|Bola_Y[5]~17\) # (!\BALL|Desplaza_Bola_Y\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Bola_Y\(6),
	datab => \BALL|Desplaza_Bola_Y\(2),
	datad => VCC,
	cin => \BALL|Bola_Y[5]~17\,
	combout => \BALL|Bola_Y[6]~18_combout\,
	cout => \BALL|Bola_Y[6]~19\);

-- Location: LCCOMB_X58_Y72_N20
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

-- Location: LCCOMB_X58_Y72_N22
\VGA|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|Add1~12_combout\ = (\VGA|cont_vs\(6) & (\VGA|Add1~11\ $ (GND))) # (!\VGA|cont_vs\(6) & (!\VGA|Add1~11\ & VCC))
-- \VGA|Add1~13\ = CARRY((\VGA|cont_vs\(6) & !\VGA|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA|cont_vs\(6),
	datad => VCC,
	cin => \VGA|Add1~11\,
	combout => \VGA|Add1~12_combout\,
	cout => \VGA|Add1~13\);

-- Location: LCCOMB_X58_Y72_N26
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

-- Location: FF_X55_Y70_N27
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

-- Location: FF_X55_Y70_N25
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

-- Location: FF_X55_Y70_N23
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

-- Location: FF_X55_Y70_N3
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

-- Location: FF_X55_Y70_N17
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

-- Location: FF_X55_Y70_N13
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

-- Location: FF_X57_Y72_N27
\VGA|pixel_y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	d => \VGA|pixel_y[7]~feeder_combout\,
	ena => \VGA|LessThan6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|pixel_y\(7));

-- Location: LCCOMB_X52_Y70_N30
\VGA|vga_r~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|vga_r~1_combout\ = (!\VGA|pixel_x\(7) & (!\VGA|pixel_x\(5) & (!\VGA|pixel_x\(6) & \VGA|video_on~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_x\(7),
	datab => \VGA|pixel_x\(5),
	datac => \VGA|pixel_x\(6),
	datad => \VGA|video_on~q\,
	combout => \VGA|vga_r~1_combout\);

-- Location: LCCOMB_X55_Y70_N10
\BLADE|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLADE|LessThan0~0_combout\ = (!\BLADE|Add0~14_combout\ & (!\BLADE|Add0~12_combout\ & (!\BLADE|Add0~10_combout\ & !\BLADE|Add0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BLADE|Add0~14_combout\,
	datab => \BLADE|Add0~12_combout\,
	datac => \BLADE|Add0~10_combout\,
	datad => \BLADE|Add0~16_combout\,
	combout => \BLADE|LessThan0~0_combout\);

-- Location: LCCOMB_X55_Y70_N8
\VGA|vga_r~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|vga_r~3_combout\ = (\BLADE|Add0~18_combout\) # ((\BLADE|Add0~8_combout\ & ((\BLADE|Add0~4_combout\) # (\BLADE|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BLADE|Add0~4_combout\,
	datab => \BLADE|Add0~8_combout\,
	datac => \BLADE|Add0~18_combout\,
	datad => \BLADE|Add0~6_combout\,
	combout => \VGA|vga_r~3_combout\);

-- Location: LCCOMB_X53_Y70_N0
\VGA|vga_r~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|vga_r~4_combout\ = (\VGA|pixel_x\(4) & (!\VGA|pixel_x\(3) & ((\VGA|vga_r~3_combout\) # (!\BLADE|LessThan0~0_combout\)))) # (!\VGA|pixel_x\(4) & ((\VGA|vga_r~3_combout\) # ((!\BLADE|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_x\(4),
	datab => \VGA|vga_r~3_combout\,
	datac => \VGA|pixel_x\(3),
	datad => \BLADE|LessThan0~0_combout\,
	combout => \VGA|vga_r~4_combout\);

-- Location: LCCOMB_X53_Y70_N24
\BALL|Desplaza_Bola_X[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Desplaza_Bola_X[2]~0_combout\ = (\BALL|Desplaza_Bola_X\(2) & ((\BALL|Bola_X\(6)) # ((\BALL|Bola_X\(4)) # (\BALL|Bola_X\(5))))) # (!\BALL|Desplaza_Bola_X\(2) & (\BALL|Bola_X\(6) & (\BALL|Bola_X\(4) & \BALL|Bola_X\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Desplaza_Bola_X\(2),
	datab => \BALL|Bola_X\(6),
	datac => \BALL|Bola_X\(4),
	datad => \BALL|Bola_X\(5),
	combout => \BALL|Desplaza_Bola_X[2]~0_combout\);

-- Location: LCCOMB_X53_Y70_N28
\BALL|Desplaza_Bola_X[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Desplaza_Bola_X[2]~1_combout\ = (\BALL|Bola_X\(3) & (((\BALL|Bola_X\(1)) # (\BALL|Bola_X\(2))) # (!\BALL|Desplaza_Bola_X\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Desplaza_Bola_X\(2),
	datab => \BALL|Bola_X\(1),
	datac => \BALL|Bola_X\(3),
	datad => \BALL|Bola_X\(2),
	combout => \BALL|Desplaza_Bola_X[2]~1_combout\);

-- Location: LCCOMB_X53_Y70_N30
\BALL|Desplaza_Bola_X[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Desplaza_Bola_X[2]~2_combout\ = (\BALL|Bola_X\(8)) # ((\BALL|Desplaza_Bola_X\(2) & ((\BALL|Desplaza_Bola_X[2]~0_combout\) # (\BALL|Desplaza_Bola_X[2]~1_combout\))) # (!\BALL|Desplaza_Bola_X\(2) & (\BALL|Desplaza_Bola_X[2]~0_combout\ & 
-- \BALL|Desplaza_Bola_X[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Desplaza_Bola_X\(2),
	datab => \BALL|Desplaza_Bola_X[2]~0_combout\,
	datac => \BALL|Bola_X\(8),
	datad => \BALL|Desplaza_Bola_X[2]~1_combout\,
	combout => \BALL|Desplaza_Bola_X[2]~2_combout\);

-- Location: LCCOMB_X56_Y70_N30
\VGA|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|Equal0~1_combout\ = (!\VGA|cont_hs\(5) & (\VGA|cont_hs\(1) & (\VGA|cont_hs\(2) & \VGA|cont_hs\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|cont_hs\(5),
	datab => \VGA|cont_hs\(1),
	datac => \VGA|cont_hs\(2),
	datad => \VGA|cont_hs\(3),
	combout => \VGA|Equal0~1_combout\);

-- Location: LCCOMB_X56_Y70_N26
\VGA|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|Equal2~1_combout\ = (\VGA|cont_hs\(8)) # (((\VGA|cont_hs\(2)) # (\VGA|cont_hs\(1))) # (!\VGA|cont_hs\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|cont_hs\(8),
	datab => \VGA|cont_hs\(7),
	datac => \VGA|cont_hs\(2),
	datad => \VGA|cont_hs\(1),
	combout => \VGA|Equal2~1_combout\);

-- Location: LCCOMB_X57_Y72_N18
\VGA|process_0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|process_0~5_combout\ = (\VGA|cont_vs\(3) & (!\VGA|cont_vs\(1) & (!\VGA|cont_vs\(4) & !\VGA|cont_vs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|cont_vs\(3),
	datab => \VGA|cont_vs\(1),
	datac => \VGA|cont_vs\(4),
	datad => \VGA|cont_vs\(0),
	combout => \VGA|process_0~5_combout\);

-- Location: LCCOMB_X57_Y72_N28
\VGA|process_0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|process_0~6_combout\ = (!\VGA|cont_vs\(7) & (!\VGA|cont_vs\(6) & (!\VGA|cont_vs\(5) & \VGA|cont_vs\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|cont_vs\(7),
	datab => \VGA|cont_vs\(6),
	datac => \VGA|cont_vs\(5),
	datad => \VGA|cont_vs\(2),
	combout => \VGA|process_0~6_combout\);

-- Location: LCCOMB_X56_Y70_N22
\VGA|process_0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|process_0~7_combout\ = (\VGA|cont_hs\(7) & ((\VGA|cont_hs\(6)) # ((\VGA|cont_hs\(4) & \VGA|cont_hs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|cont_hs\(6),
	datab => \VGA|cont_hs\(7),
	datac => \VGA|cont_hs\(4),
	datad => \VGA|cont_hs\(5),
	combout => \VGA|process_0~7_combout\);

-- Location: LCCOMB_X56_Y72_N14
\VGA|process_0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|process_0~8_combout\ = (\VGA|process_0~5_combout\ & (\VGA|process_0~6_combout\ & ((\VGA|cont_hs\(8)) # (\VGA|process_0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|cont_hs\(8),
	datab => \VGA|process_0~5_combout\,
	datac => \VGA|process_0~7_combout\,
	datad => \VGA|process_0~6_combout\,
	combout => \VGA|process_0~8_combout\);

-- Location: LCCOMB_X55_Y71_N26
\BLADE|Desplaza_Pala_Y~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLADE|Desplaza_Pala_Y~1_combout\ = (!\BLADE|Pala_Y\(3) & (!\BLADE|Pala_Y\(1) & (!\BLADE|Pala_Y\(4) & !\BLADE|Pala_Y\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BLADE|Pala_Y\(3),
	datab => \BLADE|Pala_Y\(1),
	datac => \BLADE|Pala_Y\(4),
	datad => \BLADE|Pala_Y\(2),
	combout => \BLADE|Desplaza_Pala_Y~1_combout\);

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

-- Location: CLKCTRL_G10
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

-- Location: LCCOMB_X57_Y72_N26
\VGA|pixel_y[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|pixel_y[7]~feeder_combout\ = \VGA|cont_vs\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA|cont_vs\(7),
	combout => \VGA|pixel_y[7]~feeder_combout\);

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
	pll_compensation_delay => 6204,
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

-- Location: LCCOMB_X56_Y70_N0
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

-- Location: FF_X56_Y70_N1
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

-- Location: LCCOMB_X56_Y70_N2
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

-- Location: FF_X56_Y70_N3
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

-- Location: LCCOMB_X56_Y70_N4
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

-- Location: FF_X56_Y70_N5
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

-- Location: LCCOMB_X56_Y70_N6
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

-- Location: LCCOMB_X56_Y70_N8
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

-- Location: FF_X56_Y70_N9
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

-- Location: LCCOMB_X56_Y70_N10
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

-- Location: LCCOMB_X55_Y70_N4
\VGA|cont_hs~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|cont_hs~2_combout\ = (\VGA|Add0~10_combout\ & !\VGA|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA|Add0~10_combout\,
	datad => \VGA|Equal0~2_combout\,
	combout => \VGA|cont_hs~2_combout\);

-- Location: FF_X55_Y70_N5
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

-- Location: LCCOMB_X56_Y70_N12
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

-- Location: LCCOMB_X56_Y70_N14
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

-- Location: FF_X56_Y70_N15
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

-- Location: LCCOMB_X56_Y70_N16
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

-- Location: LCCOMB_X55_Y72_N2
\VGA|cont_hs~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|cont_hs~1_combout\ = (\VGA|Add0~16_combout\ & !\VGA|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA|Add0~16_combout\,
	datad => \VGA|Equal0~2_combout\,
	combout => \VGA|cont_hs~1_combout\);

-- Location: FF_X55_Y72_N3
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

-- Location: LCCOMB_X56_Y70_N24
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

-- Location: LCCOMB_X55_Y70_N0
\VGA|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|Equal0~2_combout\ = (\VGA|Equal0~1_combout\ & (\VGA|cont_hs\(8) & (!\VGA|cont_hs\(7) & \VGA|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|Equal0~1_combout\,
	datab => \VGA|cont_hs\(8),
	datac => \VGA|cont_hs\(7),
	datad => \VGA|Equal0~0_combout\,
	combout => \VGA|Equal0~2_combout\);

-- Location: LCCOMB_X56_Y70_N18
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

-- Location: LCCOMB_X55_Y72_N8
\VGA|cont_hs~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|cont_hs~0_combout\ = (!\VGA|Equal0~2_combout\ & \VGA|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA|Equal0~2_combout\,
	datad => \VGA|Add0~18_combout\,
	combout => \VGA|cont_hs~0_combout\);

-- Location: FF_X55_Y72_N9
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

-- Location: LCCOMB_X55_Y72_N0
\VGA|LessThan5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|LessThan5~0_combout\ = ((!\VGA|cont_hs\(7) & !\VGA|cont_hs\(8))) # (!\VGA|cont_hs\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA|cont_hs\(9),
	datac => \VGA|cont_hs\(7),
	datad => \VGA|cont_hs\(8),
	combout => \VGA|LessThan5~0_combout\);

-- Location: FF_X55_Y71_N29
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

-- Location: FF_X55_Y70_N21
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

-- Location: LCCOMB_X52_Y70_N20
\BALL|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add0~2_combout\ = (\VGA|pixel_x\(5) & (!\BALL|Add0~1\)) # (!\VGA|pixel_x\(5) & ((\BALL|Add0~1\) # (GND)))
-- \BALL|Add0~3\ = CARRY((!\BALL|Add0~1\) # (!\VGA|pixel_x\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_x\(5),
	datad => VCC,
	cin => \BALL|Add0~1\,
	combout => \BALL|Add0~2_combout\,
	cout => \BALL|Add0~3\);

-- Location: LCCOMB_X52_Y70_N28
\BALL|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add0~10_combout\ = \BALL|Add0~9\ $ (\VGA|pixel_x\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \VGA|pixel_x\(9),
	cin => \BALL|Add0~9\,
	combout => \BALL|Add0~10_combout\);

-- Location: LCCOMB_X53_Y70_N6
\BALL|Bola_X[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Bola_X[1]~9_combout\ = \BALL|Bola_X\(1) $ (VCC)
-- \BALL|Bola_X[1]~10\ = CARRY(\BALL|Bola_X\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Bola_X\(1),
	datad => VCC,
	combout => \BALL|Bola_X[1]~9_combout\,
	cout => \BALL|Bola_X[1]~10\);

-- Location: LCCOMB_X53_Y70_N8
\BALL|Bola_X[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Bola_X[2]~11_combout\ = (\BALL|Desplaza_Bola_X\(2) & ((\BALL|Bola_X\(2) & (\BALL|Bola_X[1]~10\ & VCC)) # (!\BALL|Bola_X\(2) & (!\BALL|Bola_X[1]~10\)))) # (!\BALL|Desplaza_Bola_X\(2) & ((\BALL|Bola_X\(2) & (!\BALL|Bola_X[1]~10\)) # (!\BALL|Bola_X\(2) 
-- & ((\BALL|Bola_X[1]~10\) # (GND)))))
-- \BALL|Bola_X[2]~12\ = CARRY((\BALL|Desplaza_Bola_X\(2) & (!\BALL|Bola_X\(2) & !\BALL|Bola_X[1]~10\)) # (!\BALL|Desplaza_Bola_X\(2) & ((!\BALL|Bola_X[1]~10\) # (!\BALL|Bola_X\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Desplaza_Bola_X\(2),
	datab => \BALL|Bola_X\(2),
	datad => VCC,
	cin => \BALL|Bola_X[1]~10\,
	combout => \BALL|Bola_X[2]~11_combout\,
	cout => \BALL|Bola_X[2]~12\);

-- Location: FF_X53_Y70_N9
\BALL|Bola_X[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	d => \BALL|Bola_X[2]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BALL|Bola_X\(2));

-- Location: LCCOMB_X53_Y70_N10
\BALL|Bola_X[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Bola_X[3]~13_combout\ = ((\BALL|Bola_X\(3) $ (\BALL|Desplaza_Bola_X\(2) $ (!\BALL|Bola_X[2]~12\)))) # (GND)
-- \BALL|Bola_X[3]~14\ = CARRY((\BALL|Bola_X\(3) & ((\BALL|Desplaza_Bola_X\(2)) # (!\BALL|Bola_X[2]~12\))) # (!\BALL|Bola_X\(3) & (\BALL|Desplaza_Bola_X\(2) & !\BALL|Bola_X[2]~12\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Bola_X\(3),
	datab => \BALL|Desplaza_Bola_X\(2),
	datad => VCC,
	cin => \BALL|Bola_X[2]~12\,
	combout => \BALL|Bola_X[3]~13_combout\,
	cout => \BALL|Bola_X[3]~14\);

-- Location: LCCOMB_X53_Y70_N12
\BALL|Bola_X[4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Bola_X[4]~15_combout\ = (\BALL|Bola_X\(4) & ((\BALL|Desplaza_Bola_X\(2) & (\BALL|Bola_X[3]~14\ & VCC)) # (!\BALL|Desplaza_Bola_X\(2) & (!\BALL|Bola_X[3]~14\)))) # (!\BALL|Bola_X\(4) & ((\BALL|Desplaza_Bola_X\(2) & (!\BALL|Bola_X[3]~14\)) # 
-- (!\BALL|Desplaza_Bola_X\(2) & ((\BALL|Bola_X[3]~14\) # (GND)))))
-- \BALL|Bola_X[4]~16\ = CARRY((\BALL|Bola_X\(4) & (!\BALL|Desplaza_Bola_X\(2) & !\BALL|Bola_X[3]~14\)) # (!\BALL|Bola_X\(4) & ((!\BALL|Bola_X[3]~14\) # (!\BALL|Desplaza_Bola_X\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Bola_X\(4),
	datab => \BALL|Desplaza_Bola_X\(2),
	datad => VCC,
	cin => \BALL|Bola_X[3]~14\,
	combout => \BALL|Bola_X[4]~15_combout\,
	cout => \BALL|Bola_X[4]~16\);

-- Location: LCCOMB_X53_Y70_N14
\BALL|Bola_X[5]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Bola_X[5]~17_combout\ = ((\BALL|Desplaza_Bola_X\(2) $ (\BALL|Bola_X\(5) $ (!\BALL|Bola_X[4]~16\)))) # (GND)
-- \BALL|Bola_X[5]~18\ = CARRY((\BALL|Desplaza_Bola_X\(2) & ((\BALL|Bola_X\(5)) # (!\BALL|Bola_X[4]~16\))) # (!\BALL|Desplaza_Bola_X\(2) & (\BALL|Bola_X\(5) & !\BALL|Bola_X[4]~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Desplaza_Bola_X\(2),
	datab => \BALL|Bola_X\(5),
	datad => VCC,
	cin => \BALL|Bola_X[4]~16\,
	combout => \BALL|Bola_X[5]~17_combout\,
	cout => \BALL|Bola_X[5]~18\);

-- Location: FF_X54_Y70_N17
\BALL|Bola_X[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	asdata => \BALL|Bola_X[5]~17_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BALL|Bola_X\(5));

-- Location: LCCOMB_X53_Y70_N16
\BALL|Bola_X[6]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Bola_X[6]~19_combout\ = (\BALL|Desplaza_Bola_X\(2) & ((\BALL|Bola_X\(6) & (\BALL|Bola_X[5]~18\ & VCC)) # (!\BALL|Bola_X\(6) & (!\BALL|Bola_X[5]~18\)))) # (!\BALL|Desplaza_Bola_X\(2) & ((\BALL|Bola_X\(6) & (!\BALL|Bola_X[5]~18\)) # (!\BALL|Bola_X\(6) 
-- & ((\BALL|Bola_X[5]~18\) # (GND)))))
-- \BALL|Bola_X[6]~20\ = CARRY((\BALL|Desplaza_Bola_X\(2) & (!\BALL|Bola_X\(6) & !\BALL|Bola_X[5]~18\)) # (!\BALL|Desplaza_Bola_X\(2) & ((!\BALL|Bola_X[5]~18\) # (!\BALL|Bola_X\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Desplaza_Bola_X\(2),
	datab => \BALL|Bola_X\(6),
	datad => VCC,
	cin => \BALL|Bola_X[5]~18\,
	combout => \BALL|Bola_X[6]~19_combout\,
	cout => \BALL|Bola_X[6]~20\);

-- Location: FF_X53_Y70_N17
\BALL|Bola_X[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	d => \BALL|Bola_X[6]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BALL|Bola_X\(6));

-- Location: LCCOMB_X53_Y70_N18
\BALL|Bola_X[7]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Bola_X[7]~21_combout\ = ((\BALL|Desplaza_Bola_X\(2) $ (\BALL|Bola_X\(7) $ (!\BALL|Bola_X[6]~20\)))) # (GND)
-- \BALL|Bola_X[7]~22\ = CARRY((\BALL|Desplaza_Bola_X\(2) & ((\BALL|Bola_X\(7)) # (!\BALL|Bola_X[6]~20\))) # (!\BALL|Desplaza_Bola_X\(2) & (\BALL|Bola_X\(7) & !\BALL|Bola_X[6]~20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Desplaza_Bola_X\(2),
	datab => \BALL|Bola_X\(7),
	datad => VCC,
	cin => \BALL|Bola_X[6]~20\,
	combout => \BALL|Bola_X[7]~21_combout\,
	cout => \BALL|Bola_X[7]~22\);

-- Location: FF_X53_Y70_N19
\BALL|Bola_X[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	d => \BALL|Bola_X[7]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BALL|Bola_X\(7));

-- Location: LCCOMB_X53_Y70_N26
\BALL|Desplaza_Bola_X[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Desplaza_Bola_X[2]~3_combout\ = (\BALL|Desplaza_Bola_X\(2) & ((\BALL|Desplaza_Bola_X[2]~2_combout\) # ((\BALL|Bola_X\(7)) # (\BALL|Bola_X\(9))))) # (!\BALL|Desplaza_Bola_X\(2) & (\BALL|Bola_X\(9) & ((\BALL|Desplaza_Bola_X[2]~2_combout\) # 
-- (\BALL|Bola_X\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Desplaza_Bola_X[2]~2_combout\,
	datab => \BALL|Bola_X\(7),
	datac => \BALL|Desplaza_Bola_X\(2),
	datad => \BALL|Bola_X\(9),
	combout => \BALL|Desplaza_Bola_X[2]~3_combout\);

-- Location: FF_X53_Y70_N27
\BALL|Desplaza_Bola_X[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	d => \BALL|Desplaza_Bola_X[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BALL|Desplaza_Bola_X\(2));

-- Location: LCCOMB_X53_Y70_N20
\BALL|Bola_X[8]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Bola_X[8]~23_combout\ = (\BALL|Desplaza_Bola_X\(2) & ((\BALL|Bola_X\(8) & (\BALL|Bola_X[7]~22\ & VCC)) # (!\BALL|Bola_X\(8) & (!\BALL|Bola_X[7]~22\)))) # (!\BALL|Desplaza_Bola_X\(2) & ((\BALL|Bola_X\(8) & (!\BALL|Bola_X[7]~22\)) # (!\BALL|Bola_X\(8) 
-- & ((\BALL|Bola_X[7]~22\) # (GND)))))
-- \BALL|Bola_X[8]~24\ = CARRY((\BALL|Desplaza_Bola_X\(2) & (!\BALL|Bola_X\(8) & !\BALL|Bola_X[7]~22\)) # (!\BALL|Desplaza_Bola_X\(2) & ((!\BALL|Bola_X[7]~22\) # (!\BALL|Bola_X\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Desplaza_Bola_X\(2),
	datab => \BALL|Bola_X\(8),
	datad => VCC,
	cin => \BALL|Bola_X[7]~22\,
	combout => \BALL|Bola_X[8]~23_combout\,
	cout => \BALL|Bola_X[8]~24\);

-- Location: FF_X53_Y70_N21
\BALL|Bola_X[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	d => \BALL|Bola_X[8]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BALL|Bola_X\(8));

-- Location: LCCOMB_X53_Y70_N22
\BALL|Bola_X[9]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Bola_X[9]~25_combout\ = \BALL|Desplaza_Bola_X\(2) $ (\BALL|Bola_X[8]~24\ $ (!\BALL|Bola_X\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BALL|Desplaza_Bola_X\(2),
	datad => \BALL|Bola_X\(9),
	cin => \BALL|Bola_X[8]~24\,
	combout => \BALL|Bola_X[9]~25_combout\);

-- Location: FF_X53_Y70_N23
\BALL|Bola_X[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	d => \BALL|Bola_X[9]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BALL|Bola_X\(9));

-- Location: FF_X53_Y70_N13
\BALL|Bola_X[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	d => \BALL|Bola_X[4]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BALL|Bola_X\(4));

-- Location: FF_X53_Y70_N11
\BALL|Bola_X[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	d => \BALL|Bola_X[3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BALL|Bola_X\(3));

-- Location: FF_X55_Y70_N15
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

-- Location: LCCOMB_X52_Y70_N0
\BALL|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan0~1_cout\ = CARRY((\BALL|Bola_X\(1) & !\VGA|pixel_x\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Bola_X\(1),
	datab => \VGA|pixel_x\(1),
	datad => VCC,
	cout => \BALL|LessThan0~1_cout\);

-- Location: LCCOMB_X52_Y70_N2
\BALL|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan0~3_cout\ = CARRY((\VGA|pixel_x\(2) & ((!\BALL|LessThan0~1_cout\) # (!\BALL|Bola_X\(2)))) # (!\VGA|pixel_x\(2) & (!\BALL|Bola_X\(2) & !\BALL|LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_x\(2),
	datab => \BALL|Bola_X\(2),
	datad => VCC,
	cin => \BALL|LessThan0~1_cout\,
	cout => \BALL|LessThan0~3_cout\);

-- Location: LCCOMB_X52_Y70_N4
\BALL|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan0~5_cout\ = CARRY((\VGA|pixel_x\(3) & ((\BALL|Bola_X\(3)) # (!\BALL|LessThan0~3_cout\))) # (!\VGA|pixel_x\(3) & (\BALL|Bola_X\(3) & !\BALL|LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_x\(3),
	datab => \BALL|Bola_X\(3),
	datad => VCC,
	cin => \BALL|LessThan0~3_cout\,
	cout => \BALL|LessThan0~5_cout\);

-- Location: LCCOMB_X52_Y70_N6
\BALL|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan0~7_cout\ = CARRY((\BALL|Add0~0_combout\ & ((!\BALL|LessThan0~5_cout\) # (!\BALL|Bola_X\(4)))) # (!\BALL|Add0~0_combout\ & (!\BALL|Bola_X\(4) & !\BALL|LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Add0~0_combout\,
	datab => \BALL|Bola_X\(4),
	datad => VCC,
	cin => \BALL|LessThan0~5_cout\,
	cout => \BALL|LessThan0~7_cout\);

-- Location: LCCOMB_X52_Y70_N8
\BALL|LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan0~9_cout\ = CARRY((\BALL|Bola_X\(5) & ((!\BALL|LessThan0~7_cout\) # (!\BALL|Add0~2_combout\))) # (!\BALL|Bola_X\(5) & (!\BALL|Add0~2_combout\ & !\BALL|LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Bola_X\(5),
	datab => \BALL|Add0~2_combout\,
	datad => VCC,
	cin => \BALL|LessThan0~7_cout\,
	cout => \BALL|LessThan0~9_cout\);

-- Location: LCCOMB_X52_Y70_N10
\BALL|LessThan0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan0~11_cout\ = CARRY((\BALL|Add0~4_combout\ & ((!\BALL|LessThan0~9_cout\) # (!\BALL|Bola_X\(6)))) # (!\BALL|Add0~4_combout\ & (!\BALL|Bola_X\(6) & !\BALL|LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Add0~4_combout\,
	datab => \BALL|Bola_X\(6),
	datad => VCC,
	cin => \BALL|LessThan0~9_cout\,
	cout => \BALL|LessThan0~11_cout\);

-- Location: LCCOMB_X52_Y70_N12
\BALL|LessThan0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan0~13_cout\ = CARRY((\BALL|Add0~6_combout\ & (\BALL|Bola_X\(7) & !\BALL|LessThan0~11_cout\)) # (!\BALL|Add0~6_combout\ & ((\BALL|Bola_X\(7)) # (!\BALL|LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Add0~6_combout\,
	datab => \BALL|Bola_X\(7),
	datad => VCC,
	cin => \BALL|LessThan0~11_cout\,
	cout => \BALL|LessThan0~13_cout\);

-- Location: LCCOMB_X52_Y70_N14
\BALL|LessThan0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan0~15_cout\ = CARRY((\BALL|Add0~8_combout\ & ((!\BALL|LessThan0~13_cout\) # (!\BALL|Bola_X\(8)))) # (!\BALL|Add0~8_combout\ & (!\BALL|Bola_X\(8) & !\BALL|LessThan0~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Add0~8_combout\,
	datab => \BALL|Bola_X\(8),
	datad => VCC,
	cin => \BALL|LessThan0~13_cout\,
	cout => \BALL|LessThan0~15_cout\);

-- Location: LCCOMB_X52_Y70_N16
\BALL|LessThan0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan0~16_combout\ = (\BALL|Add0~10_combout\ & (!\BALL|LessThan0~15_cout\ & \BALL|Bola_X\(9))) # (!\BALL|Add0~10_combout\ & ((\BALL|Bola_X\(9)) # (!\BALL|LessThan0~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BALL|Add0~10_combout\,
	datad => \BALL|Bola_X\(9),
	cin => \BALL|LessThan0~15_cout\,
	combout => \BALL|LessThan0~16_combout\);

-- Location: LCCOMB_X53_Y72_N2
\BALL|Bola_Y[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Bola_Y[2]~9_cout\ = CARRY(\BALL|Bola_X\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Bola_X\(1),
	datad => VCC,
	cout => \BALL|Bola_Y[2]~9_cout\);

-- Location: LCCOMB_X53_Y72_N4
\BALL|Bola_Y[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Bola_Y[2]~10_combout\ = (\BALL|Bola_Y\(2) & ((\BALL|Desplaza_Bola_Y\(2) & (\BALL|Bola_Y[2]~9_cout\ & VCC)) # (!\BALL|Desplaza_Bola_Y\(2) & (!\BALL|Bola_Y[2]~9_cout\)))) # (!\BALL|Bola_Y\(2) & ((\BALL|Desplaza_Bola_Y\(2) & (!\BALL|Bola_Y[2]~9_cout\)) 
-- # (!\BALL|Desplaza_Bola_Y\(2) & ((\BALL|Bola_Y[2]~9_cout\) # (GND)))))
-- \BALL|Bola_Y[2]~11\ = CARRY((\BALL|Bola_Y\(2) & (!\BALL|Desplaza_Bola_Y\(2) & !\BALL|Bola_Y[2]~9_cout\)) # (!\BALL|Bola_Y\(2) & ((!\BALL|Bola_Y[2]~9_cout\) # (!\BALL|Desplaza_Bola_Y\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Bola_Y\(2),
	datab => \BALL|Desplaza_Bola_Y\(2),
	datad => VCC,
	cin => \BALL|Bola_Y[2]~9_cout\,
	combout => \BALL|Bola_Y[2]~10_combout\,
	cout => \BALL|Bola_Y[2]~11\);

-- Location: LCCOMB_X53_Y72_N6
\BALL|Bola_Y[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Bola_Y[3]~12_combout\ = ((\BALL|Bola_Y\(3) $ (\BALL|Desplaza_Bola_Y\(2) $ (!\BALL|Bola_Y[2]~11\)))) # (GND)
-- \BALL|Bola_Y[3]~13\ = CARRY((\BALL|Bola_Y\(3) & ((\BALL|Desplaza_Bola_Y\(2)) # (!\BALL|Bola_Y[2]~11\))) # (!\BALL|Bola_Y\(3) & (\BALL|Desplaza_Bola_Y\(2) & !\BALL|Bola_Y[2]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Bola_Y\(3),
	datab => \BALL|Desplaza_Bola_Y\(2),
	datad => VCC,
	cin => \BALL|Bola_Y[2]~11\,
	combout => \BALL|Bola_Y[3]~12_combout\,
	cout => \BALL|Bola_Y[3]~13\);

-- Location: LCCOMB_X53_Y72_N8
\BALL|Bola_Y[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Bola_Y[4]~14_combout\ = (\BALL|Desplaza_Bola_Y\(2) & ((\BALL|Bola_Y\(4) & (\BALL|Bola_Y[3]~13\ & VCC)) # (!\BALL|Bola_Y\(4) & (!\BALL|Bola_Y[3]~13\)))) # (!\BALL|Desplaza_Bola_Y\(2) & ((\BALL|Bola_Y\(4) & (!\BALL|Bola_Y[3]~13\)) # (!\BALL|Bola_Y\(4) 
-- & ((\BALL|Bola_Y[3]~13\) # (GND)))))
-- \BALL|Bola_Y[4]~15\ = CARRY((\BALL|Desplaza_Bola_Y\(2) & (!\BALL|Bola_Y\(4) & !\BALL|Bola_Y[3]~13\)) # (!\BALL|Desplaza_Bola_Y\(2) & ((!\BALL|Bola_Y[3]~13\) # (!\BALL|Bola_Y\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Desplaza_Bola_Y\(2),
	datab => \BALL|Bola_Y\(4),
	datad => VCC,
	cin => \BALL|Bola_Y[3]~13\,
	combout => \BALL|Bola_Y[4]~14_combout\,
	cout => \BALL|Bola_Y[4]~15\);

-- Location: FF_X53_Y72_N9
\BALL|Bola_Y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	d => \BALL|Bola_Y[4]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BALL|Bola_Y\(4));

-- Location: LCCOMB_X53_Y72_N14
\BALL|Bola_Y[7]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Bola_Y[7]~20_combout\ = ((\BALL|Bola_Y\(7) $ (\BALL|Desplaza_Bola_Y\(2) $ (!\BALL|Bola_Y[6]~19\)))) # (GND)
-- \BALL|Bola_Y[7]~21\ = CARRY((\BALL|Bola_Y\(7) & ((\BALL|Desplaza_Bola_Y\(2)) # (!\BALL|Bola_Y[6]~19\))) # (!\BALL|Bola_Y\(7) & (\BALL|Desplaza_Bola_Y\(2) & !\BALL|Bola_Y[6]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Bola_Y\(7),
	datab => \BALL|Desplaza_Bola_Y\(2),
	datad => VCC,
	cin => \BALL|Bola_Y[6]~19\,
	combout => \BALL|Bola_Y[7]~20_combout\,
	cout => \BALL|Bola_Y[7]~21\);

-- Location: FF_X53_Y72_N15
\BALL|Bola_Y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	d => \BALL|Bola_Y[7]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BALL|Bola_Y\(7));

-- Location: LCCOMB_X53_Y72_N16
\BALL|Bola_Y[8]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Bola_Y[8]~22_combout\ = (\BALL|Bola_Y\(8) & ((\BALL|Desplaza_Bola_Y\(2) & (\BALL|Bola_Y[7]~21\ & VCC)) # (!\BALL|Desplaza_Bola_Y\(2) & (!\BALL|Bola_Y[7]~21\)))) # (!\BALL|Bola_Y\(8) & ((\BALL|Desplaza_Bola_Y\(2) & (!\BALL|Bola_Y[7]~21\)) # 
-- (!\BALL|Desplaza_Bola_Y\(2) & ((\BALL|Bola_Y[7]~21\) # (GND)))))
-- \BALL|Bola_Y[8]~23\ = CARRY((\BALL|Bola_Y\(8) & (!\BALL|Desplaza_Bola_Y\(2) & !\BALL|Bola_Y[7]~21\)) # (!\BALL|Bola_Y\(8) & ((!\BALL|Bola_Y[7]~21\) # (!\BALL|Desplaza_Bola_Y\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Bola_Y\(8),
	datab => \BALL|Desplaza_Bola_Y\(2),
	datad => VCC,
	cin => \BALL|Bola_Y[7]~21\,
	combout => \BALL|Bola_Y[8]~22_combout\,
	cout => \BALL|Bola_Y[8]~23\);

-- Location: FF_X53_Y72_N17
\BALL|Bola_Y[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	d => \BALL|Bola_Y[8]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BALL|Bola_Y\(8));

-- Location: LCCOMB_X53_Y72_N0
\BALL|Desplaza_Bola_Y[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Desplaza_Bola_Y[2]~0_combout\ = (\BALL|Bola_Y\(6) & ((\BALL|Desplaza_Bola_Y\(2)) # ((\BALL|Bola_Y\(7) & \BALL|Bola_Y\(8))))) # (!\BALL|Bola_Y\(6) & (\BALL|Desplaza_Bola_Y\(2) & ((\BALL|Bola_Y\(7)) # (\BALL|Bola_Y\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Bola_Y\(6),
	datab => \BALL|Desplaza_Bola_Y\(2),
	datac => \BALL|Bola_Y\(7),
	datad => \BALL|Bola_Y\(8),
	combout => \BALL|Desplaza_Bola_Y[2]~0_combout\);

-- Location: FF_X53_Y70_N7
\BALL|Bola_X[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	d => \BALL|Bola_X[1]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BALL|Bola_X\(1));

-- Location: FF_X53_Y72_N5
\BALL|Bola_Y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	d => \BALL|Bola_Y[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BALL|Bola_Y\(2));

-- Location: LCCOMB_X53_Y72_N26
\BALL|Desplaza_Bola_Y[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Desplaza_Bola_Y[2]~1_combout\ = (\BALL|Bola_Y\(3) & ((\BALL|Bola_Y\(8)) # ((\BALL|Bola_X\(1)) # (\BALL|Bola_Y\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Bola_Y\(3),
	datab => \BALL|Bola_Y\(8),
	datac => \BALL|Bola_X\(1),
	datad => \BALL|Bola_Y\(2),
	combout => \BALL|Desplaza_Bola_Y[2]~1_combout\);

-- Location: LCCOMB_X53_Y72_N28
\BALL|Desplaza_Bola_Y[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Desplaza_Bola_Y[2]~2_combout\ = (\BALL|Bola_Y\(5)) # ((\BALL|Bola_Y\(4) & ((\BALL|Desplaza_Bola_Y[2]~1_combout\) # (\BALL|Desplaza_Bola_Y\(2)))) # (!\BALL|Bola_Y\(4) & (\BALL|Desplaza_Bola_Y[2]~1_combout\ & \BALL|Desplaza_Bola_Y\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Bola_Y\(5),
	datab => \BALL|Bola_Y\(4),
	datac => \BALL|Desplaza_Bola_Y[2]~1_combout\,
	datad => \BALL|Desplaza_Bola_Y\(2),
	combout => \BALL|Desplaza_Bola_Y[2]~2_combout\);

-- Location: LCCOMB_X53_Y72_N24
\BALL|Desplaza_Bola_Y[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Desplaza_Bola_Y[2]~3_combout\ = (\BALL|Bola_Y\(9)) # ((\BALL|Desplaza_Bola_Y[2]~0_combout\ & ((\BALL|Desplaza_Bola_Y\(2)) # (\BALL|Desplaza_Bola_Y[2]~2_combout\))) # (!\BALL|Desplaza_Bola_Y[2]~0_combout\ & (\BALL|Desplaza_Bola_Y\(2) & 
-- \BALL|Desplaza_Bola_Y[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Bola_Y\(9),
	datab => \BALL|Desplaza_Bola_Y[2]~0_combout\,
	datac => \BALL|Desplaza_Bola_Y\(2),
	datad => \BALL|Desplaza_Bola_Y[2]~2_combout\,
	combout => \BALL|Desplaza_Bola_Y[2]~3_combout\);

-- Location: FF_X53_Y72_N25
\BALL|Desplaza_Bola_Y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	d => \BALL|Desplaza_Bola_Y[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BALL|Desplaza_Bola_Y\(2));

-- Location: LCCOMB_X53_Y72_N18
\BALL|Bola_Y[9]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Bola_Y[9]~24_combout\ = \BALL|Desplaza_Bola_Y\(2) $ (\BALL|Bola_Y[8]~23\ $ (!\BALL|Bola_Y\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BALL|Desplaza_Bola_Y\(2),
	datad => \BALL|Bola_Y\(9),
	cin => \BALL|Bola_Y[8]~23\,
	combout => \BALL|Bola_Y[9]~24_combout\);

-- Location: FF_X53_Y72_N19
\BALL|Bola_Y[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	d => \BALL|Bola_Y[9]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BALL|Bola_Y\(9));

-- Location: FF_X53_Y72_N7
\BALL|Bola_Y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	d => \BALL|Bola_Y[3]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BALL|Bola_Y\(3));

-- Location: LCCOMB_X54_Y72_N18
\BALL|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add3~0_combout\ = (\BALL|Bola_Y\(4) & (\BALL|Bola_Y\(3) $ (VCC))) # (!\BALL|Bola_Y\(4) & (\BALL|Bola_Y\(3) & VCC))
-- \BALL|Add3~1\ = CARRY((\BALL|Bola_Y\(4) & \BALL|Bola_Y\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Bola_Y\(4),
	datab => \BALL|Bola_Y\(3),
	datad => VCC,
	combout => \BALL|Add3~0_combout\,
	cout => \BALL|Add3~1\);

-- Location: LCCOMB_X54_Y72_N20
\BALL|Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add3~2_combout\ = (\BALL|Bola_Y\(5) & (!\BALL|Add3~1\)) # (!\BALL|Bola_Y\(5) & ((\BALL|Add3~1\) # (GND)))
-- \BALL|Add3~3\ = CARRY((!\BALL|Add3~1\) # (!\BALL|Bola_Y\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Bola_Y\(5),
	datad => VCC,
	cin => \BALL|Add3~1\,
	combout => \BALL|Add3~2_combout\,
	cout => \BALL|Add3~3\);

-- Location: LCCOMB_X54_Y72_N24
\BALL|Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add3~6_combout\ = (\BALL|Bola_Y\(7) & (!\BALL|Add3~5\)) # (!\BALL|Bola_Y\(7) & ((\BALL|Add3~5\) # (GND)))
-- \BALL|Add3~7\ = CARRY((!\BALL|Add3~5\) # (!\BALL|Bola_Y\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Bola_Y\(7),
	datad => VCC,
	cin => \BALL|Add3~5\,
	combout => \BALL|Add3~6_combout\,
	cout => \BALL|Add3~7\);

-- Location: LCCOMB_X54_Y72_N26
\BALL|Add3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add3~8_combout\ = (\BALL|Bola_Y\(8) & (\BALL|Add3~7\ $ (GND))) # (!\BALL|Bola_Y\(8) & (!\BALL|Add3~7\ & VCC))
-- \BALL|Add3~9\ = CARRY((\BALL|Bola_Y\(8) & !\BALL|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Bola_Y\(8),
	datad => VCC,
	cin => \BALL|Add3~7\,
	combout => \BALL|Add3~8_combout\,
	cout => \BALL|Add3~9\);

-- Location: LCCOMB_X54_Y72_N28
\BALL|Add3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add3~10_combout\ = \BALL|Add3~9\ $ (\BALL|Bola_Y\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \BALL|Bola_Y\(9),
	cin => \BALL|Add3~9\,
	combout => \BALL|Add3~10_combout\);

-- Location: LCCOMB_X56_Y70_N28
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

-- Location: FF_X56_Y70_N7
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

-- Location: LCCOMB_X56_Y70_N20
\VGA|Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|Equal2~2_combout\ = (\VGA|Equal2~1_combout\) # ((\VGA|Equal2~0_combout\) # ((\VGA|cont_hs\(3)) # (!\VGA|cont_hs\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|Equal2~1_combout\,
	datab => \VGA|Equal2~0_combout\,
	datac => \VGA|cont_hs\(5),
	datad => \VGA|cont_hs\(3),
	combout => \VGA|Equal2~2_combout\);

-- Location: LCCOMB_X58_Y72_N4
\VGA|cont_vs[8]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|cont_vs[8]~0_combout\ = (!\VGA|process_0~9_combout\ & ((\VGA|Equal2~2_combout\ & ((\VGA|cont_vs\(8)))) # (!\VGA|Equal2~2_combout\ & (\VGA|Add1~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|Add1~16_combout\,
	datab => \VGA|Equal2~2_combout\,
	datac => \VGA|cont_vs\(8),
	datad => \VGA|process_0~9_combout\,
	combout => \VGA|cont_vs[8]~0_combout\);

-- Location: FF_X58_Y72_N5
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

-- Location: LCCOMB_X57_Y72_N22
\VGA|cont_vs[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|cont_vs[5]~2_combout\ = (!\VGA|process_0~9_combout\ & ((\VGA|Equal2~2_combout\ & ((\VGA|cont_vs\(5)))) # (!\VGA|Equal2~2_combout\ & (\VGA|Add1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|Add1~10_combout\,
	datab => \VGA|Equal2~2_combout\,
	datac => \VGA|cont_vs\(5),
	datad => \VGA|process_0~9_combout\,
	combout => \VGA|cont_vs[5]~2_combout\);

-- Location: FF_X57_Y72_N23
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

-- Location: LCCOMB_X58_Y72_N10
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

-- Location: LCCOMB_X58_Y72_N12
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

-- Location: LCCOMB_X57_Y72_N4
\VGA|cont_vs[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|cont_vs[1]~8_combout\ = (!\VGA|process_0~9_combout\ & ((\VGA|Equal2~2_combout\ & (\VGA|cont_vs\(1))) # (!\VGA|Equal2~2_combout\ & ((\VGA|Add1~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|process_0~9_combout\,
	datab => \VGA|Equal2~2_combout\,
	datac => \VGA|cont_vs\(1),
	datad => \VGA|Add1~2_combout\,
	combout => \VGA|cont_vs[1]~8_combout\);

-- Location: FF_X57_Y72_N5
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

-- Location: LCCOMB_X58_Y72_N14
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

-- Location: LCCOMB_X58_Y72_N16
\VGA|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|Add1~6_combout\ = (\VGA|cont_vs\(3) & (!\VGA|Add1~5\)) # (!\VGA|cont_vs\(3) & ((\VGA|Add1~5\) # (GND)))
-- \VGA|Add1~7\ = CARRY((!\VGA|Add1~5\) # (!\VGA|cont_vs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA|cont_vs\(3),
	datad => VCC,
	cin => \VGA|Add1~5\,
	combout => \VGA|Add1~6_combout\,
	cout => \VGA|Add1~7\);

-- Location: LCCOMB_X57_Y72_N6
\VGA|cont_vs[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|cont_vs[3]~6_combout\ = (!\VGA|process_0~9_combout\ & ((\VGA|Equal2~2_combout\ & (\VGA|cont_vs\(3))) # (!\VGA|Equal2~2_combout\ & ((\VGA|Add1~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|process_0~9_combout\,
	datab => \VGA|Equal2~2_combout\,
	datac => \VGA|cont_vs\(3),
	datad => \VGA|Add1~6_combout\,
	combout => \VGA|cont_vs[3]~6_combout\);

-- Location: FF_X57_Y72_N7
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

-- Location: LCCOMB_X58_Y72_N18
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

-- Location: LCCOMB_X58_Y72_N8
\VGA|cont_vs[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|cont_vs[4]~5_combout\ = (!\VGA|process_0~9_combout\ & ((\VGA|Equal2~2_combout\ & ((\VGA|cont_vs\(4)))) # (!\VGA|Equal2~2_combout\ & (\VGA|Add1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|Equal2~2_combout\,
	datab => \VGA|Add1~8_combout\,
	datac => \VGA|cont_vs\(4),
	datad => \VGA|process_0~9_combout\,
	combout => \VGA|cont_vs[4]~5_combout\);

-- Location: FF_X58_Y72_N9
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

-- Location: LCCOMB_X58_Y72_N24
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

-- Location: LCCOMB_X58_Y72_N28
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

-- Location: LCCOMB_X58_Y72_N30
\VGA|cont_vs[9]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|cont_vs[9]~1_combout\ = (!\VGA|process_0~9_combout\ & ((\VGA|Equal2~2_combout\ & ((\VGA|cont_vs\(9)))) # (!\VGA|Equal2~2_combout\ & (\VGA|Add1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|Equal2~2_combout\,
	datab => \VGA|Add1~18_combout\,
	datac => \VGA|cont_vs\(9),
	datad => \VGA|process_0~9_combout\,
	combout => \VGA|cont_vs[9]~1_combout\);

-- Location: FF_X58_Y72_N31
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

-- Location: LCCOMB_X57_Y72_N10
\VGA|process_0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|process_0~9_combout\ = (\VGA|process_0~8_combout\ & (\VGA|cont_hs\(9) & (\VGA|cont_vs\(9) & !\VGA|cont_vs\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|process_0~8_combout\,
	datab => \VGA|cont_hs\(9),
	datac => \VGA|cont_vs\(9),
	datad => \VGA|cont_vs\(8),
	combout => \VGA|process_0~9_combout\);

-- Location: LCCOMB_X58_Y72_N0
\VGA|cont_vs[6]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|cont_vs[6]~3_combout\ = (!\VGA|process_0~9_combout\ & ((\VGA|Equal2~2_combout\ & ((\VGA|cont_vs\(6)))) # (!\VGA|Equal2~2_combout\ & (\VGA|Add1~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|Add1~12_combout\,
	datab => \VGA|Equal2~2_combout\,
	datac => \VGA|cont_vs\(6),
	datad => \VGA|process_0~9_combout\,
	combout => \VGA|cont_vs[6]~3_combout\);

-- Location: FF_X58_Y72_N1
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

-- Location: LCCOMB_X58_Y72_N2
\VGA|cont_vs[7]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|cont_vs[7]~4_combout\ = (!\VGA|process_0~9_combout\ & ((\VGA|Equal2~2_combout\ & ((\VGA|cont_vs\(7)))) # (!\VGA|Equal2~2_combout\ & (\VGA|Add1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|Equal2~2_combout\,
	datab => \VGA|Add1~14_combout\,
	datac => \VGA|cont_vs\(7),
	datad => \VGA|process_0~9_combout\,
	combout => \VGA|cont_vs[7]~4_combout\);

-- Location: FF_X58_Y72_N3
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

-- Location: LCCOMB_X57_Y72_N8
\VGA|LessThan6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|LessThan6~0_combout\ = (\VGA|cont_vs\(8) & (\VGA|cont_vs\(6) & (\VGA|cont_vs\(5) & \VGA|cont_vs\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|cont_vs\(8),
	datab => \VGA|cont_vs\(6),
	datac => \VGA|cont_vs\(5),
	datad => \VGA|cont_vs\(7),
	combout => \VGA|LessThan6~0_combout\);

-- Location: LCCOMB_X56_Y72_N22
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

-- Location: FF_X56_Y72_N23
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

-- Location: LCCOMB_X57_Y72_N20
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

-- Location: LCCOMB_X56_Y72_N6
\VGA|LessThan6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|LessThan6~1_combout\ = (!\VGA|LessThan6~0_combout\ & !\VGA|cont_vs\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA|LessThan6~0_combout\,
	datad => \VGA|cont_vs\(9),
	combout => \VGA|LessThan6~1_combout\);

-- Location: FF_X57_Y72_N21
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

-- Location: FF_X57_Y72_N25
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

-- Location: LCCOMB_X57_Y72_N2
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

-- Location: FF_X57_Y72_N3
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

-- Location: LCCOMB_X56_Y72_N30
\VGA|pixel_y[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|pixel_y[0]~feeder_combout\ = \VGA|cont_vs\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA|cont_vs\(0),
	combout => \VGA|pixel_y[0]~feeder_combout\);

-- Location: FF_X56_Y72_N31
\VGA|pixel_y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	d => \VGA|pixel_y[0]~feeder_combout\,
	ena => \VGA|LessThan6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|pixel_y\(0));

-- Location: LCCOMB_X54_Y72_N0
\BALL|LessThan3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan3~1_cout\ = CARRY(\VGA|pixel_y\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA|pixel_y\(0),
	datad => VCC,
	cout => \BALL|LessThan3~1_cout\);

-- Location: LCCOMB_X54_Y72_N2
\BALL|LessThan3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan3~3_cout\ = CARRY((\VGA|pixel_y\(1) & (\BALL|Bola_X\(1) & !\BALL|LessThan3~1_cout\)) # (!\VGA|pixel_y\(1) & ((\BALL|Bola_X\(1)) # (!\BALL|LessThan3~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_y\(1),
	datab => \BALL|Bola_X\(1),
	datad => VCC,
	cin => \BALL|LessThan3~1_cout\,
	cout => \BALL|LessThan3~3_cout\);

-- Location: LCCOMB_X54_Y72_N4
\BALL|LessThan3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan3~5_cout\ = CARRY((\VGA|pixel_y\(2) & ((!\BALL|LessThan3~3_cout\) # (!\BALL|Bola_Y\(2)))) # (!\VGA|pixel_y\(2) & (!\BALL|Bola_Y\(2) & !\BALL|LessThan3~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_y\(2),
	datab => \BALL|Bola_Y\(2),
	datad => VCC,
	cin => \BALL|LessThan3~3_cout\,
	cout => \BALL|LessThan3~5_cout\);

-- Location: LCCOMB_X54_Y72_N6
\BALL|LessThan3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan3~7_cout\ = CARRY((\VGA|pixel_y\(3) & (!\BALL|Bola_Y\(3) & !\BALL|LessThan3~5_cout\)) # (!\VGA|pixel_y\(3) & ((!\BALL|LessThan3~5_cout\) # (!\BALL|Bola_Y\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_y\(3),
	datab => \BALL|Bola_Y\(3),
	datad => VCC,
	cin => \BALL|LessThan3~5_cout\,
	cout => \BALL|LessThan3~7_cout\);

-- Location: LCCOMB_X54_Y72_N8
\BALL|LessThan3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan3~9_cout\ = CARRY((\VGA|pixel_y\(4) & ((!\BALL|LessThan3~7_cout\) # (!\BALL|Add3~0_combout\))) # (!\VGA|pixel_y\(4) & (!\BALL|Add3~0_combout\ & !\BALL|LessThan3~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_y\(4),
	datab => \BALL|Add3~0_combout\,
	datad => VCC,
	cin => \BALL|LessThan3~7_cout\,
	cout => \BALL|LessThan3~9_cout\);

-- Location: LCCOMB_X54_Y72_N10
\BALL|LessThan3~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan3~11_cout\ = CARRY((\VGA|pixel_y\(5) & (\BALL|Add3~2_combout\ & !\BALL|LessThan3~9_cout\)) # (!\VGA|pixel_y\(5) & ((\BALL|Add3~2_combout\) # (!\BALL|LessThan3~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_y\(5),
	datab => \BALL|Add3~2_combout\,
	datad => VCC,
	cin => \BALL|LessThan3~9_cout\,
	cout => \BALL|LessThan3~11_cout\);

-- Location: LCCOMB_X54_Y72_N12
\BALL|LessThan3~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan3~13_cout\ = CARRY((\BALL|Add3~4_combout\ & (\VGA|pixel_y\(6) & !\BALL|LessThan3~11_cout\)) # (!\BALL|Add3~4_combout\ & ((\VGA|pixel_y\(6)) # (!\BALL|LessThan3~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Add3~4_combout\,
	datab => \VGA|pixel_y\(6),
	datad => VCC,
	cin => \BALL|LessThan3~11_cout\,
	cout => \BALL|LessThan3~13_cout\);

-- Location: LCCOMB_X54_Y72_N14
\BALL|LessThan3~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan3~15_cout\ = CARRY((\VGA|pixel_y\(7) & (\BALL|Add3~6_combout\ & !\BALL|LessThan3~13_cout\)) # (!\VGA|pixel_y\(7) & ((\BALL|Add3~6_combout\) # (!\BALL|LessThan3~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_y\(7),
	datab => \BALL|Add3~6_combout\,
	datad => VCC,
	cin => \BALL|LessThan3~13_cout\,
	cout => \BALL|LessThan3~15_cout\);

-- Location: LCCOMB_X54_Y72_N16
\BALL|LessThan3~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan3~16_combout\ = (\VGA|pixel_y\(8) & ((!\BALL|Add3~8_combout\) # (!\BALL|LessThan3~15_cout\))) # (!\VGA|pixel_y\(8) & (!\BALL|LessThan3~15_cout\ & !\BALL|Add3~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA|pixel_y\(8),
	datad => \BALL|Add3~8_combout\,
	cin => \BALL|LessThan3~15_cout\,
	combout => \BALL|LessThan3~16_combout\);

-- Location: LCCOMB_X53_Y71_N4
\VGA|vga_r~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|vga_r~0_combout\ = (!\BALL|LessThan2~16_combout\ & (\VGA|video_on~q\ & ((\BALL|Add3~10_combout\) # (!\BALL|LessThan3~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|LessThan2~16_combout\,
	datab => \BALL|Add3~10_combout\,
	datac => \VGA|video_on~q\,
	datad => \BALL|LessThan3~16_combout\,
	combout => \VGA|vga_r~0_combout\);

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

-- Location: LCCOMB_X55_Y71_N16
\BLADE|Pala_Y[6]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLADE|Pala_Y[6]~19_combout\ = (\BLADE|Desplaza_Pala_Y\(2) & ((\BLADE|Pala_Y\(6) & (\BLADE|Pala_Y[5]~18\ & VCC)) # (!\BLADE|Pala_Y\(6) & (!\BLADE|Pala_Y[5]~18\)))) # (!\BLADE|Desplaza_Pala_Y\(2) & ((\BLADE|Pala_Y\(6) & (!\BLADE|Pala_Y[5]~18\)) # 
-- (!\BLADE|Pala_Y\(6) & ((\BLADE|Pala_Y[5]~18\) # (GND)))))
-- \BLADE|Pala_Y[6]~20\ = CARRY((\BLADE|Desplaza_Pala_Y\(2) & (!\BLADE|Pala_Y\(6) & !\BLADE|Pala_Y[5]~18\)) # (!\BLADE|Desplaza_Pala_Y\(2) & ((!\BLADE|Pala_Y[5]~18\) # (!\BLADE|Pala_Y\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BLADE|Desplaza_Pala_Y\(2),
	datab => \BLADE|Pala_Y\(6),
	datad => VCC,
	cin => \BLADE|Pala_Y[5]~18\,
	combout => \BLADE|Pala_Y[6]~19_combout\,
	cout => \BLADE|Pala_Y[6]~20\);

-- Location: LCCOMB_X55_Y71_N18
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

-- Location: FF_X55_Y71_N19
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

-- Location: LCCOMB_X55_Y71_N20
\BLADE|Pala_Y[8]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLADE|Pala_Y[8]~23_combout\ = (\BLADE|Desplaza_Pala_Y\(2) & ((\BLADE|Pala_Y\(8) & (\BLADE|Pala_Y[7]~22\ & VCC)) # (!\BLADE|Pala_Y\(8) & (!\BLADE|Pala_Y[7]~22\)))) # (!\BLADE|Desplaza_Pala_Y\(2) & ((\BLADE|Pala_Y\(8) & (!\BLADE|Pala_Y[7]~22\)) # 
-- (!\BLADE|Pala_Y\(8) & ((\BLADE|Pala_Y[7]~22\) # (GND)))))
-- \BLADE|Pala_Y[8]~24\ = CARRY((\BLADE|Desplaza_Pala_Y\(2) & (!\BLADE|Pala_Y\(8) & !\BLADE|Pala_Y[7]~22\)) # (!\BLADE|Desplaza_Pala_Y\(2) & ((!\BLADE|Pala_Y[7]~22\) # (!\BLADE|Pala_Y\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BLADE|Desplaza_Pala_Y\(2),
	datab => \BLADE|Pala_Y\(8),
	datad => VCC,
	cin => \BLADE|Pala_Y[7]~22\,
	combout => \BLADE|Pala_Y[8]~23_combout\,
	cout => \BLADE|Pala_Y[8]~24\);

-- Location: FF_X55_Y71_N21
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

-- Location: LCCOMB_X55_Y71_N0
\BLADE|Desplaza_Pala_Y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLADE|Desplaza_Pala_Y~0_combout\ = ((!\BLADE|Pala_Y\(6)) # (!\BLADE|Pala_Y\(8))) # (!\BLADE|Pala_Y\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BLADE|Pala_Y\(7),
	datac => \BLADE|Pala_Y\(8),
	datad => \BLADE|Pala_Y\(6),
	combout => \BLADE|Desplaza_Pala_Y~0_combout\);

-- Location: LCCOMB_X55_Y71_N28
\BLADE|Desplaza_Pala_Y~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLADE|Desplaza_Pala_Y~2_combout\ = (\BLADE|Desplaza_Pala_Y~0_combout\) # ((\BLADE|Desplaza_Pala_Y~1_combout\ & !\BLADE|Pala_Y\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BLADE|Desplaza_Pala_Y~1_combout\,
	datab => \BLADE|Pala_Y\(5),
	datad => \BLADE|Desplaza_Pala_Y~0_combout\,
	combout => \BLADE|Desplaza_Pala_Y~2_combout\);

-- Location: LCCOMB_X55_Y71_N4
\BLADE|Desplaza_Pala_Y~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLADE|Desplaza_Pala_Y~3_combout\ = (\BLADE|Mover_Pala~0_combout\) # ((!\BLADE|Pala_Y\(9) & (!\DOWN~input_o\ & \BLADE|Desplaza_Pala_Y~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BLADE|Pala_Y\(9),
	datab => \DOWN~input_o\,
	datac => \BLADE|Mover_Pala~0_combout\,
	datad => \BLADE|Desplaza_Pala_Y~2_combout\,
	combout => \BLADE|Desplaza_Pala_Y~3_combout\);

-- Location: FF_X55_Y71_N5
\BLADE|Desplaza_Pala_Y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	d => \BLADE|Desplaza_Pala_Y~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLADE|Desplaza_Pala_Y\(1));

-- Location: LCCOMB_X55_Y71_N6
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

-- Location: LCCOMB_X55_Y71_N8
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

-- Location: FF_X55_Y71_N9
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

-- Location: LCCOMB_X55_Y71_N10
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

-- Location: LCCOMB_X55_Y71_N12
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

-- Location: LCCOMB_X55_Y71_N14
\BLADE|Pala_Y[5]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLADE|Pala_Y[5]~17_combout\ = ((\BLADE|Desplaza_Pala_Y\(2) $ (\BLADE|Pala_Y\(5) $ (!\BLADE|Pala_Y[4]~16\)))) # (GND)
-- \BLADE|Pala_Y[5]~18\ = CARRY((\BLADE|Desplaza_Pala_Y\(2) & ((\BLADE|Pala_Y\(5)) # (!\BLADE|Pala_Y[4]~16\))) # (!\BLADE|Desplaza_Pala_Y\(2) & (\BLADE|Pala_Y\(5) & !\BLADE|Pala_Y[4]~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BLADE|Desplaza_Pala_Y\(2),
	datab => \BLADE|Pala_Y\(5),
	datad => VCC,
	cin => \BLADE|Pala_Y[4]~16\,
	combout => \BLADE|Pala_Y[5]~17_combout\,
	cout => \BLADE|Pala_Y[5]~18\);

-- Location: FF_X55_Y71_N15
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

-- Location: FF_X55_Y71_N17
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

-- Location: LCCOMB_X55_Y71_N2
\BLADE|LessThan4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLADE|LessThan4~1_combout\ = (!\BLADE|Pala_Y\(9) & (!\BLADE|Pala_Y\(7) & (!\BLADE|Pala_Y\(5) & !\BLADE|Pala_Y\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BLADE|Pala_Y\(9),
	datab => \BLADE|Pala_Y\(7),
	datac => \BLADE|Pala_Y\(5),
	datad => \BLADE|Pala_Y\(8),
	combout => \BLADE|LessThan4~1_combout\);

-- Location: FF_X55_Y71_N7
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

-- Location: FF_X55_Y71_N13
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

-- Location: LCCOMB_X55_Y71_N24
\BLADE|LessThan4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLADE|LessThan4~0_combout\ = (((!\BLADE|Pala_Y\(2)) # (!\BLADE|Pala_Y\(4))) # (!\BLADE|Pala_Y\(1))) # (!\BLADE|Pala_Y\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BLADE|Pala_Y\(3),
	datab => \BLADE|Pala_Y\(1),
	datac => \BLADE|Pala_Y\(4),
	datad => \BLADE|Pala_Y\(2),
	combout => \BLADE|LessThan4~0_combout\);

-- Location: LCCOMB_X55_Y71_N30
\BLADE|Mover_Pala~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLADE|Mover_Pala~0_combout\ = (!\UP~input_o\ & ((\BLADE|Pala_Y\(6)) # ((!\BLADE|LessThan4~0_combout\) # (!\BLADE|LessThan4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UP~input_o\,
	datab => \BLADE|Pala_Y\(6),
	datac => \BLADE|LessThan4~1_combout\,
	datad => \BLADE|LessThan4~0_combout\,
	combout => \BLADE|Mover_Pala~0_combout\);

-- Location: FF_X55_Y71_N31
\BLADE|Desplaza_Pala_Y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	d => \BLADE|Mover_Pala~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLADE|Desplaza_Pala_Y\(2));

-- Location: LCCOMB_X55_Y71_N22
\BLADE|Pala_Y[9]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLADE|Pala_Y[9]~25_combout\ = \BLADE|Desplaza_Pala_Y\(2) $ (\BLADE|Pala_Y[8]~24\ $ (!\BLADE|Pala_Y\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BLADE|Desplaza_Pala_Y\(2),
	datad => \BLADE|Pala_Y\(9),
	cin => \BLADE|Pala_Y[8]~24\,
	combout => \BLADE|Pala_Y[9]~25_combout\);

-- Location: FF_X55_Y71_N23
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

-- Location: FF_X55_Y71_N11
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

-- Location: LCCOMB_X54_Y71_N0
\BLADE|Add3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLADE|Add3~1_cout\ = CARRY(\BLADE|Pala_Y\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BLADE|Pala_Y\(1),
	datad => VCC,
	cout => \BLADE|Add3~1_cout\);

-- Location: LCCOMB_X54_Y71_N8
\BLADE|Add3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLADE|Add3~8_combout\ = (\BLADE|Pala_Y\(5) & (\BLADE|Add3~7\ $ (GND))) # (!\BLADE|Pala_Y\(5) & (!\BLADE|Add3~7\ & VCC))
-- \BLADE|Add3~9\ = CARRY((\BLADE|Pala_Y\(5) & !\BLADE|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BLADE|Pala_Y\(5),
	datad => VCC,
	cin => \BLADE|Add3~7\,
	combout => \BLADE|Add3~8_combout\,
	cout => \BLADE|Add3~9\);

-- Location: LCCOMB_X54_Y71_N10
\BLADE|Add3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLADE|Add3~10_combout\ = (\BLADE|Pala_Y\(6) & (!\BLADE|Add3~9\)) # (!\BLADE|Pala_Y\(6) & ((\BLADE|Add3~9\) # (GND)))
-- \BLADE|Add3~11\ = CARRY((!\BLADE|Add3~9\) # (!\BLADE|Pala_Y\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BLADE|Pala_Y\(6),
	datad => VCC,
	cin => \BLADE|Add3~9\,
	combout => \BLADE|Add3~10_combout\,
	cout => \BLADE|Add3~11\);

-- Location: LCCOMB_X54_Y71_N12
\BLADE|Add3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLADE|Add3~12_combout\ = (\BLADE|Pala_Y\(7) & (\BLADE|Add3~11\ $ (GND))) # (!\BLADE|Pala_Y\(7) & (!\BLADE|Add3~11\ & VCC))
-- \BLADE|Add3~13\ = CARRY((\BLADE|Pala_Y\(7) & !\BLADE|Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BLADE|Pala_Y\(7),
	datad => VCC,
	cin => \BLADE|Add3~11\,
	combout => \BLADE|Add3~12_combout\,
	cout => \BLADE|Add3~13\);

-- Location: LCCOMB_X54_Y71_N14
\BLADE|Add3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLADE|Add3~14_combout\ = (\BLADE|Pala_Y\(8) & (!\BLADE|Add3~13\)) # (!\BLADE|Pala_Y\(8) & ((\BLADE|Add3~13\) # (GND)))
-- \BLADE|Add3~15\ = CARRY((!\BLADE|Add3~13\) # (!\BLADE|Pala_Y\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BLADE|Pala_Y\(8),
	datad => VCC,
	cin => \BLADE|Add3~13\,
	combout => \BLADE|Add3~14_combout\,
	cout => \BLADE|Add3~15\);

-- Location: LCCOMB_X54_Y71_N16
\BLADE|Add3~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLADE|Add3~16_combout\ = \BLADE|Add3~15\ $ (!\BLADE|Pala_Y\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \BLADE|Pala_Y\(9),
	cin => \BLADE|Add3~15\,
	combout => \BLADE|Add3~16_combout\);

-- Location: FF_X57_Y72_N17
\VGA|pixel_y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	asdata => \VGA|cont_vs\(4),
	sload => VCC,
	ena => \VGA|LessThan6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|pixel_y\(4));

-- Location: LCCOMB_X56_Y72_N16
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

-- Location: FF_X56_Y72_N17
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

-- Location: LCCOMB_X58_Y72_N6
\VGA|cont_vs[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|cont_vs[2]~7_combout\ = (!\VGA|process_0~9_combout\ & ((\VGA|Equal2~2_combout\ & ((\VGA|cont_vs\(2)))) # (!\VGA|Equal2~2_combout\ & (\VGA|Add1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|Equal2~2_combout\,
	datab => \VGA|Add1~4_combout\,
	datac => \VGA|cont_vs\(2),
	datad => \VGA|process_0~9_combout\,
	combout => \VGA|cont_vs[2]~7_combout\);

-- Location: FF_X58_Y72_N7
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

-- Location: LCCOMB_X57_Y72_N30
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

-- Location: FF_X57_Y72_N31
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

-- Location: FF_X57_Y72_N1
\VGA|pixel_y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	asdata => \VGA|cont_vs\(1),
	sload => VCC,
	ena => \VGA|LessThan6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|pixel_y\(1));

-- Location: LCCOMB_X53_Y71_N14
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

-- Location: LCCOMB_X53_Y71_N16
\BLADE|LessThan3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLADE|LessThan3~3_cout\ = CARRY((\BLADE|Pala_Y\(1) & (!\VGA|pixel_y\(1) & !\BLADE|LessThan3~1_cout\)) # (!\BLADE|Pala_Y\(1) & ((!\BLADE|LessThan3~1_cout\) # (!\VGA|pixel_y\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BLADE|Pala_Y\(1),
	datab => \VGA|pixel_y\(1),
	datad => VCC,
	cin => \BLADE|LessThan3~1_cout\,
	cout => \BLADE|LessThan3~3_cout\);

-- Location: LCCOMB_X53_Y71_N18
\BLADE|LessThan3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLADE|LessThan3~5_cout\ = CARRY((\BLADE|Add3~2_combout\ & (\VGA|pixel_y\(2) & !\BLADE|LessThan3~3_cout\)) # (!\BLADE|Add3~2_combout\ & ((\VGA|pixel_y\(2)) # (!\BLADE|LessThan3~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BLADE|Add3~2_combout\,
	datab => \VGA|pixel_y\(2),
	datad => VCC,
	cin => \BLADE|LessThan3~3_cout\,
	cout => \BLADE|LessThan3~5_cout\);

-- Location: LCCOMB_X53_Y71_N20
\BLADE|LessThan3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLADE|LessThan3~7_cout\ = CARRY((\BLADE|Add3~4_combout\ & ((!\BLADE|LessThan3~5_cout\) # (!\VGA|pixel_y\(3)))) # (!\BLADE|Add3~4_combout\ & (!\VGA|pixel_y\(3) & !\BLADE|LessThan3~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BLADE|Add3~4_combout\,
	datab => \VGA|pixel_y\(3),
	datad => VCC,
	cin => \BLADE|LessThan3~5_cout\,
	cout => \BLADE|LessThan3~7_cout\);

-- Location: LCCOMB_X53_Y71_N22
\BLADE|LessThan3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLADE|LessThan3~9_cout\ = CARRY((\BLADE|Add3~6_combout\ & (\VGA|pixel_y\(4) & !\BLADE|LessThan3~7_cout\)) # (!\BLADE|Add3~6_combout\ & ((\VGA|pixel_y\(4)) # (!\BLADE|LessThan3~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BLADE|Add3~6_combout\,
	datab => \VGA|pixel_y\(4),
	datad => VCC,
	cin => \BLADE|LessThan3~7_cout\,
	cout => \BLADE|LessThan3~9_cout\);

-- Location: LCCOMB_X53_Y71_N24
\BLADE|LessThan3~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLADE|LessThan3~11_cout\ = CARRY((\VGA|pixel_y\(5) & (\BLADE|Add3~8_combout\ & !\BLADE|LessThan3~9_cout\)) # (!\VGA|pixel_y\(5) & ((\BLADE|Add3~8_combout\) # (!\BLADE|LessThan3~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_y\(5),
	datab => \BLADE|Add3~8_combout\,
	datad => VCC,
	cin => \BLADE|LessThan3~9_cout\,
	cout => \BLADE|LessThan3~11_cout\);

-- Location: LCCOMB_X53_Y71_N26
\BLADE|LessThan3~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLADE|LessThan3~13_cout\ = CARRY((\VGA|pixel_y\(6) & ((!\BLADE|LessThan3~11_cout\) # (!\BLADE|Add3~10_combout\))) # (!\VGA|pixel_y\(6) & (!\BLADE|Add3~10_combout\ & !\BLADE|LessThan3~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_y\(6),
	datab => \BLADE|Add3~10_combout\,
	datad => VCC,
	cin => \BLADE|LessThan3~11_cout\,
	cout => \BLADE|LessThan3~13_cout\);

-- Location: LCCOMB_X53_Y71_N28
\BLADE|LessThan3~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLADE|LessThan3~15_cout\ = CARRY((\VGA|pixel_y\(7) & (\BLADE|Add3~12_combout\ & !\BLADE|LessThan3~13_cout\)) # (!\VGA|pixel_y\(7) & ((\BLADE|Add3~12_combout\) # (!\BLADE|LessThan3~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_y\(7),
	datab => \BLADE|Add3~12_combout\,
	datad => VCC,
	cin => \BLADE|LessThan3~13_cout\,
	cout => \BLADE|LessThan3~15_cout\);

-- Location: LCCOMB_X53_Y71_N30
\BLADE|LessThan3~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLADE|LessThan3~16_combout\ = (\VGA|pixel_y\(8) & ((!\BLADE|Add3~14_combout\) # (!\BLADE|LessThan3~15_cout\))) # (!\VGA|pixel_y\(8) & (!\BLADE|LessThan3~15_cout\ & !\BLADE|Add3~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_y\(8),
	datad => \BLADE|Add3~14_combout\,
	cin => \BLADE|LessThan3~15_cout\,
	combout => \BLADE|LessThan3~16_combout\);

-- Location: FF_X56_Y71_N9
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

-- Location: FF_X57_Y72_N15
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

-- Location: LCCOMB_X57_Y71_N6
\BLADE|Add2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLADE|Add2~1_cout\ = CARRY(\VGA|pixel_y\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_y\(1),
	datad => VCC,
	cout => \BLADE|Add2~1_cout\);

-- Location: LCCOMB_X57_Y71_N8
\BLADE|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLADE|Add2~2_combout\ = (\VGA|pixel_y\(2) & (\BLADE|Add2~1_cout\ & VCC)) # (!\VGA|pixel_y\(2) & (!\BLADE|Add2~1_cout\))
-- \BLADE|Add2~3\ = CARRY((!\VGA|pixel_y\(2) & !\BLADE|Add2~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_y\(2),
	datad => VCC,
	cin => \BLADE|Add2~1_cout\,
	combout => \BLADE|Add2~2_combout\,
	cout => \BLADE|Add2~3\);

-- Location: LCCOMB_X57_Y71_N10
\BLADE|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLADE|Add2~4_combout\ = (\VGA|pixel_y\(3) & ((GND) # (!\BLADE|Add2~3\))) # (!\VGA|pixel_y\(3) & (\BLADE|Add2~3\ $ (GND)))
-- \BLADE|Add2~5\ = CARRY((\VGA|pixel_y\(3)) # (!\BLADE|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA|pixel_y\(3),
	datad => VCC,
	cin => \BLADE|Add2~3\,
	combout => \BLADE|Add2~4_combout\,
	cout => \BLADE|Add2~5\);

-- Location: LCCOMB_X57_Y71_N12
\BLADE|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLADE|Add2~6_combout\ = (\VGA|pixel_y\(4) & (\BLADE|Add2~5\ & VCC)) # (!\VGA|pixel_y\(4) & (!\BLADE|Add2~5\))
-- \BLADE|Add2~7\ = CARRY((!\VGA|pixel_y\(4) & !\BLADE|Add2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_y\(4),
	datad => VCC,
	cin => \BLADE|Add2~5\,
	combout => \BLADE|Add2~6_combout\,
	cout => \BLADE|Add2~7\);

-- Location: LCCOMB_X57_Y71_N14
\BLADE|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLADE|Add2~8_combout\ = (\VGA|pixel_y\(5) & (\BLADE|Add2~7\ $ (GND))) # (!\VGA|pixel_y\(5) & (!\BLADE|Add2~7\ & VCC))
-- \BLADE|Add2~9\ = CARRY((\VGA|pixel_y\(5) & !\BLADE|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA|pixel_y\(5),
	datad => VCC,
	cin => \BLADE|Add2~7\,
	combout => \BLADE|Add2~8_combout\,
	cout => \BLADE|Add2~9\);

-- Location: LCCOMB_X57_Y71_N16
\BLADE|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLADE|Add2~10_combout\ = (\VGA|pixel_y\(6) & (!\BLADE|Add2~9\)) # (!\VGA|pixel_y\(6) & ((\BLADE|Add2~9\) # (GND)))
-- \BLADE|Add2~11\ = CARRY((!\BLADE|Add2~9\) # (!\VGA|pixel_y\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_y\(6),
	datad => VCC,
	cin => \BLADE|Add2~9\,
	combout => \BLADE|Add2~10_combout\,
	cout => \BLADE|Add2~11\);

-- Location: LCCOMB_X57_Y71_N22
\BLADE|Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLADE|Add2~16_combout\ = !\BLADE|Add2~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \BLADE|Add2~15\,
	combout => \BLADE|Add2~16_combout\);

-- Location: LCCOMB_X56_Y71_N12
\BLADE|LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLADE|LessThan2~1_cout\ = CARRY((\VGA|pixel_y\(1) & \BLADE|Pala_Y\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_y\(1),
	datab => \BLADE|Pala_Y\(1),
	datad => VCC,
	cout => \BLADE|LessThan2~1_cout\);

-- Location: LCCOMB_X56_Y71_N14
\BLADE|LessThan2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLADE|LessThan2~3_cout\ = CARRY((\BLADE|Pala_Y\(2) & (\BLADE|Add2~2_combout\ & !\BLADE|LessThan2~1_cout\)) # (!\BLADE|Pala_Y\(2) & ((\BLADE|Add2~2_combout\) # (!\BLADE|LessThan2~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BLADE|Pala_Y\(2),
	datab => \BLADE|Add2~2_combout\,
	datad => VCC,
	cin => \BLADE|LessThan2~1_cout\,
	cout => \BLADE|LessThan2~3_cout\);

-- Location: LCCOMB_X56_Y71_N16
\BLADE|LessThan2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLADE|LessThan2~5_cout\ = CARRY((\BLADE|Pala_Y\(3) & ((!\BLADE|LessThan2~3_cout\) # (!\BLADE|Add2~4_combout\))) # (!\BLADE|Pala_Y\(3) & (!\BLADE|Add2~4_combout\ & !\BLADE|LessThan2~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BLADE|Pala_Y\(3),
	datab => \BLADE|Add2~4_combout\,
	datad => VCC,
	cin => \BLADE|LessThan2~3_cout\,
	cout => \BLADE|LessThan2~5_cout\);

-- Location: LCCOMB_X56_Y71_N18
\BLADE|LessThan2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLADE|LessThan2~7_cout\ = CARRY((\BLADE|Pala_Y\(4) & (\BLADE|Add2~6_combout\ & !\BLADE|LessThan2~5_cout\)) # (!\BLADE|Pala_Y\(4) & ((\BLADE|Add2~6_combout\) # (!\BLADE|LessThan2~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BLADE|Pala_Y\(4),
	datab => \BLADE|Add2~6_combout\,
	datad => VCC,
	cin => \BLADE|LessThan2~5_cout\,
	cout => \BLADE|LessThan2~7_cout\);

-- Location: LCCOMB_X56_Y71_N20
\BLADE|LessThan2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLADE|LessThan2~9_cout\ = CARRY((\BLADE|Pala_Y\(5) & ((!\BLADE|LessThan2~7_cout\) # (!\BLADE|Add2~8_combout\))) # (!\BLADE|Pala_Y\(5) & (!\BLADE|Add2~8_combout\ & !\BLADE|LessThan2~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BLADE|Pala_Y\(5),
	datab => \BLADE|Add2~8_combout\,
	datad => VCC,
	cin => \BLADE|LessThan2~7_cout\,
	cout => \BLADE|LessThan2~9_cout\);

-- Location: LCCOMB_X56_Y71_N22
\BLADE|LessThan2~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLADE|LessThan2~11_cout\ = CARRY((\BLADE|Pala_Y\(6) & (\BLADE|Add2~10_combout\ & !\BLADE|LessThan2~9_cout\)) # (!\BLADE|Pala_Y\(6) & ((\BLADE|Add2~10_combout\) # (!\BLADE|LessThan2~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BLADE|Pala_Y\(6),
	datab => \BLADE|Add2~10_combout\,
	datad => VCC,
	cin => \BLADE|LessThan2~9_cout\,
	cout => \BLADE|LessThan2~11_cout\);

-- Location: LCCOMB_X56_Y71_N24
\BLADE|LessThan2~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLADE|LessThan2~13_cout\ = CARRY((\BLADE|Add2~12_combout\ & (\BLADE|Pala_Y\(7) & !\BLADE|LessThan2~11_cout\)) # (!\BLADE|Add2~12_combout\ & ((\BLADE|Pala_Y\(7)) # (!\BLADE|LessThan2~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BLADE|Add2~12_combout\,
	datab => \BLADE|Pala_Y\(7),
	datad => VCC,
	cin => \BLADE|LessThan2~11_cout\,
	cout => \BLADE|LessThan2~13_cout\);

-- Location: LCCOMB_X56_Y71_N26
\BLADE|LessThan2~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLADE|LessThan2~15_cout\ = CARRY((\BLADE|Add2~14_combout\ & ((!\BLADE|LessThan2~13_cout\) # (!\BLADE|Pala_Y\(8)))) # (!\BLADE|Add2~14_combout\ & (!\BLADE|Pala_Y\(8) & !\BLADE|LessThan2~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BLADE|Add2~14_combout\,
	datab => \BLADE|Pala_Y\(8),
	datad => VCC,
	cin => \BLADE|LessThan2~13_cout\,
	cout => \BLADE|LessThan2~15_cout\);

-- Location: LCCOMB_X56_Y71_N28
\BLADE|LessThan2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \BLADE|LessThan2~16_combout\ = (\BLADE|Add2~16_combout\ & (!\BLADE|LessThan2~15_cout\ & \BLADE|Pala_Y\(9))) # (!\BLADE|Add2~16_combout\ & ((\BLADE|Pala_Y\(9)) # (!\BLADE|LessThan2~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BLADE|Add2~16_combout\,
	datad => \BLADE|Pala_Y\(9),
	cin => \BLADE|LessThan2~15_cout\,
	combout => \BLADE|LessThan2~16_combout\);

-- Location: LCCOMB_X53_Y71_N2
\VGA|vga_r~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|vga_r~2_combout\ = (\VGA|vga_r~1_combout\ & (!\VGA|pixel_x\(9) & (!\VGA|pixel_x\(8) & !\BLADE|LessThan2~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|vga_r~1_combout\,
	datab => \VGA|pixel_x\(9),
	datac => \VGA|pixel_x\(8),
	datad => \BLADE|LessThan2~16_combout\,
	combout => \VGA|vga_r~2_combout\);

-- Location: LCCOMB_X53_Y71_N12
\VGA|vga_r~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|vga_r~5_combout\ = (\VGA|vga_r~4_combout\ & (\VGA|vga_r~2_combout\ & ((\BLADE|Add3~16_combout\) # (!\BLADE|LessThan3~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|vga_r~4_combout\,
	datab => \BLADE|Add3~16_combout\,
	datac => \BLADE|LessThan3~16_combout\,
	datad => \VGA|vga_r~2_combout\,
	combout => \VGA|vga_r~5_combout\);

-- Location: LCCOMB_X53_Y71_N0
\VGA|vga_r~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|vga_r~6_combout\ = (\VGA|vga_r~5_combout\) # ((!\BALL|LessThan1~18_combout\ & (!\BALL|LessThan0~16_combout\ & \VGA|vga_r~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|LessThan1~18_combout\,
	datab => \BALL|LessThan0~16_combout\,
	datac => \VGA|vga_r~0_combout\,
	datad => \VGA|vga_r~5_combout\,
	combout => \VGA|vga_r~6_combout\);

-- Location: LCCOMB_X53_Y71_N8
\VGA|vga_r~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|vga_r~feeder_combout\ = \VGA|vga_r~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA|vga_r~6_combout\,
	combout => \VGA|vga_r~feeder_combout\);

-- Location: FF_X53_Y71_N9
\VGA|vga_r\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	d => \VGA|vga_r~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|vga_r~q\);

-- Location: LCCOMB_X53_Y71_N6
\VGA|vga_g~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|vga_g~feeder_combout\ = \VGA|vga_r~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA|vga_r~6_combout\,
	combout => \VGA|vga_g~feeder_combout\);

-- Location: FF_X53_Y71_N7
\VGA|vga_g\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	d => \VGA|vga_g~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|vga_g~q\);

-- Location: FF_X53_Y71_N1
\VGA|vga_b\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	d => \VGA|vga_r~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|vga_b~q\);

-- Location: LCCOMB_X53_Y71_N10
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

-- Location: FF_X53_Y71_N11
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

-- Location: FF_X56_Y70_N13
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

-- Location: LCCOMB_X55_Y70_N2
\VGA|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|process_0~1_combout\ = (\VGA|cont_hs\(9) & (\VGA|cont_hs\(7) & !\VGA|cont_hs\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|cont_hs\(9),
	datab => \VGA|cont_hs\(7),
	datad => \VGA|cont_hs\(8),
	combout => \VGA|process_0~1_combout\);

-- Location: LCCOMB_X55_Y70_N6
\VGA|process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|process_0~2_combout\ = ((\VGA|cont_hs\(5) & (\VGA|cont_hs\(6) & \VGA|cont_hs\(4))) # (!\VGA|cont_hs\(5) & (!\VGA|cont_hs\(6) & !\VGA|cont_hs\(4)))) # (!\VGA|process_0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|cont_hs\(5),
	datab => \VGA|cont_hs\(6),
	datac => \VGA|cont_hs\(4),
	datad => \VGA|process_0~1_combout\,
	combout => \VGA|process_0~2_combout\);

-- Location: FF_X55_Y70_N7
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

-- Location: LCCOMB_X48_Y70_N0
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

-- Location: FF_X48_Y70_N1
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

-- Location: LCCOMB_X57_Y72_N12
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

-- Location: LCCOMB_X56_Y72_N12
\VGA|process_0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|process_0~4_combout\ = (\VGA|process_0~3_combout\) # ((\VGA|cont_vs\(9)) # (!\VGA|LessThan6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA|process_0~3_combout\,
	datac => \VGA|LessThan6~0_combout\,
	datad => \VGA|cont_vs\(9),
	combout => \VGA|process_0~4_combout\);

-- Location: FF_X56_Y72_N13
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

-- Location: LCCOMB_X56_Y72_N0
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

-- Location: FF_X56_Y72_N1
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


