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

-- DATE "05/21/2019 18:52:44"

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
	UP_IZQ : IN std_logic;
	DOWN_IZQ : IN std_logic;
	UP_DER : IN std_logic;
	DOWN_DER : IN std_logic
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
-- UP_DER	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOWN_DER	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UP_IZQ	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOWN_IZQ	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_UP_IZQ : std_logic;
SIGNAL ww_DOWN_IZQ : std_logic;
SIGNAL ww_UP_DER : std_logic;
SIGNAL ww_DOWN_DER : std_logic;
SIGNAL \PLL|altpll_component|pll_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \PLL|altpll_component|pll_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \VGA|vga_vs~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \PLL|altpll_component|_clk0~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \PLL|altpll_component|pll~CLK1\ : std_logic;
SIGNAL \PLL|altpll_component|pll~CLK2\ : std_logic;
SIGNAL \PLL|altpll_component|pll~CLK3\ : std_logic;
SIGNAL \PLL|altpll_component|pll~CLK4\ : std_logic;
SIGNAL \BALL|Add18~6_combout\ : std_logic;
SIGNAL \BALL|Add18~16_combout\ : std_logic;
SIGNAL \BALL|Add21~12_combout\ : std_logic;
SIGNAL \BALL|Add21~15\ : std_logic;
SIGNAL \BALL|Add21~16_combout\ : std_logic;
SIGNAL \BALL|Add20~2_combout\ : std_logic;
SIGNAL \BALL|Add20~4_combout\ : std_logic;
SIGNAL \BALL|Add20~6_combout\ : std_logic;
SIGNAL \BALL|Add20~10_combout\ : std_logic;
SIGNAL \BALL|Add20~15\ : std_logic;
SIGNAL \BALL|Add20~16_combout\ : std_logic;
SIGNAL \BALL|Add23~1_cout\ : std_logic;
SIGNAL \BALL|Add23~3_cout\ : std_logic;
SIGNAL \BALL|Add23~5_cout\ : std_logic;
SIGNAL \BALL|Add23~7_cout\ : std_logic;
SIGNAL \BALL|Add23~9_cout\ : std_logic;
SIGNAL \BALL|Add23~11\ : std_logic;
SIGNAL \BALL|Add23~10_combout\ : std_logic;
SIGNAL \BALL|Add23~13\ : std_logic;
SIGNAL \BALL|Add23~12_combout\ : std_logic;
SIGNAL \BALL|Add23~15\ : std_logic;
SIGNAL \BALL|Add23~14_combout\ : std_logic;
SIGNAL \BALL|Add23~16_combout\ : std_logic;
SIGNAL \BALL|Add3~8_combout\ : std_logic;
SIGNAL \BALL|Add0~1\ : std_logic;
SIGNAL \BALL|Add0~0_combout\ : std_logic;
SIGNAL \BALL|Add0~3\ : std_logic;
SIGNAL \BALL|Add0~2_combout\ : std_logic;
SIGNAL \BALL|Add0~5\ : std_logic;
SIGNAL \BALL|Add0~4_combout\ : std_logic;
SIGNAL \BALL|Add0~7\ : std_logic;
SIGNAL \BALL|Add0~6_combout\ : std_logic;
SIGNAL \BALL|Add0~9\ : std_logic;
SIGNAL \BALL|Add0~8_combout\ : std_logic;
SIGNAL \BALL|Add0~10_combout\ : std_logic;
SIGNAL \BALL|LessThan0~1_cout\ : std_logic;
SIGNAL \BALL|LessThan0~3_cout\ : std_logic;
SIGNAL \BALL|LessThan0~5_cout\ : std_logic;
SIGNAL \BALL|LessThan0~7_cout\ : std_logic;
SIGNAL \BALL|LessThan0~9_cout\ : std_logic;
SIGNAL \BALL|LessThan0~11_cout\ : std_logic;
SIGNAL \BALL|LessThan0~13_cout\ : std_logic;
SIGNAL \BALL|LessThan0~15_cout\ : std_logic;
SIGNAL \BALL|LessThan0~16_combout\ : std_logic;
SIGNAL \BALL|Add1~8_combout\ : std_logic;
SIGNAL \BALL|Add2~0_combout\ : std_logic;
SIGNAL \BALL|Add2~4_combout\ : std_logic;
SIGNAL \BALL|Add2~7\ : std_logic;
SIGNAL \BALL|Add2~9\ : std_logic;
SIGNAL \BALL|Add2~8_combout\ : std_logic;
SIGNAL \BALL|Add2~10_combout\ : std_logic;
SIGNAL \BALL|Add16~2_combout\ : std_logic;
SIGNAL \BALL|LessThan16~1_cout\ : std_logic;
SIGNAL \BALL|LessThan16~3_cout\ : std_logic;
SIGNAL \BALL|LessThan16~5_cout\ : std_logic;
SIGNAL \BALL|LessThan16~7_cout\ : std_logic;
SIGNAL \BALL|LessThan16~9_cout\ : std_logic;
SIGNAL \BALL|LessThan16~11_cout\ : std_logic;
SIGNAL \BALL|LessThan16~13_cout\ : std_logic;
SIGNAL \BALL|LessThan16~15_cout\ : std_logic;
SIGNAL \BALL|LessThan16~17_cout\ : std_logic;
SIGNAL \BALL|LessThan16~18_combout\ : std_logic;
SIGNAL \BALL|Bola_X[2]~11_combout\ : std_logic;
SIGNAL \VGA|Add1~17\ : std_logic;
SIGNAL \VGA|Add1~18_combout\ : std_logic;
SIGNAL \BALL|Add6~1\ : std_logic;
SIGNAL \BALL|Add6~0_combout\ : std_logic;
SIGNAL \BALL|Add6~3\ : std_logic;
SIGNAL \BALL|Add6~2_combout\ : std_logic;
SIGNAL \BALL|Add6~5\ : std_logic;
SIGNAL \BALL|Add6~4_combout\ : std_logic;
SIGNAL \BALL|Add6~7\ : std_logic;
SIGNAL \BALL|Add6~6_combout\ : std_logic;
SIGNAL \BALL|Add6~9\ : std_logic;
SIGNAL \BALL|Add6~8_combout\ : std_logic;
SIGNAL \BALL|Add6~11\ : std_logic;
SIGNAL \BALL|Add6~10_combout\ : std_logic;
SIGNAL \BALL|Add6~12_combout\ : std_logic;
SIGNAL \BALL|LessThan7~1_cout\ : std_logic;
SIGNAL \BALL|LessThan7~3_cout\ : std_logic;
SIGNAL \BALL|LessThan7~5_cout\ : std_logic;
SIGNAL \BALL|LessThan7~7_cout\ : std_logic;
SIGNAL \BALL|LessThan7~9_cout\ : std_logic;
SIGNAL \BALL|LessThan7~11_cout\ : std_logic;
SIGNAL \BALL|LessThan7~13_cout\ : std_logic;
SIGNAL \BALL|LessThan7~15_cout\ : std_logic;
SIGNAL \BALL|LessThan7~16_combout\ : std_logic;
SIGNAL \BALL|Add5~0_combout\ : std_logic;
SIGNAL \BALL|Add5~2_combout\ : std_logic;
SIGNAL \BALL|Add5~4_combout\ : std_logic;
SIGNAL \BALL|Add5~6_combout\ : std_logic;
SIGNAL \BALL|Add8~0_combout\ : std_logic;
SIGNAL \BALL|Add8~6_combout\ : std_logic;
SIGNAL \BALL|Add8~10_combout\ : std_logic;
SIGNAL \BALL|Add8~13\ : std_logic;
SIGNAL \BALL|Add8~14_combout\ : std_logic;
SIGNAL \BALL|Add9~0_combout\ : std_logic;
SIGNAL \BALL|Add9~2_combout\ : std_logic;
SIGNAL \BALL|Add9~8_combout\ : std_logic;
SIGNAL \BALL|Add9~10_combout\ : std_logic;
SIGNAL \BALL|Add10~4_combout\ : std_logic;
SIGNAL \BALL|Add10~8_combout\ : std_logic;
SIGNAL \BALL|Add10~11\ : std_logic;
SIGNAL \BALL|Add10~12_combout\ : std_logic;
SIGNAL \BALL|LessThan29~0_combout\ : std_logic;
SIGNAL \BALL|LessThan29~1_combout\ : std_logic;
SIGNAL \BALL|LessThan26~0_combout\ : std_logic;
SIGNAL \VGA|vga_r~4_combout\ : std_logic;
SIGNAL \BALL|LessThan27~0_combout\ : std_logic;
SIGNAL \BALL|LessThan27~1_combout\ : std_logic;
SIGNAL \VGA|vga_r~5_combout\ : std_logic;
SIGNAL \VGA|vga_g~1_combout\ : std_logic;
SIGNAL \VGA|vga_g~2_combout\ : std_logic;
SIGNAL \VGA|vga_g~3_combout\ : std_logic;
SIGNAL \VGA|process_0~1_combout\ : std_logic;
SIGNAL \BALL|Desplaza_Pala_Y_der~0_combout\ : std_logic;
SIGNAL \VGA|process_0~6_combout\ : std_logic;
SIGNAL \BALL|Desplaza_Bola_X[1]~0_combout\ : std_logic;
SIGNAL \BALL|Desplaza_Bola_X[1]~1_combout\ : std_logic;
SIGNAL \BALL|Desplaza_Bola_X[1]~2_combout\ : std_logic;
SIGNAL \BALL|Desplaza_Bola_X[1]~3_combout\ : std_logic;
SIGNAL \BALL|Mover_Pala_izq~2_combout\ : std_logic;
SIGNAL \BALL|Mover_Pala_izq~3_combout\ : std_logic;
SIGNAL \BALL|Mover_Pala_izq~4_combout\ : std_logic;
SIGNAL \BALL|Desplaza_Pala_Y_izq~0_combout\ : std_logic;
SIGNAL \BALL|Desplaza_Pala_Y_izq~1_combout\ : std_logic;
SIGNAL \UP_DER~input_o\ : std_logic;
SIGNAL \DOWN_DER~input_o\ : std_logic;
SIGNAL \UP_IZQ~input_o\ : std_logic;
SIGNAL \DOWN_IZQ~input_o\ : std_logic;
SIGNAL \VGA|vga_vs~clkctrl_outclk\ : std_logic;
SIGNAL \VGA|pixel_x[0]~feeder_combout\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \PLL|altpll_component|pll~FBOUT\ : std_logic;
SIGNAL \PLL|altpll_component|_clk0\ : std_logic;
SIGNAL \PLL|altpll_component|_clk0~clkctrl_outclk\ : std_logic;
SIGNAL \VGA|Add0~1\ : std_logic;
SIGNAL \VGA|Add0~2_combout\ : std_logic;
SIGNAL \VGA|Add0~3\ : std_logic;
SIGNAL \VGA|Add0~5\ : std_logic;
SIGNAL \VGA|Add0~7\ : std_logic;
SIGNAL \VGA|Add0~9\ : std_logic;
SIGNAL \VGA|Add0~10_combout\ : std_logic;
SIGNAL \VGA|Add0~6_combout\ : std_logic;
SIGNAL \VGA|Equal0~1_combout\ : std_logic;
SIGNAL \VGA|Add0~17\ : std_logic;
SIGNAL \VGA|Add0~18_combout\ : std_logic;
SIGNAL \VGA|cont_hs~0_combout\ : std_logic;
SIGNAL \VGA|Add0~0_combout\ : std_logic;
SIGNAL \VGA|Equal0~0_combout\ : std_logic;
SIGNAL \VGA|Equal0~2_combout\ : std_logic;
SIGNAL \VGA|cont_hs~2_combout\ : std_logic;
SIGNAL \VGA|Add0~11\ : std_logic;
SIGNAL \VGA|Add0~12_combout\ : std_logic;
SIGNAL \VGA|Add0~13\ : std_logic;
SIGNAL \VGA|Add0~15\ : std_logic;
SIGNAL \VGA|Add0~16_combout\ : std_logic;
SIGNAL \VGA|cont_hs~1_combout\ : std_logic;
SIGNAL \VGA|Add0~14_combout\ : std_logic;
SIGNAL \VGA|LessThan5~0_combout\ : std_logic;
SIGNAL \VGA|Add0~8_combout\ : std_logic;
SIGNAL \BALL|Add18~1_cout\ : std_logic;
SIGNAL \BALL|Add18~3_cout\ : std_logic;
SIGNAL \BALL|Add18~5\ : std_logic;
SIGNAL \BALL|Add18~7\ : std_logic;
SIGNAL \BALL|Add18~9\ : std_logic;
SIGNAL \BALL|Add18~11\ : std_logic;
SIGNAL \BALL|Add18~13\ : std_logic;
SIGNAL \BALL|Add18~15\ : std_logic;
SIGNAL \BALL|Add18~17\ : std_logic;
SIGNAL \BALL|Add18~18_combout\ : std_logic;
SIGNAL \VGA|pixel_x[6]~feeder_combout\ : std_logic;
SIGNAL \BALL|LessThan21~0_combout\ : std_logic;
SIGNAL \VGA|pixel_x[9]~feeder_combout\ : std_logic;
SIGNAL \BALL|LessThan21~1_combout\ : std_logic;
SIGNAL \BALL|Pala_Y_der[2]~15\ : std_logic;
SIGNAL \BALL|Pala_Y_der[3]~17\ : std_logic;
SIGNAL \BALL|Pala_Y_der[4]~19\ : std_logic;
SIGNAL \BALL|Pala_Y_der[5]~21\ : std_logic;
SIGNAL \BALL|Pala_Y_der[6]~23\ : std_logic;
SIGNAL \BALL|Pala_Y_der[7]~25\ : std_logic;
SIGNAL \BALL|Pala_Y_der[8]~26_combout\ : std_logic;
SIGNAL \BALL|Pala_Y_der[7]~24_combout\ : std_logic;
SIGNAL \BALL|Mover_Pala_der~3_combout\ : std_logic;
SIGNAL \BALL|Pala_Y_der[5]~20_combout\ : std_logic;
SIGNAL \BALL|Pala_Y_der[6]~22_combout\ : std_logic;
SIGNAL \BALL|Mover_Pala_der~2_combout\ : std_logic;
SIGNAL \BALL|Mover_Pala_der~4_combout\ : std_logic;
SIGNAL \BALL|Desplaza_Pala_Y_der~1_combout\ : std_logic;
SIGNAL \BALL|Pala_Y_der[0]~11\ : std_logic;
SIGNAL \BALL|Pala_Y_der[1]~12_combout\ : std_logic;
SIGNAL \BALL|Pala_Y_der[1]~13\ : std_logic;
SIGNAL \BALL|Pala_Y_der[2]~14_combout\ : std_logic;
SIGNAL \BALL|Pala_Y_der[4]~18_combout\ : std_logic;
SIGNAL \BALL|Pala_Y_der[3]~16_combout\ : std_logic;
SIGNAL \BALL|Mover_Pala_der~0_combout\ : std_logic;
SIGNAL \BALL|LessThan24~0_combout\ : std_logic;
SIGNAL \BALL|Mover_Pala_der~1_combout\ : std_logic;
SIGNAL \BALL|Desplaza_Pala_Y_der[2]~feeder_combout\ : std_logic;
SIGNAL \BALL|Pala_Y_der[8]~27\ : std_logic;
SIGNAL \BALL|Pala_Y_der[9]~28_combout\ : std_logic;
SIGNAL \VGA|Add1~0_combout\ : std_logic;
SIGNAL \VGA|cont_vs[0]~9_combout\ : std_logic;
SIGNAL \VGA|Add1~1\ : std_logic;
SIGNAL \VGA|Add1~3\ : std_logic;
SIGNAL \VGA|Add1~5\ : std_logic;
SIGNAL \VGA|Add1~6_combout\ : std_logic;
SIGNAL \VGA|cont_vs[3]~6_combout\ : std_logic;
SIGNAL \VGA|Add1~7\ : std_logic;
SIGNAL \VGA|Add1~8_combout\ : std_logic;
SIGNAL \VGA|cont_vs[4]~5_combout\ : std_logic;
SIGNAL \VGA|process_0~5_combout\ : std_logic;
SIGNAL \VGA|process_0~7_combout\ : std_logic;
SIGNAL \VGA|process_0~8_combout\ : std_logic;
SIGNAL \VGA|Add0~4_combout\ : std_logic;
SIGNAL \VGA|Equal2~1_combout\ : std_logic;
SIGNAL \VGA|Equal2~0_combout\ : std_logic;
SIGNAL \VGA|Equal2~2_combout\ : std_logic;
SIGNAL \VGA|cont_vs[9]~1_combout\ : std_logic;
SIGNAL \VGA|process_0~9_combout\ : std_logic;
SIGNAL \VGA|Add1~9\ : std_logic;
SIGNAL \VGA|Add1~11\ : std_logic;
SIGNAL \VGA|Add1~13\ : std_logic;
SIGNAL \VGA|Add1~14_combout\ : std_logic;
SIGNAL \VGA|cont_vs[7]~4_combout\ : std_logic;
SIGNAL \VGA|Add1~15\ : std_logic;
SIGNAL \VGA|Add1~16_combout\ : std_logic;
SIGNAL \VGA|cont_vs[8]~0_combout\ : std_logic;
SIGNAL \VGA|pixel_y[8]~feeder_combout\ : std_logic;
SIGNAL \VGA|Add1~10_combout\ : std_logic;
SIGNAL \VGA|cont_vs[5]~2_combout\ : std_logic;
SIGNAL \VGA|LessThan6~0_combout\ : std_logic;
SIGNAL \VGA|LessThan6~1_combout\ : std_logic;
SIGNAL \VGA|pixel_y[7]~feeder_combout\ : std_logic;
SIGNAL \VGA|Add1~2_combout\ : std_logic;
SIGNAL \VGA|cont_vs[1]~8_combout\ : std_logic;
SIGNAL \VGA|pixel_y[1]~feeder_combout\ : std_logic;
SIGNAL \BALL|Add20~1_cout\ : std_logic;
SIGNAL \BALL|Add20~3\ : std_logic;
SIGNAL \BALL|Add20~5\ : std_logic;
SIGNAL \BALL|Add20~7\ : std_logic;
SIGNAL \BALL|Add20~9\ : std_logic;
SIGNAL \BALL|Add20~11\ : std_logic;
SIGNAL \BALL|Add20~13\ : std_logic;
SIGNAL \BALL|Add20~14_combout\ : std_logic;
SIGNAL \BALL|Add20~12_combout\ : std_logic;
SIGNAL \BALL|Add20~8_combout\ : std_logic;
SIGNAL \BALL|Pala_Y_der[0]~10_combout\ : std_logic;
SIGNAL \BALL|Pala_Y_der[0]~feeder_combout\ : std_logic;
SIGNAL \BALL|LessThan22~1_cout\ : std_logic;
SIGNAL \BALL|LessThan22~3_cout\ : std_logic;
SIGNAL \BALL|LessThan22~5_cout\ : std_logic;
SIGNAL \BALL|LessThan22~7_cout\ : std_logic;
SIGNAL \BALL|LessThan22~9_cout\ : std_logic;
SIGNAL \BALL|LessThan22~11_cout\ : std_logic;
SIGNAL \BALL|LessThan22~13_cout\ : std_logic;
SIGNAL \BALL|LessThan22~15_cout\ : std_logic;
SIGNAL \BALL|LessThan22~17_cout\ : std_logic;
SIGNAL \BALL|LessThan22~18_combout\ : std_logic;
SIGNAL \BALL|Add18~10_combout\ : std_logic;
SIGNAL \BALL|Add18~12_combout\ : std_logic;
SIGNAL \BALL|Add18~8_combout\ : std_logic;
SIGNAL \BALL|Add18~4_combout\ : std_logic;
SIGNAL \VGA|vga_r~0_combout\ : std_logic;
SIGNAL \BALL|Add18~14_combout\ : std_logic;
SIGNAL \VGA|vga_r~1_combout\ : std_logic;
SIGNAL \VGA|vga_r~2_combout\ : std_logic;
SIGNAL \BALL|Add21~1\ : std_logic;
SIGNAL \BALL|Add21~3\ : std_logic;
SIGNAL \BALL|Add21~5\ : std_logic;
SIGNAL \BALL|Add21~7\ : std_logic;
SIGNAL \BALL|Add21~9\ : std_logic;
SIGNAL \BALL|Add21~11\ : std_logic;
SIGNAL \BALL|Add21~13\ : std_logic;
SIGNAL \BALL|Add21~14_combout\ : std_logic;
SIGNAL \BALL|Add21~10_combout\ : std_logic;
SIGNAL \BALL|Add21~6_combout\ : std_logic;
SIGNAL \VGA|pixel_y[3]~feeder_combout\ : std_logic;
SIGNAL \VGA|Add1~4_combout\ : std_logic;
SIGNAL \VGA|cont_vs[2]~7_combout\ : std_logic;
SIGNAL \VGA|pixel_y[2]~feeder_combout\ : std_logic;
SIGNAL \BALL|Add21~0_combout\ : std_logic;
SIGNAL \VGA|pixel_y[0]~feeder_combout\ : std_logic;
SIGNAL \BALL|LessThan23~1_cout\ : std_logic;
SIGNAL \BALL|LessThan23~3_cout\ : std_logic;
SIGNAL \BALL|LessThan23~5_cout\ : std_logic;
SIGNAL \BALL|LessThan23~7_cout\ : std_logic;
SIGNAL \BALL|LessThan23~9_cout\ : std_logic;
SIGNAL \BALL|LessThan23~11_cout\ : std_logic;
SIGNAL \BALL|LessThan23~13_cout\ : std_logic;
SIGNAL \BALL|LessThan23~15_cout\ : std_logic;
SIGNAL \BALL|LessThan23~16_combout\ : std_logic;
SIGNAL \VGA|vga_r~3_combout\ : std_logic;
SIGNAL \VGA|process_0~0_combout\ : std_logic;
SIGNAL \VGA|video_on~q\ : std_logic;
SIGNAL \BALL|Bola_X[1]~9_combout\ : std_logic;
SIGNAL \BALL|Bola_X[1]~feeder_combout\ : std_logic;
SIGNAL \BALL|Bola_Y[2]~9_cout\ : std_logic;
SIGNAL \BALL|Bola_Y[2]~10_combout\ : std_logic;
SIGNAL \BALL|Bola_Y[2]~11\ : std_logic;
SIGNAL \BALL|Bola_Y[3]~13\ : std_logic;
SIGNAL \BALL|Bola_Y[4]~15\ : std_logic;
SIGNAL \BALL|Bola_Y[5]~17\ : std_logic;
SIGNAL \BALL|Bola_Y[6]~19\ : std_logic;
SIGNAL \BALL|Bola_Y[7]~20_combout\ : std_logic;
SIGNAL \BALL|Bola_Y[6]~18_combout\ : std_logic;
SIGNAL \BALL|Bola_Y[7]~21\ : std_logic;
SIGNAL \BALL|Bola_Y[8]~22_combout\ : std_logic;
SIGNAL \BALL|Desplaza_Bola_Y[2]~0_combout\ : std_logic;
SIGNAL \BALL|Bola_Y[5]~16_combout\ : std_logic;
SIGNAL \BALL|Bola_Y[3]~12_combout\ : std_logic;
SIGNAL \BALL|Desplaza_Bola_Y[2]~1_combout\ : std_logic;
SIGNAL \BALL|Desplaza_Bola_Y[2]~2_combout\ : std_logic;
SIGNAL \BALL|Desplaza_Bola_Y[2]~3_combout\ : std_logic;
SIGNAL \BALL|Bola_Y[8]~23\ : std_logic;
SIGNAL \BALL|Bola_Y[9]~24_combout\ : std_logic;
SIGNAL \VGA|Add1~12_combout\ : std_logic;
SIGNAL \VGA|cont_vs[6]~3_combout\ : std_logic;
SIGNAL \VGA|pixel_y[6]~feeder_combout\ : std_logic;
SIGNAL \BALL|Add2~1\ : std_logic;
SIGNAL \BALL|Add2~3\ : std_logic;
SIGNAL \BALL|Add2~5\ : std_logic;
SIGNAL \BALL|Add2~6_combout\ : std_logic;
SIGNAL \BALL|Add2~2_combout\ : std_logic;
SIGNAL \BALL|Bola_Y[4]~14_combout\ : std_logic;
SIGNAL \BALL|LessThan2~1_cout\ : std_logic;
SIGNAL \BALL|LessThan2~3_cout\ : std_logic;
SIGNAL \BALL|LessThan2~5_cout\ : std_logic;
SIGNAL \BALL|LessThan2~7_cout\ : std_logic;
SIGNAL \BALL|LessThan2~9_cout\ : std_logic;
SIGNAL \BALL|LessThan2~11_cout\ : std_logic;
SIGNAL \BALL|LessThan2~13_cout\ : std_logic;
SIGNAL \BALL|LessThan2~15_cout\ : std_logic;
SIGNAL \BALL|LessThan2~16_combout\ : std_logic;
SIGNAL \BALL|Bola_X[1]~10\ : std_logic;
SIGNAL \BALL|Bola_X[2]~12\ : std_logic;
SIGNAL \BALL|Bola_X[3]~14\ : std_logic;
SIGNAL \BALL|Bola_X[4]~16\ : std_logic;
SIGNAL \BALL|Bola_X[5]~18\ : std_logic;
SIGNAL \BALL|Bola_X[6]~20\ : std_logic;
SIGNAL \BALL|Bola_X[7]~22\ : std_logic;
SIGNAL \BALL|Bola_X[8]~23_combout\ : std_logic;
SIGNAL \BALL|Bola_X[3]~13_combout\ : std_logic;
SIGNAL \BALL|Bola_X[4]~15_combout\ : std_logic;
SIGNAL \BALL|Bola_X[6]~19_combout\ : std_logic;
SIGNAL \BALL|LessThan12~0_combout\ : std_logic;
SIGNAL \BALL|Desplaza_Bola_X[1]~4_combout\ : std_logic;
SIGNAL \BALL|Desplaza_Bola_X[2]~5_combout\ : std_logic;
SIGNAL \BALL|Bola_X[7]~21_combout\ : std_logic;
SIGNAL \BALL|Mover_Bola~0_combout\ : std_logic;
SIGNAL \BALL|Pala_Y_izq[0]~10_combout\ : std_logic;
SIGNAL \BALL|Pala_Y_izq[0]~feeder_combout\ : std_logic;
SIGNAL \BALL|Pala_Y_izq[0]~11\ : std_logic;
SIGNAL \BALL|Pala_Y_izq[1]~12_combout\ : std_logic;
SIGNAL \BALL|Pala_Y_izq[1]~feeder_combout\ : std_logic;
SIGNAL \BALL|Pala_Y_izq[1]~13\ : std_logic;
SIGNAL \BALL|Pala_Y_izq[2]~15\ : std_logic;
SIGNAL \BALL|Pala_Y_izq[3]~16_combout\ : std_logic;
SIGNAL \BALL|Pala_Y_izq[3]~feeder_combout\ : std_logic;
SIGNAL \BALL|Pala_Y_izq[2]~14_combout\ : std_logic;
SIGNAL \BALL|Mover_Pala_izq~0_combout\ : std_logic;
SIGNAL \BALL|Pala_Y_izq[3]~17\ : std_logic;
SIGNAL \BALL|Pala_Y_izq[4]~18_combout\ : std_logic;
SIGNAL \BALL|Pala_Y_izq[4]~feeder_combout\ : std_logic;
SIGNAL \BALL|Pala_Y_izq[4]~19\ : std_logic;
SIGNAL \BALL|Pala_Y_izq[5]~21\ : std_logic;
SIGNAL \BALL|Pala_Y_izq[6]~22_combout\ : std_logic;
SIGNAL \BALL|Pala_Y_izq[6]~23\ : std_logic;
SIGNAL \BALL|Pala_Y_izq[7]~24_combout\ : std_logic;
SIGNAL \BALL|Pala_Y_izq[5]~20_combout\ : std_logic;
SIGNAL \BALL|Pala_Y_izq[7]~25\ : std_logic;
SIGNAL \BALL|Pala_Y_izq[8]~26_combout\ : std_logic;
SIGNAL \BALL|LessThan18~0_combout\ : std_logic;
SIGNAL \BALL|Mover_Pala_izq~1_combout\ : std_logic;
SIGNAL \BALL|Desplaza_Pala_Y_izq[2]~feeder_combout\ : std_logic;
SIGNAL \BALL|Pala_Y_izq[8]~27\ : std_logic;
SIGNAL \BALL|Pala_Y_izq[9]~28_combout\ : std_logic;
SIGNAL \BALL|Add5~1\ : std_logic;
SIGNAL \BALL|Add5~3\ : std_logic;
SIGNAL \BALL|Add5~5\ : std_logic;
SIGNAL \BALL|Add5~7\ : std_logic;
SIGNAL \BALL|Add5~9\ : std_logic;
SIGNAL \BALL|Add5~11\ : std_logic;
SIGNAL \BALL|Add5~13\ : std_logic;
SIGNAL \BALL|Add5~14_combout\ : std_logic;
SIGNAL \BALL|Add3~1\ : std_logic;
SIGNAL \BALL|Add3~3\ : std_logic;
SIGNAL \BALL|Add3~5\ : std_logic;
SIGNAL \BALL|Add3~7\ : std_logic;
SIGNAL \BALL|Add3~9\ : std_logic;
SIGNAL \BALL|Add3~11\ : std_logic;
SIGNAL \BALL|Add3~12_combout\ : std_logic;
SIGNAL \BALL|Add5~12_combout\ : std_logic;
SIGNAL \BALL|Add5~10_combout\ : std_logic;
SIGNAL \BALL|Add5~8_combout\ : std_logic;
SIGNAL \BALL|Add3~4_combout\ : std_logic;
SIGNAL \BALL|Add3~2_combout\ : std_logic;
SIGNAL \BALL|Add3~0_combout\ : std_logic;
SIGNAL \BALL|LessThan6~1_cout\ : std_logic;
SIGNAL \BALL|LessThan6~3_cout\ : std_logic;
SIGNAL \BALL|LessThan6~5_cout\ : std_logic;
SIGNAL \BALL|LessThan6~7_cout\ : std_logic;
SIGNAL \BALL|LessThan6~9_cout\ : std_logic;
SIGNAL \BALL|LessThan6~11_cout\ : std_logic;
SIGNAL \BALL|LessThan6~13_cout\ : std_logic;
SIGNAL \BALL|LessThan6~15_cout\ : std_logic;
SIGNAL \BALL|LessThan6~17_cout\ : std_logic;
SIGNAL \BALL|LessThan6~18_combout\ : std_logic;
SIGNAL \BALL|Desplaza_Bola_X[2]~6_combout\ : std_logic;
SIGNAL \BALL|Bola_X[5]~17_combout\ : std_logic;
SIGNAL \BALL|Add1~1\ : std_logic;
SIGNAL \BALL|Add1~3\ : std_logic;
SIGNAL \BALL|Add1~5\ : std_logic;
SIGNAL \BALL|Add1~6_combout\ : std_logic;
SIGNAL \BALL|Add1~2_combout\ : std_logic;
SIGNAL \BALL|Add1~0_combout\ : std_logic;
SIGNAL \BALL|Mover_Bola~1_combout\ : std_logic;
SIGNAL \BALL|Add1~7\ : std_logic;
SIGNAL \BALL|Add1~9\ : std_logic;
SIGNAL \BALL|Add1~10_combout\ : std_logic;
SIGNAL \BALL|Desplaza_Bola_X[2]~7_combout\ : std_logic;
SIGNAL \BALL|Desplaza_Bola_X[2]~8_combout\ : std_logic;
SIGNAL \BALL|Add8~1\ : std_logic;
SIGNAL \BALL|Add8~3\ : std_logic;
SIGNAL \BALL|Add8~5\ : std_logic;
SIGNAL \BALL|Add8~7\ : std_logic;
SIGNAL \BALL|Add8~9\ : std_logic;
SIGNAL \BALL|Add8~11\ : std_logic;
SIGNAL \BALL|Add8~12_combout\ : std_logic;
SIGNAL \BALL|Add8~8_combout\ : std_logic;
SIGNAL \BALL|Add8~4_combout\ : std_logic;
SIGNAL \BALL|Add8~2_combout\ : std_logic;
SIGNAL \BALL|Add9~1\ : std_logic;
SIGNAL \BALL|Add9~3\ : std_logic;
SIGNAL \BALL|Add9~5\ : std_logic;
SIGNAL \BALL|Add9~7\ : std_logic;
SIGNAL \BALL|Add9~9\ : std_logic;
SIGNAL \BALL|Add9~11\ : std_logic;
SIGNAL \BALL|Add9~12_combout\ : std_logic;
SIGNAL \BALL|Add9~6_combout\ : std_logic;
SIGNAL \BALL|Add9~4_combout\ : std_logic;
SIGNAL \BALL|LessThan9~1_cout\ : std_logic;
SIGNAL \BALL|LessThan9~3_cout\ : std_logic;
SIGNAL \BALL|LessThan9~5_cout\ : std_logic;
SIGNAL \BALL|LessThan9~7_cout\ : std_logic;
SIGNAL \BALL|LessThan9~9_cout\ : std_logic;
SIGNAL \BALL|LessThan9~11_cout\ : std_logic;
SIGNAL \BALL|LessThan9~13_cout\ : std_logic;
SIGNAL \BALL|LessThan9~15_cout\ : std_logic;
SIGNAL \BALL|LessThan9~17_cout\ : std_logic;
SIGNAL \BALL|LessThan9~18_combout\ : std_logic;
SIGNAL \BALL|Add21~8_combout\ : std_logic;
SIGNAL \BALL|Add21~4_combout\ : std_logic;
SIGNAL \BALL|Add10~1\ : std_logic;
SIGNAL \BALL|Add10~3\ : std_logic;
SIGNAL \BALL|Add10~5\ : std_logic;
SIGNAL \BALL|Add10~7\ : std_logic;
SIGNAL \BALL|Add10~9\ : std_logic;
SIGNAL \BALL|Add10~10_combout\ : std_logic;
SIGNAL \BALL|Add10~6_combout\ : std_logic;
SIGNAL \BALL|Add10~2_combout\ : std_logic;
SIGNAL \BALL|Add10~0_combout\ : std_logic;
SIGNAL \BALL|Add21~2_combout\ : std_logic;
SIGNAL \BALL|LessThan10~1_cout\ : std_logic;
SIGNAL \BALL|LessThan10~3_cout\ : std_logic;
SIGNAL \BALL|LessThan10~5_cout\ : std_logic;
SIGNAL \BALL|LessThan10~7_cout\ : std_logic;
SIGNAL \BALL|LessThan10~9_cout\ : std_logic;
SIGNAL \BALL|LessThan10~11_cout\ : std_logic;
SIGNAL \BALL|LessThan10~13_cout\ : std_logic;
SIGNAL \BALL|LessThan10~15_cout\ : std_logic;
SIGNAL \BALL|LessThan10~16_combout\ : std_logic;
SIGNAL \BALL|Desplaza_Bola_X[2]~9_combout\ : std_logic;
SIGNAL \BALL|Desplaza_Bola_X[2]~10_combout\ : std_logic;
SIGNAL \BALL|Bola_X[8]~24\ : std_logic;
SIGNAL \BALL|Bola_X[9]~25_combout\ : std_logic;
SIGNAL \BALL|Add1~11\ : std_logic;
SIGNAL \BALL|Add1~12_combout\ : std_logic;
SIGNAL \BALL|Add1~4_combout\ : std_logic;
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
SIGNAL \BALL|Add3~10_combout\ : std_logic;
SIGNAL \BALL|Add3~6_combout\ : std_logic;
SIGNAL \BALL|LessThan3~1_cout\ : std_logic;
SIGNAL \BALL|LessThan3~3_cout\ : std_logic;
SIGNAL \BALL|LessThan3~5_cout\ : std_logic;
SIGNAL \BALL|LessThan3~7_cout\ : std_logic;
SIGNAL \BALL|LessThan3~9_cout\ : std_logic;
SIGNAL \BALL|LessThan3~11_cout\ : std_logic;
SIGNAL \BALL|LessThan3~13_cout\ : std_logic;
SIGNAL \BALL|LessThan3~15_cout\ : std_logic;
SIGNAL \BALL|LessThan3~16_combout\ : std_logic;
SIGNAL \BALL|Blue_bola~0_combout\ : std_logic;
SIGNAL \BALL|Blue_bola~1_combout\ : std_logic;
SIGNAL \VGA|vga_r~6_combout\ : std_logic;
SIGNAL \VGA|vga_r~q\ : std_logic;
SIGNAL \VGA|vga_g~0_combout\ : std_logic;
SIGNAL \VGA|vga_g~4_combout\ : std_logic;
SIGNAL \BALL|Add16~1\ : std_logic;
SIGNAL \BALL|Add16~3\ : std_logic;
SIGNAL \BALL|Add16~5\ : std_logic;
SIGNAL \BALL|Add16~7\ : std_logic;
SIGNAL \BALL|Add16~9\ : std_logic;
SIGNAL \BALL|Add16~11\ : std_logic;
SIGNAL \BALL|Add16~13\ : std_logic;
SIGNAL \BALL|Add16~14_combout\ : std_logic;
SIGNAL \BALL|Add16~12_combout\ : std_logic;
SIGNAL \BALL|Add16~10_combout\ : std_logic;
SIGNAL \BALL|Add16~8_combout\ : std_logic;
SIGNAL \BALL|Add16~6_combout\ : std_logic;
SIGNAL \BALL|Add16~4_combout\ : std_logic;
SIGNAL \BALL|Add16~0_combout\ : std_logic;
SIGNAL \BALL|LessThan17~1_cout\ : std_logic;
SIGNAL \BALL|LessThan17~3_cout\ : std_logic;
SIGNAL \BALL|LessThan17~5_cout\ : std_logic;
SIGNAL \BALL|LessThan17~7_cout\ : std_logic;
SIGNAL \BALL|LessThan17~9_cout\ : std_logic;
SIGNAL \BALL|LessThan17~11_cout\ : std_logic;
SIGNAL \BALL|LessThan17~13_cout\ : std_logic;
SIGNAL \BALL|LessThan17~15_cout\ : std_logic;
SIGNAL \BALL|LessThan17~16_combout\ : std_logic;
SIGNAL \BALL|Add16~15\ : std_logic;
SIGNAL \BALL|Add16~16_combout\ : std_logic;
SIGNAL \VGA|vga_g~5_combout\ : std_logic;
SIGNAL \VGA|vga_g~6_combout\ : std_logic;
SIGNAL \VGA|vga_g~q\ : std_logic;
SIGNAL \VGA|vga_b~0_combout\ : std_logic;
SIGNAL \VGA|vga_b~q\ : std_logic;
SIGNAL \VGA|vga_blank_N~feeder_combout\ : std_logic;
SIGNAL \VGA|vga_blank_N~q\ : std_logic;
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
SIGNAL \BALL|Pala_Y_izq\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \BALL|Pala_Y_der\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \BALL|Desplaza_Pala_Y_izq\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \BALL|Desplaza_Pala_Y_der\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \BALL|Desplaza_Bola_Y\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \BALL|Desplaza_Bola_X\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \BALL|Bola_Y\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \BALL|Bola_X\ : std_logic_vector(9 DOWNTO 0);

BEGIN

ww_CLOCK_50 <= CLOCK_50;
VGA_R <= ww_VGA_R;
VGA_G <= ww_VGA_G;
VGA_B <= ww_VGA_B;
VGA_BLANK_N <= ww_VGA_BLANK_N;
VGA_HS <= ww_VGA_HS;
VGA_VS <= ww_VGA_VS;
VGA_CLK <= ww_VGA_CLK;
ww_UP_IZQ <= UP_IZQ;
ww_DOWN_IZQ <= DOWN_IZQ;
ww_UP_DER <= UP_DER;
ww_DOWN_DER <= DOWN_DER;
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

-- Location: LCCOMB_X61_Y68_N12
\BALL|Add18~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add18~6_combout\ = (\VGA|pixel_x\(3) & (!\BALL|Add18~5\)) # (!\VGA|pixel_x\(3) & ((\BALL|Add18~5\) # (GND)))
-- \BALL|Add18~7\ = CARRY((!\BALL|Add18~5\) # (!\VGA|pixel_x\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_x\(3),
	datad => VCC,
	cin => \BALL|Add18~5\,
	combout => \BALL|Add18~6_combout\,
	cout => \BALL|Add18~7\);

-- Location: LCCOMB_X61_Y68_N22
\BALL|Add18~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add18~16_combout\ = (\VGA|pixel_x\(8) & (\BALL|Add18~15\ $ (GND))) # (!\VGA|pixel_x\(8) & (!\BALL|Add18~15\ & VCC))
-- \BALL|Add18~17\ = CARRY((\VGA|pixel_x\(8) & !\BALL|Add18~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA|pixel_x\(8),
	datad => VCC,
	cin => \BALL|Add18~15\,
	combout => \BALL|Add18~16_combout\,
	cout => \BALL|Add18~17\);

-- Location: LCCOMB_X59_Y70_N20
\BALL|Add21~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add21~12_combout\ = (\BALL|Pala_Y_der\(7) & (\BALL|Add21~11\ $ (GND))) # (!\BALL|Pala_Y_der\(7) & (!\BALL|Add21~11\ & VCC))
-- \BALL|Add21~13\ = CARRY((\BALL|Pala_Y_der\(7) & !\BALL|Add21~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Pala_Y_der\(7),
	datad => VCC,
	cin => \BALL|Add21~11\,
	combout => \BALL|Add21~12_combout\,
	cout => \BALL|Add21~13\);

-- Location: LCCOMB_X59_Y70_N22
\BALL|Add21~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add21~14_combout\ = (\BALL|Pala_Y_der\(8) & (!\BALL|Add21~13\)) # (!\BALL|Pala_Y_der\(8) & ((\BALL|Add21~13\) # (GND)))
-- \BALL|Add21~15\ = CARRY((!\BALL|Add21~13\) # (!\BALL|Pala_Y_der\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BALL|Pala_Y_der\(8),
	datad => VCC,
	cin => \BALL|Add21~13\,
	combout => \BALL|Add21~14_combout\,
	cout => \BALL|Add21~15\);

-- Location: LCCOMB_X59_Y70_N24
\BALL|Add21~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add21~16_combout\ = \BALL|Add21~15\ $ (!\BALL|Pala_Y_der\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \BALL|Pala_Y_der\(9),
	cin => \BALL|Add21~15\,
	combout => \BALL|Add21~16_combout\);

-- Location: LCCOMB_X58_Y67_N12
\BALL|Add20~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add20~2_combout\ = (\VGA|pixel_y\(2) & (\BALL|Add20~1_cout\ & VCC)) # (!\VGA|pixel_y\(2) & (!\BALL|Add20~1_cout\))
-- \BALL|Add20~3\ = CARRY((!\VGA|pixel_y\(2) & !\BALL|Add20~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_y\(2),
	datad => VCC,
	cin => \BALL|Add20~1_cout\,
	combout => \BALL|Add20~2_combout\,
	cout => \BALL|Add20~3\);

-- Location: LCCOMB_X58_Y67_N14
\BALL|Add20~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add20~4_combout\ = (\VGA|pixel_y\(3) & ((GND) # (!\BALL|Add20~3\))) # (!\VGA|pixel_y\(3) & (\BALL|Add20~3\ $ (GND)))
-- \BALL|Add20~5\ = CARRY((\VGA|pixel_y\(3)) # (!\BALL|Add20~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_y\(3),
	datad => VCC,
	cin => \BALL|Add20~3\,
	combout => \BALL|Add20~4_combout\,
	cout => \BALL|Add20~5\);

-- Location: LCCOMB_X58_Y67_N16
\BALL|Add20~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add20~6_combout\ = (\VGA|pixel_y\(4) & (\BALL|Add20~5\ & VCC)) # (!\VGA|pixel_y\(4) & (!\BALL|Add20~5\))
-- \BALL|Add20~7\ = CARRY((!\VGA|pixel_y\(4) & !\BALL|Add20~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA|pixel_y\(4),
	datad => VCC,
	cin => \BALL|Add20~5\,
	combout => \BALL|Add20~6_combout\,
	cout => \BALL|Add20~7\);

-- Location: LCCOMB_X58_Y67_N20
\BALL|Add20~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add20~10_combout\ = (\VGA|pixel_y\(6) & (!\BALL|Add20~9\)) # (!\VGA|pixel_y\(6) & ((\BALL|Add20~9\) # (GND)))
-- \BALL|Add20~11\ = CARRY((!\BALL|Add20~9\) # (!\VGA|pixel_y\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_y\(6),
	datad => VCC,
	cin => \BALL|Add20~9\,
	combout => \BALL|Add20~10_combout\,
	cout => \BALL|Add20~11\);

-- Location: LCCOMB_X58_Y67_N24
\BALL|Add20~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add20~14_combout\ = (\VGA|pixel_y\(8) & (!\BALL|Add20~13\)) # (!\VGA|pixel_y\(8) & ((\BALL|Add20~13\) # (GND)))
-- \BALL|Add20~15\ = CARRY((!\BALL|Add20~13\) # (!\VGA|pixel_y\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA|pixel_y\(8),
	datad => VCC,
	cin => \BALL|Add20~13\,
	combout => \BALL|Add20~14_combout\,
	cout => \BALL|Add20~15\);

-- Location: LCCOMB_X58_Y67_N26
\BALL|Add20~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add20~16_combout\ = !\BALL|Add20~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \BALL|Add20~15\,
	combout => \BALL|Add20~16_combout\);

-- Location: LCCOMB_X60_Y68_N6
\BALL|Add23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add23~1_cout\ = CARRY((\VGA|pixel_x\(0) & \VGA|pixel_x\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_x\(0),
	datab => \VGA|pixel_x\(1),
	datad => VCC,
	cout => \BALL|Add23~1_cout\);

-- Location: LCCOMB_X60_Y68_N8
\BALL|Add23~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add23~3_cout\ = CARRY((!\BALL|Add23~1_cout\) # (!\VGA|pixel_x\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA|pixel_x\(2),
	datad => VCC,
	cin => \BALL|Add23~1_cout\,
	cout => \BALL|Add23~3_cout\);

-- Location: LCCOMB_X60_Y68_N10
\BALL|Add23~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add23~5_cout\ = CARRY((\VGA|pixel_x\(3) & !\BALL|Add23~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA|pixel_x\(3),
	datad => VCC,
	cin => \BALL|Add23~3_cout\,
	cout => \BALL|Add23~5_cout\);

-- Location: LCCOMB_X60_Y68_N12
\BALL|Add23~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add23~7_cout\ = CARRY((!\BALL|Add23~5_cout\) # (!\VGA|pixel_x\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA|pixel_x\(4),
	datad => VCC,
	cin => \BALL|Add23~5_cout\,
	cout => \BALL|Add23~7_cout\);

-- Location: LCCOMB_X60_Y68_N14
\BALL|Add23~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add23~9_cout\ = CARRY((\VGA|pixel_x\(5) & !\BALL|Add23~7_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_x\(5),
	datad => VCC,
	cin => \BALL|Add23~7_cout\,
	cout => \BALL|Add23~9_cout\);

-- Location: LCCOMB_X60_Y68_N16
\BALL|Add23~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add23~10_combout\ = (\VGA|pixel_x\(6) & (!\BALL|Add23~9_cout\)) # (!\VGA|pixel_x\(6) & ((\BALL|Add23~9_cout\) # (GND)))
-- \BALL|Add23~11\ = CARRY((!\BALL|Add23~9_cout\) # (!\VGA|pixel_x\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_x\(6),
	datad => VCC,
	cin => \BALL|Add23~9_cout\,
	combout => \BALL|Add23~10_combout\,
	cout => \BALL|Add23~11\);

-- Location: LCCOMB_X60_Y68_N18
\BALL|Add23~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add23~12_combout\ = (\VGA|pixel_x\(7) & (\BALL|Add23~11\ $ (GND))) # (!\VGA|pixel_x\(7) & (!\BALL|Add23~11\ & VCC))
-- \BALL|Add23~13\ = CARRY((\VGA|pixel_x\(7) & !\BALL|Add23~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA|pixel_x\(7),
	datad => VCC,
	cin => \BALL|Add23~11\,
	combout => \BALL|Add23~12_combout\,
	cout => \BALL|Add23~13\);

-- Location: LCCOMB_X60_Y68_N20
\BALL|Add23~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add23~14_combout\ = (\VGA|pixel_x\(8) & (!\BALL|Add23~13\)) # (!\VGA|pixel_x\(8) & ((\BALL|Add23~13\) # (GND)))
-- \BALL|Add23~15\ = CARRY((!\BALL|Add23~13\) # (!\VGA|pixel_x\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA|pixel_x\(8),
	datad => VCC,
	cin => \BALL|Add23~13\,
	combout => \BALL|Add23~14_combout\,
	cout => \BALL|Add23~15\);

-- Location: LCCOMB_X60_Y68_N22
\BALL|Add23~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add23~16_combout\ = \BALL|Add23~15\ $ (!\VGA|pixel_x\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \VGA|pixel_x\(9),
	cin => \BALL|Add23~15\,
	combout => \BALL|Add23~16_combout\);

-- Location: LCCOMB_X58_Y68_N8
\BALL|Add3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add3~8_combout\ = (\BALL|Bola_Y\(7) & (\BALL|Add3~7\ $ (GND))) # (!\BALL|Bola_Y\(7) & (!\BALL|Add3~7\ & VCC))
-- \BALL|Add3~9\ = CARRY((\BALL|Bola_Y\(7) & !\BALL|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Bola_Y\(7),
	datad => VCC,
	cin => \BALL|Add3~7\,
	combout => \BALL|Add3~8_combout\,
	cout => \BALL|Add3~9\);

-- Location: LCCOMB_X63_Y69_N0
\BALL|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add0~0_combout\ = (\VGA|pixel_x\(4) & (\VGA|pixel_x\(3) $ (VCC))) # (!\VGA|pixel_x\(4) & (\VGA|pixel_x\(3) & VCC))
-- \BALL|Add0~1\ = CARRY((\VGA|pixel_x\(4) & \VGA|pixel_x\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_x\(4),
	datab => \VGA|pixel_x\(3),
	datad => VCC,
	combout => \BALL|Add0~0_combout\,
	cout => \BALL|Add0~1\);

-- Location: LCCOMB_X63_Y69_N2
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

-- Location: LCCOMB_X63_Y69_N4
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

-- Location: LCCOMB_X63_Y69_N6
\BALL|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add0~6_combout\ = (\VGA|pixel_x\(7) & (!\BALL|Add0~5\)) # (!\VGA|pixel_x\(7) & ((\BALL|Add0~5\) # (GND)))
-- \BALL|Add0~7\ = CARRY((!\BALL|Add0~5\) # (!\VGA|pixel_x\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA|pixel_x\(7),
	datad => VCC,
	cin => \BALL|Add0~5\,
	combout => \BALL|Add0~6_combout\,
	cout => \BALL|Add0~7\);

-- Location: LCCOMB_X63_Y69_N8
\BALL|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add0~8_combout\ = (\VGA|pixel_x\(8) & (\BALL|Add0~7\ $ (GND))) # (!\VGA|pixel_x\(8) & (!\BALL|Add0~7\ & VCC))
-- \BALL|Add0~9\ = CARRY((\VGA|pixel_x\(8) & !\BALL|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA|pixel_x\(8),
	datad => VCC,
	cin => \BALL|Add0~7\,
	combout => \BALL|Add0~8_combout\,
	cout => \BALL|Add0~9\);

-- Location: LCCOMB_X63_Y69_N10
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

-- Location: FF_X61_Y69_N3
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

-- Location: LCCOMB_X62_Y69_N0
\BALL|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan0~1_cout\ = CARRY((!\VGA|pixel_x\(1) & \BALL|Bola_X\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_x\(1),
	datab => \BALL|Bola_X\(1),
	datad => VCC,
	cout => \BALL|LessThan0~1_cout\);

-- Location: LCCOMB_X62_Y69_N2
\BALL|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan0~3_cout\ = CARRY((\BALL|Bola_X\(2) & (\VGA|pixel_x\(2) & !\BALL|LessThan0~1_cout\)) # (!\BALL|Bola_X\(2) & ((\VGA|pixel_x\(2)) # (!\BALL|LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Bola_X\(2),
	datab => \VGA|pixel_x\(2),
	datad => VCC,
	cin => \BALL|LessThan0~1_cout\,
	cout => \BALL|LessThan0~3_cout\);

-- Location: LCCOMB_X62_Y69_N4
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

-- Location: LCCOMB_X62_Y69_N6
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

-- Location: LCCOMB_X62_Y69_N8
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

-- Location: LCCOMB_X62_Y69_N10
\BALL|LessThan0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan0~11_cout\ = CARRY((\BALL|Bola_X\(6) & (\BALL|Add0~4_combout\ & !\BALL|LessThan0~9_cout\)) # (!\BALL|Bola_X\(6) & ((\BALL|Add0~4_combout\) # (!\BALL|LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Bola_X\(6),
	datab => \BALL|Add0~4_combout\,
	datad => VCC,
	cin => \BALL|LessThan0~9_cout\,
	cout => \BALL|LessThan0~11_cout\);

-- Location: LCCOMB_X62_Y69_N12
\BALL|LessThan0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan0~13_cout\ = CARRY((\BALL|Bola_X\(7) & ((!\BALL|LessThan0~11_cout\) # (!\BALL|Add0~6_combout\))) # (!\BALL|Bola_X\(7) & (!\BALL|Add0~6_combout\ & !\BALL|LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Bola_X\(7),
	datab => \BALL|Add0~6_combout\,
	datad => VCC,
	cin => \BALL|LessThan0~11_cout\,
	cout => \BALL|LessThan0~13_cout\);

-- Location: LCCOMB_X62_Y69_N14
\BALL|LessThan0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan0~15_cout\ = CARRY((\BALL|Bola_X\(8) & (\BALL|Add0~8_combout\ & !\BALL|LessThan0~13_cout\)) # (!\BALL|Bola_X\(8) & ((\BALL|Add0~8_combout\) # (!\BALL|LessThan0~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Bola_X\(8),
	datab => \BALL|Add0~8_combout\,
	datad => VCC,
	cin => \BALL|LessThan0~13_cout\,
	cout => \BALL|LessThan0~15_cout\);

-- Location: LCCOMB_X62_Y69_N16
\BALL|LessThan0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan0~16_combout\ = (\BALL|Bola_X\(9) & ((!\BALL|LessThan0~15_cout\) # (!\BALL|Add0~10_combout\))) # (!\BALL|Bola_X\(9) & (!\BALL|Add0~10_combout\ & !\BALL|LessThan0~15_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Bola_X\(9),
	datab => \BALL|Add0~10_combout\,
	cin => \BALL|LessThan0~15_cout\,
	combout => \BALL|LessThan0~16_combout\);

-- Location: LCCOMB_X61_Y69_N26
\BALL|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add1~8_combout\ = (\BALL|Bola_X\(7) & (\BALL|Add1~7\ $ (GND))) # (!\BALL|Bola_X\(7) & (!\BALL|Add1~7\ & VCC))
-- \BALL|Add1~9\ = CARRY((\BALL|Bola_X\(7) & !\BALL|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Bola_X\(7),
	datad => VCC,
	cin => \BALL|Add1~7\,
	combout => \BALL|Add1~8_combout\,
	cout => \BALL|Add1~9\);

-- Location: LCCOMB_X57_Y69_N16
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

-- Location: LCCOMB_X57_Y69_N20
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

-- Location: LCCOMB_X57_Y69_N22
\BALL|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add2~6_combout\ = (\VGA|pixel_y\(7) & (!\BALL|Add2~5\)) # (!\VGA|pixel_y\(7) & ((\BALL|Add2~5\) # (GND)))
-- \BALL|Add2~7\ = CARRY((!\BALL|Add2~5\) # (!\VGA|pixel_y\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_y\(7),
	datad => VCC,
	cin => \BALL|Add2~5\,
	combout => \BALL|Add2~6_combout\,
	cout => \BALL|Add2~7\);

-- Location: LCCOMB_X57_Y69_N24
\BALL|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add2~8_combout\ = (\VGA|pixel_y\(8) & (\BALL|Add2~7\ $ (GND))) # (!\VGA|pixel_y\(8) & (!\BALL|Add2~7\ & VCC))
-- \BALL|Add2~9\ = CARRY((\VGA|pixel_y\(8) & !\BALL|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA|pixel_y\(8),
	datad => VCC,
	cin => \BALL|Add2~7\,
	combout => \BALL|Add2~8_combout\,
	cout => \BALL|Add2~9\);

-- Location: LCCOMB_X57_Y69_N26
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

-- Location: LCCOMB_X61_Y66_N6
\BALL|Add16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add16~2_combout\ = (\BALL|Pala_Y_izq\(2) & (\BALL|Add16~1\ & VCC)) # (!\BALL|Pala_Y_izq\(2) & (!\BALL|Add16~1\))
-- \BALL|Add16~3\ = CARRY((!\BALL|Pala_Y_izq\(2) & !\BALL|Add16~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BALL|Pala_Y_izq\(2),
	datad => VCC,
	cin => \BALL|Add16~1\,
	combout => \BALL|Add16~2_combout\,
	cout => \BALL|Add16~3\);

-- Location: LCCOMB_X59_Y66_N8
\BALL|LessThan16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan16~1_cout\ = CARRY((!\VGA|pixel_y\(0) & \BALL|Pala_Y_izq\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_y\(0),
	datab => \BALL|Pala_Y_izq\(0),
	datad => VCC,
	cout => \BALL|LessThan16~1_cout\);

-- Location: LCCOMB_X59_Y66_N10
\BALL|LessThan16~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan16~3_cout\ = CARRY((\VGA|pixel_y\(1) & (!\BALL|Pala_Y_izq\(1) & !\BALL|LessThan16~1_cout\)) # (!\VGA|pixel_y\(1) & ((!\BALL|LessThan16~1_cout\) # (!\BALL|Pala_Y_izq\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_y\(1),
	datab => \BALL|Pala_Y_izq\(1),
	datad => VCC,
	cin => \BALL|LessThan16~1_cout\,
	cout => \BALL|LessThan16~3_cout\);

-- Location: LCCOMB_X59_Y66_N12
\BALL|LessThan16~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan16~5_cout\ = CARRY((\BALL|Add20~2_combout\ & (\BALL|Pala_Y_izq\(2) & !\BALL|LessThan16~3_cout\)) # (!\BALL|Add20~2_combout\ & ((\BALL|Pala_Y_izq\(2)) # (!\BALL|LessThan16~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Add20~2_combout\,
	datab => \BALL|Pala_Y_izq\(2),
	datad => VCC,
	cin => \BALL|LessThan16~3_cout\,
	cout => \BALL|LessThan16~5_cout\);

-- Location: LCCOMB_X59_Y66_N14
\BALL|LessThan16~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan16~7_cout\ = CARRY((\BALL|Add20~4_combout\ & ((!\BALL|LessThan16~5_cout\) # (!\BALL|Pala_Y_izq\(3)))) # (!\BALL|Add20~4_combout\ & (!\BALL|Pala_Y_izq\(3) & !\BALL|LessThan16~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Add20~4_combout\,
	datab => \BALL|Pala_Y_izq\(3),
	datad => VCC,
	cin => \BALL|LessThan16~5_cout\,
	cout => \BALL|LessThan16~7_cout\);

-- Location: LCCOMB_X59_Y66_N16
\BALL|LessThan16~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan16~9_cout\ = CARRY((\BALL|Add20~6_combout\ & (\BALL|Pala_Y_izq\(4) & !\BALL|LessThan16~7_cout\)) # (!\BALL|Add20~6_combout\ & ((\BALL|Pala_Y_izq\(4)) # (!\BALL|LessThan16~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Add20~6_combout\,
	datab => \BALL|Pala_Y_izq\(4),
	datad => VCC,
	cin => \BALL|LessThan16~7_cout\,
	cout => \BALL|LessThan16~9_cout\);

-- Location: LCCOMB_X59_Y66_N18
\BALL|LessThan16~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan16~11_cout\ = CARRY((\BALL|Add20~8_combout\ & ((!\BALL|LessThan16~9_cout\) # (!\BALL|Pala_Y_izq\(5)))) # (!\BALL|Add20~8_combout\ & (!\BALL|Pala_Y_izq\(5) & !\BALL|LessThan16~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Add20~8_combout\,
	datab => \BALL|Pala_Y_izq\(5),
	datad => VCC,
	cin => \BALL|LessThan16~9_cout\,
	cout => \BALL|LessThan16~11_cout\);

-- Location: LCCOMB_X59_Y66_N20
\BALL|LessThan16~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan16~13_cout\ = CARRY((\BALL|Pala_Y_izq\(6) & ((!\BALL|LessThan16~11_cout\) # (!\BALL|Add20~10_combout\))) # (!\BALL|Pala_Y_izq\(6) & (!\BALL|Add20~10_combout\ & !\BALL|LessThan16~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Pala_Y_izq\(6),
	datab => \BALL|Add20~10_combout\,
	datad => VCC,
	cin => \BALL|LessThan16~11_cout\,
	cout => \BALL|LessThan16~13_cout\);

-- Location: LCCOMB_X59_Y66_N22
\BALL|LessThan16~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan16~15_cout\ = CARRY((\BALL|Pala_Y_izq\(7) & (\BALL|Add20~12_combout\ & !\BALL|LessThan16~13_cout\)) # (!\BALL|Pala_Y_izq\(7) & ((\BALL|Add20~12_combout\) # (!\BALL|LessThan16~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Pala_Y_izq\(7),
	datab => \BALL|Add20~12_combout\,
	datad => VCC,
	cin => \BALL|LessThan16~13_cout\,
	cout => \BALL|LessThan16~15_cout\);

-- Location: LCCOMB_X59_Y66_N24
\BALL|LessThan16~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan16~17_cout\ = CARRY((\BALL|Pala_Y_izq\(8) & ((!\BALL|LessThan16~15_cout\) # (!\BALL|Add20~14_combout\))) # (!\BALL|Pala_Y_izq\(8) & (!\BALL|Add20~14_combout\ & !\BALL|LessThan16~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Pala_Y_izq\(8),
	datab => \BALL|Add20~14_combout\,
	datad => VCC,
	cin => \BALL|LessThan16~15_cout\,
	cout => \BALL|LessThan16~17_cout\);

-- Location: LCCOMB_X59_Y66_N26
\BALL|LessThan16~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan16~18_combout\ = (\BALL|Add20~16_combout\ & (\BALL|LessThan16~17_cout\ & \BALL|Pala_Y_izq\(9))) # (!\BALL|Add20~16_combout\ & ((\BALL|LessThan16~17_cout\) # (\BALL|Pala_Y_izq\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Add20~16_combout\,
	datad => \BALL|Pala_Y_izq\(9),
	cin => \BALL|LessThan16~17_cout\,
	combout => \BALL|LessThan16~18_combout\);

-- Location: LCCOMB_X61_Y69_N2
\BALL|Bola_X[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Bola_X[2]~11_combout\ = (\BALL|Bola_X\(2) & ((\BALL|Desplaza_Bola_X\(2) & (\BALL|Bola_X[1]~10\ & VCC)) # (!\BALL|Desplaza_Bola_X\(2) & (!\BALL|Bola_X[1]~10\)))) # (!\BALL|Bola_X\(2) & ((\BALL|Desplaza_Bola_X\(2) & (!\BALL|Bola_X[1]~10\)) # 
-- (!\BALL|Desplaza_Bola_X\(2) & ((\BALL|Bola_X[1]~10\) # (GND)))))
-- \BALL|Bola_X[2]~12\ = CARRY((\BALL|Bola_X\(2) & (!\BALL|Desplaza_Bola_X\(2) & !\BALL|Bola_X[1]~10\)) # (!\BALL|Bola_X\(2) & ((!\BALL|Bola_X[1]~10\) # (!\BALL|Desplaza_Bola_X\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Bola_X\(2),
	datab => \BALL|Desplaza_Bola_X\(2),
	datad => VCC,
	cin => \BALL|Bola_X[1]~10\,
	combout => \BALL|Bola_X[2]~11_combout\,
	cout => \BALL|Bola_X[2]~12\);

-- Location: LCCOMB_X56_Y70_N24
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

-- Location: LCCOMB_X56_Y70_N26
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

-- Location: LCCOMB_X62_Y66_N0
\BALL|Add6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add6~0_combout\ = \BALL|Add16~4_combout\ $ (VCC)
-- \BALL|Add6~1\ = CARRY(\BALL|Add16~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Add16~4_combout\,
	datad => VCC,
	combout => \BALL|Add6~0_combout\,
	cout => \BALL|Add6~1\);

-- Location: LCCOMB_X62_Y66_N2
\BALL|Add6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add6~2_combout\ = (\BALL|Add16~6_combout\ & (!\BALL|Add6~1\)) # (!\BALL|Add16~6_combout\ & ((\BALL|Add6~1\) # (GND)))
-- \BALL|Add6~3\ = CARRY((!\BALL|Add6~1\) # (!\BALL|Add16~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Add16~6_combout\,
	datad => VCC,
	cin => \BALL|Add6~1\,
	combout => \BALL|Add6~2_combout\,
	cout => \BALL|Add6~3\);

-- Location: LCCOMB_X62_Y66_N4
\BALL|Add6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add6~4_combout\ = (\BALL|Add16~8_combout\ & (\BALL|Add6~3\ $ (GND))) # (!\BALL|Add16~8_combout\ & (!\BALL|Add6~3\ & VCC))
-- \BALL|Add6~5\ = CARRY((\BALL|Add16~8_combout\ & !\BALL|Add6~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Add16~8_combout\,
	datad => VCC,
	cin => \BALL|Add6~3\,
	combout => \BALL|Add6~4_combout\,
	cout => \BALL|Add6~5\);

-- Location: LCCOMB_X62_Y66_N6
\BALL|Add6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add6~6_combout\ = (\BALL|Add16~10_combout\ & (!\BALL|Add6~5\)) # (!\BALL|Add16~10_combout\ & ((\BALL|Add6~5\) # (GND)))
-- \BALL|Add6~7\ = CARRY((!\BALL|Add6~5\) # (!\BALL|Add16~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Add16~10_combout\,
	datad => VCC,
	cin => \BALL|Add6~5\,
	combout => \BALL|Add6~6_combout\,
	cout => \BALL|Add6~7\);

-- Location: LCCOMB_X62_Y66_N8
\BALL|Add6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add6~8_combout\ = (\BALL|Add16~12_combout\ & (\BALL|Add6~7\ $ (GND))) # (!\BALL|Add16~12_combout\ & (!\BALL|Add6~7\ & VCC))
-- \BALL|Add6~9\ = CARRY((\BALL|Add16~12_combout\ & !\BALL|Add6~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Add16~12_combout\,
	datad => VCC,
	cin => \BALL|Add6~7\,
	combout => \BALL|Add6~8_combout\,
	cout => \BALL|Add6~9\);

-- Location: LCCOMB_X62_Y66_N10
\BALL|Add6~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add6~10_combout\ = (\BALL|Add16~14_combout\ & (!\BALL|Add6~9\)) # (!\BALL|Add16~14_combout\ & ((\BALL|Add6~9\) # (GND)))
-- \BALL|Add6~11\ = CARRY((!\BALL|Add6~9\) # (!\BALL|Add16~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BALL|Add16~14_combout\,
	datad => VCC,
	cin => \BALL|Add6~9\,
	combout => \BALL|Add6~10_combout\,
	cout => \BALL|Add6~11\);

-- Location: LCCOMB_X62_Y66_N12
\BALL|Add6~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add6~12_combout\ = \BALL|Add6~11\ $ (!\BALL|Add16~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \BALL|Add16~16_combout\,
	cin => \BALL|Add6~11\,
	combout => \BALL|Add6~12_combout\);

-- Location: LCCOMB_X62_Y66_N14
\BALL|LessThan7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan7~1_cout\ = CARRY((\BALL|Bola_X\(1) & !\BALL|Add16~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Bola_X\(1),
	datab => \BALL|Add16~0_combout\,
	datad => VCC,
	cout => \BALL|LessThan7~1_cout\);

-- Location: LCCOMB_X62_Y66_N16
\BALL|LessThan7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan7~3_cout\ = CARRY((\BALL|Bola_Y\(2) & (\BALL|Add16~2_combout\ & !\BALL|LessThan7~1_cout\)) # (!\BALL|Bola_Y\(2) & ((\BALL|Add16~2_combout\) # (!\BALL|LessThan7~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Bola_Y\(2),
	datab => \BALL|Add16~2_combout\,
	datad => VCC,
	cin => \BALL|LessThan7~1_cout\,
	cout => \BALL|LessThan7~3_cout\);

-- Location: LCCOMB_X62_Y66_N18
\BALL|LessThan7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan7~5_cout\ = CARRY((\BALL|Bola_Y\(3) & ((!\BALL|LessThan7~3_cout\) # (!\BALL|Add6~0_combout\))) # (!\BALL|Bola_Y\(3) & (!\BALL|Add6~0_combout\ & !\BALL|LessThan7~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Bola_Y\(3),
	datab => \BALL|Add6~0_combout\,
	datad => VCC,
	cin => \BALL|LessThan7~3_cout\,
	cout => \BALL|LessThan7~5_cout\);

-- Location: LCCOMB_X62_Y66_N20
\BALL|LessThan7~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan7~7_cout\ = CARRY((\BALL|Bola_Y\(4) & (\BALL|Add6~2_combout\ & !\BALL|LessThan7~5_cout\)) # (!\BALL|Bola_Y\(4) & ((\BALL|Add6~2_combout\) # (!\BALL|LessThan7~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Bola_Y\(4),
	datab => \BALL|Add6~2_combout\,
	datad => VCC,
	cin => \BALL|LessThan7~5_cout\,
	cout => \BALL|LessThan7~7_cout\);

-- Location: LCCOMB_X62_Y66_N22
\BALL|LessThan7~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan7~9_cout\ = CARRY((\BALL|Bola_Y\(5) & ((!\BALL|LessThan7~7_cout\) # (!\BALL|Add6~4_combout\))) # (!\BALL|Bola_Y\(5) & (!\BALL|Add6~4_combout\ & !\BALL|LessThan7~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Bola_Y\(5),
	datab => \BALL|Add6~4_combout\,
	datad => VCC,
	cin => \BALL|LessThan7~7_cout\,
	cout => \BALL|LessThan7~9_cout\);

-- Location: LCCOMB_X62_Y66_N24
\BALL|LessThan7~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan7~11_cout\ = CARRY((\BALL|Add6~6_combout\ & ((!\BALL|LessThan7~9_cout\) # (!\BALL|Bola_Y\(6)))) # (!\BALL|Add6~6_combout\ & (!\BALL|Bola_Y\(6) & !\BALL|LessThan7~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Add6~6_combout\,
	datab => \BALL|Bola_Y\(6),
	datad => VCC,
	cin => \BALL|LessThan7~9_cout\,
	cout => \BALL|LessThan7~11_cout\);

-- Location: LCCOMB_X62_Y66_N26
\BALL|LessThan7~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan7~13_cout\ = CARRY((\BALL|Bola_Y\(7) & ((!\BALL|LessThan7~11_cout\) # (!\BALL|Add6~8_combout\))) # (!\BALL|Bola_Y\(7) & (!\BALL|Add6~8_combout\ & !\BALL|LessThan7~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Bola_Y\(7),
	datab => \BALL|Add6~8_combout\,
	datad => VCC,
	cin => \BALL|LessThan7~11_cout\,
	cout => \BALL|LessThan7~13_cout\);

-- Location: LCCOMB_X62_Y66_N28
\BALL|LessThan7~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan7~15_cout\ = CARRY((\BALL|Add6~10_combout\ & ((!\BALL|LessThan7~13_cout\) # (!\BALL|Bola_Y\(8)))) # (!\BALL|Add6~10_combout\ & (!\BALL|Bola_Y\(8) & !\BALL|LessThan7~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Add6~10_combout\,
	datab => \BALL|Bola_Y\(8),
	datad => VCC,
	cin => \BALL|LessThan7~13_cout\,
	cout => \BALL|LessThan7~15_cout\);

-- Location: LCCOMB_X62_Y66_N30
\BALL|LessThan7~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan7~16_combout\ = (\BALL|Bola_Y\(9) & ((!\BALL|Add6~12_combout\) # (!\BALL|LessThan7~15_cout\))) # (!\BALL|Bola_Y\(9) & (!\BALL|LessThan7~15_cout\ & !\BALL|Add6~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BALL|Bola_Y\(9),
	datad => \BALL|Add6~12_combout\,
	cin => \BALL|LessThan7~15_cout\,
	combout => \BALL|LessThan7~16_combout\);

-- Location: LCCOMB_X56_Y66_N10
\BALL|Add5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add5~0_combout\ = (\BALL|Pala_Y_izq\(1) & (\BALL|Pala_Y_izq\(2) $ (VCC))) # (!\BALL|Pala_Y_izq\(1) & (\BALL|Pala_Y_izq\(2) & VCC))
-- \BALL|Add5~1\ = CARRY((\BALL|Pala_Y_izq\(1) & \BALL|Pala_Y_izq\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Pala_Y_izq\(1),
	datab => \BALL|Pala_Y_izq\(2),
	datad => VCC,
	combout => \BALL|Add5~0_combout\,
	cout => \BALL|Add5~1\);

-- Location: LCCOMB_X56_Y66_N12
\BALL|Add5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add5~2_combout\ = (\BALL|Pala_Y_izq\(3) & (!\BALL|Add5~1\)) # (!\BALL|Pala_Y_izq\(3) & ((\BALL|Add5~1\) # (GND)))
-- \BALL|Add5~3\ = CARRY((!\BALL|Add5~1\) # (!\BALL|Pala_Y_izq\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Pala_Y_izq\(3),
	datad => VCC,
	cin => \BALL|Add5~1\,
	combout => \BALL|Add5~2_combout\,
	cout => \BALL|Add5~3\);

-- Location: LCCOMB_X56_Y66_N14
\BALL|Add5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add5~4_combout\ = (\BALL|Pala_Y_izq\(4) & (\BALL|Add5~3\ $ (GND))) # (!\BALL|Pala_Y_izq\(4) & (!\BALL|Add5~3\ & VCC))
-- \BALL|Add5~5\ = CARRY((\BALL|Pala_Y_izq\(4) & !\BALL|Add5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Pala_Y_izq\(4),
	datad => VCC,
	cin => \BALL|Add5~3\,
	combout => \BALL|Add5~4_combout\,
	cout => \BALL|Add5~5\);

-- Location: LCCOMB_X56_Y66_N16
\BALL|Add5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add5~6_combout\ = (\BALL|Pala_Y_izq\(5) & (\BALL|Add5~5\ & VCC)) # (!\BALL|Pala_Y_izq\(5) & (!\BALL|Add5~5\))
-- \BALL|Add5~7\ = CARRY((!\BALL|Pala_Y_izq\(5) & !\BALL|Add5~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BALL|Pala_Y_izq\(5),
	datad => VCC,
	cin => \BALL|Add5~5\,
	combout => \BALL|Add5~6_combout\,
	cout => \BALL|Add5~7\);

-- Location: LCCOMB_X61_Y70_N16
\BALL|Add8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add8~0_combout\ = (\BALL|Pala_Y_der\(2) & (\BALL|Pala_Y_der\(1) $ (VCC))) # (!\BALL|Pala_Y_der\(2) & (\BALL|Pala_Y_der\(1) & VCC))
-- \BALL|Add8~1\ = CARRY((\BALL|Pala_Y_der\(2) & \BALL|Pala_Y_der\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Pala_Y_der\(2),
	datab => \BALL|Pala_Y_der\(1),
	datad => VCC,
	combout => \BALL|Add8~0_combout\,
	cout => \BALL|Add8~1\);

-- Location: LCCOMB_X61_Y70_N22
\BALL|Add8~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add8~6_combout\ = (\BALL|Pala_Y_der\(5) & (\BALL|Add8~5\ & VCC)) # (!\BALL|Pala_Y_der\(5) & (!\BALL|Add8~5\))
-- \BALL|Add8~7\ = CARRY((!\BALL|Pala_Y_der\(5) & !\BALL|Add8~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Pala_Y_der\(5),
	datad => VCC,
	cin => \BALL|Add8~5\,
	combout => \BALL|Add8~6_combout\,
	cout => \BALL|Add8~7\);

-- Location: LCCOMB_X61_Y70_N26
\BALL|Add8~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add8~10_combout\ = (\BALL|Pala_Y_der\(7) & (\BALL|Add8~9\ & VCC)) # (!\BALL|Pala_Y_der\(7) & (!\BALL|Add8~9\))
-- \BALL|Add8~11\ = CARRY((!\BALL|Pala_Y_der\(7) & !\BALL|Add8~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BALL|Pala_Y_der\(7),
	datad => VCC,
	cin => \BALL|Add8~9\,
	combout => \BALL|Add8~10_combout\,
	cout => \BALL|Add8~11\);

-- Location: LCCOMB_X61_Y70_N28
\BALL|Add8~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add8~12_combout\ = (\BALL|Pala_Y_der\(8) & ((GND) # (!\BALL|Add8~11\))) # (!\BALL|Pala_Y_der\(8) & (\BALL|Add8~11\ $ (GND)))
-- \BALL|Add8~13\ = CARRY((\BALL|Pala_Y_der\(8)) # (!\BALL|Add8~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BALL|Pala_Y_der\(8),
	datad => VCC,
	cin => \BALL|Add8~11\,
	combout => \BALL|Add8~12_combout\,
	cout => \BALL|Add8~13\);

-- Location: LCCOMB_X61_Y70_N30
\BALL|Add8~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add8~14_combout\ = \BALL|Add8~13\ $ (!\BALL|Pala_Y_der\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \BALL|Pala_Y_der\(9),
	cin => \BALL|Add8~13\,
	combout => \BALL|Add8~14_combout\);

-- Location: LCCOMB_X61_Y70_N0
\BALL|Add9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add9~0_combout\ = \BALL|Add8~2_combout\ $ (VCC)
-- \BALL|Add9~1\ = CARRY(\BALL|Add8~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BALL|Add8~2_combout\,
	datad => VCC,
	combout => \BALL|Add9~0_combout\,
	cout => \BALL|Add9~1\);

-- Location: LCCOMB_X61_Y70_N2
\BALL|Add9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add9~2_combout\ = (\BALL|Add8~4_combout\ & (!\BALL|Add9~1\)) # (!\BALL|Add8~4_combout\ & ((\BALL|Add9~1\) # (GND)))
-- \BALL|Add9~3\ = CARRY((!\BALL|Add9~1\) # (!\BALL|Add8~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BALL|Add8~4_combout\,
	datad => VCC,
	cin => \BALL|Add9~1\,
	combout => \BALL|Add9~2_combout\,
	cout => \BALL|Add9~3\);

-- Location: LCCOMB_X61_Y70_N8
\BALL|Add9~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add9~8_combout\ = (\BALL|Add8~10_combout\ & (\BALL|Add9~7\ $ (GND))) # (!\BALL|Add8~10_combout\ & (!\BALL|Add9~7\ & VCC))
-- \BALL|Add9~9\ = CARRY((\BALL|Add8~10_combout\ & !\BALL|Add9~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Add8~10_combout\,
	datad => VCC,
	cin => \BALL|Add9~7\,
	combout => \BALL|Add9~8_combout\,
	cout => \BALL|Add9~9\);

-- Location: LCCOMB_X61_Y70_N10
\BALL|Add9~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add9~10_combout\ = (\BALL|Add8~12_combout\ & (!\BALL|Add9~9\)) # (!\BALL|Add8~12_combout\ & ((\BALL|Add9~9\) # (GND)))
-- \BALL|Add9~11\ = CARRY((!\BALL|Add9~9\) # (!\BALL|Add8~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BALL|Add8~12_combout\,
	datad => VCC,
	cin => \BALL|Add9~9\,
	combout => \BALL|Add9~10_combout\,
	cout => \BALL|Add9~11\);

-- Location: LCCOMB_X58_Y70_N22
\BALL|Add10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add10~4_combout\ = (\BALL|Add21~8_combout\ & (\BALL|Add10~3\ $ (GND))) # (!\BALL|Add21~8_combout\ & (!\BALL|Add10~3\ & VCC))
-- \BALL|Add10~5\ = CARRY((\BALL|Add21~8_combout\ & !\BALL|Add10~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BALL|Add21~8_combout\,
	datad => VCC,
	cin => \BALL|Add10~3\,
	combout => \BALL|Add10~4_combout\,
	cout => \BALL|Add10~5\);

-- Location: LCCOMB_X58_Y70_N26
\BALL|Add10~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add10~8_combout\ = (\BALL|Add21~12_combout\ & (\BALL|Add10~7\ $ (GND))) # (!\BALL|Add21~12_combout\ & (!\BALL|Add10~7\ & VCC))
-- \BALL|Add10~9\ = CARRY((\BALL|Add21~12_combout\ & !\BALL|Add10~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Add21~12_combout\,
	datad => VCC,
	cin => \BALL|Add10~7\,
	combout => \BALL|Add10~8_combout\,
	cout => \BALL|Add10~9\);

-- Location: LCCOMB_X58_Y70_N28
\BALL|Add10~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add10~10_combout\ = (\BALL|Add21~14_combout\ & (!\BALL|Add10~9\)) # (!\BALL|Add21~14_combout\ & ((\BALL|Add10~9\) # (GND)))
-- \BALL|Add10~11\ = CARRY((!\BALL|Add10~9\) # (!\BALL|Add21~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BALL|Add21~14_combout\,
	datad => VCC,
	cin => \BALL|Add10~9\,
	combout => \BALL|Add10~10_combout\,
	cout => \BALL|Add10~11\);

-- Location: LCCOMB_X58_Y70_N30
\BALL|Add10~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add10~12_combout\ = \BALL|Add10~11\ $ (!\BALL|Add21~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \BALL|Add21~16_combout\,
	cin => \BALL|Add10~11\,
	combout => \BALL|Add10~12_combout\);

-- Location: FF_X60_Y71_N9
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

-- Location: FF_X60_Y71_N23
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

-- Location: FF_X60_Y71_N5
\VGA|pixel_x[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	d => \VGA|pixel_x[0]~feeder_combout\,
	ena => \VGA|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|pixel_x\(0));

-- Location: LCCOMB_X59_Y68_N12
\BALL|LessThan29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan29~0_combout\ = (\VGA|pixel_y\(2)) # ((\VGA|pixel_y\(0)) # ((\VGA|pixel_y\(3)) # (\VGA|pixel_y\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_y\(2),
	datab => \VGA|pixel_y\(0),
	datac => \VGA|pixel_y\(3),
	datad => \VGA|pixel_y\(1),
	combout => \BALL|LessThan29~0_combout\);

-- Location: LCCOMB_X59_Y68_N2
\BALL|LessThan29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan29~1_combout\ = (\VGA|pixel_y\(8) & (\VGA|pixel_y\(5) & (\VGA|pixel_y\(6) & \VGA|pixel_y\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_y\(8),
	datab => \VGA|pixel_y\(5),
	datac => \VGA|pixel_y\(6),
	datad => \VGA|pixel_y\(7),
	combout => \BALL|LessThan29~1_combout\);

-- Location: LCCOMB_X60_Y68_N4
\BALL|LessThan26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan26~0_combout\ = (!\BALL|Add23~16_combout\ & (((!\BALL|Add23~12_combout\ & !\BALL|Add23~10_combout\)) # (!\BALL|Add23~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Add23~14_combout\,
	datab => \BALL|Add23~12_combout\,
	datac => \BALL|Add23~16_combout\,
	datad => \BALL|Add23~10_combout\,
	combout => \BALL|LessThan26~0_combout\);

-- Location: LCCOMB_X59_Y68_N0
\VGA|vga_r~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|vga_r~4_combout\ = (!\BALL|LessThan26~0_combout\ & (((!\BALL|LessThan29~0_combout\ & !\VGA|pixel_y\(4))) # (!\BALL|LessThan29~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|LessThan29~0_combout\,
	datab => \BALL|LessThan29~1_combout\,
	datac => \VGA|pixel_y\(4),
	datad => \BALL|LessThan26~0_combout\,
	combout => \VGA|vga_r~4_combout\);

-- Location: LCCOMB_X61_Y68_N28
\BALL|LessThan27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan27~0_combout\ = (\VGA|pixel_x\(3)) # ((\VGA|pixel_x\(4)) # ((\VGA|pixel_x\(1)) # (\VGA|pixel_x\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_x\(3),
	datab => \VGA|pixel_x\(4),
	datac => \VGA|pixel_x\(1),
	datad => \VGA|pixel_x\(2),
	combout => \BALL|LessThan27~0_combout\);

-- Location: LCCOMB_X60_Y68_N24
\BALL|LessThan27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan27~1_combout\ = (\VGA|pixel_x\(7)) # ((\VGA|pixel_x\(6) & ((\VGA|pixel_x\(5)) # (\BALL|LessThan27~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_x\(5),
	datab => \BALL|LessThan27~0_combout\,
	datac => \VGA|pixel_x\(7),
	datad => \VGA|pixel_x\(6),
	combout => \BALL|LessThan27~1_combout\);

-- Location: LCCOMB_X60_Y68_N2
\VGA|vga_r~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|vga_r~5_combout\ = (\VGA|vga_r~4_combout\ & (!\VGA|pixel_x\(9) & ((!\BALL|LessThan27~1_combout\) # (!\VGA|pixel_x\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|vga_r~4_combout\,
	datab => \VGA|pixel_x\(9),
	datac => \VGA|pixel_x\(8),
	datad => \BALL|LessThan27~1_combout\,
	combout => \VGA|vga_r~5_combout\);

-- Location: LCCOMB_X61_Y68_N26
\VGA|vga_g~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|vga_g~1_combout\ = (\BALL|Add18~16_combout\) # ((\BALL|Add18~8_combout\ & ((\BALL|Add18~6_combout\) # (\BALL|Add18~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Add18~6_combout\,
	datab => \BALL|Add18~8_combout\,
	datac => \BALL|Add18~16_combout\,
	datad => \BALL|Add18~4_combout\,
	combout => \VGA|vga_g~1_combout\);

-- Location: LCCOMB_X61_Y68_N4
\VGA|vga_g~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|vga_g~2_combout\ = (\BALL|Add18~12_combout\) # ((\BALL|Add18~10_combout\) # ((\VGA|vga_g~1_combout\) # (\BALL|Add18~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Add18~12_combout\,
	datab => \BALL|Add18~10_combout\,
	datac => \VGA|vga_g~1_combout\,
	datad => \BALL|Add18~14_combout\,
	combout => \VGA|vga_g~2_combout\);

-- Location: LCCOMB_X61_Y68_N2
\VGA|vga_g~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|vga_g~3_combout\ = (\VGA|pixel_x\(3) & (!\VGA|pixel_x\(4) & ((\VGA|vga_g~2_combout\) # (\BALL|Add18~18_combout\)))) # (!\VGA|pixel_x\(3) & (((\VGA|vga_g~2_combout\) # (\BALL|Add18~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_x\(3),
	datab => \VGA|pixel_x\(4),
	datac => \VGA|vga_g~2_combout\,
	datad => \BALL|Add18~18_combout\,
	combout => \VGA|vga_g~3_combout\);

-- Location: FF_X60_Y70_N31
\BALL|Desplaza_Pala_Y_der[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	d => \BALL|Desplaza_Pala_Y_der~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BALL|Desplaza_Pala_Y_der\(1));

-- Location: FF_X58_Y66_N11
\BALL|Desplaza_Pala_Y_izq[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	d => \BALL|Desplaza_Pala_Y_izq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BALL|Desplaza_Pala_Y_izq\(1));

-- Location: FF_X58_Y66_N9
\BALL|Desplaza_Pala_Y_izq[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	d => \BALL|Desplaza_Pala_Y_izq~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BALL|Desplaza_Pala_Y_izq\(0));

-- Location: LCCOMB_X56_Y71_N12
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

-- Location: LCCOMB_X60_Y70_N30
\BALL|Desplaza_Pala_Y_der~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Desplaza_Pala_Y_der~0_combout\ = (!\BALL|Mover_Pala_der~4_combout\ & !\BALL|Mover_Pala_der~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BALL|Mover_Pala_der~4_combout\,
	datad => \BALL|Mover_Pala_der~1_combout\,
	combout => \BALL|Desplaza_Pala_Y_der~0_combout\);

-- Location: LCCOMB_X56_Y70_N2
\VGA|process_0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|process_0~6_combout\ = (\VGA|cont_vs\(2) & (!\VGA|cont_vs\(7) & (!\VGA|cont_vs\(5) & !\VGA|cont_vs\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|cont_vs\(2),
	datab => \VGA|cont_vs\(7),
	datac => \VGA|cont_vs\(5),
	datad => \VGA|cont_vs\(6),
	combout => \VGA|process_0~6_combout\);

-- Location: LCCOMB_X63_Y69_N28
\BALL|Desplaza_Bola_X[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Desplaza_Bola_X[1]~0_combout\ = (\BALL|Bola_X\(7)) # (\BALL|Bola_X\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BALL|Bola_X\(7),
	datad => \BALL|Bola_X\(8),
	combout => \BALL|Desplaza_Bola_X[1]~0_combout\);

-- Location: LCCOMB_X62_Y69_N30
\BALL|Desplaza_Bola_X[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Desplaza_Bola_X[1]~1_combout\ = (\BALL|Bola_X\(3) & ((\BALL|Bola_X\(4)) # ((\BALL|Bola_X\(1)) # (\BALL|Bola_X\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Bola_X\(4),
	datab => \BALL|Bola_X\(3),
	datac => \BALL|Bola_X\(1),
	datad => \BALL|Bola_X\(2),
	combout => \BALL|Desplaza_Bola_X[1]~1_combout\);

-- Location: LCCOMB_X62_Y69_N24
\BALL|Desplaza_Bola_X[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Desplaza_Bola_X[1]~2_combout\ = (\BALL|Bola_X\(5) & (((\BALL|Bola_X\(4) & \BALL|Bola_X\(6))) # (!\BALL|Bola_X\(9)))) # (!\BALL|Bola_X\(5) & (!\BALL|Bola_X\(9) & ((\BALL|Bola_X\(4)) # (\BALL|Bola_X\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Bola_X\(5),
	datab => \BALL|Bola_X\(4),
	datac => \BALL|Bola_X\(9),
	datad => \BALL|Bola_X\(6),
	combout => \BALL|Desplaza_Bola_X[1]~2_combout\);

-- Location: LCCOMB_X62_Y69_N26
\BALL|Desplaza_Bola_X[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Desplaza_Bola_X[1]~3_combout\ = (\BALL|Bola_X\(9) & (!\BALL|Desplaza_Bola_X[1]~0_combout\ & ((!\BALL|Desplaza_Bola_X[1]~2_combout\) # (!\BALL|Desplaza_Bola_X[1]~1_combout\)))) # (!\BALL|Bola_X\(9) & ((\BALL|Desplaza_Bola_X[1]~1_combout\) # 
-- ((\BALL|Desplaza_Bola_X[1]~2_combout\) # (\BALL|Desplaza_Bola_X[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Desplaza_Bola_X[1]~1_combout\,
	datab => \BALL|Desplaza_Bola_X[1]~2_combout\,
	datac => \BALL|Bola_X\(9),
	datad => \BALL|Desplaza_Bola_X[1]~0_combout\,
	combout => \BALL|Desplaza_Bola_X[1]~3_combout\);

-- Location: LCCOMB_X58_Y66_N6
\BALL|Mover_Pala_izq~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Mover_Pala_izq~2_combout\ = (\BALL|Pala_Y_izq\(6)) # ((\BALL|Pala_Y_izq\(5) & (\BALL|Mover_Pala_izq~0_combout\ & \BALL|Pala_Y_izq\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Pala_Y_izq\(5),
	datab => \BALL|Mover_Pala_izq~0_combout\,
	datac => \BALL|Pala_Y_izq\(6),
	datad => \BALL|Pala_Y_izq\(0),
	combout => \BALL|Mover_Pala_izq~2_combout\);

-- Location: LCCOMB_X58_Y66_N0
\BALL|Mover_Pala_izq~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Mover_Pala_izq~3_combout\ = (\BALL|Pala_Y_izq\(7) & \BALL|Pala_Y_izq\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BALL|Pala_Y_izq\(7),
	datad => \BALL|Pala_Y_izq\(8),
	combout => \BALL|Mover_Pala_izq~3_combout\);

-- Location: LCCOMB_X58_Y66_N2
\BALL|Mover_Pala_izq~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Mover_Pala_izq~4_combout\ = (\DOWN_IZQ~input_o\) # ((\BALL|Pala_Y_izq\(9)) # ((\BALL|Mover_Pala_izq~3_combout\ & \BALL|Mover_Pala_izq~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOWN_IZQ~input_o\,
	datab => \BALL|Mover_Pala_izq~3_combout\,
	datac => \BALL|Pala_Y_izq\(9),
	datad => \BALL|Mover_Pala_izq~2_combout\,
	combout => \BALL|Mover_Pala_izq~4_combout\);

-- Location: LCCOMB_X58_Y66_N10
\BALL|Desplaza_Pala_Y_izq~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Desplaza_Pala_Y_izq~0_combout\ = (!\BALL|Mover_Pala_izq~1_combout\ & !\BALL|Mover_Pala_izq~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BALL|Mover_Pala_izq~1_combout\,
	datad => \BALL|Mover_Pala_izq~4_combout\,
	combout => \BALL|Desplaza_Pala_Y_izq~0_combout\);

-- Location: LCCOMB_X58_Y66_N8
\BALL|Desplaza_Pala_Y_izq~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Desplaza_Pala_Y_izq~1_combout\ = (\BALL|Mover_Pala_izq~1_combout\) # (!\BALL|Mover_Pala_izq~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BALL|Mover_Pala_izq~1_combout\,
	datad => \BALL|Mover_Pala_izq~4_combout\,
	combout => \BALL|Desplaza_Pala_Y_izq~1_combout\);

-- Location: IOIBUF_X115_Y53_N15
\UP_DER~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_UP_DER,
	o => \UP_DER~input_o\);

-- Location: IOIBUF_X115_Y40_N8
\DOWN_DER~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DOWN_DER,
	o => \DOWN_DER~input_o\);

-- Location: IOIBUF_X115_Y35_N22
\UP_IZQ~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_UP_IZQ,
	o => \UP_IZQ~input_o\);

-- Location: IOIBUF_X115_Y42_N15
\DOWN_IZQ~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DOWN_IZQ,
	o => \DOWN_IZQ~input_o\);

-- Location: CLKCTRL_G14
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

-- Location: LCCOMB_X60_Y71_N4
\VGA|pixel_x[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|pixel_x[0]~feeder_combout\ = \VGA|cont_hs\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA|cont_hs\(0),
	combout => \VGA|pixel_x[0]~feeder_combout\);

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
	pll_compensation_delay => 7101,
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

-- Location: LCCOMB_X60_Y71_N12
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

-- Location: LCCOMB_X60_Y71_N14
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

-- Location: FF_X60_Y71_N15
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

-- Location: LCCOMB_X60_Y71_N16
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

-- Location: LCCOMB_X60_Y71_N18
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

-- Location: LCCOMB_X60_Y71_N20
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

-- Location: LCCOMB_X60_Y71_N22
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

-- Location: FF_X60_Y71_N19
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

-- Location: LCCOMB_X60_Y71_N8
\VGA|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|Equal0~1_combout\ = (\VGA|cont_hs\(2) & (\VGA|cont_hs\(1) & (\VGA|cont_hs\(3) & !\VGA|cont_hs\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|cont_hs\(2),
	datab => \VGA|cont_hs\(1),
	datac => \VGA|cont_hs\(3),
	datad => \VGA|cont_hs\(5),
	combout => \VGA|Equal0~1_combout\);

-- Location: LCCOMB_X60_Y71_N28
\VGA|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|Add0~16_combout\ = (\VGA|cont_hs\(8) & (\VGA|Add0~15\ $ (GND))) # (!\VGA|cont_hs\(8) & (!\VGA|Add0~15\ & VCC))
-- \VGA|Add0~17\ = CARRY((\VGA|cont_hs\(8) & !\VGA|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA|cont_hs\(8),
	datad => VCC,
	cin => \VGA|Add0~15\,
	combout => \VGA|Add0~16_combout\,
	cout => \VGA|Add0~17\);

-- Location: LCCOMB_X60_Y71_N30
\VGA|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|Add0~18_combout\ = \VGA|cont_hs\(9) $ (\VGA|Add0~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA|cont_hs\(9),
	cin => \VGA|Add0~17\,
	combout => \VGA|Add0~18_combout\);

-- Location: LCCOMB_X59_Y71_N0
\VGA|cont_hs~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|cont_hs~0_combout\ = (\VGA|Add0~18_combout\ & !\VGA|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA|Add0~18_combout\,
	datad => \VGA|Equal0~2_combout\,
	combout => \VGA|cont_hs~0_combout\);

-- Location: FF_X59_Y71_N1
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

-- Location: FF_X60_Y71_N13
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

-- Location: LCCOMB_X59_Y71_N8
\VGA|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|Equal0~0_combout\ = (\VGA|cont_hs\(4) & (\VGA|cont_hs\(9) & (\VGA|cont_hs\(0) & !\VGA|cont_hs\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|cont_hs\(4),
	datab => \VGA|cont_hs\(9),
	datac => \VGA|cont_hs\(0),
	datad => \VGA|cont_hs\(6),
	combout => \VGA|Equal0~0_combout\);

-- Location: LCCOMB_X60_Y71_N2
\VGA|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|Equal0~2_combout\ = (!\VGA|cont_hs\(7) & (\VGA|Equal0~1_combout\ & (\VGA|cont_hs\(8) & \VGA|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|cont_hs\(7),
	datab => \VGA|Equal0~1_combout\,
	datac => \VGA|cont_hs\(8),
	datad => \VGA|Equal0~0_combout\,
	combout => \VGA|Equal0~2_combout\);

-- Location: LCCOMB_X59_Y71_N6
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

-- Location: FF_X59_Y71_N7
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

-- Location: LCCOMB_X60_Y71_N24
\VGA|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|Add0~12_combout\ = (\VGA|cont_hs\(6) & (\VGA|Add0~11\ $ (GND))) # (!\VGA|cont_hs\(6) & (!\VGA|Add0~11\ & VCC))
-- \VGA|Add0~13\ = CARRY((\VGA|cont_hs\(6) & !\VGA|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA|cont_hs\(6),
	datad => VCC,
	cin => \VGA|Add0~11\,
	combout => \VGA|Add0~12_combout\,
	cout => \VGA|Add0~13\);

-- Location: FF_X60_Y71_N25
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

-- Location: LCCOMB_X60_Y71_N26
\VGA|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|Add0~14_combout\ = (\VGA|cont_hs\(7) & (!\VGA|Add0~13\)) # (!\VGA|cont_hs\(7) & ((\VGA|Add0~13\) # (GND)))
-- \VGA|Add0~15\ = CARRY((!\VGA|Add0~13\) # (!\VGA|cont_hs\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|cont_hs\(7),
	datad => VCC,
	cin => \VGA|Add0~13\,
	combout => \VGA|Add0~14_combout\,
	cout => \VGA|Add0~15\);

-- Location: LCCOMB_X60_Y71_N0
\VGA|cont_hs~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|cont_hs~1_combout\ = (\VGA|Add0~16_combout\ & !\VGA|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA|Add0~16_combout\,
	datad => \VGA|Equal0~2_combout\,
	combout => \VGA|cont_hs~1_combout\);

-- Location: FF_X60_Y71_N1
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

-- Location: FF_X60_Y71_N27
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

-- Location: LCCOMB_X56_Y71_N4
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

-- Location: FF_X60_Y71_N3
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

-- Location: FF_X60_Y71_N7
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

-- Location: FF_X60_Y71_N31
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

-- Location: FF_X60_Y71_N21
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

-- Location: FF_X60_Y71_N29
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

-- Location: LCCOMB_X61_Y68_N6
\BALL|Add18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add18~1_cout\ = CARRY(\VGA|pixel_x\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_x\(0),
	datad => VCC,
	cout => \BALL|Add18~1_cout\);

-- Location: LCCOMB_X61_Y68_N8
\BALL|Add18~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add18~3_cout\ = CARRY((!\VGA|pixel_x\(1) & !\BALL|Add18~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_x\(1),
	datad => VCC,
	cin => \BALL|Add18~1_cout\,
	cout => \BALL|Add18~3_cout\);

-- Location: LCCOMB_X61_Y68_N10
\BALL|Add18~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add18~4_combout\ = (\VGA|pixel_x\(2) & (\BALL|Add18~3_cout\ $ (GND))) # (!\VGA|pixel_x\(2) & (!\BALL|Add18~3_cout\ & VCC))
-- \BALL|Add18~5\ = CARRY((\VGA|pixel_x\(2) & !\BALL|Add18~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_x\(2),
	datad => VCC,
	cin => \BALL|Add18~3_cout\,
	combout => \BALL|Add18~4_combout\,
	cout => \BALL|Add18~5\);

-- Location: LCCOMB_X61_Y68_N14
\BALL|Add18~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add18~8_combout\ = (\VGA|pixel_x\(4) & (\BALL|Add18~7\ $ (GND))) # (!\VGA|pixel_x\(4) & (!\BALL|Add18~7\ & VCC))
-- \BALL|Add18~9\ = CARRY((\VGA|pixel_x\(4) & !\BALL|Add18~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA|pixel_x\(4),
	datad => VCC,
	cin => \BALL|Add18~7\,
	combout => \BALL|Add18~8_combout\,
	cout => \BALL|Add18~9\);

-- Location: LCCOMB_X61_Y68_N16
\BALL|Add18~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add18~10_combout\ = (\VGA|pixel_x\(5) & (!\BALL|Add18~9\)) # (!\VGA|pixel_x\(5) & ((\BALL|Add18~9\) # (GND)))
-- \BALL|Add18~11\ = CARRY((!\BALL|Add18~9\) # (!\VGA|pixel_x\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA|pixel_x\(5),
	datad => VCC,
	cin => \BALL|Add18~9\,
	combout => \BALL|Add18~10_combout\,
	cout => \BALL|Add18~11\);

-- Location: LCCOMB_X61_Y68_N18
\BALL|Add18~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add18~12_combout\ = (\VGA|pixel_x\(6) & (\BALL|Add18~11\ $ (GND))) # (!\VGA|pixel_x\(6) & (!\BALL|Add18~11\ & VCC))
-- \BALL|Add18~13\ = CARRY((\VGA|pixel_x\(6) & !\BALL|Add18~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_x\(6),
	datad => VCC,
	cin => \BALL|Add18~11\,
	combout => \BALL|Add18~12_combout\,
	cout => \BALL|Add18~13\);

-- Location: LCCOMB_X61_Y68_N20
\BALL|Add18~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add18~14_combout\ = (\VGA|pixel_x\(7) & (!\BALL|Add18~13\)) # (!\VGA|pixel_x\(7) & ((\BALL|Add18~13\) # (GND)))
-- \BALL|Add18~15\ = CARRY((!\BALL|Add18~13\) # (!\VGA|pixel_x\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA|pixel_x\(7),
	datad => VCC,
	cin => \BALL|Add18~13\,
	combout => \BALL|Add18~14_combout\,
	cout => \BALL|Add18~15\);

-- Location: LCCOMB_X61_Y68_N24
\BALL|Add18~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add18~18_combout\ = \VGA|pixel_x\(9) $ (\BALL|Add18~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_x\(9),
	cin => \BALL|Add18~17\,
	combout => \BALL|Add18~18_combout\);

-- Location: LCCOMB_X59_Y71_N10
\VGA|pixel_x[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|pixel_x[6]~feeder_combout\ = \VGA|cont_hs\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA|cont_hs\(6),
	combout => \VGA|pixel_x[6]~feeder_combout\);

-- Location: FF_X59_Y71_N11
\VGA|pixel_x[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	d => \VGA|pixel_x[6]~feeder_combout\,
	ena => \VGA|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|pixel_x\(6));

-- Location: LCCOMB_X60_Y68_N28
\BALL|LessThan21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan21~0_combout\ = (\VGA|pixel_x\(5) & (\VGA|pixel_x\(6) & \VGA|pixel_x\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_x\(5),
	datab => \VGA|pixel_x\(6),
	datad => \VGA|pixel_x\(4),
	combout => \BALL|LessThan21~0_combout\);

-- Location: LCCOMB_X59_Y71_N28
\VGA|pixel_x[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|pixel_x[9]~feeder_combout\ = \VGA|cont_hs\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA|cont_hs\(9),
	combout => \VGA|pixel_x[9]~feeder_combout\);

-- Location: FF_X59_Y71_N29
\VGA|pixel_x[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	d => \VGA|pixel_x[9]~feeder_combout\,
	ena => \VGA|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|pixel_x\(9));

-- Location: LCCOMB_X60_Y68_N30
\BALL|LessThan21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan21~1_combout\ = (\VGA|pixel_x\(9) & ((\VGA|pixel_x\(8)) # ((\BALL|LessThan21~0_combout\) # (\VGA|pixel_x\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_x\(8),
	datab => \BALL|LessThan21~0_combout\,
	datac => \VGA|pixel_x\(7),
	datad => \VGA|pixel_x\(9),
	combout => \BALL|LessThan21~1_combout\);

-- Location: LCCOMB_X60_Y70_N10
\BALL|Pala_Y_der[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Pala_Y_der[2]~14_combout\ = ((\BALL|Pala_Y_der\(2) $ (\BALL|Desplaza_Pala_Y_der\(2) $ (!\BALL|Pala_Y_der[1]~13\)))) # (GND)
-- \BALL|Pala_Y_der[2]~15\ = CARRY((\BALL|Pala_Y_der\(2) & ((\BALL|Desplaza_Pala_Y_der\(2)) # (!\BALL|Pala_Y_der[1]~13\))) # (!\BALL|Pala_Y_der\(2) & (\BALL|Desplaza_Pala_Y_der\(2) & !\BALL|Pala_Y_der[1]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Pala_Y_der\(2),
	datab => \BALL|Desplaza_Pala_Y_der\(2),
	datad => VCC,
	cin => \BALL|Pala_Y_der[1]~13\,
	combout => \BALL|Pala_Y_der[2]~14_combout\,
	cout => \BALL|Pala_Y_der[2]~15\);

-- Location: LCCOMB_X60_Y70_N12
\BALL|Pala_Y_der[3]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Pala_Y_der[3]~16_combout\ = (\BALL|Pala_Y_der\(3) & ((\BALL|Desplaza_Pala_Y_der\(2) & (\BALL|Pala_Y_der[2]~15\ & VCC)) # (!\BALL|Desplaza_Pala_Y_der\(2) & (!\BALL|Pala_Y_der[2]~15\)))) # (!\BALL|Pala_Y_der\(3) & ((\BALL|Desplaza_Pala_Y_der\(2) & 
-- (!\BALL|Pala_Y_der[2]~15\)) # (!\BALL|Desplaza_Pala_Y_der\(2) & ((\BALL|Pala_Y_der[2]~15\) # (GND)))))
-- \BALL|Pala_Y_der[3]~17\ = CARRY((\BALL|Pala_Y_der\(3) & (!\BALL|Desplaza_Pala_Y_der\(2) & !\BALL|Pala_Y_der[2]~15\)) # (!\BALL|Pala_Y_der\(3) & ((!\BALL|Pala_Y_der[2]~15\) # (!\BALL|Desplaza_Pala_Y_der\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Pala_Y_der\(3),
	datab => \BALL|Desplaza_Pala_Y_der\(2),
	datad => VCC,
	cin => \BALL|Pala_Y_der[2]~15\,
	combout => \BALL|Pala_Y_der[3]~16_combout\,
	cout => \BALL|Pala_Y_der[3]~17\);

-- Location: LCCOMB_X60_Y70_N14
\BALL|Pala_Y_der[4]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Pala_Y_der[4]~18_combout\ = ((\BALL|Pala_Y_der\(4) $ (\BALL|Desplaza_Pala_Y_der\(2) $ (!\BALL|Pala_Y_der[3]~17\)))) # (GND)
-- \BALL|Pala_Y_der[4]~19\ = CARRY((\BALL|Pala_Y_der\(4) & ((\BALL|Desplaza_Pala_Y_der\(2)) # (!\BALL|Pala_Y_der[3]~17\))) # (!\BALL|Pala_Y_der\(4) & (\BALL|Desplaza_Pala_Y_der\(2) & !\BALL|Pala_Y_der[3]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Pala_Y_der\(4),
	datab => \BALL|Desplaza_Pala_Y_der\(2),
	datad => VCC,
	cin => \BALL|Pala_Y_der[3]~17\,
	combout => \BALL|Pala_Y_der[4]~18_combout\,
	cout => \BALL|Pala_Y_der[4]~19\);

-- Location: LCCOMB_X60_Y70_N16
\BALL|Pala_Y_der[5]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Pala_Y_der[5]~20_combout\ = (\BALL|Pala_Y_der\(5) & ((\BALL|Desplaza_Pala_Y_der\(2) & (\BALL|Pala_Y_der[4]~19\ & VCC)) # (!\BALL|Desplaza_Pala_Y_der\(2) & (!\BALL|Pala_Y_der[4]~19\)))) # (!\BALL|Pala_Y_der\(5) & ((\BALL|Desplaza_Pala_Y_der\(2) & 
-- (!\BALL|Pala_Y_der[4]~19\)) # (!\BALL|Desplaza_Pala_Y_der\(2) & ((\BALL|Pala_Y_der[4]~19\) # (GND)))))
-- \BALL|Pala_Y_der[5]~21\ = CARRY((\BALL|Pala_Y_der\(5) & (!\BALL|Desplaza_Pala_Y_der\(2) & !\BALL|Pala_Y_der[4]~19\)) # (!\BALL|Pala_Y_der\(5) & ((!\BALL|Pala_Y_der[4]~19\) # (!\BALL|Desplaza_Pala_Y_der\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Pala_Y_der\(5),
	datab => \BALL|Desplaza_Pala_Y_der\(2),
	datad => VCC,
	cin => \BALL|Pala_Y_der[4]~19\,
	combout => \BALL|Pala_Y_der[5]~20_combout\,
	cout => \BALL|Pala_Y_der[5]~21\);

-- Location: LCCOMB_X60_Y70_N18
\BALL|Pala_Y_der[6]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Pala_Y_der[6]~22_combout\ = ((\BALL|Pala_Y_der\(6) $ (\BALL|Desplaza_Pala_Y_der\(2) $ (!\BALL|Pala_Y_der[5]~21\)))) # (GND)
-- \BALL|Pala_Y_der[6]~23\ = CARRY((\BALL|Pala_Y_der\(6) & ((\BALL|Desplaza_Pala_Y_der\(2)) # (!\BALL|Pala_Y_der[5]~21\))) # (!\BALL|Pala_Y_der\(6) & (\BALL|Desplaza_Pala_Y_der\(2) & !\BALL|Pala_Y_der[5]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Pala_Y_der\(6),
	datab => \BALL|Desplaza_Pala_Y_der\(2),
	datad => VCC,
	cin => \BALL|Pala_Y_der[5]~21\,
	combout => \BALL|Pala_Y_der[6]~22_combout\,
	cout => \BALL|Pala_Y_der[6]~23\);

-- Location: LCCOMB_X60_Y70_N20
\BALL|Pala_Y_der[7]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Pala_Y_der[7]~24_combout\ = (\BALL|Pala_Y_der\(7) & ((\BALL|Desplaza_Pala_Y_der\(2) & (\BALL|Pala_Y_der[6]~23\ & VCC)) # (!\BALL|Desplaza_Pala_Y_der\(2) & (!\BALL|Pala_Y_der[6]~23\)))) # (!\BALL|Pala_Y_der\(7) & ((\BALL|Desplaza_Pala_Y_der\(2) & 
-- (!\BALL|Pala_Y_der[6]~23\)) # (!\BALL|Desplaza_Pala_Y_der\(2) & ((\BALL|Pala_Y_der[6]~23\) # (GND)))))
-- \BALL|Pala_Y_der[7]~25\ = CARRY((\BALL|Pala_Y_der\(7) & (!\BALL|Desplaza_Pala_Y_der\(2) & !\BALL|Pala_Y_der[6]~23\)) # (!\BALL|Pala_Y_der\(7) & ((!\BALL|Pala_Y_der[6]~23\) # (!\BALL|Desplaza_Pala_Y_der\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Pala_Y_der\(7),
	datab => \BALL|Desplaza_Pala_Y_der\(2),
	datad => VCC,
	cin => \BALL|Pala_Y_der[6]~23\,
	combout => \BALL|Pala_Y_der[7]~24_combout\,
	cout => \BALL|Pala_Y_der[7]~25\);

-- Location: LCCOMB_X60_Y70_N22
\BALL|Pala_Y_der[8]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Pala_Y_der[8]~26_combout\ = ((\BALL|Pala_Y_der\(8) $ (\BALL|Desplaza_Pala_Y_der\(2) $ (!\BALL|Pala_Y_der[7]~25\)))) # (GND)
-- \BALL|Pala_Y_der[8]~27\ = CARRY((\BALL|Pala_Y_der\(8) & ((\BALL|Desplaza_Pala_Y_der\(2)) # (!\BALL|Pala_Y_der[7]~25\))) # (!\BALL|Pala_Y_der\(8) & (\BALL|Desplaza_Pala_Y_der\(2) & !\BALL|Pala_Y_der[7]~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Pala_Y_der\(8),
	datab => \BALL|Desplaza_Pala_Y_der\(2),
	datad => VCC,
	cin => \BALL|Pala_Y_der[7]~25\,
	combout => \BALL|Pala_Y_der[8]~26_combout\,
	cout => \BALL|Pala_Y_der[8]~27\);

-- Location: FF_X60_Y70_N23
\BALL|Pala_Y_der[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	d => \BALL|Pala_Y_der[8]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BALL|Pala_Y_der\(8));

-- Location: FF_X60_Y70_N21
\BALL|Pala_Y_der[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	d => \BALL|Pala_Y_der[7]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BALL|Pala_Y_der\(7));

-- Location: LCCOMB_X60_Y70_N26
\BALL|Mover_Pala_der~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Mover_Pala_der~3_combout\ = (\BALL|Pala_Y_der\(8) & \BALL|Pala_Y_der\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BALL|Pala_Y_der\(8),
	datad => \BALL|Pala_Y_der\(7),
	combout => \BALL|Mover_Pala_der~3_combout\);

-- Location: FF_X60_Y70_N17
\BALL|Pala_Y_der[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	d => \BALL|Pala_Y_der[5]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BALL|Pala_Y_der\(5));

-- Location: FF_X60_Y70_N19
\BALL|Pala_Y_der[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	d => \BALL|Pala_Y_der[6]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BALL|Pala_Y_der\(6));

-- Location: LCCOMB_X61_Y67_N2
\BALL|Mover_Pala_der~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Mover_Pala_der~2_combout\ = (\BALL|Pala_Y_der\(6)) # ((\BALL|Pala_Y_der\(0) & (\BALL|Pala_Y_der\(5) & \BALL|Mover_Pala_der~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Pala_Y_der\(0),
	datab => \BALL|Pala_Y_der\(5),
	datac => \BALL|Pala_Y_der\(6),
	datad => \BALL|Mover_Pala_der~0_combout\,
	combout => \BALL|Mover_Pala_der~2_combout\);

-- Location: LCCOMB_X61_Y70_N14
\BALL|Mover_Pala_der~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Mover_Pala_der~4_combout\ = (\DOWN_DER~input_o\) # ((\BALL|Pala_Y_der\(9)) # ((\BALL|Mover_Pala_der~3_combout\ & \BALL|Mover_Pala_der~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOWN_DER~input_o\,
	datab => \BALL|Pala_Y_der\(9),
	datac => \BALL|Mover_Pala_der~3_combout\,
	datad => \BALL|Mover_Pala_der~2_combout\,
	combout => \BALL|Mover_Pala_der~4_combout\);

-- Location: LCCOMB_X60_Y70_N4
\BALL|Desplaza_Pala_Y_der~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Desplaza_Pala_Y_der~1_combout\ = (\BALL|Mover_Pala_der~1_combout\) # (!\BALL|Mover_Pala_der~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BALL|Mover_Pala_der~4_combout\,
	datad => \BALL|Mover_Pala_der~1_combout\,
	combout => \BALL|Desplaza_Pala_Y_der~1_combout\);

-- Location: FF_X60_Y70_N5
\BALL|Desplaza_Pala_Y_der[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	d => \BALL|Desplaza_Pala_Y_der~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BALL|Desplaza_Pala_Y_der\(0));

-- Location: LCCOMB_X60_Y70_N6
\BALL|Pala_Y_der[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Pala_Y_der[0]~10_combout\ = (\BALL|Pala_Y_der\(0) & (\BALL|Desplaza_Pala_Y_der\(0) $ (VCC))) # (!\BALL|Pala_Y_der\(0) & (\BALL|Desplaza_Pala_Y_der\(0) & VCC))
-- \BALL|Pala_Y_der[0]~11\ = CARRY((\BALL|Pala_Y_der\(0) & \BALL|Desplaza_Pala_Y_der\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Pala_Y_der\(0),
	datab => \BALL|Desplaza_Pala_Y_der\(0),
	datad => VCC,
	combout => \BALL|Pala_Y_der[0]~10_combout\,
	cout => \BALL|Pala_Y_der[0]~11\);

-- Location: LCCOMB_X60_Y70_N8
\BALL|Pala_Y_der[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Pala_Y_der[1]~12_combout\ = (\BALL|Desplaza_Pala_Y_der\(1) & ((\BALL|Pala_Y_der\(1) & (\BALL|Pala_Y_der[0]~11\ & VCC)) # (!\BALL|Pala_Y_der\(1) & (!\BALL|Pala_Y_der[0]~11\)))) # (!\BALL|Desplaza_Pala_Y_der\(1) & ((\BALL|Pala_Y_der\(1) & 
-- (!\BALL|Pala_Y_der[0]~11\)) # (!\BALL|Pala_Y_der\(1) & ((\BALL|Pala_Y_der[0]~11\) # (GND)))))
-- \BALL|Pala_Y_der[1]~13\ = CARRY((\BALL|Desplaza_Pala_Y_der\(1) & (!\BALL|Pala_Y_der\(1) & !\BALL|Pala_Y_der[0]~11\)) # (!\BALL|Desplaza_Pala_Y_der\(1) & ((!\BALL|Pala_Y_der[0]~11\) # (!\BALL|Pala_Y_der\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Desplaza_Pala_Y_der\(1),
	datab => \BALL|Pala_Y_der\(1),
	datad => VCC,
	cin => \BALL|Pala_Y_der[0]~11\,
	combout => \BALL|Pala_Y_der[1]~12_combout\,
	cout => \BALL|Pala_Y_der[1]~13\);

-- Location: FF_X60_Y70_N9
\BALL|Pala_Y_der[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	d => \BALL|Pala_Y_der[1]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BALL|Pala_Y_der\(1));

-- Location: FF_X60_Y70_N11
\BALL|Pala_Y_der[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	d => \BALL|Pala_Y_der[2]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BALL|Pala_Y_der\(2));

-- Location: FF_X60_Y70_N15
\BALL|Pala_Y_der[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	d => \BALL|Pala_Y_der[4]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BALL|Pala_Y_der\(4));

-- Location: FF_X60_Y70_N13
\BALL|Pala_Y_der[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	d => \BALL|Pala_Y_der[3]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BALL|Pala_Y_der\(3));

-- Location: LCCOMB_X61_Y67_N18
\BALL|Mover_Pala_der~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Mover_Pala_der~0_combout\ = (\BALL|Pala_Y_der\(1) & (\BALL|Pala_Y_der\(2) & (\BALL|Pala_Y_der\(4) & \BALL|Pala_Y_der\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Pala_Y_der\(1),
	datab => \BALL|Pala_Y_der\(2),
	datac => \BALL|Pala_Y_der\(4),
	datad => \BALL|Pala_Y_der\(3),
	combout => \BALL|Mover_Pala_der~0_combout\);

-- Location: LCCOMB_X61_Y67_N0
\BALL|LessThan24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan24~0_combout\ = (!\BALL|Pala_Y_der\(7) & (!\BALL|Pala_Y_der\(5) & (!\BALL|Pala_Y_der\(8) & !\BALL|Pala_Y_der\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Pala_Y_der\(7),
	datab => \BALL|Pala_Y_der\(5),
	datac => \BALL|Pala_Y_der\(8),
	datad => \BALL|Pala_Y_der\(9),
	combout => \BALL|LessThan24~0_combout\);

-- Location: LCCOMB_X61_Y67_N4
\BALL|Mover_Pala_der~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Mover_Pala_der~1_combout\ = (!\UP_DER~input_o\ & ((\BALL|Mover_Pala_der~0_combout\) # ((\BALL|Pala_Y_der\(6)) # (!\BALL|LessThan24~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UP_DER~input_o\,
	datab => \BALL|Mover_Pala_der~0_combout\,
	datac => \BALL|Pala_Y_der\(6),
	datad => \BALL|LessThan24~0_combout\,
	combout => \BALL|Mover_Pala_der~1_combout\);

-- Location: LCCOMB_X60_Y70_N28
\BALL|Desplaza_Pala_Y_der[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Desplaza_Pala_Y_der[2]~feeder_combout\ = \BALL|Mover_Pala_der~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BALL|Mover_Pala_der~1_combout\,
	combout => \BALL|Desplaza_Pala_Y_der[2]~feeder_combout\);

-- Location: FF_X60_Y70_N29
\BALL|Desplaza_Pala_Y_der[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	d => \BALL|Desplaza_Pala_Y_der[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BALL|Desplaza_Pala_Y_der\(2));

-- Location: LCCOMB_X60_Y70_N24
\BALL|Pala_Y_der[9]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Pala_Y_der[9]~28_combout\ = \BALL|Desplaza_Pala_Y_der\(2) $ (\BALL|Pala_Y_der[8]~27\ $ (\BALL|Pala_Y_der\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BALL|Desplaza_Pala_Y_der\(2),
	datad => \BALL|Pala_Y_der\(9),
	cin => \BALL|Pala_Y_der[8]~27\,
	combout => \BALL|Pala_Y_der[9]~28_combout\);

-- Location: FF_X60_Y70_N25
\BALL|Pala_Y_der[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	d => \BALL|Pala_Y_der[9]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BALL|Pala_Y_der\(9));

-- Location: LCCOMB_X56_Y70_N8
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

-- Location: LCCOMB_X57_Y70_N28
\VGA|cont_vs[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|cont_vs[0]~9_combout\ = (!\VGA|process_0~9_combout\ & ((\VGA|Equal2~2_combout\ & (\VGA|cont_vs\(0))) # (!\VGA|Equal2~2_combout\ & ((\VGA|Add1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|Equal2~2_combout\,
	datab => \VGA|process_0~9_combout\,
	datac => \VGA|cont_vs\(0),
	datad => \VGA|Add1~0_combout\,
	combout => \VGA|cont_vs[0]~9_combout\);

-- Location: FF_X57_Y70_N29
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

-- Location: LCCOMB_X56_Y70_N10
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

-- Location: LCCOMB_X56_Y70_N12
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

-- Location: LCCOMB_X56_Y70_N14
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

-- Location: LCCOMB_X57_Y70_N12
\VGA|cont_vs[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|cont_vs[3]~6_combout\ = (!\VGA|process_0~9_combout\ & ((\VGA|Equal2~2_combout\ & (\VGA|cont_vs\(3))) # (!\VGA|Equal2~2_combout\ & ((\VGA|Add1~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|Equal2~2_combout\,
	datab => \VGA|process_0~9_combout\,
	datac => \VGA|cont_vs\(3),
	datad => \VGA|Add1~6_combout\,
	combout => \VGA|cont_vs[3]~6_combout\);

-- Location: FF_X57_Y70_N13
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

-- Location: LCCOMB_X56_Y70_N16
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

-- Location: LCCOMB_X57_Y70_N26
\VGA|cont_vs[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|cont_vs[4]~5_combout\ = (!\VGA|process_0~9_combout\ & ((\VGA|Equal2~2_combout\ & (\VGA|cont_vs\(4))) # (!\VGA|Equal2~2_combout\ & ((\VGA|Add1~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|Equal2~2_combout\,
	datab => \VGA|process_0~9_combout\,
	datac => \VGA|cont_vs\(4),
	datad => \VGA|Add1~8_combout\,
	combout => \VGA|cont_vs[4]~5_combout\);

-- Location: FF_X57_Y70_N27
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

-- Location: LCCOMB_X56_Y70_N4
\VGA|process_0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|process_0~5_combout\ = (!\VGA|cont_vs\(1) & (!\VGA|cont_vs\(0) & (\VGA|cont_vs\(3) & !\VGA|cont_vs\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|cont_vs\(1),
	datab => \VGA|cont_vs\(0),
	datac => \VGA|cont_vs\(3),
	datad => \VGA|cont_vs\(4),
	combout => \VGA|process_0~5_combout\);

-- Location: LCCOMB_X56_Y71_N26
\VGA|process_0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|process_0~7_combout\ = (\VGA|cont_hs\(7) & ((\VGA|cont_hs\(6)) # ((\VGA|cont_hs\(5) & \VGA|cont_hs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|cont_hs\(6),
	datab => \VGA|cont_hs\(5),
	datac => \VGA|cont_hs\(7),
	datad => \VGA|cont_hs\(4),
	combout => \VGA|process_0~7_combout\);

-- Location: LCCOMB_X56_Y71_N14
\VGA|process_0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|process_0~8_combout\ = (\VGA|process_0~6_combout\ & (\VGA|process_0~5_combout\ & ((\VGA|process_0~7_combout\) # (\VGA|cont_hs\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|process_0~6_combout\,
	datab => \VGA|process_0~5_combout\,
	datac => \VGA|process_0~7_combout\,
	datad => \VGA|cont_hs\(8),
	combout => \VGA|process_0~8_combout\);

-- Location: FF_X60_Y71_N17
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

-- Location: LCCOMB_X60_Y71_N10
\VGA|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|Equal2~1_combout\ = ((\VGA|cont_hs\(1)) # ((\VGA|cont_hs\(2)) # (\VGA|cont_hs\(8)))) # (!\VGA|cont_hs\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|cont_hs\(7),
	datab => \VGA|cont_hs\(1),
	datac => \VGA|cont_hs\(2),
	datad => \VGA|cont_hs\(8),
	combout => \VGA|Equal2~1_combout\);

-- Location: LCCOMB_X59_Y71_N26
\VGA|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|Equal2~0_combout\ = (((\VGA|cont_hs\(0)) # (\VGA|cont_hs\(6))) # (!\VGA|cont_hs\(9))) # (!\VGA|cont_hs\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|cont_hs\(4),
	datab => \VGA|cont_hs\(9),
	datac => \VGA|cont_hs\(0),
	datad => \VGA|cont_hs\(6),
	combout => \VGA|Equal2~0_combout\);

-- Location: LCCOMB_X59_Y71_N12
\VGA|Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|Equal2~2_combout\ = ((\VGA|Equal2~1_combout\) # ((\VGA|Equal2~0_combout\) # (\VGA|cont_hs\(3)))) # (!\VGA|cont_hs\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|cont_hs\(5),
	datab => \VGA|Equal2~1_combout\,
	datac => \VGA|Equal2~0_combout\,
	datad => \VGA|cont_hs\(3),
	combout => \VGA|Equal2~2_combout\);

-- Location: LCCOMB_X56_Y70_N0
\VGA|cont_vs[9]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|cont_vs[9]~1_combout\ = (!\VGA|process_0~9_combout\ & ((\VGA|Equal2~2_combout\ & ((\VGA|cont_vs\(9)))) # (!\VGA|Equal2~2_combout\ & (\VGA|Add1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|Add1~18_combout\,
	datab => \VGA|process_0~9_combout\,
	datac => \VGA|cont_vs\(9),
	datad => \VGA|Equal2~2_combout\,
	combout => \VGA|cont_vs[9]~1_combout\);

-- Location: FF_X56_Y70_N1
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

-- Location: LCCOMB_X56_Y71_N30
\VGA|process_0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|process_0~9_combout\ = (!\VGA|cont_vs\(8) & (\VGA|cont_hs\(9) & (\VGA|process_0~8_combout\ & \VGA|cont_vs\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|cont_vs\(8),
	datab => \VGA|cont_hs\(9),
	datac => \VGA|process_0~8_combout\,
	datad => \VGA|cont_vs\(9),
	combout => \VGA|process_0~9_combout\);

-- Location: LCCOMB_X56_Y70_N18
\VGA|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|Add1~10_combout\ = (\VGA|cont_vs\(5) & (!\VGA|Add1~9\)) # (!\VGA|cont_vs\(5) & ((\VGA|Add1~9\) # (GND)))
-- \VGA|Add1~11\ = CARRY((!\VGA|Add1~9\) # (!\VGA|cont_vs\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|cont_vs\(5),
	datad => VCC,
	cin => \VGA|Add1~9\,
	combout => \VGA|Add1~10_combout\,
	cout => \VGA|Add1~11\);

-- Location: LCCOMB_X56_Y70_N20
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

-- Location: LCCOMB_X56_Y70_N22
\VGA|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|Add1~14_combout\ = (\VGA|cont_vs\(7) & (!\VGA|Add1~13\)) # (!\VGA|cont_vs\(7) & ((\VGA|Add1~13\) # (GND)))
-- \VGA|Add1~15\ = CARRY((!\VGA|Add1~13\) # (!\VGA|cont_vs\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA|cont_vs\(7),
	datad => VCC,
	cin => \VGA|Add1~13\,
	combout => \VGA|Add1~14_combout\,
	cout => \VGA|Add1~15\);

-- Location: LCCOMB_X56_Y70_N28
\VGA|cont_vs[7]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|cont_vs[7]~4_combout\ = (!\VGA|process_0~9_combout\ & ((\VGA|Equal2~2_combout\ & ((\VGA|cont_vs\(7)))) # (!\VGA|Equal2~2_combout\ & (\VGA|Add1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|process_0~9_combout\,
	datab => \VGA|Add1~14_combout\,
	datac => \VGA|cont_vs\(7),
	datad => \VGA|Equal2~2_combout\,
	combout => \VGA|cont_vs[7]~4_combout\);

-- Location: FF_X56_Y70_N29
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

-- Location: LCCOMB_X57_Y70_N0
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

-- Location: FF_X57_Y70_N1
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

-- Location: LCCOMB_X57_Y71_N8
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

-- Location: LCCOMB_X57_Y70_N30
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

-- Location: FF_X57_Y70_N31
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

-- Location: LCCOMB_X57_Y70_N24
\VGA|LessThan6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|LessThan6~0_combout\ = (\VGA|cont_vs\(6) & (\VGA|cont_vs\(7) & (\VGA|cont_vs\(5) & \VGA|cont_vs\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|cont_vs\(6),
	datab => \VGA|cont_vs\(7),
	datac => \VGA|cont_vs\(5),
	datad => \VGA|cont_vs\(8),
	combout => \VGA|LessThan6~0_combout\);

-- Location: LCCOMB_X57_Y71_N20
\VGA|LessThan6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|LessThan6~1_combout\ = (!\VGA|cont_vs\(9) & !\VGA|LessThan6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA|cont_vs\(9),
	datac => \VGA|LessThan6~0_combout\,
	combout => \VGA|LessThan6~1_combout\);

-- Location: FF_X57_Y71_N9
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

-- Location: LCCOMB_X57_Y70_N20
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

-- Location: FF_X57_Y70_N21
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

-- Location: FF_X57_Y70_N23
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

-- Location: LCCOMB_X57_Y70_N2
\VGA|cont_vs[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|cont_vs[1]~8_combout\ = (!\VGA|process_0~9_combout\ & ((\VGA|Equal2~2_combout\ & (\VGA|cont_vs\(1))) # (!\VGA|Equal2~2_combout\ & ((\VGA|Add1~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|Equal2~2_combout\,
	datab => \VGA|process_0~9_combout\,
	datac => \VGA|cont_vs\(1),
	datad => \VGA|Add1~2_combout\,
	combout => \VGA|cont_vs[1]~8_combout\);

-- Location: FF_X57_Y70_N3
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

-- Location: LCCOMB_X57_Y70_N4
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

-- Location: FF_X57_Y70_N5
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

-- Location: LCCOMB_X58_Y67_N10
\BALL|Add20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add20~1_cout\ = CARRY(\VGA|pixel_y\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA|pixel_y\(1),
	datad => VCC,
	cout => \BALL|Add20~1_cout\);

-- Location: LCCOMB_X58_Y67_N18
\BALL|Add20~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add20~8_combout\ = (\VGA|pixel_y\(5) & (\BALL|Add20~7\ $ (GND))) # (!\VGA|pixel_y\(5) & (!\BALL|Add20~7\ & VCC))
-- \BALL|Add20~9\ = CARRY((\VGA|pixel_y\(5) & !\BALL|Add20~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_y\(5),
	datad => VCC,
	cin => \BALL|Add20~7\,
	combout => \BALL|Add20~8_combout\,
	cout => \BALL|Add20~9\);

-- Location: LCCOMB_X58_Y67_N22
\BALL|Add20~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add20~12_combout\ = (\VGA|pixel_y\(7) & (\BALL|Add20~11\ $ (GND))) # (!\VGA|pixel_y\(7) & (!\BALL|Add20~11\ & VCC))
-- \BALL|Add20~13\ = CARRY((\VGA|pixel_y\(7) & !\BALL|Add20~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA|pixel_y\(7),
	datad => VCC,
	cin => \BALL|Add20~11\,
	combout => \BALL|Add20~12_combout\,
	cout => \BALL|Add20~13\);

-- Location: LCCOMB_X59_Y67_N4
\BALL|Pala_Y_der[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Pala_Y_der[0]~feeder_combout\ = \BALL|Pala_Y_der[0]~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BALL|Pala_Y_der[0]~10_combout\,
	combout => \BALL|Pala_Y_der[0]~feeder_combout\);

-- Location: FF_X59_Y67_N5
\BALL|Pala_Y_der[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	d => \BALL|Pala_Y_der[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BALL|Pala_Y_der\(0));

-- Location: LCCOMB_X59_Y67_N12
\BALL|LessThan22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan22~1_cout\ = CARRY((!\VGA|pixel_y\(0) & \BALL|Pala_Y_der\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_y\(0),
	datab => \BALL|Pala_Y_der\(0),
	datad => VCC,
	cout => \BALL|LessThan22~1_cout\);

-- Location: LCCOMB_X59_Y67_N14
\BALL|LessThan22~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan22~3_cout\ = CARRY((\VGA|pixel_y\(1) & (!\BALL|Pala_Y_der\(1) & !\BALL|LessThan22~1_cout\)) # (!\VGA|pixel_y\(1) & ((!\BALL|LessThan22~1_cout\) # (!\BALL|Pala_Y_der\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_y\(1),
	datab => \BALL|Pala_Y_der\(1),
	datad => VCC,
	cin => \BALL|LessThan22~1_cout\,
	cout => \BALL|LessThan22~3_cout\);

-- Location: LCCOMB_X59_Y67_N16
\BALL|LessThan22~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan22~5_cout\ = CARRY((\BALL|Add20~2_combout\ & (\BALL|Pala_Y_der\(2) & !\BALL|LessThan22~3_cout\)) # (!\BALL|Add20~2_combout\ & ((\BALL|Pala_Y_der\(2)) # (!\BALL|LessThan22~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Add20~2_combout\,
	datab => \BALL|Pala_Y_der\(2),
	datad => VCC,
	cin => \BALL|LessThan22~3_cout\,
	cout => \BALL|LessThan22~5_cout\);

-- Location: LCCOMB_X59_Y67_N18
\BALL|LessThan22~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan22~7_cout\ = CARRY((\BALL|Add20~4_combout\ & ((!\BALL|LessThan22~5_cout\) # (!\BALL|Pala_Y_der\(3)))) # (!\BALL|Add20~4_combout\ & (!\BALL|Pala_Y_der\(3) & !\BALL|LessThan22~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Add20~4_combout\,
	datab => \BALL|Pala_Y_der\(3),
	datad => VCC,
	cin => \BALL|LessThan22~5_cout\,
	cout => \BALL|LessThan22~7_cout\);

-- Location: LCCOMB_X59_Y67_N20
\BALL|LessThan22~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan22~9_cout\ = CARRY((\BALL|Add20~6_combout\ & (\BALL|Pala_Y_der\(4) & !\BALL|LessThan22~7_cout\)) # (!\BALL|Add20~6_combout\ & ((\BALL|Pala_Y_der\(4)) # (!\BALL|LessThan22~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Add20~6_combout\,
	datab => \BALL|Pala_Y_der\(4),
	datad => VCC,
	cin => \BALL|LessThan22~7_cout\,
	cout => \BALL|LessThan22~9_cout\);

-- Location: LCCOMB_X59_Y67_N22
\BALL|LessThan22~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan22~11_cout\ = CARRY((\BALL|Pala_Y_der\(5) & (\BALL|Add20~8_combout\ & !\BALL|LessThan22~9_cout\)) # (!\BALL|Pala_Y_der\(5) & ((\BALL|Add20~8_combout\) # (!\BALL|LessThan22~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Pala_Y_der\(5),
	datab => \BALL|Add20~8_combout\,
	datad => VCC,
	cin => \BALL|LessThan22~9_cout\,
	cout => \BALL|LessThan22~11_cout\);

-- Location: LCCOMB_X59_Y67_N24
\BALL|LessThan22~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan22~13_cout\ = CARRY((\BALL|Add20~10_combout\ & (\BALL|Pala_Y_der\(6) & !\BALL|LessThan22~11_cout\)) # (!\BALL|Add20~10_combout\ & ((\BALL|Pala_Y_der\(6)) # (!\BALL|LessThan22~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Add20~10_combout\,
	datab => \BALL|Pala_Y_der\(6),
	datad => VCC,
	cin => \BALL|LessThan22~11_cout\,
	cout => \BALL|LessThan22~13_cout\);

-- Location: LCCOMB_X59_Y67_N26
\BALL|LessThan22~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan22~15_cout\ = CARRY((\BALL|Pala_Y_der\(7) & (\BALL|Add20~12_combout\ & !\BALL|LessThan22~13_cout\)) # (!\BALL|Pala_Y_der\(7) & ((\BALL|Add20~12_combout\) # (!\BALL|LessThan22~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Pala_Y_der\(7),
	datab => \BALL|Add20~12_combout\,
	datad => VCC,
	cin => \BALL|LessThan22~13_cout\,
	cout => \BALL|LessThan22~15_cout\);

-- Location: LCCOMB_X59_Y67_N28
\BALL|LessThan22~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan22~17_cout\ = CARRY((\BALL|Pala_Y_der\(8) & ((!\BALL|LessThan22~15_cout\) # (!\BALL|Add20~14_combout\))) # (!\BALL|Pala_Y_der\(8) & (!\BALL|Add20~14_combout\ & !\BALL|LessThan22~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Pala_Y_der\(8),
	datab => \BALL|Add20~14_combout\,
	datad => VCC,
	cin => \BALL|LessThan22~15_cout\,
	cout => \BALL|LessThan22~17_cout\);

-- Location: LCCOMB_X59_Y67_N30
\BALL|LessThan22~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan22~18_combout\ = (\BALL|Add20~16_combout\ & (\BALL|LessThan22~17_cout\ & \BALL|Pala_Y_der\(9))) # (!\BALL|Add20~16_combout\ & ((\BALL|LessThan22~17_cout\) # (\BALL|Pala_Y_der\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Add20~16_combout\,
	datad => \BALL|Pala_Y_der\(9),
	cin => \BALL|LessThan22~17_cout\,
	combout => \BALL|LessThan22~18_combout\);

-- Location: LCCOMB_X61_Y68_N0
\VGA|vga_r~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|vga_r~0_combout\ = (\BALL|Add18~12_combout\ & ((\BALL|Add18~8_combout\) # ((\BALL|Add18~6_combout\ & \BALL|Add18~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Add18~6_combout\,
	datab => \BALL|Add18~12_combout\,
	datac => \BALL|Add18~8_combout\,
	datad => \BALL|Add18~4_combout\,
	combout => \VGA|vga_r~0_combout\);

-- Location: LCCOMB_X61_Y68_N30
\VGA|vga_r~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|vga_r~1_combout\ = (\BALL|Add18~16_combout\) # ((\BALL|Add18~14_combout\) # ((\BALL|Add18~10_combout\ & \VGA|vga_r~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Add18~16_combout\,
	datab => \BALL|Add18~10_combout\,
	datac => \VGA|vga_r~0_combout\,
	datad => \BALL|Add18~14_combout\,
	combout => \VGA|vga_r~1_combout\);

-- Location: LCCOMB_X59_Y67_N2
\VGA|vga_r~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|vga_r~2_combout\ = (\VGA|video_on~q\ & (!\BALL|LessThan21~1_combout\ & (!\BALL|LessThan22~18_combout\ & \VGA|vga_r~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|video_on~q\,
	datab => \BALL|LessThan21~1_combout\,
	datac => \BALL|LessThan22~18_combout\,
	datad => \VGA|vga_r~1_combout\,
	combout => \VGA|vga_r~2_combout\);

-- Location: LCCOMB_X59_Y70_N8
\BALL|Add21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add21~0_combout\ = \BALL|Pala_Y_der\(1) $ (VCC)
-- \BALL|Add21~1\ = CARRY(\BALL|Pala_Y_der\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BALL|Pala_Y_der\(1),
	datad => VCC,
	combout => \BALL|Add21~0_combout\,
	cout => \BALL|Add21~1\);

-- Location: LCCOMB_X59_Y70_N10
\BALL|Add21~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add21~2_combout\ = (\BALL|Pala_Y_der\(2) & (\BALL|Add21~1\ & VCC)) # (!\BALL|Pala_Y_der\(2) & (!\BALL|Add21~1\))
-- \BALL|Add21~3\ = CARRY((!\BALL|Pala_Y_der\(2) & !\BALL|Add21~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BALL|Pala_Y_der\(2),
	datad => VCC,
	cin => \BALL|Add21~1\,
	combout => \BALL|Add21~2_combout\,
	cout => \BALL|Add21~3\);

-- Location: LCCOMB_X59_Y70_N12
\BALL|Add21~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add21~4_combout\ = (\BALL|Pala_Y_der\(3) & ((GND) # (!\BALL|Add21~3\))) # (!\BALL|Pala_Y_der\(3) & (\BALL|Add21~3\ $ (GND)))
-- \BALL|Add21~5\ = CARRY((\BALL|Pala_Y_der\(3)) # (!\BALL|Add21~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BALL|Pala_Y_der\(3),
	datad => VCC,
	cin => \BALL|Add21~3\,
	combout => \BALL|Add21~4_combout\,
	cout => \BALL|Add21~5\);

-- Location: LCCOMB_X59_Y70_N14
\BALL|Add21~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add21~6_combout\ = (\BALL|Pala_Y_der\(4) & (\BALL|Add21~5\ & VCC)) # (!\BALL|Pala_Y_der\(4) & (!\BALL|Add21~5\))
-- \BALL|Add21~7\ = CARRY((!\BALL|Pala_Y_der\(4) & !\BALL|Add21~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BALL|Pala_Y_der\(4),
	datad => VCC,
	cin => \BALL|Add21~5\,
	combout => \BALL|Add21~6_combout\,
	cout => \BALL|Add21~7\);

-- Location: LCCOMB_X59_Y70_N16
\BALL|Add21~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add21~8_combout\ = (\BALL|Pala_Y_der\(5) & (\BALL|Add21~7\ $ (GND))) # (!\BALL|Pala_Y_der\(5) & (!\BALL|Add21~7\ & VCC))
-- \BALL|Add21~9\ = CARRY((\BALL|Pala_Y_der\(5) & !\BALL|Add21~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BALL|Pala_Y_der\(5),
	datad => VCC,
	cin => \BALL|Add21~7\,
	combout => \BALL|Add21~8_combout\,
	cout => \BALL|Add21~9\);

-- Location: LCCOMB_X59_Y70_N18
\BALL|Add21~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add21~10_combout\ = (\BALL|Pala_Y_der\(6) & (!\BALL|Add21~9\)) # (!\BALL|Pala_Y_der\(6) & ((\BALL|Add21~9\) # (GND)))
-- \BALL|Add21~11\ = CARRY((!\BALL|Add21~9\) # (!\BALL|Pala_Y_der\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BALL|Pala_Y_der\(6),
	datad => VCC,
	cin => \BALL|Add21~9\,
	combout => \BALL|Add21~10_combout\,
	cout => \BALL|Add21~11\);

-- Location: FF_X57_Y70_N9
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

-- Location: LCCOMB_X57_Y70_N16
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

-- Location: FF_X57_Y70_N17
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

-- Location: LCCOMB_X56_Y70_N30
\VGA|cont_vs[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|cont_vs[2]~7_combout\ = (!\VGA|process_0~9_combout\ & ((\VGA|Equal2~2_combout\ & (\VGA|cont_vs\(2))) # (!\VGA|Equal2~2_combout\ & ((\VGA|Add1~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|process_0~9_combout\,
	datab => \VGA|Equal2~2_combout\,
	datac => \VGA|cont_vs\(2),
	datad => \VGA|Add1~4_combout\,
	combout => \VGA|cont_vs[2]~7_combout\);

-- Location: FF_X56_Y70_N31
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

-- Location: LCCOMB_X57_Y70_N6
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

-- Location: FF_X57_Y70_N7
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

-- Location: LCCOMB_X57_Y70_N18
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

-- Location: FF_X57_Y70_N19
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

-- Location: LCCOMB_X59_Y69_N2
\BALL|LessThan23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan23~1_cout\ = CARRY((!\BALL|Pala_Y_der\(0) & \VGA|pixel_y\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Pala_Y_der\(0),
	datab => \VGA|pixel_y\(0),
	datad => VCC,
	cout => \BALL|LessThan23~1_cout\);

-- Location: LCCOMB_X59_Y69_N4
\BALL|LessThan23~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan23~3_cout\ = CARRY((\VGA|pixel_y\(1) & (\BALL|Add21~0_combout\ & !\BALL|LessThan23~1_cout\)) # (!\VGA|pixel_y\(1) & ((\BALL|Add21~0_combout\) # (!\BALL|LessThan23~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_y\(1),
	datab => \BALL|Add21~0_combout\,
	datad => VCC,
	cin => \BALL|LessThan23~1_cout\,
	cout => \BALL|LessThan23~3_cout\);

-- Location: LCCOMB_X59_Y69_N6
\BALL|LessThan23~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan23~5_cout\ = CARRY((\BALL|Add21~2_combout\ & (\VGA|pixel_y\(2) & !\BALL|LessThan23~3_cout\)) # (!\BALL|Add21~2_combout\ & ((\VGA|pixel_y\(2)) # (!\BALL|LessThan23~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Add21~2_combout\,
	datab => \VGA|pixel_y\(2),
	datad => VCC,
	cin => \BALL|LessThan23~3_cout\,
	cout => \BALL|LessThan23~5_cout\);

-- Location: LCCOMB_X59_Y69_N8
\BALL|LessThan23~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan23~7_cout\ = CARRY((\BALL|Add21~4_combout\ & ((!\BALL|LessThan23~5_cout\) # (!\VGA|pixel_y\(3)))) # (!\BALL|Add21~4_combout\ & (!\VGA|pixel_y\(3) & !\BALL|LessThan23~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Add21~4_combout\,
	datab => \VGA|pixel_y\(3),
	datad => VCC,
	cin => \BALL|LessThan23~5_cout\,
	cout => \BALL|LessThan23~7_cout\);

-- Location: LCCOMB_X59_Y69_N10
\BALL|LessThan23~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan23~9_cout\ = CARRY((\VGA|pixel_y\(4) & ((!\BALL|LessThan23~7_cout\) # (!\BALL|Add21~6_combout\))) # (!\VGA|pixel_y\(4) & (!\BALL|Add21~6_combout\ & !\BALL|LessThan23~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_y\(4),
	datab => \BALL|Add21~6_combout\,
	datad => VCC,
	cin => \BALL|LessThan23~7_cout\,
	cout => \BALL|LessThan23~9_cout\);

-- Location: LCCOMB_X59_Y69_N12
\BALL|LessThan23~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan23~11_cout\ = CARRY((\BALL|Add21~8_combout\ & ((!\BALL|LessThan23~9_cout\) # (!\VGA|pixel_y\(5)))) # (!\BALL|Add21~8_combout\ & (!\VGA|pixel_y\(5) & !\BALL|LessThan23~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Add21~8_combout\,
	datab => \VGA|pixel_y\(5),
	datad => VCC,
	cin => \BALL|LessThan23~9_cout\,
	cout => \BALL|LessThan23~11_cout\);

-- Location: LCCOMB_X59_Y69_N14
\BALL|LessThan23~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan23~13_cout\ = CARRY((\VGA|pixel_y\(6) & ((!\BALL|LessThan23~11_cout\) # (!\BALL|Add21~10_combout\))) # (!\VGA|pixel_y\(6) & (!\BALL|Add21~10_combout\ & !\BALL|LessThan23~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_y\(6),
	datab => \BALL|Add21~10_combout\,
	datad => VCC,
	cin => \BALL|LessThan23~11_cout\,
	cout => \BALL|LessThan23~13_cout\);

-- Location: LCCOMB_X59_Y69_N16
\BALL|LessThan23~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan23~15_cout\ = CARRY((\BALL|Add21~12_combout\ & ((!\BALL|LessThan23~13_cout\) # (!\VGA|pixel_y\(7)))) # (!\BALL|Add21~12_combout\ & (!\VGA|pixel_y\(7) & !\BALL|LessThan23~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Add21~12_combout\,
	datab => \VGA|pixel_y\(7),
	datad => VCC,
	cin => \BALL|LessThan23~13_cout\,
	cout => \BALL|LessThan23~15_cout\);

-- Location: LCCOMB_X59_Y69_N18
\BALL|LessThan23~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan23~16_combout\ = (\VGA|pixel_y\(8) & ((!\BALL|Add21~14_combout\) # (!\BALL|LessThan23~15_cout\))) # (!\VGA|pixel_y\(8) & (!\BALL|LessThan23~15_cout\ & !\BALL|Add21~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_y\(8),
	datad => \BALL|Add21~14_combout\,
	cin => \BALL|LessThan23~15_cout\,
	combout => \BALL|LessThan23~16_combout\);

-- Location: LCCOMB_X59_Y69_N20
\VGA|vga_r~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|vga_r~3_combout\ = (\BALL|Add18~18_combout\ & (\VGA|vga_r~2_combout\ & ((\BALL|Add21~16_combout\) # (!\BALL|LessThan23~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Add21~16_combout\,
	datab => \BALL|Add18~18_combout\,
	datac => \VGA|vga_r~2_combout\,
	datad => \BALL|LessThan23~16_combout\,
	combout => \VGA|vga_r~3_combout\);

-- Location: LCCOMB_X56_Y71_N0
\VGA|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|process_0~0_combout\ = (!\VGA|cont_vs\(9) & (\VGA|LessThan5~0_combout\ & !\VGA|LessThan6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA|cont_vs\(9),
	datac => \VGA|LessThan5~0_combout\,
	datad => \VGA|LessThan6~0_combout\,
	combout => \VGA|process_0~0_combout\);

-- Location: FF_X56_Y71_N1
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

-- Location: LCCOMB_X61_Y69_N0
\BALL|Bola_X[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Bola_X[1]~9_combout\ = \BALL|Bola_X\(1) $ (VCC)
-- \BALL|Bola_X[1]~10\ = CARRY(\BALL|Bola_X\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BALL|Bola_X\(1),
	datad => VCC,
	combout => \BALL|Bola_X[1]~9_combout\,
	cout => \BALL|Bola_X[1]~10\);

-- Location: LCCOMB_X60_Y69_N4
\BALL|Bola_X[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Bola_X[1]~feeder_combout\ = \BALL|Bola_X[1]~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BALL|Bola_X[1]~9_combout\,
	combout => \BALL|Bola_X[1]~feeder_combout\);

-- Location: FF_X60_Y69_N5
\BALL|Bola_X[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	d => \BALL|Bola_X[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BALL|Bola_X\(1));

-- Location: LCCOMB_X58_Y68_N14
\BALL|Bola_Y[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Bola_Y[2]~9_cout\ = CARRY(\BALL|Bola_X\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BALL|Bola_X\(1),
	datad => VCC,
	cout => \BALL|Bola_Y[2]~9_cout\);

-- Location: LCCOMB_X58_Y68_N16
\BALL|Bola_Y[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Bola_Y[2]~10_combout\ = (\BALL|Desplaza_Bola_Y\(2) & ((\BALL|Bola_Y\(2) & (\BALL|Bola_Y[2]~9_cout\ & VCC)) # (!\BALL|Bola_Y\(2) & (!\BALL|Bola_Y[2]~9_cout\)))) # (!\BALL|Desplaza_Bola_Y\(2) & ((\BALL|Bola_Y\(2) & (!\BALL|Bola_Y[2]~9_cout\)) # 
-- (!\BALL|Bola_Y\(2) & ((\BALL|Bola_Y[2]~9_cout\) # (GND)))))
-- \BALL|Bola_Y[2]~11\ = CARRY((\BALL|Desplaza_Bola_Y\(2) & (!\BALL|Bola_Y\(2) & !\BALL|Bola_Y[2]~9_cout\)) # (!\BALL|Desplaza_Bola_Y\(2) & ((!\BALL|Bola_Y[2]~9_cout\) # (!\BALL|Bola_Y\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Desplaza_Bola_Y\(2),
	datab => \BALL|Bola_Y\(2),
	datad => VCC,
	cin => \BALL|Bola_Y[2]~9_cout\,
	combout => \BALL|Bola_Y[2]~10_combout\,
	cout => \BALL|Bola_Y[2]~11\);

-- Location: FF_X58_Y68_N17
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

-- Location: LCCOMB_X58_Y68_N18
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

-- Location: LCCOMB_X58_Y68_N20
\BALL|Bola_Y[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Bola_Y[4]~14_combout\ = (\BALL|Bola_Y\(4) & ((\BALL|Desplaza_Bola_Y\(2) & (\BALL|Bola_Y[3]~13\ & VCC)) # (!\BALL|Desplaza_Bola_Y\(2) & (!\BALL|Bola_Y[3]~13\)))) # (!\BALL|Bola_Y\(4) & ((\BALL|Desplaza_Bola_Y\(2) & (!\BALL|Bola_Y[3]~13\)) # 
-- (!\BALL|Desplaza_Bola_Y\(2) & ((\BALL|Bola_Y[3]~13\) # (GND)))))
-- \BALL|Bola_Y[4]~15\ = CARRY((\BALL|Bola_Y\(4) & (!\BALL|Desplaza_Bola_Y\(2) & !\BALL|Bola_Y[3]~13\)) # (!\BALL|Bola_Y\(4) & ((!\BALL|Bola_Y[3]~13\) # (!\BALL|Desplaza_Bola_Y\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Bola_Y\(4),
	datab => \BALL|Desplaza_Bola_Y\(2),
	datad => VCC,
	cin => \BALL|Bola_Y[3]~13\,
	combout => \BALL|Bola_Y[4]~14_combout\,
	cout => \BALL|Bola_Y[4]~15\);

-- Location: LCCOMB_X58_Y68_N22
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

-- Location: LCCOMB_X58_Y68_N24
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

-- Location: LCCOMB_X58_Y68_N26
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

-- Location: FF_X58_Y68_N27
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

-- Location: FF_X58_Y68_N25
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

-- Location: LCCOMB_X58_Y68_N28
\BALL|Bola_Y[8]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Bola_Y[8]~22_combout\ = (\BALL|Desplaza_Bola_Y\(2) & ((\BALL|Bola_Y\(8) & (\BALL|Bola_Y[7]~21\ & VCC)) # (!\BALL|Bola_Y\(8) & (!\BALL|Bola_Y[7]~21\)))) # (!\BALL|Desplaza_Bola_Y\(2) & ((\BALL|Bola_Y\(8) & (!\BALL|Bola_Y[7]~21\)) # (!\BALL|Bola_Y\(8) 
-- & ((\BALL|Bola_Y[7]~21\) # (GND)))))
-- \BALL|Bola_Y[8]~23\ = CARRY((\BALL|Desplaza_Bola_Y\(2) & (!\BALL|Bola_Y\(8) & !\BALL|Bola_Y[7]~21\)) # (!\BALL|Desplaza_Bola_Y\(2) & ((!\BALL|Bola_Y[7]~21\) # (!\BALL|Bola_Y\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Desplaza_Bola_Y\(2),
	datab => \BALL|Bola_Y\(8),
	datad => VCC,
	cin => \BALL|Bola_Y[7]~21\,
	combout => \BALL|Bola_Y[8]~22_combout\,
	cout => \BALL|Bola_Y[8]~23\);

-- Location: FF_X58_Y68_N29
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

-- Location: LCCOMB_X58_Y67_N2
\BALL|Desplaza_Bola_Y[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Desplaza_Bola_Y[2]~0_combout\ = (\BALL|Desplaza_Bola_Y\(2) & ((\BALL|Bola_Y\(7)) # ((\BALL|Bola_Y\(6)) # (\BALL|Bola_Y\(8))))) # (!\BALL|Desplaza_Bola_Y\(2) & (\BALL|Bola_Y\(7) & (\BALL|Bola_Y\(6) & \BALL|Bola_Y\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Desplaza_Bola_Y\(2),
	datab => \BALL|Bola_Y\(7),
	datac => \BALL|Bola_Y\(6),
	datad => \BALL|Bola_Y\(8),
	combout => \BALL|Desplaza_Bola_Y[2]~0_combout\);

-- Location: FF_X58_Y68_N23
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

-- Location: FF_X58_Y68_N19
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

-- Location: LCCOMB_X58_Y67_N8
\BALL|Desplaza_Bola_Y[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Desplaza_Bola_Y[2]~1_combout\ = (\BALL|Bola_Y\(3) & ((\BALL|Bola_X\(1)) # ((\BALL|Bola_Y\(2)) # (\BALL|Bola_Y\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Bola_X\(1),
	datab => \BALL|Bola_Y\(3),
	datac => \BALL|Bola_Y\(2),
	datad => \BALL|Bola_Y\(8),
	combout => \BALL|Desplaza_Bola_Y[2]~1_combout\);

-- Location: LCCOMB_X58_Y67_N6
\BALL|Desplaza_Bola_Y[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Desplaza_Bola_Y[2]~2_combout\ = (\BALL|Bola_Y\(5)) # ((\BALL|Bola_Y\(4) & ((\BALL|Desplaza_Bola_Y[2]~1_combout\) # (\BALL|Desplaza_Bola_Y\(2)))) # (!\BALL|Bola_Y\(4) & (\BALL|Desplaza_Bola_Y[2]~1_combout\ & \BALL|Desplaza_Bola_Y\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Bola_Y\(4),
	datab => \BALL|Bola_Y\(5),
	datac => \BALL|Desplaza_Bola_Y[2]~1_combout\,
	datad => \BALL|Desplaza_Bola_Y\(2),
	combout => \BALL|Desplaza_Bola_Y[2]~2_combout\);

-- Location: LCCOMB_X58_Y67_N0
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

-- Location: FF_X58_Y67_N1
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

-- Location: LCCOMB_X58_Y68_N30
\BALL|Bola_Y[9]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Bola_Y[9]~24_combout\ = \BALL|Bola_Y\(9) $ (\BALL|Desplaza_Bola_Y\(2) $ (!\BALL|Bola_Y[8]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Bola_Y\(9),
	datab => \BALL|Desplaza_Bola_Y\(2),
	cin => \BALL|Bola_Y[8]~23\,
	combout => \BALL|Bola_Y[9]~24_combout\);

-- Location: FF_X58_Y68_N31
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

-- Location: LCCOMB_X56_Y70_N6
\VGA|cont_vs[6]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|cont_vs[6]~3_combout\ = (!\VGA|process_0~9_combout\ & ((\VGA|Equal2~2_combout\ & ((\VGA|cont_vs\(6)))) # (!\VGA|Equal2~2_combout\ & (\VGA|Add1~12_combout\))))

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
	combout => \VGA|cont_vs[6]~3_combout\);

-- Location: FF_X56_Y70_N7
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

-- Location: LCCOMB_X57_Y70_N14
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

-- Location: FF_X57_Y70_N15
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

-- Location: LCCOMB_X57_Y69_N18
\BALL|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add2~2_combout\ = (\VGA|pixel_y\(5) & (!\BALL|Add2~1\)) # (!\VGA|pixel_y\(5) & ((\BALL|Add2~1\) # (GND)))
-- \BALL|Add2~3\ = CARRY((!\BALL|Add2~1\) # (!\VGA|pixel_y\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA|pixel_y\(5),
	datad => VCC,
	cin => \BALL|Add2~1\,
	combout => \BALL|Add2~2_combout\,
	cout => \BALL|Add2~3\);

-- Location: FF_X58_Y68_N21
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

-- Location: LCCOMB_X58_Y69_N6
\BALL|LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan2~1_cout\ = CARRY((\BALL|Bola_X\(1) & !\VGA|pixel_y\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Bola_X\(1),
	datab => \VGA|pixel_y\(1),
	datad => VCC,
	cout => \BALL|LessThan2~1_cout\);

-- Location: LCCOMB_X58_Y69_N8
\BALL|LessThan2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan2~3_cout\ = CARRY((\VGA|pixel_y\(2) & ((!\BALL|LessThan2~1_cout\) # (!\BALL|Bola_Y\(2)))) # (!\VGA|pixel_y\(2) & (!\BALL|Bola_Y\(2) & !\BALL|LessThan2~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_y\(2),
	datab => \BALL|Bola_Y\(2),
	datad => VCC,
	cin => \BALL|LessThan2~1_cout\,
	cout => \BALL|LessThan2~3_cout\);

-- Location: LCCOMB_X58_Y69_N10
\BALL|LessThan2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan2~5_cout\ = CARRY((\VGA|pixel_y\(3) & ((\BALL|Bola_Y\(3)) # (!\BALL|LessThan2~3_cout\))) # (!\VGA|pixel_y\(3) & (\BALL|Bola_Y\(3) & !\BALL|LessThan2~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_y\(3),
	datab => \BALL|Bola_Y\(3),
	datad => VCC,
	cin => \BALL|LessThan2~3_cout\,
	cout => \BALL|LessThan2~5_cout\);

-- Location: LCCOMB_X58_Y69_N12
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

-- Location: LCCOMB_X58_Y69_N14
\BALL|LessThan2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan2~9_cout\ = CARRY((\BALL|Bola_Y\(5) & ((!\BALL|LessThan2~7_cout\) # (!\BALL|Add2~2_combout\))) # (!\BALL|Bola_Y\(5) & (!\BALL|Add2~2_combout\ & !\BALL|LessThan2~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Bola_Y\(5),
	datab => \BALL|Add2~2_combout\,
	datad => VCC,
	cin => \BALL|LessThan2~7_cout\,
	cout => \BALL|LessThan2~9_cout\);

-- Location: LCCOMB_X58_Y69_N16
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

-- Location: LCCOMB_X58_Y69_N18
\BALL|LessThan2~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan2~13_cout\ = CARRY((\BALL|Bola_Y\(7) & ((!\BALL|LessThan2~11_cout\) # (!\BALL|Add2~6_combout\))) # (!\BALL|Bola_Y\(7) & (!\BALL|Add2~6_combout\ & !\BALL|LessThan2~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Bola_Y\(7),
	datab => \BALL|Add2~6_combout\,
	datad => VCC,
	cin => \BALL|LessThan2~11_cout\,
	cout => \BALL|LessThan2~13_cout\);

-- Location: LCCOMB_X58_Y69_N20
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

-- Location: LCCOMB_X58_Y69_N22
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

-- Location: LCCOMB_X61_Y69_N4
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

-- Location: LCCOMB_X61_Y69_N6
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

-- Location: LCCOMB_X61_Y69_N8
\BALL|Bola_X[5]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Bola_X[5]~17_combout\ = ((\BALL|Bola_X\(5) $ (\BALL|Desplaza_Bola_X\(2) $ (!\BALL|Bola_X[4]~16\)))) # (GND)
-- \BALL|Bola_X[5]~18\ = CARRY((\BALL|Bola_X\(5) & ((\BALL|Desplaza_Bola_X\(2)) # (!\BALL|Bola_X[4]~16\))) # (!\BALL|Bola_X\(5) & (\BALL|Desplaza_Bola_X\(2) & !\BALL|Bola_X[4]~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Bola_X\(5),
	datab => \BALL|Desplaza_Bola_X\(2),
	datad => VCC,
	cin => \BALL|Bola_X[4]~16\,
	combout => \BALL|Bola_X[5]~17_combout\,
	cout => \BALL|Bola_X[5]~18\);

-- Location: LCCOMB_X61_Y69_N10
\BALL|Bola_X[6]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Bola_X[6]~19_combout\ = (\BALL|Bola_X\(6) & ((\BALL|Desplaza_Bola_X\(2) & (\BALL|Bola_X[5]~18\ & VCC)) # (!\BALL|Desplaza_Bola_X\(2) & (!\BALL|Bola_X[5]~18\)))) # (!\BALL|Bola_X\(6) & ((\BALL|Desplaza_Bola_X\(2) & (!\BALL|Bola_X[5]~18\)) # 
-- (!\BALL|Desplaza_Bola_X\(2) & ((\BALL|Bola_X[5]~18\) # (GND)))))
-- \BALL|Bola_X[6]~20\ = CARRY((\BALL|Bola_X\(6) & (!\BALL|Desplaza_Bola_X\(2) & !\BALL|Bola_X[5]~18\)) # (!\BALL|Bola_X\(6) & ((!\BALL|Bola_X[5]~18\) # (!\BALL|Desplaza_Bola_X\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Bola_X\(6),
	datab => \BALL|Desplaza_Bola_X\(2),
	datad => VCC,
	cin => \BALL|Bola_X[5]~18\,
	combout => \BALL|Bola_X[6]~19_combout\,
	cout => \BALL|Bola_X[6]~20\);

-- Location: LCCOMB_X61_Y69_N12
\BALL|Bola_X[7]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Bola_X[7]~21_combout\ = ((\BALL|Bola_X\(7) $ (\BALL|Desplaza_Bola_X\(2) $ (!\BALL|Bola_X[6]~20\)))) # (GND)
-- \BALL|Bola_X[7]~22\ = CARRY((\BALL|Bola_X\(7) & ((\BALL|Desplaza_Bola_X\(2)) # (!\BALL|Bola_X[6]~20\))) # (!\BALL|Bola_X\(7) & (\BALL|Desplaza_Bola_X\(2) & !\BALL|Bola_X[6]~20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Bola_X\(7),
	datab => \BALL|Desplaza_Bola_X\(2),
	datad => VCC,
	cin => \BALL|Bola_X[6]~20\,
	combout => \BALL|Bola_X[7]~21_combout\,
	cout => \BALL|Bola_X[7]~22\);

-- Location: LCCOMB_X61_Y69_N14
\BALL|Bola_X[8]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Bola_X[8]~23_combout\ = (\BALL|Bola_X\(8) & ((\BALL|Desplaza_Bola_X\(2) & (\BALL|Bola_X[7]~22\ & VCC)) # (!\BALL|Desplaza_Bola_X\(2) & (!\BALL|Bola_X[7]~22\)))) # (!\BALL|Bola_X\(8) & ((\BALL|Desplaza_Bola_X\(2) & (!\BALL|Bola_X[7]~22\)) # 
-- (!\BALL|Desplaza_Bola_X\(2) & ((\BALL|Bola_X[7]~22\) # (GND)))))
-- \BALL|Bola_X[8]~24\ = CARRY((\BALL|Bola_X\(8) & (!\BALL|Desplaza_Bola_X\(2) & !\BALL|Bola_X[7]~22\)) # (!\BALL|Bola_X\(8) & ((!\BALL|Bola_X[7]~22\) # (!\BALL|Desplaza_Bola_X\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Bola_X\(8),
	datab => \BALL|Desplaza_Bola_X\(2),
	datad => VCC,
	cin => \BALL|Bola_X[7]~22\,
	combout => \BALL|Bola_X[8]~23_combout\,
	cout => \BALL|Bola_X[8]~24\);

-- Location: FF_X61_Y69_N15
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

-- Location: FF_X61_Y69_N5
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

-- Location: FF_X61_Y69_N7
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

-- Location: FF_X61_Y69_N11
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

-- Location: LCCOMB_X62_Y69_N20
\BALL|LessThan12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan12~0_combout\ = (((!\BALL|Bola_X\(6)) # (!\BALL|Bola_X\(4))) # (!\BALL|Bola_X\(3))) # (!\BALL|Bola_X\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Bola_X\(5),
	datab => \BALL|Bola_X\(3),
	datac => \BALL|Bola_X\(4),
	datad => \BALL|Bola_X\(6),
	combout => \BALL|LessThan12~0_combout\);

-- Location: LCCOMB_X62_Y69_N18
\BALL|Desplaza_Bola_X[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Desplaza_Bola_X[1]~4_combout\ = (!\BALL|Bola_X\(7) & (!\BALL|Bola_X\(8) & \BALL|LessThan12~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Bola_X\(7),
	datac => \BALL|Bola_X\(8),
	datad => \BALL|LessThan12~0_combout\,
	combout => \BALL|Desplaza_Bola_X[1]~4_combout\);

-- Location: LCCOMB_X62_Y69_N28
\BALL|Desplaza_Bola_X[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Desplaza_Bola_X[2]~5_combout\ = (\BALL|Desplaza_Bola_X[1]~3_combout\ & (\BALL|Desplaza_Bola_X\(2))) # (!\BALL|Desplaza_Bola_X[1]~3_combout\ & (((\BALL|Bola_X\(9) & !\BALL|Desplaza_Bola_X[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Desplaza_Bola_X[1]~3_combout\,
	datab => \BALL|Desplaza_Bola_X\(2),
	datac => \BALL|Bola_X\(9),
	datad => \BALL|Desplaza_Bola_X[1]~4_combout\,
	combout => \BALL|Desplaza_Bola_X[2]~5_combout\);

-- Location: FF_X61_Y69_N13
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

-- Location: LCCOMB_X62_Y69_N22
\BALL|Mover_Bola~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Mover_Bola~0_combout\ = (!\BALL|Bola_X\(5) & (!\BALL|Bola_X\(6) & (!\BALL|Bola_X\(8) & !\BALL|Bola_X\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Bola_X\(5),
	datab => \BALL|Bola_X\(6),
	datac => \BALL|Bola_X\(8),
	datad => \BALL|Bola_X\(7),
	combout => \BALL|Mover_Bola~0_combout\);

-- Location: LCCOMB_X58_Y66_N12
\BALL|Pala_Y_izq[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Pala_Y_izq[0]~10_combout\ = (\BALL|Desplaza_Pala_Y_izq\(0) & (\BALL|Pala_Y_izq\(0) $ (VCC))) # (!\BALL|Desplaza_Pala_Y_izq\(0) & (\BALL|Pala_Y_izq\(0) & VCC))
-- \BALL|Pala_Y_izq[0]~11\ = CARRY((\BALL|Desplaza_Pala_Y_izq\(0) & \BALL|Pala_Y_izq\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Desplaza_Pala_Y_izq\(0),
	datab => \BALL|Pala_Y_izq\(0),
	datad => VCC,
	combout => \BALL|Pala_Y_izq[0]~10_combout\,
	cout => \BALL|Pala_Y_izq[0]~11\);

-- Location: LCCOMB_X59_Y66_N28
\BALL|Pala_Y_izq[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Pala_Y_izq[0]~feeder_combout\ = \BALL|Pala_Y_izq[0]~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BALL|Pala_Y_izq[0]~10_combout\,
	combout => \BALL|Pala_Y_izq[0]~feeder_combout\);

-- Location: FF_X59_Y66_N29
\BALL|Pala_Y_izq[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	d => \BALL|Pala_Y_izq[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BALL|Pala_Y_izq\(0));

-- Location: LCCOMB_X58_Y66_N14
\BALL|Pala_Y_izq[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Pala_Y_izq[1]~12_combout\ = (\BALL|Desplaza_Pala_Y_izq\(1) & ((\BALL|Pala_Y_izq\(1) & (\BALL|Pala_Y_izq[0]~11\ & VCC)) # (!\BALL|Pala_Y_izq\(1) & (!\BALL|Pala_Y_izq[0]~11\)))) # (!\BALL|Desplaza_Pala_Y_izq\(1) & ((\BALL|Pala_Y_izq\(1) & 
-- (!\BALL|Pala_Y_izq[0]~11\)) # (!\BALL|Pala_Y_izq\(1) & ((\BALL|Pala_Y_izq[0]~11\) # (GND)))))
-- \BALL|Pala_Y_izq[1]~13\ = CARRY((\BALL|Desplaza_Pala_Y_izq\(1) & (!\BALL|Pala_Y_izq\(1) & !\BALL|Pala_Y_izq[0]~11\)) # (!\BALL|Desplaza_Pala_Y_izq\(1) & ((!\BALL|Pala_Y_izq[0]~11\) # (!\BALL|Pala_Y_izq\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Desplaza_Pala_Y_izq\(1),
	datab => \BALL|Pala_Y_izq\(1),
	datad => VCC,
	cin => \BALL|Pala_Y_izq[0]~11\,
	combout => \BALL|Pala_Y_izq[1]~12_combout\,
	cout => \BALL|Pala_Y_izq[1]~13\);

-- Location: LCCOMB_X61_Y66_N0
\BALL|Pala_Y_izq[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Pala_Y_izq[1]~feeder_combout\ = \BALL|Pala_Y_izq[1]~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BALL|Pala_Y_izq[1]~12_combout\,
	combout => \BALL|Pala_Y_izq[1]~feeder_combout\);

-- Location: FF_X61_Y66_N1
\BALL|Pala_Y_izq[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	d => \BALL|Pala_Y_izq[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BALL|Pala_Y_izq\(1));

-- Location: LCCOMB_X58_Y66_N16
\BALL|Pala_Y_izq[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Pala_Y_izq[2]~14_combout\ = ((\BALL|Pala_Y_izq\(2) $ (\BALL|Desplaza_Pala_Y_izq\(2) $ (!\BALL|Pala_Y_izq[1]~13\)))) # (GND)
-- \BALL|Pala_Y_izq[2]~15\ = CARRY((\BALL|Pala_Y_izq\(2) & ((\BALL|Desplaza_Pala_Y_izq\(2)) # (!\BALL|Pala_Y_izq[1]~13\))) # (!\BALL|Pala_Y_izq\(2) & (\BALL|Desplaza_Pala_Y_izq\(2) & !\BALL|Pala_Y_izq[1]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Pala_Y_izq\(2),
	datab => \BALL|Desplaza_Pala_Y_izq\(2),
	datad => VCC,
	cin => \BALL|Pala_Y_izq[1]~13\,
	combout => \BALL|Pala_Y_izq[2]~14_combout\,
	cout => \BALL|Pala_Y_izq[2]~15\);

-- Location: LCCOMB_X58_Y66_N18
\BALL|Pala_Y_izq[3]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Pala_Y_izq[3]~16_combout\ = (\BALL|Desplaza_Pala_Y_izq\(2) & ((\BALL|Pala_Y_izq\(3) & (\BALL|Pala_Y_izq[2]~15\ & VCC)) # (!\BALL|Pala_Y_izq\(3) & (!\BALL|Pala_Y_izq[2]~15\)))) # (!\BALL|Desplaza_Pala_Y_izq\(2) & ((\BALL|Pala_Y_izq\(3) & 
-- (!\BALL|Pala_Y_izq[2]~15\)) # (!\BALL|Pala_Y_izq\(3) & ((\BALL|Pala_Y_izq[2]~15\) # (GND)))))
-- \BALL|Pala_Y_izq[3]~17\ = CARRY((\BALL|Desplaza_Pala_Y_izq\(2) & (!\BALL|Pala_Y_izq\(3) & !\BALL|Pala_Y_izq[2]~15\)) # (!\BALL|Desplaza_Pala_Y_izq\(2) & ((!\BALL|Pala_Y_izq[2]~15\) # (!\BALL|Pala_Y_izq\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Desplaza_Pala_Y_izq\(2),
	datab => \BALL|Pala_Y_izq\(3),
	datad => VCC,
	cin => \BALL|Pala_Y_izq[2]~15\,
	combout => \BALL|Pala_Y_izq[3]~16_combout\,
	cout => \BALL|Pala_Y_izq[3]~17\);

-- Location: LCCOMB_X61_Y66_N28
\BALL|Pala_Y_izq[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Pala_Y_izq[3]~feeder_combout\ = \BALL|Pala_Y_izq[3]~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BALL|Pala_Y_izq[3]~16_combout\,
	combout => \BALL|Pala_Y_izq[3]~feeder_combout\);

-- Location: FF_X61_Y66_N29
\BALL|Pala_Y_izq[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	d => \BALL|Pala_Y_izq[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BALL|Pala_Y_izq\(3));

-- Location: FF_X61_Y66_N3
\BALL|Pala_Y_izq[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	asdata => \BALL|Pala_Y_izq[2]~14_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BALL|Pala_Y_izq\(2));

-- Location: LCCOMB_X61_Y66_N2
\BALL|Mover_Pala_izq~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Mover_Pala_izq~0_combout\ = (\BALL|Pala_Y_izq\(4) & (\BALL|Pala_Y_izq\(3) & (\BALL|Pala_Y_izq\(2) & \BALL|Pala_Y_izq\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Pala_Y_izq\(4),
	datab => \BALL|Pala_Y_izq\(3),
	datac => \BALL|Pala_Y_izq\(2),
	datad => \BALL|Pala_Y_izq\(1),
	combout => \BALL|Mover_Pala_izq~0_combout\);

-- Location: LCCOMB_X58_Y66_N20
\BALL|Pala_Y_izq[4]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Pala_Y_izq[4]~18_combout\ = ((\BALL|Desplaza_Pala_Y_izq\(2) $ (\BALL|Pala_Y_izq\(4) $ (!\BALL|Pala_Y_izq[3]~17\)))) # (GND)
-- \BALL|Pala_Y_izq[4]~19\ = CARRY((\BALL|Desplaza_Pala_Y_izq\(2) & ((\BALL|Pala_Y_izq\(4)) # (!\BALL|Pala_Y_izq[3]~17\))) # (!\BALL|Desplaza_Pala_Y_izq\(2) & (\BALL|Pala_Y_izq\(4) & !\BALL|Pala_Y_izq[3]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Desplaza_Pala_Y_izq\(2),
	datab => \BALL|Pala_Y_izq\(4),
	datad => VCC,
	cin => \BALL|Pala_Y_izq[3]~17\,
	combout => \BALL|Pala_Y_izq[4]~18_combout\,
	cout => \BALL|Pala_Y_izq[4]~19\);

-- Location: LCCOMB_X61_Y66_N30
\BALL|Pala_Y_izq[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Pala_Y_izq[4]~feeder_combout\ = \BALL|Pala_Y_izq[4]~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BALL|Pala_Y_izq[4]~18_combout\,
	combout => \BALL|Pala_Y_izq[4]~feeder_combout\);

-- Location: FF_X61_Y66_N31
\BALL|Pala_Y_izq[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	d => \BALL|Pala_Y_izq[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BALL|Pala_Y_izq\(4));

-- Location: LCCOMB_X58_Y66_N22
\BALL|Pala_Y_izq[5]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Pala_Y_izq[5]~20_combout\ = (\BALL|Pala_Y_izq\(5) & ((\BALL|Desplaza_Pala_Y_izq\(2) & (\BALL|Pala_Y_izq[4]~19\ & VCC)) # (!\BALL|Desplaza_Pala_Y_izq\(2) & (!\BALL|Pala_Y_izq[4]~19\)))) # (!\BALL|Pala_Y_izq\(5) & ((\BALL|Desplaza_Pala_Y_izq\(2) & 
-- (!\BALL|Pala_Y_izq[4]~19\)) # (!\BALL|Desplaza_Pala_Y_izq\(2) & ((\BALL|Pala_Y_izq[4]~19\) # (GND)))))
-- \BALL|Pala_Y_izq[5]~21\ = CARRY((\BALL|Pala_Y_izq\(5) & (!\BALL|Desplaza_Pala_Y_izq\(2) & !\BALL|Pala_Y_izq[4]~19\)) # (!\BALL|Pala_Y_izq\(5) & ((!\BALL|Pala_Y_izq[4]~19\) # (!\BALL|Desplaza_Pala_Y_izq\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Pala_Y_izq\(5),
	datab => \BALL|Desplaza_Pala_Y_izq\(2),
	datad => VCC,
	cin => \BALL|Pala_Y_izq[4]~19\,
	combout => \BALL|Pala_Y_izq[5]~20_combout\,
	cout => \BALL|Pala_Y_izq[5]~21\);

-- Location: LCCOMB_X58_Y66_N24
\BALL|Pala_Y_izq[6]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Pala_Y_izq[6]~22_combout\ = ((\BALL|Pala_Y_izq\(6) $ (\BALL|Desplaza_Pala_Y_izq\(2) $ (!\BALL|Pala_Y_izq[5]~21\)))) # (GND)
-- \BALL|Pala_Y_izq[6]~23\ = CARRY((\BALL|Pala_Y_izq\(6) & ((\BALL|Desplaza_Pala_Y_izq\(2)) # (!\BALL|Pala_Y_izq[5]~21\))) # (!\BALL|Pala_Y_izq\(6) & (\BALL|Desplaza_Pala_Y_izq\(2) & !\BALL|Pala_Y_izq[5]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Pala_Y_izq\(6),
	datab => \BALL|Desplaza_Pala_Y_izq\(2),
	datad => VCC,
	cin => \BALL|Pala_Y_izq[5]~21\,
	combout => \BALL|Pala_Y_izq[6]~22_combout\,
	cout => \BALL|Pala_Y_izq[6]~23\);

-- Location: FF_X61_Y66_N25
\BALL|Pala_Y_izq[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	asdata => \BALL|Pala_Y_izq[6]~22_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BALL|Pala_Y_izq\(6));

-- Location: LCCOMB_X58_Y66_N26
\BALL|Pala_Y_izq[7]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Pala_Y_izq[7]~24_combout\ = (\BALL|Pala_Y_izq\(7) & ((\BALL|Desplaza_Pala_Y_izq\(2) & (\BALL|Pala_Y_izq[6]~23\ & VCC)) # (!\BALL|Desplaza_Pala_Y_izq\(2) & (!\BALL|Pala_Y_izq[6]~23\)))) # (!\BALL|Pala_Y_izq\(7) & ((\BALL|Desplaza_Pala_Y_izq\(2) & 
-- (!\BALL|Pala_Y_izq[6]~23\)) # (!\BALL|Desplaza_Pala_Y_izq\(2) & ((\BALL|Pala_Y_izq[6]~23\) # (GND)))))
-- \BALL|Pala_Y_izq[7]~25\ = CARRY((\BALL|Pala_Y_izq\(7) & (!\BALL|Desplaza_Pala_Y_izq\(2) & !\BALL|Pala_Y_izq[6]~23\)) # (!\BALL|Pala_Y_izq\(7) & ((!\BALL|Pala_Y_izq[6]~23\) # (!\BALL|Desplaza_Pala_Y_izq\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Pala_Y_izq\(7),
	datab => \BALL|Desplaza_Pala_Y_izq\(2),
	datad => VCC,
	cin => \BALL|Pala_Y_izq[6]~23\,
	combout => \BALL|Pala_Y_izq[7]~24_combout\,
	cout => \BALL|Pala_Y_izq[7]~25\);

-- Location: FF_X58_Y66_N27
\BALL|Pala_Y_izq[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	d => \BALL|Pala_Y_izq[7]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BALL|Pala_Y_izq\(7));

-- Location: FF_X61_Y66_N27
\BALL|Pala_Y_izq[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	asdata => \BALL|Pala_Y_izq[5]~20_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BALL|Pala_Y_izq\(5));

-- Location: LCCOMB_X58_Y66_N28
\BALL|Pala_Y_izq[8]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Pala_Y_izq[8]~26_combout\ = ((\BALL|Desplaza_Pala_Y_izq\(2) $ (\BALL|Pala_Y_izq\(8) $ (!\BALL|Pala_Y_izq[7]~25\)))) # (GND)
-- \BALL|Pala_Y_izq[8]~27\ = CARRY((\BALL|Desplaza_Pala_Y_izq\(2) & ((\BALL|Pala_Y_izq\(8)) # (!\BALL|Pala_Y_izq[7]~25\))) # (!\BALL|Desplaza_Pala_Y_izq\(2) & (\BALL|Pala_Y_izq\(8) & !\BALL|Pala_Y_izq[7]~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Desplaza_Pala_Y_izq\(2),
	datab => \BALL|Pala_Y_izq\(8),
	datad => VCC,
	cin => \BALL|Pala_Y_izq[7]~25\,
	combout => \BALL|Pala_Y_izq[8]~26_combout\,
	cout => \BALL|Pala_Y_izq[8]~27\);

-- Location: FF_X58_Y66_N29
\BALL|Pala_Y_izq[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	d => \BALL|Pala_Y_izq[8]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BALL|Pala_Y_izq\(8));

-- Location: LCCOMB_X61_Y66_N26
\BALL|LessThan18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan18~0_combout\ = (!\BALL|Pala_Y_izq\(9) & (!\BALL|Pala_Y_izq\(7) & (!\BALL|Pala_Y_izq\(5) & !\BALL|Pala_Y_izq\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Pala_Y_izq\(9),
	datab => \BALL|Pala_Y_izq\(7),
	datac => \BALL|Pala_Y_izq\(5),
	datad => \BALL|Pala_Y_izq\(8),
	combout => \BALL|LessThan18~0_combout\);

-- Location: LCCOMB_X61_Y66_N24
\BALL|Mover_Pala_izq~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Mover_Pala_izq~1_combout\ = (!\UP_IZQ~input_o\ & ((\BALL|Mover_Pala_izq~0_combout\) # ((\BALL|Pala_Y_izq\(6)) # (!\BALL|LessThan18~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UP_IZQ~input_o\,
	datab => \BALL|Mover_Pala_izq~0_combout\,
	datac => \BALL|Pala_Y_izq\(6),
	datad => \BALL|LessThan18~0_combout\,
	combout => \BALL|Mover_Pala_izq~1_combout\);

-- Location: LCCOMB_X58_Y66_N4
\BALL|Desplaza_Pala_Y_izq[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Desplaza_Pala_Y_izq[2]~feeder_combout\ = \BALL|Mover_Pala_izq~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BALL|Mover_Pala_izq~1_combout\,
	combout => \BALL|Desplaza_Pala_Y_izq[2]~feeder_combout\);

-- Location: FF_X58_Y66_N5
\BALL|Desplaza_Pala_Y_izq[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	d => \BALL|Desplaza_Pala_Y_izq[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BALL|Desplaza_Pala_Y_izq\(2));

-- Location: LCCOMB_X58_Y66_N30
\BALL|Pala_Y_izq[9]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Pala_Y_izq[9]~28_combout\ = \BALL|Pala_Y_izq\(9) $ (\BALL|Desplaza_Pala_Y_izq\(2) $ (\BALL|Pala_Y_izq[8]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Pala_Y_izq\(9),
	datab => \BALL|Desplaza_Pala_Y_izq\(2),
	cin => \BALL|Pala_Y_izq[8]~27\,
	combout => \BALL|Pala_Y_izq[9]~28_combout\);

-- Location: FF_X58_Y66_N31
\BALL|Pala_Y_izq[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	d => \BALL|Pala_Y_izq[9]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BALL|Pala_Y_izq\(9));

-- Location: LCCOMB_X56_Y66_N18
\BALL|Add5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add5~8_combout\ = (\BALL|Pala_Y_izq\(6) & ((GND) # (!\BALL|Add5~7\))) # (!\BALL|Pala_Y_izq\(6) & (\BALL|Add5~7\ $ (GND)))
-- \BALL|Add5~9\ = CARRY((\BALL|Pala_Y_izq\(6)) # (!\BALL|Add5~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Pala_Y_izq\(6),
	datad => VCC,
	cin => \BALL|Add5~7\,
	combout => \BALL|Add5~8_combout\,
	cout => \BALL|Add5~9\);

-- Location: LCCOMB_X56_Y66_N20
\BALL|Add5~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add5~10_combout\ = (\BALL|Pala_Y_izq\(7) & (\BALL|Add5~9\ & VCC)) # (!\BALL|Pala_Y_izq\(7) & (!\BALL|Add5~9\))
-- \BALL|Add5~11\ = CARRY((!\BALL|Pala_Y_izq\(7) & !\BALL|Add5~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Pala_Y_izq\(7),
	datad => VCC,
	cin => \BALL|Add5~9\,
	combout => \BALL|Add5~10_combout\,
	cout => \BALL|Add5~11\);

-- Location: LCCOMB_X56_Y66_N22
\BALL|Add5~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add5~12_combout\ = (\BALL|Pala_Y_izq\(8) & ((GND) # (!\BALL|Add5~11\))) # (!\BALL|Pala_Y_izq\(8) & (\BALL|Add5~11\ $ (GND)))
-- \BALL|Add5~13\ = CARRY((\BALL|Pala_Y_izq\(8)) # (!\BALL|Add5~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BALL|Pala_Y_izq\(8),
	datad => VCC,
	cin => \BALL|Add5~11\,
	combout => \BALL|Add5~12_combout\,
	cout => \BALL|Add5~13\);

-- Location: LCCOMB_X56_Y66_N24
\BALL|Add5~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add5~14_combout\ = \BALL|Add5~13\ $ (!\BALL|Pala_Y_izq\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \BALL|Pala_Y_izq\(9),
	cin => \BALL|Add5~13\,
	combout => \BALL|Add5~14_combout\);

-- Location: LCCOMB_X58_Y68_N0
\BALL|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add3~0_combout\ = \BALL|Bola_Y\(3) $ (VCC)
-- \BALL|Add3~1\ = CARRY(\BALL|Bola_Y\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BALL|Bola_Y\(3),
	datad => VCC,
	combout => \BALL|Add3~0_combout\,
	cout => \BALL|Add3~1\);

-- Location: LCCOMB_X58_Y68_N2
\BALL|Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add3~2_combout\ = (\BALL|Bola_Y\(4) & (!\BALL|Add3~1\)) # (!\BALL|Bola_Y\(4) & ((\BALL|Add3~1\) # (GND)))
-- \BALL|Add3~3\ = CARRY((!\BALL|Add3~1\) # (!\BALL|Bola_Y\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BALL|Bola_Y\(4),
	datad => VCC,
	cin => \BALL|Add3~1\,
	combout => \BALL|Add3~2_combout\,
	cout => \BALL|Add3~3\);

-- Location: LCCOMB_X58_Y68_N4
\BALL|Add3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add3~4_combout\ = (\BALL|Bola_Y\(5) & (\BALL|Add3~3\ $ (GND))) # (!\BALL|Bola_Y\(5) & (!\BALL|Add3~3\ & VCC))
-- \BALL|Add3~5\ = CARRY((\BALL|Bola_Y\(5) & !\BALL|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Bola_Y\(5),
	datad => VCC,
	cin => \BALL|Add3~3\,
	combout => \BALL|Add3~4_combout\,
	cout => \BALL|Add3~5\);

-- Location: LCCOMB_X58_Y68_N6
\BALL|Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add3~6_combout\ = (\BALL|Bola_Y\(6) & (!\BALL|Add3~5\)) # (!\BALL|Bola_Y\(6) & ((\BALL|Add3~5\) # (GND)))
-- \BALL|Add3~7\ = CARRY((!\BALL|Add3~5\) # (!\BALL|Bola_Y\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BALL|Bola_Y\(6),
	datad => VCC,
	cin => \BALL|Add3~5\,
	combout => \BALL|Add3~6_combout\,
	cout => \BALL|Add3~7\);

-- Location: LCCOMB_X58_Y68_N10
\BALL|Add3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add3~10_combout\ = (\BALL|Bola_Y\(8) & (!\BALL|Add3~9\)) # (!\BALL|Bola_Y\(8) & ((\BALL|Add3~9\) # (GND)))
-- \BALL|Add3~11\ = CARRY((!\BALL|Add3~9\) # (!\BALL|Bola_Y\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BALL|Bola_Y\(8),
	datad => VCC,
	cin => \BALL|Add3~9\,
	combout => \BALL|Add3~10_combout\,
	cout => \BALL|Add3~11\);

-- Location: LCCOMB_X58_Y68_N12
\BALL|Add3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add3~12_combout\ = \BALL|Bola_Y\(9) $ (!\BALL|Add3~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Bola_Y\(9),
	cin => \BALL|Add3~11\,
	combout => \BALL|Add3~12_combout\);

-- Location: LCCOMB_X57_Y66_N12
\BALL|LessThan6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan6~1_cout\ = CARRY(\BALL|Pala_Y_izq\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Pala_Y_izq\(0),
	datad => VCC,
	cout => \BALL|LessThan6~1_cout\);

-- Location: LCCOMB_X57_Y66_N14
\BALL|LessThan6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan6~3_cout\ = CARRY((\BALL|Pala_Y_izq\(1) & ((\BALL|Bola_X\(1)) # (!\BALL|LessThan6~1_cout\))) # (!\BALL|Pala_Y_izq\(1) & (\BALL|Bola_X\(1) & !\BALL|LessThan6~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Pala_Y_izq\(1),
	datab => \BALL|Bola_X\(1),
	datad => VCC,
	cin => \BALL|LessThan6~1_cout\,
	cout => \BALL|LessThan6~3_cout\);

-- Location: LCCOMB_X57_Y66_N16
\BALL|LessThan6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan6~5_cout\ = CARRY((\BALL|Add5~0_combout\ & ((!\BALL|LessThan6~3_cout\) # (!\BALL|Bola_Y\(2)))) # (!\BALL|Add5~0_combout\ & (!\BALL|Bola_Y\(2) & !\BALL|LessThan6~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Add5~0_combout\,
	datab => \BALL|Bola_Y\(2),
	datad => VCC,
	cin => \BALL|LessThan6~3_cout\,
	cout => \BALL|LessThan6~5_cout\);

-- Location: LCCOMB_X57_Y66_N18
\BALL|LessThan6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan6~7_cout\ = CARRY((\BALL|Add5~2_combout\ & (\BALL|Add3~0_combout\ & !\BALL|LessThan6~5_cout\)) # (!\BALL|Add5~2_combout\ & ((\BALL|Add3~0_combout\) # (!\BALL|LessThan6~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Add5~2_combout\,
	datab => \BALL|Add3~0_combout\,
	datad => VCC,
	cin => \BALL|LessThan6~5_cout\,
	cout => \BALL|LessThan6~7_cout\);

-- Location: LCCOMB_X57_Y66_N20
\BALL|LessThan6~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan6~9_cout\ = CARRY((\BALL|Add5~4_combout\ & ((!\BALL|LessThan6~7_cout\) # (!\BALL|Add3~2_combout\))) # (!\BALL|Add5~4_combout\ & (!\BALL|Add3~2_combout\ & !\BALL|LessThan6~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Add5~4_combout\,
	datab => \BALL|Add3~2_combout\,
	datad => VCC,
	cin => \BALL|LessThan6~7_cout\,
	cout => \BALL|LessThan6~9_cout\);

-- Location: LCCOMB_X57_Y66_N22
\BALL|LessThan6~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan6~11_cout\ = CARRY((\BALL|Add5~6_combout\ & (\BALL|Add3~4_combout\ & !\BALL|LessThan6~9_cout\)) # (!\BALL|Add5~6_combout\ & ((\BALL|Add3~4_combout\) # (!\BALL|LessThan6~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Add5~6_combout\,
	datab => \BALL|Add3~4_combout\,
	datad => VCC,
	cin => \BALL|LessThan6~9_cout\,
	cout => \BALL|LessThan6~11_cout\);

-- Location: LCCOMB_X57_Y66_N24
\BALL|LessThan6~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan6~13_cout\ = CARRY((\BALL|Add3~6_combout\ & (\BALL|Add5~8_combout\ & !\BALL|LessThan6~11_cout\)) # (!\BALL|Add3~6_combout\ & ((\BALL|Add5~8_combout\) # (!\BALL|LessThan6~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Add3~6_combout\,
	datab => \BALL|Add5~8_combout\,
	datad => VCC,
	cin => \BALL|LessThan6~11_cout\,
	cout => \BALL|LessThan6~13_cout\);

-- Location: LCCOMB_X57_Y66_N26
\BALL|LessThan6~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan6~15_cout\ = CARRY((\BALL|Add3~8_combout\ & ((!\BALL|LessThan6~13_cout\) # (!\BALL|Add5~10_combout\))) # (!\BALL|Add3~8_combout\ & (!\BALL|Add5~10_combout\ & !\BALL|LessThan6~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Add3~8_combout\,
	datab => \BALL|Add5~10_combout\,
	datad => VCC,
	cin => \BALL|LessThan6~13_cout\,
	cout => \BALL|LessThan6~15_cout\);

-- Location: LCCOMB_X57_Y66_N28
\BALL|LessThan6~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan6~17_cout\ = CARRY((\BALL|Add3~10_combout\ & (\BALL|Add5~12_combout\ & !\BALL|LessThan6~15_cout\)) # (!\BALL|Add3~10_combout\ & ((\BALL|Add5~12_combout\) # (!\BALL|LessThan6~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Add3~10_combout\,
	datab => \BALL|Add5~12_combout\,
	datad => VCC,
	cin => \BALL|LessThan6~15_cout\,
	cout => \BALL|LessThan6~17_cout\);

-- Location: LCCOMB_X57_Y66_N30
\BALL|LessThan6~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan6~18_combout\ = (\BALL|Add5~14_combout\ & ((\BALL|LessThan6~17_cout\) # (!\BALL|Add3~12_combout\))) # (!\BALL|Add5~14_combout\ & (\BALL|LessThan6~17_cout\ & !\BALL|Add3~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BALL|Add5~14_combout\,
	datad => \BALL|Add3~12_combout\,
	cin => \BALL|LessThan6~17_cout\,
	combout => \BALL|LessThan6~18_combout\);

-- Location: LCCOMB_X62_Y70_N26
\BALL|Desplaza_Bola_X[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Desplaza_Bola_X[2]~6_combout\ = ((\BALL|Bola_X\(9)) # (\BALL|LessThan6~18_combout\)) # (!\BALL|Mover_Bola~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BALL|Mover_Bola~0_combout\,
	datac => \BALL|Bola_X\(9),
	datad => \BALL|LessThan6~18_combout\,
	combout => \BALL|Desplaza_Bola_X[2]~6_combout\);

-- Location: FF_X61_Y69_N9
\BALL|Bola_X[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	d => \BALL|Bola_X[5]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BALL|Bola_X\(5));

-- Location: LCCOMB_X61_Y69_N18
\BALL|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add1~0_combout\ = \BALL|Bola_X\(3) $ (VCC)
-- \BALL|Add1~1\ = CARRY(\BALL|Bola_X\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BALL|Bola_X\(3),
	datad => VCC,
	combout => \BALL|Add1~0_combout\,
	cout => \BALL|Add1~1\);

-- Location: LCCOMB_X61_Y69_N20
\BALL|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add1~2_combout\ = (\BALL|Bola_X\(4) & (!\BALL|Add1~1\)) # (!\BALL|Bola_X\(4) & ((\BALL|Add1~1\) # (GND)))
-- \BALL|Add1~3\ = CARRY((!\BALL|Add1~1\) # (!\BALL|Bola_X\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Bola_X\(4),
	datad => VCC,
	cin => \BALL|Add1~1\,
	combout => \BALL|Add1~2_combout\,
	cout => \BALL|Add1~3\);

-- Location: LCCOMB_X61_Y69_N22
\BALL|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add1~4_combout\ = (\BALL|Bola_X\(5) & (\BALL|Add1~3\ $ (GND))) # (!\BALL|Bola_X\(5) & (!\BALL|Add1~3\ & VCC))
-- \BALL|Add1~5\ = CARRY((\BALL|Bola_X\(5) & !\BALL|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BALL|Bola_X\(5),
	datad => VCC,
	cin => \BALL|Add1~3\,
	combout => \BALL|Add1~4_combout\,
	cout => \BALL|Add1~5\);

-- Location: LCCOMB_X61_Y69_N24
\BALL|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add1~6_combout\ = (\BALL|Bola_X\(6) & (!\BALL|Add1~5\)) # (!\BALL|Bola_X\(6) & ((\BALL|Add1~5\) # (GND)))
-- \BALL|Add1~7\ = CARRY((!\BALL|Add1~5\) # (!\BALL|Bola_X\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Bola_X\(6),
	datad => VCC,
	cin => \BALL|Add1~5\,
	combout => \BALL|Add1~6_combout\,
	cout => \BALL|Add1~7\);

-- Location: LCCOMB_X60_Y69_N30
\BALL|Mover_Bola~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Mover_Bola~1_combout\ = (\BALL|Add1~2_combout\) # ((\BALL|Add1~0_combout\ & ((\BALL|Bola_X\(2)) # (\BALL|Bola_X\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Bola_X\(2),
	datab => \BALL|Bola_X\(1),
	datac => \BALL|Add1~2_combout\,
	datad => \BALL|Add1~0_combout\,
	combout => \BALL|Mover_Bola~1_combout\);

-- Location: LCCOMB_X61_Y69_N28
\BALL|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add1~10_combout\ = (\BALL|Bola_X\(8) & (!\BALL|Add1~9\)) # (!\BALL|Bola_X\(8) & ((\BALL|Add1~9\) # (GND)))
-- \BALL|Add1~11\ = CARRY((!\BALL|Add1~9\) # (!\BALL|Bola_X\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BALL|Bola_X\(8),
	datad => VCC,
	cin => \BALL|Add1~9\,
	combout => \BALL|Add1~10_combout\,
	cout => \BALL|Add1~11\);

-- Location: LCCOMB_X60_Y69_N8
\BALL|Desplaza_Bola_X[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Desplaza_Bola_X[2]~7_combout\ = (\BALL|Add1~10_combout\) # ((\BALL|Add1~4_combout\ & (\BALL|Add1~6_combout\ & \BALL|Mover_Bola~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Add1~4_combout\,
	datab => \BALL|Add1~6_combout\,
	datac => \BALL|Mover_Bola~1_combout\,
	datad => \BALL|Add1~10_combout\,
	combout => \BALL|Desplaza_Bola_X[2]~7_combout\);

-- Location: LCCOMB_X60_Y69_N2
\BALL|Desplaza_Bola_X[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Desplaza_Bola_X[2]~8_combout\ = (\BALL|Add1~12_combout\ & ((\BALL|Add1~8_combout\) # (\BALL|Desplaza_Bola_X[2]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Add1~8_combout\,
	datac => \BALL|Desplaza_Bola_X[2]~7_combout\,
	datad => \BALL|Add1~12_combout\,
	combout => \BALL|Desplaza_Bola_X[2]~8_combout\);

-- Location: LCCOMB_X61_Y70_N18
\BALL|Add8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add8~2_combout\ = (\BALL|Pala_Y_der\(3) & (!\BALL|Add8~1\)) # (!\BALL|Pala_Y_der\(3) & ((\BALL|Add8~1\) # (GND)))
-- \BALL|Add8~3\ = CARRY((!\BALL|Add8~1\) # (!\BALL|Pala_Y_der\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Pala_Y_der\(3),
	datad => VCC,
	cin => \BALL|Add8~1\,
	combout => \BALL|Add8~2_combout\,
	cout => \BALL|Add8~3\);

-- Location: LCCOMB_X61_Y70_N20
\BALL|Add8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add8~4_combout\ = (\BALL|Pala_Y_der\(4) & (\BALL|Add8~3\ $ (GND))) # (!\BALL|Pala_Y_der\(4) & (!\BALL|Add8~3\ & VCC))
-- \BALL|Add8~5\ = CARRY((\BALL|Pala_Y_der\(4) & !\BALL|Add8~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Pala_Y_der\(4),
	datad => VCC,
	cin => \BALL|Add8~3\,
	combout => \BALL|Add8~4_combout\,
	cout => \BALL|Add8~5\);

-- Location: LCCOMB_X61_Y70_N24
\BALL|Add8~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add8~8_combout\ = (\BALL|Pala_Y_der\(6) & ((GND) # (!\BALL|Add8~7\))) # (!\BALL|Pala_Y_der\(6) & (\BALL|Add8~7\ $ (GND)))
-- \BALL|Add8~9\ = CARRY((\BALL|Pala_Y_der\(6)) # (!\BALL|Add8~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BALL|Pala_Y_der\(6),
	datad => VCC,
	cin => \BALL|Add8~7\,
	combout => \BALL|Add8~8_combout\,
	cout => \BALL|Add8~9\);

-- Location: LCCOMB_X61_Y70_N4
\BALL|Add9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add9~4_combout\ = (\BALL|Add8~6_combout\ & (\BALL|Add9~3\ $ (GND))) # (!\BALL|Add8~6_combout\ & (!\BALL|Add9~3\ & VCC))
-- \BALL|Add9~5\ = CARRY((\BALL|Add8~6_combout\ & !\BALL|Add9~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Add8~6_combout\,
	datad => VCC,
	cin => \BALL|Add9~3\,
	combout => \BALL|Add9~4_combout\,
	cout => \BALL|Add9~5\);

-- Location: LCCOMB_X61_Y70_N6
\BALL|Add9~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add9~6_combout\ = (\BALL|Add8~8_combout\ & (!\BALL|Add9~5\)) # (!\BALL|Add8~8_combout\ & ((\BALL|Add9~5\) # (GND)))
-- \BALL|Add9~7\ = CARRY((!\BALL|Add9~5\) # (!\BALL|Add8~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BALL|Add8~8_combout\,
	datad => VCC,
	cin => \BALL|Add9~5\,
	combout => \BALL|Add9~6_combout\,
	cout => \BALL|Add9~7\);

-- Location: LCCOMB_X61_Y70_N12
\BALL|Add9~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add9~12_combout\ = \BALL|Add8~14_combout\ $ (!\BALL|Add9~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Add8~14_combout\,
	cin => \BALL|Add9~11\,
	combout => \BALL|Add9~12_combout\);

-- Location: LCCOMB_X62_Y70_N4
\BALL|LessThan9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan9~1_cout\ = CARRY(\BALL|Pala_Y_der\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Pala_Y_der\(0),
	datad => VCC,
	cout => \BALL|LessThan9~1_cout\);

-- Location: LCCOMB_X62_Y70_N6
\BALL|LessThan9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan9~3_cout\ = CARRY((\BALL|Pala_Y_der\(1) & ((\BALL|Bola_X\(1)) # (!\BALL|LessThan9~1_cout\))) # (!\BALL|Pala_Y_der\(1) & (\BALL|Bola_X\(1) & !\BALL|LessThan9~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Pala_Y_der\(1),
	datab => \BALL|Bola_X\(1),
	datad => VCC,
	cin => \BALL|LessThan9~1_cout\,
	cout => \BALL|LessThan9~3_cout\);

-- Location: LCCOMB_X62_Y70_N8
\BALL|LessThan9~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan9~5_cout\ = CARRY((\BALL|Add8~0_combout\ & ((!\BALL|LessThan9~3_cout\) # (!\BALL|Bola_Y\(2)))) # (!\BALL|Add8~0_combout\ & (!\BALL|Bola_Y\(2) & !\BALL|LessThan9~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Add8~0_combout\,
	datab => \BALL|Bola_Y\(2),
	datad => VCC,
	cin => \BALL|LessThan9~3_cout\,
	cout => \BALL|LessThan9~5_cout\);

-- Location: LCCOMB_X62_Y70_N10
\BALL|LessThan9~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan9~7_cout\ = CARRY((\BALL|Add9~0_combout\ & (\BALL|Bola_Y\(3) & !\BALL|LessThan9~5_cout\)) # (!\BALL|Add9~0_combout\ & ((\BALL|Bola_Y\(3)) # (!\BALL|LessThan9~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Add9~0_combout\,
	datab => \BALL|Bola_Y\(3),
	datad => VCC,
	cin => \BALL|LessThan9~5_cout\,
	cout => \BALL|LessThan9~7_cout\);

-- Location: LCCOMB_X62_Y70_N12
\BALL|LessThan9~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan9~9_cout\ = CARRY((\BALL|Add9~2_combout\ & ((!\BALL|LessThan9~7_cout\) # (!\BALL|Bola_Y\(4)))) # (!\BALL|Add9~2_combout\ & (!\BALL|Bola_Y\(4) & !\BALL|LessThan9~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Add9~2_combout\,
	datab => \BALL|Bola_Y\(4),
	datad => VCC,
	cin => \BALL|LessThan9~7_cout\,
	cout => \BALL|LessThan9~9_cout\);

-- Location: LCCOMB_X62_Y70_N14
\BALL|LessThan9~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan9~11_cout\ = CARRY((\BALL|Bola_Y\(5) & ((!\BALL|LessThan9~9_cout\) # (!\BALL|Add9~4_combout\))) # (!\BALL|Bola_Y\(5) & (!\BALL|Add9~4_combout\ & !\BALL|LessThan9~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Bola_Y\(5),
	datab => \BALL|Add9~4_combout\,
	datad => VCC,
	cin => \BALL|LessThan9~9_cout\,
	cout => \BALL|LessThan9~11_cout\);

-- Location: LCCOMB_X62_Y70_N16
\BALL|LessThan9~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan9~13_cout\ = CARRY((\BALL|Bola_Y\(6) & (\BALL|Add9~6_combout\ & !\BALL|LessThan9~11_cout\)) # (!\BALL|Bola_Y\(6) & ((\BALL|Add9~6_combout\) # (!\BALL|LessThan9~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Bola_Y\(6),
	datab => \BALL|Add9~6_combout\,
	datad => VCC,
	cin => \BALL|LessThan9~11_cout\,
	cout => \BALL|LessThan9~13_cout\);

-- Location: LCCOMB_X62_Y70_N18
\BALL|LessThan9~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan9~15_cout\ = CARRY((\BALL|Add9~8_combout\ & (\BALL|Bola_Y\(7) & !\BALL|LessThan9~13_cout\)) # (!\BALL|Add9~8_combout\ & ((\BALL|Bola_Y\(7)) # (!\BALL|LessThan9~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Add9~8_combout\,
	datab => \BALL|Bola_Y\(7),
	datad => VCC,
	cin => \BALL|LessThan9~13_cout\,
	cout => \BALL|LessThan9~15_cout\);

-- Location: LCCOMB_X62_Y70_N20
\BALL|LessThan9~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan9~17_cout\ = CARRY((\BALL|Add9~10_combout\ & ((!\BALL|LessThan9~15_cout\) # (!\BALL|Bola_Y\(8)))) # (!\BALL|Add9~10_combout\ & (!\BALL|Bola_Y\(8) & !\BALL|LessThan9~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Add9~10_combout\,
	datab => \BALL|Bola_Y\(8),
	datad => VCC,
	cin => \BALL|LessThan9~15_cout\,
	cout => \BALL|LessThan9~17_cout\);

-- Location: LCCOMB_X62_Y70_N22
\BALL|LessThan9~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan9~18_combout\ = (\BALL|Bola_Y\(9) & (\BALL|LessThan9~17_cout\ & \BALL|Add9~12_combout\)) # (!\BALL|Bola_Y\(9) & ((\BALL|LessThan9~17_cout\) # (\BALL|Add9~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Bola_Y\(9),
	datad => \BALL|Add9~12_combout\,
	cin => \BALL|LessThan9~17_cout\,
	combout => \BALL|LessThan9~18_combout\);

-- Location: LCCOMB_X58_Y70_N18
\BALL|Add10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add10~0_combout\ = \BALL|Add21~4_combout\ $ (VCC)
-- \BALL|Add10~1\ = CARRY(\BALL|Add21~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BALL|Add21~4_combout\,
	datad => VCC,
	combout => \BALL|Add10~0_combout\,
	cout => \BALL|Add10~1\);

-- Location: LCCOMB_X58_Y70_N20
\BALL|Add10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add10~2_combout\ = (\BALL|Add21~6_combout\ & (!\BALL|Add10~1\)) # (!\BALL|Add21~6_combout\ & ((\BALL|Add10~1\) # (GND)))
-- \BALL|Add10~3\ = CARRY((!\BALL|Add10~1\) # (!\BALL|Add21~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BALL|Add21~6_combout\,
	datad => VCC,
	cin => \BALL|Add10~1\,
	combout => \BALL|Add10~2_combout\,
	cout => \BALL|Add10~3\);

-- Location: LCCOMB_X58_Y70_N24
\BALL|Add10~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add10~6_combout\ = (\BALL|Add21~10_combout\ & (!\BALL|Add10~5\)) # (!\BALL|Add21~10_combout\ & ((\BALL|Add10~5\) # (GND)))
-- \BALL|Add10~7\ = CARRY((!\BALL|Add10~5\) # (!\BALL|Add21~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BALL|Add21~10_combout\,
	datad => VCC,
	cin => \BALL|Add10~5\,
	combout => \BALL|Add10~6_combout\,
	cout => \BALL|Add10~7\);

-- Location: LCCOMB_X58_Y70_N0
\BALL|LessThan10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan10~1_cout\ = CARRY((\BALL|Bola_X\(1) & !\BALL|Add21~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Bola_X\(1),
	datab => \BALL|Add21~0_combout\,
	datad => VCC,
	cout => \BALL|LessThan10~1_cout\);

-- Location: LCCOMB_X58_Y70_N2
\BALL|LessThan10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan10~3_cout\ = CARRY((\BALL|Bola_Y\(2) & (\BALL|Add21~2_combout\ & !\BALL|LessThan10~1_cout\)) # (!\BALL|Bola_Y\(2) & ((\BALL|Add21~2_combout\) # (!\BALL|LessThan10~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Bola_Y\(2),
	datab => \BALL|Add21~2_combout\,
	datad => VCC,
	cin => \BALL|LessThan10~1_cout\,
	cout => \BALL|LessThan10~3_cout\);

-- Location: LCCOMB_X58_Y70_N4
\BALL|LessThan10~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan10~5_cout\ = CARRY((\BALL|Bola_Y\(3) & ((!\BALL|LessThan10~3_cout\) # (!\BALL|Add10~0_combout\))) # (!\BALL|Bola_Y\(3) & (!\BALL|Add10~0_combout\ & !\BALL|LessThan10~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Bola_Y\(3),
	datab => \BALL|Add10~0_combout\,
	datad => VCC,
	cin => \BALL|LessThan10~3_cout\,
	cout => \BALL|LessThan10~5_cout\);

-- Location: LCCOMB_X58_Y70_N6
\BALL|LessThan10~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan10~7_cout\ = CARRY((\BALL|Bola_Y\(4) & (\BALL|Add10~2_combout\ & !\BALL|LessThan10~5_cout\)) # (!\BALL|Bola_Y\(4) & ((\BALL|Add10~2_combout\) # (!\BALL|LessThan10~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Bola_Y\(4),
	datab => \BALL|Add10~2_combout\,
	datad => VCC,
	cin => \BALL|LessThan10~5_cout\,
	cout => \BALL|LessThan10~7_cout\);

-- Location: LCCOMB_X58_Y70_N8
\BALL|LessThan10~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan10~9_cout\ = CARRY((\BALL|Add10~4_combout\ & (\BALL|Bola_Y\(5) & !\BALL|LessThan10~7_cout\)) # (!\BALL|Add10~4_combout\ & ((\BALL|Bola_Y\(5)) # (!\BALL|LessThan10~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Add10~4_combout\,
	datab => \BALL|Bola_Y\(5),
	datad => VCC,
	cin => \BALL|LessThan10~7_cout\,
	cout => \BALL|LessThan10~9_cout\);

-- Location: LCCOMB_X58_Y70_N10
\BALL|LessThan10~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan10~11_cout\ = CARRY((\BALL|Bola_Y\(6) & (\BALL|Add10~6_combout\ & !\BALL|LessThan10~9_cout\)) # (!\BALL|Bola_Y\(6) & ((\BALL|Add10~6_combout\) # (!\BALL|LessThan10~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Bola_Y\(6),
	datab => \BALL|Add10~6_combout\,
	datad => VCC,
	cin => \BALL|LessThan10~9_cout\,
	cout => \BALL|LessThan10~11_cout\);

-- Location: LCCOMB_X58_Y70_N12
\BALL|LessThan10~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan10~13_cout\ = CARRY((\BALL|Add10~8_combout\ & (\BALL|Bola_Y\(7) & !\BALL|LessThan10~11_cout\)) # (!\BALL|Add10~8_combout\ & ((\BALL|Bola_Y\(7)) # (!\BALL|LessThan10~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Add10~8_combout\,
	datab => \BALL|Bola_Y\(7),
	datad => VCC,
	cin => \BALL|LessThan10~11_cout\,
	cout => \BALL|LessThan10~13_cout\);

-- Location: LCCOMB_X58_Y70_N14
\BALL|LessThan10~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan10~15_cout\ = CARRY((\BALL|Bola_Y\(8) & (\BALL|Add10~10_combout\ & !\BALL|LessThan10~13_cout\)) # (!\BALL|Bola_Y\(8) & ((\BALL|Add10~10_combout\) # (!\BALL|LessThan10~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Bola_Y\(8),
	datab => \BALL|Add10~10_combout\,
	datad => VCC,
	cin => \BALL|LessThan10~13_cout\,
	cout => \BALL|LessThan10~15_cout\);

-- Location: LCCOMB_X58_Y70_N16
\BALL|LessThan10~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan10~16_combout\ = (\BALL|Add10~12_combout\ & (!\BALL|LessThan10~15_cout\ & \BALL|Bola_Y\(9))) # (!\BALL|Add10~12_combout\ & ((\BALL|Bola_Y\(9)) # (!\BALL|LessThan10~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Add10~12_combout\,
	datad => \BALL|Bola_Y\(9),
	cin => \BALL|LessThan10~15_cout\,
	combout => \BALL|LessThan10~16_combout\);

-- Location: LCCOMB_X62_Y70_N0
\BALL|Desplaza_Bola_X[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Desplaza_Bola_X[2]~9_combout\ = (\BALL|Desplaza_Bola_X[2]~8_combout\ & (!\BALL|LessThan9~18_combout\ & !\BALL|LessThan10~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BALL|Desplaza_Bola_X[2]~8_combout\,
	datac => \BALL|LessThan9~18_combout\,
	datad => \BALL|LessThan10~16_combout\,
	combout => \BALL|Desplaza_Bola_X[2]~9_combout\);

-- Location: LCCOMB_X62_Y70_N28
\BALL|Desplaza_Bola_X[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Desplaza_Bola_X[2]~10_combout\ = (\BALL|LessThan7~16_combout\ & ((\BALL|Desplaza_Bola_X[2]~5_combout\) # ((\BALL|Desplaza_Bola_X[2]~9_combout\)))) # (!\BALL|LessThan7~16_combout\ & (\BALL|Desplaza_Bola_X[2]~6_combout\ & 
-- ((\BALL|Desplaza_Bola_X[2]~5_combout\) # (\BALL|Desplaza_Bola_X[2]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|LessThan7~16_combout\,
	datab => \BALL|Desplaza_Bola_X[2]~5_combout\,
	datac => \BALL|Desplaza_Bola_X[2]~6_combout\,
	datad => \BALL|Desplaza_Bola_X[2]~9_combout\,
	combout => \BALL|Desplaza_Bola_X[2]~10_combout\);

-- Location: FF_X62_Y70_N29
\BALL|Desplaza_Bola_X[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	d => \BALL|Desplaza_Bola_X[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BALL|Desplaza_Bola_X\(2));

-- Location: LCCOMB_X61_Y69_N16
\BALL|Bola_X[9]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Bola_X[9]~25_combout\ = \BALL|Bola_X\(9) $ (\BALL|Bola_X[8]~24\ $ (!\BALL|Desplaza_Bola_X\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BALL|Bola_X\(9),
	datad => \BALL|Desplaza_Bola_X\(2),
	cin => \BALL|Bola_X[8]~24\,
	combout => \BALL|Bola_X[9]~25_combout\);

-- Location: FF_X61_Y69_N17
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

-- Location: LCCOMB_X61_Y69_N30
\BALL|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add1~12_combout\ = \BALL|Add1~11\ $ (!\BALL|Bola_X\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \BALL|Bola_X\(9),
	cin => \BALL|Add1~11\,
	combout => \BALL|Add1~12_combout\);

-- Location: FF_X60_Y71_N11
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

-- Location: LCCOMB_X60_Y69_N10
\BALL|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan1~1_cout\ = CARRY(\VGA|pixel_x\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_x\(0),
	datad => VCC,
	cout => \BALL|LessThan1~1_cout\);

-- Location: LCCOMB_X60_Y69_N12
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

-- Location: LCCOMB_X60_Y69_N14
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

-- Location: LCCOMB_X60_Y69_N16
\BALL|LessThan1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan1~7_cout\ = CARRY((\VGA|pixel_x\(3) & (\BALL|Add1~0_combout\ & !\BALL|LessThan1~5_cout\)) # (!\VGA|pixel_x\(3) & ((\BALL|Add1~0_combout\) # (!\BALL|LessThan1~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_x\(3),
	datab => \BALL|Add1~0_combout\,
	datad => VCC,
	cin => \BALL|LessThan1~5_cout\,
	cout => \BALL|LessThan1~7_cout\);

-- Location: LCCOMB_X60_Y69_N18
\BALL|LessThan1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan1~9_cout\ = CARRY((\BALL|Add1~2_combout\ & (\VGA|pixel_x\(4) & !\BALL|LessThan1~7_cout\)) # (!\BALL|Add1~2_combout\ & ((\VGA|pixel_x\(4)) # (!\BALL|LessThan1~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Add1~2_combout\,
	datab => \VGA|pixel_x\(4),
	datad => VCC,
	cin => \BALL|LessThan1~7_cout\,
	cout => \BALL|LessThan1~9_cout\);

-- Location: LCCOMB_X60_Y69_N20
\BALL|LessThan1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan1~11_cout\ = CARRY((\VGA|pixel_x\(5) & (\BALL|Add1~4_combout\ & !\BALL|LessThan1~9_cout\)) # (!\VGA|pixel_x\(5) & ((\BALL|Add1~4_combout\) # (!\BALL|LessThan1~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_x\(5),
	datab => \BALL|Add1~4_combout\,
	datad => VCC,
	cin => \BALL|LessThan1~9_cout\,
	cout => \BALL|LessThan1~11_cout\);

-- Location: LCCOMB_X60_Y69_N22
\BALL|LessThan1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan1~13_cout\ = CARRY((\VGA|pixel_x\(6) & ((!\BALL|LessThan1~11_cout\) # (!\BALL|Add1~6_combout\))) # (!\VGA|pixel_x\(6) & (!\BALL|Add1~6_combout\ & !\BALL|LessThan1~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_x\(6),
	datab => \BALL|Add1~6_combout\,
	datad => VCC,
	cin => \BALL|LessThan1~11_cout\,
	cout => \BALL|LessThan1~13_cout\);

-- Location: LCCOMB_X60_Y69_N24
\BALL|LessThan1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan1~15_cout\ = CARRY((\BALL|Add1~8_combout\ & ((!\BALL|LessThan1~13_cout\) # (!\VGA|pixel_x\(7)))) # (!\BALL|Add1~8_combout\ & (!\VGA|pixel_x\(7) & !\BALL|LessThan1~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Add1~8_combout\,
	datab => \VGA|pixel_x\(7),
	datad => VCC,
	cin => \BALL|LessThan1~13_cout\,
	cout => \BALL|LessThan1~15_cout\);

-- Location: LCCOMB_X60_Y69_N26
\BALL|LessThan1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan1~17_cout\ = CARRY((\VGA|pixel_x\(8) & ((!\BALL|LessThan1~15_cout\) # (!\BALL|Add1~10_combout\))) # (!\VGA|pixel_x\(8) & (!\BALL|Add1~10_combout\ & !\BALL|LessThan1~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_x\(8),
	datab => \BALL|Add1~10_combout\,
	datad => VCC,
	cin => \BALL|LessThan1~15_cout\,
	cout => \BALL|LessThan1~17_cout\);

-- Location: LCCOMB_X60_Y69_N28
\BALL|LessThan1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan1~18_combout\ = (\VGA|pixel_x\(9) & ((\BALL|LessThan1~17_cout\) # (!\BALL|Add1~12_combout\))) # (!\VGA|pixel_x\(9) & (\BALL|LessThan1~17_cout\ & !\BALL|Add1~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_x\(9),
	datad => \BALL|Add1~12_combout\,
	cin => \BALL|LessThan1~17_cout\,
	combout => \BALL|LessThan1~18_combout\);

-- Location: LCCOMB_X59_Y68_N14
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

-- Location: LCCOMB_X59_Y68_N16
\BALL|LessThan3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan3~3_cout\ = CARRY((\BALL|Bola_X\(1) & ((!\BALL|LessThan3~1_cout\) # (!\VGA|pixel_y\(1)))) # (!\BALL|Bola_X\(1) & (!\VGA|pixel_y\(1) & !\BALL|LessThan3~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Bola_X\(1),
	datab => \VGA|pixel_y\(1),
	datad => VCC,
	cin => \BALL|LessThan3~1_cout\,
	cout => \BALL|LessThan3~3_cout\);

-- Location: LCCOMB_X59_Y68_N18
\BALL|LessThan3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan3~5_cout\ = CARRY((\BALL|Bola_Y\(2) & (\VGA|pixel_y\(2) & !\BALL|LessThan3~3_cout\)) # (!\BALL|Bola_Y\(2) & ((\VGA|pixel_y\(2)) # (!\BALL|LessThan3~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Bola_Y\(2),
	datab => \VGA|pixel_y\(2),
	datad => VCC,
	cin => \BALL|LessThan3~3_cout\,
	cout => \BALL|LessThan3~5_cout\);

-- Location: LCCOMB_X59_Y68_N20
\BALL|LessThan3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan3~7_cout\ = CARRY((\BALL|Add3~0_combout\ & ((!\BALL|LessThan3~5_cout\) # (!\VGA|pixel_y\(3)))) # (!\BALL|Add3~0_combout\ & (!\VGA|pixel_y\(3) & !\BALL|LessThan3~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Add3~0_combout\,
	datab => \VGA|pixel_y\(3),
	datad => VCC,
	cin => \BALL|LessThan3~5_cout\,
	cout => \BALL|LessThan3~7_cout\);

-- Location: LCCOMB_X59_Y68_N22
\BALL|LessThan3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan3~9_cout\ = CARRY((\BALL|Add3~2_combout\ & (\VGA|pixel_y\(4) & !\BALL|LessThan3~7_cout\)) # (!\BALL|Add3~2_combout\ & ((\VGA|pixel_y\(4)) # (!\BALL|LessThan3~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Add3~2_combout\,
	datab => \VGA|pixel_y\(4),
	datad => VCC,
	cin => \BALL|LessThan3~7_cout\,
	cout => \BALL|LessThan3~9_cout\);

-- Location: LCCOMB_X59_Y68_N24
\BALL|LessThan3~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan3~11_cout\ = CARRY((\VGA|pixel_y\(5) & (\BALL|Add3~4_combout\ & !\BALL|LessThan3~9_cout\)) # (!\VGA|pixel_y\(5) & ((\BALL|Add3~4_combout\) # (!\BALL|LessThan3~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_y\(5),
	datab => \BALL|Add3~4_combout\,
	datad => VCC,
	cin => \BALL|LessThan3~9_cout\,
	cout => \BALL|LessThan3~11_cout\);

-- Location: LCCOMB_X59_Y68_N26
\BALL|LessThan3~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan3~13_cout\ = CARRY((\VGA|pixel_y\(6) & ((!\BALL|LessThan3~11_cout\) # (!\BALL|Add3~6_combout\))) # (!\VGA|pixel_y\(6) & (!\BALL|Add3~6_combout\ & !\BALL|LessThan3~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_y\(6),
	datab => \BALL|Add3~6_combout\,
	datad => VCC,
	cin => \BALL|LessThan3~11_cout\,
	cout => \BALL|LessThan3~13_cout\);

-- Location: LCCOMB_X59_Y68_N28
\BALL|LessThan3~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan3~15_cout\ = CARRY((\BALL|Add3~8_combout\ & ((!\BALL|LessThan3~13_cout\) # (!\VGA|pixel_y\(7)))) # (!\BALL|Add3~8_combout\ & (!\VGA|pixel_y\(7) & !\BALL|LessThan3~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Add3~8_combout\,
	datab => \VGA|pixel_y\(7),
	datad => VCC,
	cin => \BALL|LessThan3~13_cout\,
	cout => \BALL|LessThan3~15_cout\);

-- Location: LCCOMB_X59_Y68_N30
\BALL|LessThan3~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan3~16_combout\ = (\VGA|pixel_y\(8) & ((!\BALL|Add3~10_combout\) # (!\BALL|LessThan3~15_cout\))) # (!\VGA|pixel_y\(8) & (!\BALL|LessThan3~15_cout\ & !\BALL|Add3~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_y\(8),
	datad => \BALL|Add3~10_combout\,
	cin => \BALL|LessThan3~15_cout\,
	combout => \BALL|LessThan3~16_combout\);

-- Location: LCCOMB_X59_Y69_N30
\BALL|Blue_bola~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Blue_bola~0_combout\ = (!\BALL|LessThan0~16_combout\ & (!\BALL|LessThan1~18_combout\ & ((\BALL|Add3~12_combout\) # (!\BALL|LessThan3~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|LessThan0~16_combout\,
	datab => \BALL|LessThan1~18_combout\,
	datac => \BALL|Add3~12_combout\,
	datad => \BALL|LessThan3~16_combout\,
	combout => \BALL|Blue_bola~0_combout\);

-- Location: LCCOMB_X59_Y69_N24
\BALL|Blue_bola~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Blue_bola~1_combout\ = (!\BALL|LessThan2~16_combout\ & \BALL|Blue_bola~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BALL|LessThan2~16_combout\,
	datac => \BALL|Blue_bola~0_combout\,
	combout => \BALL|Blue_bola~1_combout\);

-- Location: LCCOMB_X59_Y69_N28
\VGA|vga_r~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|vga_r~6_combout\ = (\VGA|vga_r~3_combout\) # ((\VGA|video_on~q\ & ((\VGA|vga_r~5_combout\) # (\BALL|Blue_bola~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|vga_r~5_combout\,
	datab => \VGA|vga_r~3_combout\,
	datac => \VGA|video_on~q\,
	datad => \BALL|Blue_bola~1_combout\,
	combout => \VGA|vga_r~6_combout\);

-- Location: FF_X59_Y69_N29
\VGA|vga_r\ : dffeas
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
	q => \VGA|vga_r~q\);

-- Location: LCCOMB_X60_Y68_N0
\VGA|vga_g~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|vga_g~0_combout\ = (!\VGA|pixel_x\(5) & (!\VGA|pixel_x\(7) & (!\VGA|pixel_x\(6) & !\VGA|pixel_x\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_x\(5),
	datab => \VGA|pixel_x\(7),
	datac => \VGA|pixel_x\(6),
	datad => \VGA|pixel_x\(8),
	combout => \VGA|vga_g~0_combout\);

-- Location: LCCOMB_X60_Y68_N26
\VGA|vga_g~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|vga_g~4_combout\ = (\VGA|vga_g~3_combout\ & (!\VGA|pixel_x\(9) & \VGA|vga_g~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|vga_g~3_combout\,
	datab => \VGA|pixel_x\(9),
	datad => \VGA|vga_g~0_combout\,
	combout => \VGA|vga_g~4_combout\);

-- Location: LCCOMB_X61_Y66_N4
\BALL|Add16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add16~0_combout\ = \BALL|Pala_Y_izq\(1) $ (VCC)
-- \BALL|Add16~1\ = CARRY(\BALL|Pala_Y_izq\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BALL|Pala_Y_izq\(1),
	datad => VCC,
	combout => \BALL|Add16~0_combout\,
	cout => \BALL|Add16~1\);

-- Location: LCCOMB_X61_Y66_N8
\BALL|Add16~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add16~4_combout\ = (\BALL|Pala_Y_izq\(3) & ((GND) # (!\BALL|Add16~3\))) # (!\BALL|Pala_Y_izq\(3) & (\BALL|Add16~3\ $ (GND)))
-- \BALL|Add16~5\ = CARRY((\BALL|Pala_Y_izq\(3)) # (!\BALL|Add16~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BALL|Pala_Y_izq\(3),
	datad => VCC,
	cin => \BALL|Add16~3\,
	combout => \BALL|Add16~4_combout\,
	cout => \BALL|Add16~5\);

-- Location: LCCOMB_X61_Y66_N10
\BALL|Add16~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add16~6_combout\ = (\BALL|Pala_Y_izq\(4) & (\BALL|Add16~5\ & VCC)) # (!\BALL|Pala_Y_izq\(4) & (!\BALL|Add16~5\))
-- \BALL|Add16~7\ = CARRY((!\BALL|Pala_Y_izq\(4) & !\BALL|Add16~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Pala_Y_izq\(4),
	datad => VCC,
	cin => \BALL|Add16~5\,
	combout => \BALL|Add16~6_combout\,
	cout => \BALL|Add16~7\);

-- Location: LCCOMB_X61_Y66_N12
\BALL|Add16~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add16~8_combout\ = (\BALL|Pala_Y_izq\(5) & (\BALL|Add16~7\ $ (GND))) # (!\BALL|Pala_Y_izq\(5) & (!\BALL|Add16~7\ & VCC))
-- \BALL|Add16~9\ = CARRY((\BALL|Pala_Y_izq\(5) & !\BALL|Add16~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Pala_Y_izq\(5),
	datad => VCC,
	cin => \BALL|Add16~7\,
	combout => \BALL|Add16~8_combout\,
	cout => \BALL|Add16~9\);

-- Location: LCCOMB_X61_Y66_N14
\BALL|Add16~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add16~10_combout\ = (\BALL|Pala_Y_izq\(6) & (!\BALL|Add16~9\)) # (!\BALL|Pala_Y_izq\(6) & ((\BALL|Add16~9\) # (GND)))
-- \BALL|Add16~11\ = CARRY((!\BALL|Add16~9\) # (!\BALL|Pala_Y_izq\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BALL|Pala_Y_izq\(6),
	datad => VCC,
	cin => \BALL|Add16~9\,
	combout => \BALL|Add16~10_combout\,
	cout => \BALL|Add16~11\);

-- Location: LCCOMB_X61_Y66_N16
\BALL|Add16~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add16~12_combout\ = (\BALL|Pala_Y_izq\(7) & (\BALL|Add16~11\ $ (GND))) # (!\BALL|Pala_Y_izq\(7) & (!\BALL|Add16~11\ & VCC))
-- \BALL|Add16~13\ = CARRY((\BALL|Pala_Y_izq\(7) & !\BALL|Add16~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BALL|Pala_Y_izq\(7),
	datad => VCC,
	cin => \BALL|Add16~11\,
	combout => \BALL|Add16~12_combout\,
	cout => \BALL|Add16~13\);

-- Location: LCCOMB_X61_Y66_N18
\BALL|Add16~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add16~14_combout\ = (\BALL|Pala_Y_izq\(8) & (!\BALL|Add16~13\)) # (!\BALL|Pala_Y_izq\(8) & ((\BALL|Add16~13\) # (GND)))
-- \BALL|Add16~15\ = CARRY((!\BALL|Add16~13\) # (!\BALL|Pala_Y_izq\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BALL|Pala_Y_izq\(8),
	datad => VCC,
	cin => \BALL|Add16~13\,
	combout => \BALL|Add16~14_combout\,
	cout => \BALL|Add16~15\);

-- Location: LCCOMB_X60_Y66_N10
\BALL|LessThan17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan17~1_cout\ = CARRY((\VGA|pixel_y\(0) & !\BALL|Pala_Y_izq\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_y\(0),
	datab => \BALL|Pala_Y_izq\(0),
	datad => VCC,
	cout => \BALL|LessThan17~1_cout\);

-- Location: LCCOMB_X60_Y66_N12
\BALL|LessThan17~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan17~3_cout\ = CARRY((\VGA|pixel_y\(1) & (\BALL|Add16~0_combout\ & !\BALL|LessThan17~1_cout\)) # (!\VGA|pixel_y\(1) & ((\BALL|Add16~0_combout\) # (!\BALL|LessThan17~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_y\(1),
	datab => \BALL|Add16~0_combout\,
	datad => VCC,
	cin => \BALL|LessThan17~1_cout\,
	cout => \BALL|LessThan17~3_cout\);

-- Location: LCCOMB_X60_Y66_N14
\BALL|LessThan17~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan17~5_cout\ = CARRY((\BALL|Add16~2_combout\ & (\VGA|pixel_y\(2) & !\BALL|LessThan17~3_cout\)) # (!\BALL|Add16~2_combout\ & ((\VGA|pixel_y\(2)) # (!\BALL|LessThan17~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Add16~2_combout\,
	datab => \VGA|pixel_y\(2),
	datad => VCC,
	cin => \BALL|LessThan17~3_cout\,
	cout => \BALL|LessThan17~5_cout\);

-- Location: LCCOMB_X60_Y66_N16
\BALL|LessThan17~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan17~7_cout\ = CARRY((\VGA|pixel_y\(3) & (\BALL|Add16~4_combout\ & !\BALL|LessThan17~5_cout\)) # (!\VGA|pixel_y\(3) & ((\BALL|Add16~4_combout\) # (!\BALL|LessThan17~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_y\(3),
	datab => \BALL|Add16~4_combout\,
	datad => VCC,
	cin => \BALL|LessThan17~5_cout\,
	cout => \BALL|LessThan17~7_cout\);

-- Location: LCCOMB_X60_Y66_N18
\BALL|LessThan17~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan17~9_cout\ = CARRY((\VGA|pixel_y\(4) & ((!\BALL|LessThan17~7_cout\) # (!\BALL|Add16~6_combout\))) # (!\VGA|pixel_y\(4) & (!\BALL|Add16~6_combout\ & !\BALL|LessThan17~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_y\(4),
	datab => \BALL|Add16~6_combout\,
	datad => VCC,
	cin => \BALL|LessThan17~7_cout\,
	cout => \BALL|LessThan17~9_cout\);

-- Location: LCCOMB_X60_Y66_N20
\BALL|LessThan17~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan17~11_cout\ = CARRY((\VGA|pixel_y\(5) & (\BALL|Add16~8_combout\ & !\BALL|LessThan17~9_cout\)) # (!\VGA|pixel_y\(5) & ((\BALL|Add16~8_combout\) # (!\BALL|LessThan17~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_y\(5),
	datab => \BALL|Add16~8_combout\,
	datad => VCC,
	cin => \BALL|LessThan17~9_cout\,
	cout => \BALL|LessThan17~11_cout\);

-- Location: LCCOMB_X60_Y66_N22
\BALL|LessThan17~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan17~13_cout\ = CARRY((\VGA|pixel_y\(6) & ((!\BALL|LessThan17~11_cout\) # (!\BALL|Add16~10_combout\))) # (!\VGA|pixel_y\(6) & (!\BALL|Add16~10_combout\ & !\BALL|LessThan17~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_y\(6),
	datab => \BALL|Add16~10_combout\,
	datad => VCC,
	cin => \BALL|LessThan17~11_cout\,
	cout => \BALL|LessThan17~13_cout\);

-- Location: LCCOMB_X60_Y66_N24
\BALL|LessThan17~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan17~15_cout\ = CARRY((\VGA|pixel_y\(7) & (\BALL|Add16~12_combout\ & !\BALL|LessThan17~13_cout\)) # (!\VGA|pixel_y\(7) & ((\BALL|Add16~12_combout\) # (!\BALL|LessThan17~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_y\(7),
	datab => \BALL|Add16~12_combout\,
	datad => VCC,
	cin => \BALL|LessThan17~13_cout\,
	cout => \BALL|LessThan17~15_cout\);

-- Location: LCCOMB_X60_Y66_N26
\BALL|LessThan17~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|LessThan17~16_combout\ = (\VGA|pixel_y\(8) & ((!\BALL|Add16~14_combout\) # (!\BALL|LessThan17~15_cout\))) # (!\VGA|pixel_y\(8) & (!\BALL|LessThan17~15_cout\ & !\BALL|Add16~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_y\(8),
	datad => \BALL|Add16~14_combout\,
	cin => \BALL|LessThan17~15_cout\,
	combout => \BALL|LessThan17~16_combout\);

-- Location: LCCOMB_X61_Y66_N20
\BALL|Add16~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \BALL|Add16~16_combout\ = \BALL|Pala_Y_izq\(9) $ (!\BALL|Add16~15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Pala_Y_izq\(9),
	cin => \BALL|Add16~15\,
	combout => \BALL|Add16~16_combout\);

-- Location: LCCOMB_X60_Y66_N8
\VGA|vga_g~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|vga_g~5_combout\ = (!\BALL|LessThan16~18_combout\ & (\VGA|vga_g~4_combout\ & ((\BALL|Add16~16_combout\) # (!\BALL|LessThan17~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|LessThan16~18_combout\,
	datab => \VGA|vga_g~4_combout\,
	datac => \BALL|LessThan17~16_combout\,
	datad => \BALL|Add16~16_combout\,
	combout => \VGA|vga_g~5_combout\);

-- Location: LCCOMB_X59_Y69_N0
\VGA|vga_g~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|vga_g~6_combout\ = (\VGA|video_on~q\ & ((\VGA|vga_r~5_combout\) # ((\VGA|vga_g~5_combout\) # (\BALL|Blue_bola~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|vga_r~5_combout\,
	datab => \VGA|video_on~q\,
	datac => \VGA|vga_g~5_combout\,
	datad => \BALL|Blue_bola~1_combout\,
	combout => \VGA|vga_g~6_combout\);

-- Location: FF_X59_Y69_N1
\VGA|vga_g\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	d => \VGA|vga_g~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|vga_g~q\);

-- Location: LCCOMB_X59_Y69_N26
\VGA|vga_b~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|vga_b~0_combout\ = (\BALL|Blue_bola~0_combout\ & (!\BALL|LessThan2~16_combout\ & \VGA|video_on~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BALL|Blue_bola~0_combout\,
	datab => \BALL|LessThan2~16_combout\,
	datac => \VGA|video_on~q\,
	combout => \VGA|vga_b~0_combout\);

-- Location: FF_X59_Y69_N27
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

-- Location: LCCOMB_X56_Y71_N22
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

-- Location: FF_X56_Y71_N23
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

-- Location: LCCOMB_X56_Y71_N20
\VGA|process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|process_0~2_combout\ = ((\VGA|cont_hs\(5) & (\VGA|cont_hs\(6) & \VGA|cont_hs\(4))) # (!\VGA|cont_hs\(5) & (!\VGA|cont_hs\(6) & !\VGA|cont_hs\(4)))) # (!\VGA|process_0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|process_0~1_combout\,
	datab => \VGA|cont_hs\(5),
	datac => \VGA|cont_hs\(6),
	datad => \VGA|cont_hs\(4),
	combout => \VGA|process_0~2_combout\);

-- Location: FF_X56_Y71_N21
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

-- Location: LCCOMB_X48_Y71_N4
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

-- Location: FF_X48_Y71_N5
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

-- Location: LCCOMB_X57_Y70_N10
\VGA|process_0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|process_0~3_combout\ = ((\VGA|cont_vs\(2)) # ((\VGA|cont_vs\(4)) # (!\VGA|cont_vs\(1)))) # (!\VGA|cont_vs\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|cont_vs\(3),
	datab => \VGA|cont_vs\(2),
	datac => \VGA|cont_vs\(4),
	datad => \VGA|cont_vs\(1),
	combout => \VGA|process_0~3_combout\);

-- Location: LCCOMB_X57_Y71_N2
\VGA|process_0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|process_0~4_combout\ = (\VGA|cont_vs\(9)) # ((\VGA|process_0~3_combout\) # (!\VGA|LessThan6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA|cont_vs\(9),
	datac => \VGA|LessThan6~0_combout\,
	datad => \VGA|process_0~3_combout\,
	combout => \VGA|process_0~4_combout\);

-- Location: FF_X57_Y71_N3
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

-- Location: LCCOMB_X56_Y71_N2
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

-- Location: FF_X56_Y71_N3
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


