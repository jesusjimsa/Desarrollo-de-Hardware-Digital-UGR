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

-- DATE "04/18/2019 17:17:04"

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

ENTITY 	my_scomp_v0_0 IS
    PORT (
	reloj : IN std_logic;
	reset : IN std_logic;
	IR_out : OUT std_logic_vector(15 DOWNTO 0);
	AC_out : OUT std_logic_vector(15 DOWNTO 0);
	PC_out : OUT std_logic_vector(7 DOWNTO 0)
	);
END my_scomp_v0_0;

-- Design Ports Information
-- IR_out[0]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR_out[1]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR_out[2]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR_out[3]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR_out[4]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR_out[5]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR_out[6]	=>  Location: PIN_AC10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR_out[7]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR_out[8]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR_out[9]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR_out[10]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR_out[11]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR_out[12]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR_out[13]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR_out[14]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR_out[15]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AC_out[0]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AC_out[1]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AC_out[2]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AC_out[3]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AC_out[4]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AC_out[5]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AC_out[6]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AC_out[7]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AC_out[8]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AC_out[9]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AC_out[10]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AC_out[11]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AC_out[12]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AC_out[13]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AC_out[14]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AC_out[15]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[0]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[1]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[2]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[3]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[4]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[5]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[6]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[7]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reloj	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF my_scomp_v0_0 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_reloj : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_IR_out : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_AC_out : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_PC_out : std_logic_vector(7 DOWNTO 0);
SIGNAL \MEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \MEM|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \MEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reloj~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \PROC|Add0~10_combout\ : std_logic;
SIGNAL \PROC|Add0~12_combout\ : std_logic;
SIGNAL \PROC|ShiftRight0~3_combout\ : std_logic;
SIGNAL \PROC|Selector23~0_combout\ : std_logic;
SIGNAL \PROC|ShiftRight0~11_combout\ : std_logic;
SIGNAL \PROC|Selector22~0_combout\ : std_logic;
SIGNAL \PROC|ShiftRight0~20_combout\ : std_logic;
SIGNAL \PROC|Selector22~1_combout\ : std_logic;
SIGNAL \PROC|Selector22~2_combout\ : std_logic;
SIGNAL \PROC|Add1~6_combout\ : std_logic;
SIGNAL \PROC|ShiftRight0~21_combout\ : std_logic;
SIGNAL \PROC|Selector21~0_combout\ : std_logic;
SIGNAL \PROC|ShiftRight0~22_combout\ : std_logic;
SIGNAL \PROC|Selector21~1_combout\ : std_logic;
SIGNAL \PROC|Selector21~2_combout\ : std_logic;
SIGNAL \PROC|Add1~9_combout\ : std_logic;
SIGNAL \PROC|ShiftRight0~25_combout\ : std_logic;
SIGNAL \PROC|Selector20~0_combout\ : std_logic;
SIGNAL \PROC|ShiftRight0~27_combout\ : std_logic;
SIGNAL \PROC|Selector20~1_combout\ : std_logic;
SIGNAL \PROC|Selector20~2_combout\ : std_logic;
SIGNAL \PROC|ShiftLeft0~6_combout\ : std_logic;
SIGNAL \PROC|ShiftLeft0~7_combout\ : std_logic;
SIGNAL \PROC|ShiftLeft0~8_combout\ : std_logic;
SIGNAL \PROC|ShiftLeft0~9_combout\ : std_logic;
SIGNAL \PROC|Add1~15_combout\ : std_logic;
SIGNAL \PROC|ShiftLeft0~11_combout\ : std_logic;
SIGNAL \PROC|ShiftLeft0~12_combout\ : std_logic;
SIGNAL \PROC|Selector17~1_combout\ : std_logic;
SIGNAL \PROC|ShiftRight0~30_combout\ : std_logic;
SIGNAL \PROC|Selector17~2_combout\ : std_logic;
SIGNAL \PROC|Selector17~3_combout\ : std_logic;
SIGNAL \PROC|Selector17~4_combout\ : std_logic;
SIGNAL \PROC|Selector16~1_combout\ : std_logic;
SIGNAL \PROC|Selector16~3_combout\ : std_logic;
SIGNAL \PROC|Add1~24_combout\ : std_logic;
SIGNAL \PROC|Add1~27_combout\ : std_logic;
SIGNAL \PROC|Selector15~14_combout\ : std_logic;
SIGNAL \PROC|Add1~33_combout\ : std_logic;
SIGNAL \PROC|ShiftLeft0~23_combout\ : std_logic;
SIGNAL \PROC|Selector12~3_combout\ : std_logic;
SIGNAL \PROC|Selector11~1_combout\ : std_logic;
SIGNAL \PROC|Selector11~2_combout\ : std_logic;
SIGNAL \PROC|Add1~42_combout\ : std_logic;
SIGNAL \PROC|Selector9~4_combout\ : std_logic;
SIGNAL \PROC|Add1~45_combout\ : std_logic;
SIGNAL \PROC|Selector8~5_combout\ : std_logic;
SIGNAL \PROC|Equal0~3_combout\ : std_logic;
SIGNAL \PROC|state.jump~q\ : std_logic;
SIGNAL \PROC|Selector6~2_combout\ : std_logic;
SIGNAL \PROC|state~34_combout\ : std_logic;
SIGNAL \PROC|Selector19~7_combout\ : std_logic;
SIGNAL \PROC|Selector15~15_combout\ : std_logic;
SIGNAL \PROC|Selector15~16_combout\ : std_logic;
SIGNAL \PROC|Selector12~7_combout\ : std_logic;
SIGNAL \IR_out[0]~output_o\ : std_logic;
SIGNAL \IR_out[1]~output_o\ : std_logic;
SIGNAL \IR_out[2]~output_o\ : std_logic;
SIGNAL \IR_out[3]~output_o\ : std_logic;
SIGNAL \IR_out[4]~output_o\ : std_logic;
SIGNAL \IR_out[5]~output_o\ : std_logic;
SIGNAL \IR_out[6]~output_o\ : std_logic;
SIGNAL \IR_out[7]~output_o\ : std_logic;
SIGNAL \IR_out[8]~output_o\ : std_logic;
SIGNAL \IR_out[9]~output_o\ : std_logic;
SIGNAL \IR_out[10]~output_o\ : std_logic;
SIGNAL \IR_out[11]~output_o\ : std_logic;
SIGNAL \IR_out[12]~output_o\ : std_logic;
SIGNAL \IR_out[13]~output_o\ : std_logic;
SIGNAL \IR_out[14]~output_o\ : std_logic;
SIGNAL \IR_out[15]~output_o\ : std_logic;
SIGNAL \AC_out[0]~output_o\ : std_logic;
SIGNAL \AC_out[1]~output_o\ : std_logic;
SIGNAL \AC_out[2]~output_o\ : std_logic;
SIGNAL \AC_out[3]~output_o\ : std_logic;
SIGNAL \AC_out[4]~output_o\ : std_logic;
SIGNAL \AC_out[5]~output_o\ : std_logic;
SIGNAL \AC_out[6]~output_o\ : std_logic;
SIGNAL \AC_out[7]~output_o\ : std_logic;
SIGNAL \AC_out[8]~output_o\ : std_logic;
SIGNAL \AC_out[9]~output_o\ : std_logic;
SIGNAL \AC_out[10]~output_o\ : std_logic;
SIGNAL \AC_out[11]~output_o\ : std_logic;
SIGNAL \AC_out[12]~output_o\ : std_logic;
SIGNAL \AC_out[13]~output_o\ : std_logic;
SIGNAL \AC_out[14]~output_o\ : std_logic;
SIGNAL \AC_out[15]~output_o\ : std_logic;
SIGNAL \PC_out[0]~output_o\ : std_logic;
SIGNAL \PC_out[1]~output_o\ : std_logic;
SIGNAL \PC_out[2]~output_o\ : std_logic;
SIGNAL \PC_out[3]~output_o\ : std_logic;
SIGNAL \PC_out[4]~output_o\ : std_logic;
SIGNAL \PC_out[5]~output_o\ : std_logic;
SIGNAL \PC_out[6]~output_o\ : std_logic;
SIGNAL \PC_out[7]~output_o\ : std_logic;
SIGNAL \reloj~input_o\ : std_logic;
SIGNAL \reloj~inputclkctrl_outclk\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \PROC|state.decode~q\ : std_logic;
SIGNAL \PROC|Add0~1\ : std_logic;
SIGNAL \PROC|Add0~3\ : std_logic;
SIGNAL \PROC|Add0~5\ : std_logic;
SIGNAL \PROC|Add0~6_combout\ : std_logic;
SIGNAL \PROC|Selector4~0_combout\ : std_logic;
SIGNAL \PROC|Selector4~1_combout\ : std_logic;
SIGNAL \PROC|state~32_combout\ : std_logic;
SIGNAL \PROC|state.jzero~q\ : std_logic;
SIGNAL \PROC|state.reset_pc~feeder_combout\ : std_logic;
SIGNAL \PROC|state.reset_pc~q\ : std_logic;
SIGNAL \PROC|state~31_combout\ : std_logic;
SIGNAL \PROC|state.jpos~q\ : std_logic;
SIGNAL \PROC|WideOr5~0_combout\ : std_logic;
SIGNAL \PROC|PC[0]~0_combout\ : std_logic;
SIGNAL \PROC|Add0~7\ : std_logic;
SIGNAL \PROC|Add0~8_combout\ : std_logic;
SIGNAL \PROC|Selector3~0_combout\ : std_logic;
SIGNAL \PROC|Selector3~1_combout\ : std_logic;
SIGNAL \PROC|Add0~9\ : std_logic;
SIGNAL \PROC|Add0~11\ : std_logic;
SIGNAL \PROC|Add0~13\ : std_logic;
SIGNAL \PROC|Add0~14_combout\ : std_logic;
SIGNAL \PROC|ShiftLeft0~1_combout\ : std_logic;
SIGNAL \PROC|ShiftLeft0~2_combout\ : std_logic;
SIGNAL \PROC|ShiftLeft0~3_combout\ : std_logic;
SIGNAL \PROC|state~36_combout\ : std_logic;
SIGNAL \PROC|state.add2~q\ : std_logic;
SIGNAL \PROC|state.add1~q\ : std_logic;
SIGNAL \PROC|state~28_combout\ : std_logic;
SIGNAL \PROC|state.sub1~q\ : std_logic;
SIGNAL \PROC|WideOr1~0_combout\ : std_logic;
SIGNAL \PROC|state~25_combout\ : std_logic;
SIGNAL \PROC|state.load1~q\ : std_logic;
SIGNAL \PROC|Selector21~3_combout\ : std_logic;
SIGNAL \PROC|Add1~1_combout\ : std_logic;
SIGNAL \PROC|Add1~3_cout\ : std_logic;
SIGNAL \PROC|Add1~5\ : std_logic;
SIGNAL \PROC|Add1~8\ : std_logic;
SIGNAL \PROC|Add1~10_combout\ : std_logic;
SIGNAL \PROC|Selector21~4_combout\ : std_logic;
SIGNAL \PROC|Selector21~5_combout\ : std_logic;
SIGNAL \PROC|ShiftLeft0~4_combout\ : std_logic;
SIGNAL \PROC|ShiftLeft0~5_combout\ : std_logic;
SIGNAL \PROC|Selector20~3_combout\ : std_logic;
SIGNAL \PROC|RT[0]~0_combout\ : std_logic;
SIGNAL \PROC|Add1~12_combout\ : std_logic;
SIGNAL \PROC|Add1~11\ : std_logic;
SIGNAL \PROC|Add1~13_combout\ : std_logic;
SIGNAL \PROC|Selector20~4_combout\ : std_logic;
SIGNAL \PROC|Selector20~5_combout\ : std_logic;
SIGNAL \PROC|Add1~14\ : std_logic;
SIGNAL \PROC|Add1~16_combout\ : std_logic;
SIGNAL \PROC|state~29_combout\ : std_logic;
SIGNAL \PROC|state.shl1~q\ : std_logic;
SIGNAL \PROC|Selector18~0_combout\ : std_logic;
SIGNAL \PROC|state~23_combout\ : std_logic;
SIGNAL \PROC|state.shr1~q\ : std_logic;
SIGNAL \PROC|Selector18~2_combout\ : std_logic;
SIGNAL \PROC|AC[11]~9_combout\ : std_logic;
SIGNAL \PROC|Selector15~13_combout\ : std_logic;
SIGNAL \PROC|ShiftLeft0~10_combout\ : std_logic;
SIGNAL \PROC|WideOr1~1_combout\ : std_logic;
SIGNAL \PROC|WideOr1~2_combout\ : std_logic;
SIGNAL \PROC|Selector16~0_combout\ : std_logic;
SIGNAL \PROC|AC[0]~6_combout\ : std_logic;
SIGNAL \PROC|Selector16~2_combout\ : std_logic;
SIGNAL \PROC|AC[0]~3_combout\ : std_logic;
SIGNAL \PROC|Selector11~0_combout\ : std_logic;
SIGNAL \PROC|AC[0]~1_combout\ : std_logic;
SIGNAL \PROC|ShiftLeft0~22_combout\ : std_logic;
SIGNAL \PROC|AC[0]~0_combout\ : std_logic;
SIGNAL \PROC|Selector10~0_combout\ : std_logic;
SIGNAL \PROC|Selector10~1_combout\ : std_logic;
SIGNAL \PROC|Selector10~2_combout\ : std_logic;
SIGNAL \PROC|Add1~21_combout\ : std_logic;
SIGNAL \PROC|Add1~18_combout\ : std_logic;
SIGNAL \PROC|Add1~17\ : std_logic;
SIGNAL \PROC|Add1~20\ : std_logic;
SIGNAL \PROC|Add1~22_combout\ : std_logic;
SIGNAL \PROC|Selector17~0_combout\ : std_logic;
SIGNAL \PROC|ShiftLeft0~13_combout\ : std_logic;
SIGNAL \PROC|ShiftLeft0~14_combout\ : std_logic;
SIGNAL \PROC|Selector17~5_combout\ : std_logic;
SIGNAL \PROC|Selector9~0_combout\ : std_logic;
SIGNAL \PROC|Selector17~6_combout\ : std_logic;
SIGNAL \PROC|Add1~23\ : std_logic;
SIGNAL \PROC|Add1~26\ : std_logic;
SIGNAL \PROC|Add1~28_combout\ : std_logic;
SIGNAL \PROC|ShiftLeft0~17_combout\ : std_logic;
SIGNAL \PROC|ShiftLeft0~18_combout\ : std_logic;
SIGNAL \PROC|AC[11]~8_combout\ : std_logic;
SIGNAL \PROC|Selector15~9_combout\ : std_logic;
SIGNAL \PROC|Selector15~10_combout\ : std_logic;
SIGNAL \PROC|Selector15~11_combout\ : std_logic;
SIGNAL \PROC|Selector15~17_combout\ : std_logic;
SIGNAL \PROC|Selector15~12_combout\ : std_logic;
SIGNAL \PROC|Selector14~6_combout\ : std_logic;
SIGNAL \PROC|ShiftRight0~16_combout\ : std_logic;
SIGNAL \PROC|Selector14~2_combout\ : std_logic;
SIGNAL \PROC|Add1~30_combout\ : std_logic;
SIGNAL \PROC|Add1~29\ : std_logic;
SIGNAL \PROC|Add1~31_combout\ : std_logic;
SIGNAL \PROC|ShiftLeft0~19_combout\ : std_logic;
SIGNAL \PROC|ShiftLeft0~20_combout\ : std_logic;
SIGNAL \PROC|Selector15~8_combout\ : std_logic;
SIGNAL \PROC|Selector14~3_combout\ : std_logic;
SIGNAL \PROC|Selector14~4_combout\ : std_logic;
SIGNAL \PROC|Selector14~5_combout\ : std_logic;
SIGNAL \PROC|Selector14~7_combout\ : std_logic;
SIGNAL \PROC|Selector9~2_combout\ : std_logic;
SIGNAL \PROC|ShiftLeft0~21_combout\ : std_logic;
SIGNAL \PROC|Selector9~5_combout\ : std_logic;
SIGNAL \PROC|Selector9~6_combout\ : std_logic;
SIGNAL \PROC|ShiftLeft0~24_combout\ : std_logic;
SIGNAL \PROC|Selector9~7_combout\ : std_logic;
SIGNAL \PROC|Selector9~8_combout\ : std_logic;
SIGNAL \PROC|Selector9~9_combout\ : std_logic;
SIGNAL \PROC|Selector9~1_combout\ : std_logic;
SIGNAL \PROC|Add1~39_combout\ : std_logic;
SIGNAL \PROC|Add1~36_combout\ : std_logic;
SIGNAL \PROC|Add1~32\ : std_logic;
SIGNAL \PROC|Add1~35\ : std_logic;
SIGNAL \PROC|Add1~38\ : std_logic;
SIGNAL \PROC|Add1~41\ : std_logic;
SIGNAL \PROC|Add1~44\ : std_logic;
SIGNAL \PROC|Add1~46_combout\ : std_logic;
SIGNAL \PROC|Selector9~10_combout\ : std_logic;
SIGNAL \PROC|Selector10~3_combout\ : std_logic;
SIGNAL \PROC|Selector10~4_combout\ : std_logic;
SIGNAL \PROC|Add1~43_combout\ : std_logic;
SIGNAL \PROC|Selector10~5_combout\ : std_logic;
SIGNAL \PROC|ShiftRight0~15_combout\ : std_logic;
SIGNAL \PROC|ShiftRight0~26_combout\ : std_logic;
SIGNAL \PROC|Selector16~6_combout\ : std_logic;
SIGNAL \PROC|Add1~25_combout\ : std_logic;
SIGNAL \PROC|Selector16~4_combout\ : std_logic;
SIGNAL \PROC|Selector16~5_combout\ : std_logic;
SIGNAL \PROC|Selector16~7_combout\ : std_logic;
SIGNAL \PROC|ShiftLeft0~15_combout\ : std_logic;
SIGNAL \PROC|ShiftLeft0~16_combout\ : std_logic;
SIGNAL \PROC|Selector12~2_combout\ : std_logic;
SIGNAL \PROC|Selector12~4_combout\ : std_logic;
SIGNAL \PROC|Add1~37_combout\ : std_logic;
SIGNAL \PROC|Selector12~5_combout\ : std_logic;
SIGNAL \PROC|Selector12~6_combout\ : std_logic;
SIGNAL \PROC|ShiftRight0~17_combout\ : std_logic;
SIGNAL \PROC|ShiftRight0~18_combout\ : std_logic;
SIGNAL \PROC|ShiftRight0~19_combout\ : std_logic;
SIGNAL \PROC|ShiftRight0~12_combout\ : std_logic;
SIGNAL \PROC|ShiftRight0~13_combout\ : std_logic;
SIGNAL \PROC|ShiftRight0~14_combout\ : std_logic;
SIGNAL \PROC|ShiftRight0~29_combout\ : std_logic;
SIGNAL \PROC|Selector18~3_combout\ : std_logic;
SIGNAL \PROC|AC[6]~7_combout\ : std_logic;
SIGNAL \PROC|Selector18~4_combout\ : std_logic;
SIGNAL \PROC|Selector18~5_combout\ : std_logic;
SIGNAL \PROC|Add1~19_combout\ : std_logic;
SIGNAL \PROC|Selector18~1_combout\ : std_logic;
SIGNAL \PROC|Selector18~6_combout\ : std_logic;
SIGNAL \PROC|IR[4]~feeder_combout\ : std_logic;
SIGNAL \PROC|IR[0]~0_combout\ : std_logic;
SIGNAL \PROC|ShiftLeft0~0_combout\ : std_logic;
SIGNAL \PROC|Selector13~7_combout\ : std_logic;
SIGNAL \PROC|Selector13~8_combout\ : std_logic;
SIGNAL \PROC|Selector13~3_combout\ : std_logic;
SIGNAL \PROC|Selector13~4_combout\ : std_logic;
SIGNAL \PROC|Selector13~5_combout\ : std_logic;
SIGNAL \PROC|ShiftRight0~5_combout\ : std_logic;
SIGNAL \PROC|ShiftRight0~23_combout\ : std_logic;
SIGNAL \PROC|ShiftRight0~24_combout\ : std_logic;
SIGNAL \PROC|Selector13~2_combout\ : std_logic;
SIGNAL \PROC|Add1~34_combout\ : std_logic;
SIGNAL \PROC|Selector13~6_combout\ : std_logic;
SIGNAL \PROC|Selector13~9_combout\ : std_logic;
SIGNAL \PROC|ShiftRight0~7_combout\ : std_logic;
SIGNAL \PROC|ShiftRight0~8_combout\ : std_logic;
SIGNAL \PROC|ShiftRight0~9_combout\ : std_logic;
SIGNAL \PROC|ShiftRight0~4_combout\ : std_logic;
SIGNAL \PROC|ShiftRight0~6_combout\ : std_logic;
SIGNAL \PROC|ShiftRight0~28_combout\ : std_logic;
SIGNAL \PROC|ShiftRight0~0_combout\ : std_logic;
SIGNAL \PROC|ShiftRight0~1_combout\ : std_logic;
SIGNAL \PROC|ShiftRight0~2_combout\ : std_logic;
SIGNAL \PROC|Selector19~3_combout\ : std_logic;
SIGNAL \PROC|Selector19~4_combout\ : std_logic;
SIGNAL \PROC|Selector19~2_combout\ : std_logic;
SIGNAL \PROC|Selector19~5_combout\ : std_logic;
SIGNAL \PROC|Selector19~6_combout\ : std_logic;
SIGNAL \PROC|IR[14]~feeder_combout\ : std_logic;
SIGNAL \PROC|IR[15]~feeder_combout\ : std_logic;
SIGNAL \PROC|Selector24~0_combout\ : std_logic;
SIGNAL \PROC|state~22_combout\ : std_logic;
SIGNAL \PROC|state~30_combout\ : std_logic;
SIGNAL \PROC|state.in1~q\ : std_logic;
SIGNAL \PROC|AC[2]~4_combout\ : std_logic;
SIGNAL \PROC|IR[1]~feeder_combout\ : std_logic;
SIGNAL \PROC|Selector22~5_combout\ : std_logic;
SIGNAL \PROC|Add1~7_combout\ : std_logic;
SIGNAL \PROC|Selector22~3_combout\ : std_logic;
SIGNAL \PROC|Selector22~4_combout\ : std_logic;
SIGNAL \PROC|Selector22~6_combout\ : std_logic;
SIGNAL \PROC|AC[0]~5_combout\ : std_logic;
SIGNAL \PROC|Selector0~0_combout\ : std_logic;
SIGNAL \PROC|Selector0~1_combout\ : std_logic;
SIGNAL \PROC|Selector25~0_combout\ : std_logic;
SIGNAL \PROC|Selector26~0_combout\ : std_logic;
SIGNAL \PROC|Selector2~0_combout\ : std_logic;
SIGNAL \PROC|Selector2~1_combout\ : std_logic;
SIGNAL \PROC|Selector27~0_combout\ : std_logic;
SIGNAL \PROC|state~24_combout\ : std_logic;
SIGNAL \PROC|state~35_combout\ : std_logic;
SIGNAL \PROC|state.store0~q\ : std_logic;
SIGNAL \PROC|WideOr2~0_combout\ : std_logic;
SIGNAL \PROC|Selector32~2_combout\ : std_logic;
SIGNAL \PROC|Selector28~0_combout\ : std_logic;
SIGNAL \PROC|Selector29~0_combout\ : std_logic;
SIGNAL \PROC|state~26_combout\ : std_logic;
SIGNAL \PROC|state~27_combout\ : std_logic;
SIGNAL \PROC|state.nand1~q\ : std_logic;
SIGNAL \PROC|Selector11~4_combout\ : std_logic;
SIGNAL \PROC|Selector11~5_combout\ : std_logic;
SIGNAL \PROC|Selector11~3_combout\ : std_logic;
SIGNAL \PROC|Add1~40_combout\ : std_logic;
SIGNAL \PROC|Selector11~6_combout\ : std_logic;
SIGNAL \PROC|ShiftLeft0~25_combout\ : std_logic;
SIGNAL \PROC|Selector8~3_combout\ : std_logic;
SIGNAL \PROC|Selector8~4_combout\ : std_logic;
SIGNAL \PROC|Selector8~6_combout\ : std_logic;
SIGNAL \PROC|Selector8~7_combout\ : std_logic;
SIGNAL \PROC|Selector8~11_combout\ : std_logic;
SIGNAL \PROC|Selector8~8_combout\ : std_logic;
SIGNAL \PROC|Selector9~3_combout\ : std_logic;
SIGNAL \PROC|Selector8~9_combout\ : std_logic;
SIGNAL \PROC|Selector8~2_combout\ : std_logic;
SIGNAL \PROC|Add1~48_combout\ : std_logic;
SIGNAL \PROC|Add1~47\ : std_logic;
SIGNAL \PROC|Add1~49_combout\ : std_logic;
SIGNAL \PROC|Selector8~10_combout\ : std_logic;
SIGNAL \PROC|Equal0~2_combout\ : std_logic;
SIGNAL \PROC|Equal0~1_combout\ : std_logic;
SIGNAL \PROC|Equal0~0_combout\ : std_logic;
SIGNAL \PROC|Equal0~4_combout\ : std_logic;
SIGNAL \PROC|Selector6~0_combout\ : std_logic;
SIGNAL \PROC|Selector6~1_combout\ : std_logic;
SIGNAL \PROC|Selector32~4_combout\ : std_logic;
SIGNAL \PROC|Selector30~0_combout\ : std_logic;
SIGNAL \PROC|IR[8]~feeder_combout\ : std_logic;
SIGNAL \PROC|Mux0~0_combout\ : std_logic;
SIGNAL \PROC|WideOr2~1_combout\ : std_logic;
SIGNAL \PROC|Selector24~1_combout\ : std_logic;
SIGNAL \PROC|state.fetch1~q\ : std_logic;
SIGNAL \PROC|Add0~2_combout\ : std_logic;
SIGNAL \PROC|Selector6~4_combout\ : std_logic;
SIGNAL \PROC|Selector6~5_combout\ : std_logic;
SIGNAL \PROC|Selector31~0_combout\ : std_logic;
SIGNAL \PROC|state~33_combout\ : std_logic;
SIGNAL \PROC|state.jneg~q\ : std_logic;
SIGNAL \PROC|Selector6~3_combout\ : std_logic;
SIGNAL \PROC|Add0~0_combout\ : std_logic;
SIGNAL \PROC|Selector7~0_combout\ : std_logic;
SIGNAL \PROC|Selector7~1_combout\ : std_logic;
SIGNAL \PROC|Selector32~3_combout\ : std_logic;
SIGNAL \PROC|AC[0]~2_combout\ : std_logic;
SIGNAL \PROC|Selector23~3_combout\ : std_logic;
SIGNAL \PROC|ShiftRight0~10_combout\ : std_logic;
SIGNAL \PROC|Selector23~1_combout\ : std_logic;
SIGNAL \PROC|Selector23~2_combout\ : std_logic;
SIGNAL \PROC|Add1~4_combout\ : std_logic;
SIGNAL \PROC|Selector23~4_combout\ : std_logic;
SIGNAL \PROC|Selector23~5_combout\ : std_logic;
SIGNAL \PROC|IR[13]~feeder_combout\ : std_logic;
SIGNAL \PROC|Add0~4_combout\ : std_logic;
SIGNAL \PROC|Selector5~0_combout\ : std_logic;
SIGNAL \PROC|Selector5~1_combout\ : std_logic;
SIGNAL \PROC|Selector1~0_combout\ : std_logic;
SIGNAL \PROC|Selector1~1_combout\ : std_logic;
SIGNAL \MEM|altsyncram_component|auto_generated|q_a\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \PROC|RT\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \PROC|PC\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \PROC|IR\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \PROC|AC\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;

BEGIN

ww_reloj <= reloj;
ww_reset <= reset;
IR_out <= ww_IR_out;
AC_out <= ww_AC_out;
PC_out <= ww_PC_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\MEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & \PROC|AC\(15) & \PROC|AC\(14) & \PROC|AC\(13) & \PROC|AC\(12) & \PROC|AC\(11) & \PROC|AC\(10) & \PROC|AC\(9) & \PROC|AC\(8) & \PROC|AC\(7) & \PROC|AC\(6)
& \PROC|AC\(5) & \PROC|AC\(4) & \PROC|AC\(3) & \PROC|AC\(2) & \PROC|AC\(1) & \PROC|AC\(0));

\MEM|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\PROC|Selector25~0_combout\ & \PROC|Selector26~0_combout\ & \PROC|Selector27~0_combout\ & \PROC|Selector28~0_combout\ & \PROC|Selector29~0_combout\ & \PROC|Selector30~0_combout\ & 
\PROC|Selector31~0_combout\ & \PROC|Selector32~3_combout\);

\MEM|altsyncram_component|auto_generated|q_a\(0) <= \MEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\MEM|altsyncram_component|auto_generated|q_a\(1) <= \MEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\MEM|altsyncram_component|auto_generated|q_a\(2) <= \MEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\MEM|altsyncram_component|auto_generated|q_a\(3) <= \MEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\MEM|altsyncram_component|auto_generated|q_a\(4) <= \MEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\MEM|altsyncram_component|auto_generated|q_a\(5) <= \MEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\MEM|altsyncram_component|auto_generated|q_a\(6) <= \MEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\MEM|altsyncram_component|auto_generated|q_a\(7) <= \MEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\MEM|altsyncram_component|auto_generated|q_a\(8) <= \MEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\MEM|altsyncram_component|auto_generated|q_a\(9) <= \MEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\MEM|altsyncram_component|auto_generated|q_a\(10) <= \MEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\MEM|altsyncram_component|auto_generated|q_a\(11) <= \MEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\MEM|altsyncram_component|auto_generated|q_a\(12) <= \MEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\MEM|altsyncram_component|auto_generated|q_a\(13) <= \MEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);
\MEM|altsyncram_component|auto_generated|q_a\(14) <= \MEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(14);
\MEM|altsyncram_component|auto_generated|q_a\(15) <= \MEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(15);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\reloj~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reloj~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;

-- Location: LCCOMB_X39_Y71_N18
\PROC|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Add0~10_combout\ = (\PROC|PC\(5) & (!\PROC|Add0~9\)) # (!\PROC|PC\(5) & ((\PROC|Add0~9\) # (GND)))
-- \PROC|Add0~11\ = CARRY((!\PROC|Add0~9\) # (!\PROC|PC\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|PC\(5),
	datad => VCC,
	cin => \PROC|Add0~9\,
	combout => \PROC|Add0~10_combout\,
	cout => \PROC|Add0~11\);

-- Location: LCCOMB_X39_Y71_N20
\PROC|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Add0~12_combout\ = (\PROC|PC\(6) & (\PROC|Add0~11\ $ (GND))) # (!\PROC|PC\(6) & (!\PROC|Add0~11\ & VCC))
-- \PROC|Add0~13\ = CARRY((\PROC|PC\(6) & !\PROC|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|PC\(6),
	datad => VCC,
	cin => \PROC|Add0~11\,
	combout => \PROC|Add0~12_combout\,
	cout => \PROC|Add0~13\);

-- Location: LCCOMB_X34_Y70_N2
\PROC|ShiftRight0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftRight0~3_combout\ = (\PROC|IR\(0) & (\PROC|AC\(3))) # (!\PROC|IR\(0) & ((\PROC|AC\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IR\(0),
	datac => \PROC|AC\(3),
	datad => \PROC|AC\(2),
	combout => \PROC|ShiftRight0~3_combout\);

-- Location: LCCOMB_X33_Y70_N10
\PROC|Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector23~0_combout\ = (\PROC|AC[0]~1_combout\ & ((\PROC|ShiftRight0~3_combout\) # ((\PROC|AC[0]~0_combout\)))) # (!\PROC|AC[0]~1_combout\ & (((\PROC|AC\(1) & !\PROC|AC[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ShiftRight0~3_combout\,
	datab => \PROC|AC[0]~1_combout\,
	datac => \PROC|AC\(1),
	datad => \PROC|AC[0]~0_combout\,
	combout => \PROC|Selector23~0_combout\);

-- Location: FF_X35_Y70_N9
\PROC|RT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \MEM|altsyncram_component|auto_generated|q_a\(0),
	sload => VCC,
	ena => \PROC|RT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|RT\(0));

-- Location: LCCOMB_X34_Y70_N30
\PROC|ShiftRight0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftRight0~11_combout\ = (\PROC|IR\(0) & ((\PROC|AC\(4)))) # (!\PROC|IR\(0) & (\PROC|AC\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IR\(0),
	datac => \PROC|AC\(3),
	datad => \PROC|AC\(4),
	combout => \PROC|ShiftRight0~11_combout\);

-- Location: LCCOMB_X34_Y71_N30
\PROC|Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector22~0_combout\ = (\PROC|AC[0]~0_combout\ & ((\PROC|ShiftRight0~14_combout\) # ((\PROC|AC[0]~1_combout\)))) # (!\PROC|AC[0]~0_combout\ & (((\PROC|AC\(2) & !\PROC|AC[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AC[0]~0_combout\,
	datab => \PROC|ShiftRight0~14_combout\,
	datac => \PROC|AC\(2),
	datad => \PROC|AC[0]~1_combout\,
	combout => \PROC|Selector22~0_combout\);

-- Location: LCCOMB_X33_Y70_N18
\PROC|ShiftRight0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftRight0~20_combout\ = (\PROC|ShiftRight0~16_combout\) # ((!\PROC|IR\(2) & \PROC|ShiftRight0~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|IR\(2),
	datac => \PROC|ShiftRight0~19_combout\,
	datad => \PROC|ShiftRight0~16_combout\,
	combout => \PROC|ShiftRight0~20_combout\);

-- Location: LCCOMB_X34_Y70_N12
\PROC|Selector22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector22~1_combout\ = (\PROC|Selector22~0_combout\ & (((\PROC|ShiftRight0~20_combout\) # (!\PROC|AC[0]~1_combout\)))) # (!\PROC|Selector22~0_combout\ & (\PROC|ShiftRight0~11_combout\ & ((\PROC|AC[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ShiftRight0~11_combout\,
	datab => \PROC|ShiftRight0~20_combout\,
	datac => \PROC|Selector22~0_combout\,
	datad => \PROC|AC[0]~1_combout\,
	combout => \PROC|Selector22~1_combout\);

-- Location: LCCOMB_X34_Y70_N26
\PROC|Selector22~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector22~2_combout\ = (\PROC|state.shr1~q\ & ((\PROC|ShiftLeft0~0_combout\ & (\PROC|AC\(15))) # (!\PROC|ShiftLeft0~0_combout\ & ((\PROC|Selector22~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AC\(15),
	datab => \PROC|state.shr1~q\,
	datac => \PROC|ShiftLeft0~0_combout\,
	datad => \PROC|Selector22~1_combout\,
	combout => \PROC|Selector22~2_combout\);

-- Location: FF_X36_Y70_N21
\PROC|RT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \MEM|altsyncram_component|auto_generated|q_a\(1),
	sload => VCC,
	ena => \PROC|RT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|RT\(1));

-- Location: LCCOMB_X36_Y70_N20
\PROC|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Add1~6_combout\ = (\PROC|state.add1~q\ & (\PROC|RT\(1))) # (!\PROC|state.add1~q\ & ((!\MEM|altsyncram_component|auto_generated|q_a\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|state.add1~q\,
	datac => \PROC|RT\(1),
	datad => \MEM|altsyncram_component|auto_generated|q_a\(1),
	combout => \PROC|Add1~6_combout\);

-- Location: LCCOMB_X33_Y70_N16
\PROC|ShiftRight0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftRight0~21_combout\ = (\PROC|IR\(1) & ((\PROC|ShiftRight0~8_combout\))) # (!\PROC|IR\(1) & (\PROC|ShiftRight0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|IR\(1),
	datac => \PROC|ShiftRight0~0_combout\,
	datad => \PROC|ShiftRight0~8_combout\,
	combout => \PROC|ShiftRight0~21_combout\);

-- Location: LCCOMB_X33_Y70_N22
\PROC|Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector21~0_combout\ = (\PROC|AC[0]~0_combout\ & (((\PROC|AC[0]~1_combout\)))) # (!\PROC|AC[0]~0_combout\ & ((\PROC|AC[0]~1_combout\ & ((\PROC|ShiftRight0~1_combout\))) # (!\PROC|AC[0]~1_combout\ & (\PROC|ShiftRight0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ShiftRight0~3_combout\,
	datab => \PROC|AC[0]~0_combout\,
	datac => \PROC|AC[0]~1_combout\,
	datad => \PROC|ShiftRight0~1_combout\,
	combout => \PROC|Selector21~0_combout\);

-- Location: LCCOMB_X32_Y70_N26
\PROC|ShiftRight0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftRight0~22_combout\ = (\PROC|IR\(0) & (\PROC|AC\(15))) # (!\PROC|IR\(0) & ((\PROC|IR\(1) & (\PROC|AC\(15))) # (!\PROC|IR\(1) & ((\PROC|AC\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IR\(0),
	datab => \PROC|AC\(15),
	datac => \PROC|AC\(14),
	datad => \PROC|IR\(1),
	combout => \PROC|ShiftRight0~22_combout\);

-- Location: LCCOMB_X33_Y70_N28
\PROC|Selector21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector21~1_combout\ = (\PROC|AC[0]~0_combout\ & ((\PROC|Selector21~0_combout\ & (\PROC|ShiftRight0~24_combout\)) # (!\PROC|Selector21~0_combout\ & ((\PROC|ShiftRight0~21_combout\))))) # (!\PROC|AC[0]~0_combout\ & (((\PROC|Selector21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ShiftRight0~24_combout\,
	datab => \PROC|AC[0]~0_combout\,
	datac => \PROC|Selector21~0_combout\,
	datad => \PROC|ShiftRight0~21_combout\,
	combout => \PROC|Selector21~1_combout\);

-- Location: LCCOMB_X34_Y70_N20
\PROC|Selector21~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector21~2_combout\ = (\PROC|state.shr1~q\ & ((\PROC|ShiftLeft0~0_combout\ & (\PROC|AC\(15))) # (!\PROC|ShiftLeft0~0_combout\ & ((\PROC|Selector21~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AC\(15),
	datab => \PROC|state.shr1~q\,
	datac => \PROC|ShiftLeft0~0_combout\,
	datad => \PROC|Selector21~1_combout\,
	combout => \PROC|Selector21~2_combout\);

-- Location: FF_X36_Y70_N3
\PROC|RT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \MEM|altsyncram_component|auto_generated|q_a\(2),
	sload => VCC,
	ena => \PROC|RT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|RT\(2));

-- Location: LCCOMB_X36_Y70_N2
\PROC|Add1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Add1~9_combout\ = (\PROC|state.add1~q\ & ((\PROC|RT\(2)))) # (!\PROC|state.add1~q\ & (!\MEM|altsyncram_component|auto_generated|q_a\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEM|altsyncram_component|auto_generated|q_a\(2),
	datac => \PROC|RT\(2),
	datad => \PROC|state.add1~q\,
	combout => \PROC|Add1~9_combout\);

-- Location: LCCOMB_X33_Y71_N28
\PROC|ShiftRight0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftRight0~25_combout\ = (\PROC|IR\(1) & (\PROC|ShiftRight0~18_combout\)) # (!\PROC|IR\(1) & ((\PROC|ShiftRight0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IR\(1),
	datac => \PROC|ShiftRight0~18_combout\,
	datad => \PROC|ShiftRight0~12_combout\,
	combout => \PROC|ShiftRight0~25_combout\);

-- Location: LCCOMB_X34_Y70_N10
\PROC|Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector20~0_combout\ = (\PROC|AC[0]~0_combout\ & ((\PROC|AC[0]~1_combout\) # ((\PROC|ShiftRight0~25_combout\)))) # (!\PROC|AC[0]~0_combout\ & (!\PROC|AC[0]~1_combout\ & (\PROC|ShiftRight0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AC[0]~0_combout\,
	datab => \PROC|AC[0]~1_combout\,
	datac => \PROC|ShiftRight0~11_combout\,
	datad => \PROC|ShiftRight0~25_combout\,
	combout => \PROC|Selector20~0_combout\);

-- Location: LCCOMB_X33_Y69_N8
\PROC|ShiftRight0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftRight0~27_combout\ = (\PROC|IR\(2) & (\PROC|AC\(15))) # (!\PROC|IR\(2) & ((\PROC|ShiftRight0~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|AC\(15),
	datac => \PROC|IR\(2),
	datad => \PROC|ShiftRight0~26_combout\,
	combout => \PROC|ShiftRight0~27_combout\);

-- Location: LCCOMB_X34_Y70_N16
\PROC|Selector20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector20~1_combout\ = (\PROC|AC[0]~1_combout\ & ((\PROC|Selector20~0_combout\ & (\PROC|ShiftRight0~27_combout\)) # (!\PROC|Selector20~0_combout\ & ((\PROC|ShiftRight0~13_combout\))))) # (!\PROC|AC[0]~1_combout\ & (((\PROC|Selector20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AC[0]~1_combout\,
	datab => \PROC|ShiftRight0~27_combout\,
	datac => \PROC|ShiftRight0~13_combout\,
	datad => \PROC|Selector20~0_combout\,
	combout => \PROC|Selector20~1_combout\);

-- Location: LCCOMB_X34_Y70_N22
\PROC|Selector20~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector20~2_combout\ = (\PROC|state.shr1~q\ & ((\PROC|ShiftLeft0~0_combout\ & (\PROC|AC\(15))) # (!\PROC|ShiftLeft0~0_combout\ & ((\PROC|Selector20~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AC\(15),
	datab => \PROC|state.shr1~q\,
	datac => \PROC|ShiftLeft0~0_combout\,
	datad => \PROC|Selector20~1_combout\,
	combout => \PROC|Selector20~2_combout\);

-- Location: LCCOMB_X32_Y69_N28
\PROC|ShiftLeft0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftLeft0~6_combout\ = (!\PROC|IR\(1) & (\PROC|IR\(2) & (\PROC|AC\(0) & !\PROC|IR\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IR\(1),
	datab => \PROC|IR\(2),
	datac => \PROC|AC\(0),
	datad => \PROC|IR\(0),
	combout => \PROC|ShiftLeft0~6_combout\);

-- Location: LCCOMB_X33_Y70_N6
\PROC|ShiftLeft0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftLeft0~7_combout\ = (\PROC|IR\(1) & ((\PROC|IR\(0) & ((\PROC|AC\(1)))) # (!\PROC|IR\(0) & (\PROC|AC\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AC\(2),
	datab => \PROC|IR\(1),
	datac => \PROC|AC\(1),
	datad => \PROC|IR\(0),
	combout => \PROC|ShiftLeft0~7_combout\);

-- Location: LCCOMB_X32_Y71_N0
\PROC|ShiftLeft0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftLeft0~8_combout\ = (!\PROC|IR\(1) & ((\PROC|IR\(0) & (\PROC|AC\(3))) # (!\PROC|IR\(0) & ((\PROC|AC\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IR\(1),
	datab => \PROC|IR\(0),
	datac => \PROC|AC\(3),
	datad => \PROC|AC\(4),
	combout => \PROC|ShiftLeft0~8_combout\);

-- Location: LCCOMB_X32_Y69_N6
\PROC|ShiftLeft0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftLeft0~9_combout\ = (\PROC|ShiftLeft0~6_combout\) # ((!\PROC|IR\(2) & ((\PROC|ShiftLeft0~7_combout\) # (\PROC|ShiftLeft0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ShiftLeft0~7_combout\,
	datab => \PROC|ShiftLeft0~6_combout\,
	datac => \PROC|IR\(2),
	datad => \PROC|ShiftLeft0~8_combout\,
	combout => \PROC|ShiftLeft0~9_combout\);

-- Location: FF_X35_Y70_N13
\PROC|RT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \MEM|altsyncram_component|auto_generated|q_a\(4),
	sload => VCC,
	ena => \PROC|RT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|RT\(4));

-- Location: LCCOMB_X36_Y70_N30
\PROC|Add1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Add1~15_combout\ = (\PROC|state.add1~q\ & (\PROC|RT\(4))) # (!\PROC|state.add1~q\ & ((!\MEM|altsyncram_component|auto_generated|q_a\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|RT\(4),
	datab => \PROC|state.add1~q\,
	datad => \MEM|altsyncram_component|auto_generated|q_a\(4),
	combout => \PROC|Add1~15_combout\);

-- Location: LCCOMB_X33_Y71_N0
\PROC|ShiftLeft0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftLeft0~11_combout\ = (\PROC|IR\(1) & ((\PROC|ShiftLeft0~4_combout\))) # (!\PROC|IR\(1) & (\PROC|ShiftLeft0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ShiftLeft0~10_combout\,
	datac => \PROC|ShiftLeft0~4_combout\,
	datad => \PROC|IR\(1),
	combout => \PROC|ShiftLeft0~11_combout\);

-- Location: LCCOMB_X33_Y71_N6
\PROC|ShiftLeft0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftLeft0~12_combout\ = (\PROC|IR\(2) & (!\PROC|IR\(1) & ((\PROC|ShiftLeft0~1_combout\)))) # (!\PROC|IR\(2) & (((\PROC|ShiftLeft0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IR\(1),
	datab => \PROC|ShiftLeft0~11_combout\,
	datac => \PROC|IR\(2),
	datad => \PROC|ShiftLeft0~1_combout\,
	combout => \PROC|ShiftLeft0~12_combout\);

-- Location: LCCOMB_X38_Y70_N16
\PROC|Selector17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector17~1_combout\ = (\MEM|altsyncram_component|auto_generated|q_a\(6) & ((\PROC|state.load1~q\) # ((!\PROC|AC\(6) & \PROC|state.nand1~q\)))) # (!\MEM|altsyncram_component|auto_generated|q_a\(6) & (((\PROC|state.nand1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AC\(6),
	datab => \PROC|state.load1~q\,
	datac => \PROC|state.nand1~q\,
	datad => \MEM|altsyncram_component|auto_generated|q_a\(6),
	combout => \PROC|Selector17~1_combout\);

-- Location: LCCOMB_X38_Y69_N22
\PROC|ShiftRight0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftRight0~30_combout\ = (\PROC|AC[0]~2_combout\ & (\PROC|AC\(14))) # (!\PROC|AC[0]~2_combout\ & ((\PROC|AC\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|AC\(14),
	datac => \PROC|AC[0]~2_combout\,
	datad => \PROC|AC\(15),
	combout => \PROC|ShiftRight0~30_combout\);

-- Location: LCCOMB_X38_Y70_N10
\PROC|Selector17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector17~2_combout\ = (\PROC|AC[6]~7_combout\ & (!\PROC|AC[0]~6_combout\)) # (!\PROC|AC[6]~7_combout\ & ((\PROC|AC[0]~6_combout\ & ((\PROC|ShiftRight0~21_combout\))) # (!\PROC|AC[0]~6_combout\ & (\PROC|ShiftRight0~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AC[6]~7_combout\,
	datab => \PROC|AC[0]~6_combout\,
	datac => \PROC|ShiftRight0~30_combout\,
	datad => \PROC|ShiftRight0~21_combout\,
	combout => \PROC|Selector17~2_combout\);

-- Location: LCCOMB_X38_Y70_N8
\PROC|Selector17~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector17~3_combout\ = (\PROC|AC[6]~7_combout\ & ((\PROC|Selector17~2_combout\ & ((\PROC|AC\(15)))) # (!\PROC|Selector17~2_combout\ & (\PROC|ShiftRight0~23_combout\)))) # (!\PROC|AC[6]~7_combout\ & (((\PROC|Selector17~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AC[6]~7_combout\,
	datab => \PROC|ShiftRight0~23_combout\,
	datac => \PROC|AC\(15),
	datad => \PROC|Selector17~2_combout\,
	combout => \PROC|Selector17~3_combout\);

-- Location: LCCOMB_X38_Y70_N26
\PROC|Selector17~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector17~4_combout\ = (\PROC|Selector17~1_combout\) # ((\PROC|state.shr1~q\ & \PROC|Selector17~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|state.shr1~q\,
	datac => \PROC|Selector17~3_combout\,
	datad => \PROC|Selector17~1_combout\,
	combout => \PROC|Selector17~4_combout\);

-- Location: LCCOMB_X33_Y71_N2
\PROC|Selector16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector16~1_combout\ = (\PROC|state.shr1~q\ & ((\PROC|ShiftRight0~25_combout\) # ((\PROC|state.shl1~q\ & \PROC|ShiftLeft0~16_combout\)))) # (!\PROC|state.shr1~q\ & (\PROC|state.shl1~q\ & (\PROC|ShiftLeft0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state.shr1~q\,
	datab => \PROC|state.shl1~q\,
	datac => \PROC|ShiftLeft0~16_combout\,
	datad => \PROC|ShiftRight0~25_combout\,
	combout => \PROC|Selector16~1_combout\);

-- Location: LCCOMB_X39_Y69_N22
\PROC|Selector16~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector16~3_combout\ = (\PROC|AC[0]~6_combout\ & (\PROC|IR\(2) & (\PROC|ShiftLeft0~5_combout\ & \PROC|state.shl1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AC[0]~6_combout\,
	datab => \PROC|IR\(2),
	datac => \PROC|ShiftLeft0~5_combout\,
	datad => \PROC|state.shl1~q\,
	combout => \PROC|Selector16~3_combout\);

-- Location: FF_X36_Y69_N5
\PROC|RT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \MEM|altsyncram_component|auto_generated|q_a\(7),
	sload => VCC,
	ena => \PROC|RT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|RT\(7));

-- Location: LCCOMB_X36_Y69_N4
\PROC|Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Add1~24_combout\ = (\PROC|state.add1~q\ & ((\PROC|RT\(7)))) # (!\PROC|state.add1~q\ & (!\MEM|altsyncram_component|auto_generated|q_a\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|altsyncram_component|auto_generated|q_a\(7),
	datab => \PROC|state.add1~q\,
	datac => \PROC|RT\(7),
	combout => \PROC|Add1~24_combout\);

-- Location: FF_X36_Y69_N7
\PROC|RT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \MEM|altsyncram_component|auto_generated|q_a\(8),
	sload => VCC,
	ena => \PROC|RT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|RT\(8));

-- Location: LCCOMB_X36_Y69_N6
\PROC|Add1~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Add1~27_combout\ = (\PROC|state.add1~q\ & ((\PROC|RT\(8)))) # (!\PROC|state.add1~q\ & (!\MEM|altsyncram_component|auto_generated|q_a\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|altsyncram_component|auto_generated|q_a\(8),
	datac => \PROC|RT\(8),
	datad => \PROC|state.add1~q\,
	combout => \PROC|Add1~27_combout\);

-- Location: LCCOMB_X32_Y69_N22
\PROC|Selector15~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector15~14_combout\ = (\PROC|Selector15~16_combout\) # ((\PROC|Selector15~13_combout\ & ((\PROC|ShiftLeft0~7_combout\) # (\PROC|ShiftLeft0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ShiftLeft0~7_combout\,
	datab => \PROC|Selector15~13_combout\,
	datac => \PROC|Selector15~16_combout\,
	datad => \PROC|ShiftLeft0~8_combout\,
	combout => \PROC|Selector15~14_combout\);

-- Location: FF_X36_Y69_N31
\PROC|RT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \MEM|altsyncram_component|auto_generated|q_a\(10),
	sload => VCC,
	ena => \PROC|RT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|RT\(10));

-- Location: LCCOMB_X36_Y69_N30
\PROC|Add1~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Add1~33_combout\ = (\PROC|state.add1~q\ & ((\PROC|RT\(10)))) # (!\PROC|state.add1~q\ & (!\MEM|altsyncram_component|auto_generated|q_a\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|altsyncram_component|auto_generated|q_a\(10),
	datac => \PROC|RT\(10),
	datad => \PROC|state.add1~q\,
	combout => \PROC|Add1~33_combout\);

-- Location: LCCOMB_X33_Y69_N30
\PROC|ShiftLeft0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftLeft0~23_combout\ = (\PROC|IR\(1) & (\PROC|ShiftLeft0~19_combout\)) # (!\PROC|IR\(1) & ((\PROC|ShiftLeft0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|ShiftLeft0~19_combout\,
	datac => \PROC|ShiftLeft0~22_combout\,
	datad => \PROC|IR\(1),
	combout => \PROC|ShiftLeft0~23_combout\);

-- Location: LCCOMB_X33_Y69_N12
\PROC|Selector12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector12~3_combout\ = (\PROC|ShiftLeft0~23_combout\ & ((\PROC|AC[11]~8_combout\) # ((\PROC|ShiftRight0~27_combout\ & \PROC|AC[0]~3_combout\)))) # (!\PROC|ShiftLeft0~23_combout\ & (((\PROC|ShiftRight0~27_combout\ & \PROC|AC[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ShiftLeft0~23_combout\,
	datab => \PROC|AC[11]~8_combout\,
	datac => \PROC|ShiftRight0~27_combout\,
	datad => \PROC|AC[0]~3_combout\,
	combout => \PROC|Selector12~3_combout\);

-- Location: LCCOMB_X34_Y69_N26
\PROC|Selector11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector11~1_combout\ = (\PROC|AC[0]~1_combout\ & (!\PROC|AC[0]~0_combout\ & ((\PROC|ShiftLeft0~21_combout\)))) # (!\PROC|AC[0]~1_combout\ & ((\PROC|AC[0]~0_combout\) # ((\PROC|ShiftLeft0~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AC[0]~1_combout\,
	datab => \PROC|AC[0]~0_combout\,
	datac => \PROC|ShiftLeft0~24_combout\,
	datad => \PROC|ShiftLeft0~21_combout\,
	combout => \PROC|Selector11~1_combout\);

-- Location: LCCOMB_X33_Y69_N10
\PROC|Selector11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector11~2_combout\ = (\PROC|AC[0]~0_combout\ & ((\PROC|Selector11~1_combout\ & (\PROC|ShiftLeft0~18_combout\)) # (!\PROC|Selector11~1_combout\ & ((\PROC|ShiftLeft0~9_combout\))))) # (!\PROC|AC[0]~0_combout\ & (((\PROC|Selector11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AC[0]~0_combout\,
	datab => \PROC|ShiftLeft0~18_combout\,
	datac => \PROC|ShiftLeft0~9_combout\,
	datad => \PROC|Selector11~1_combout\,
	combout => \PROC|Selector11~2_combout\);

-- Location: FF_X36_Y69_N21
\PROC|RT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \MEM|altsyncram_component|auto_generated|q_a\(13),
	sload => VCC,
	ena => \PROC|RT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|RT\(13));

-- Location: LCCOMB_X36_Y69_N20
\PROC|Add1~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Add1~42_combout\ = (\PROC|state.add1~q\ & ((\PROC|RT\(13)))) # (!\PROC|state.add1~q\ & (!\MEM|altsyncram_component|auto_generated|q_a\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|altsyncram_component|auto_generated|q_a\(13),
	datac => \PROC|RT\(13),
	datad => \PROC|state.add1~q\,
	combout => \PROC|Add1~42_combout\);

-- Location: LCCOMB_X38_Y69_N10
\PROC|Selector9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector9~4_combout\ = (\PROC|AC\(14) & (((\PROC|AC[0]~2_combout\ & \PROC|AC[0]~3_combout\)) # (!\PROC|Selector9~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AC[0]~2_combout\,
	datab => \PROC|AC\(14),
	datac => \PROC|AC[0]~3_combout\,
	datad => \PROC|Selector9~3_combout\,
	combout => \PROC|Selector9~4_combout\);

-- Location: FF_X36_Y70_N25
\PROC|RT[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \MEM|altsyncram_component|auto_generated|q_a\(14),
	sload => VCC,
	ena => \PROC|RT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|RT\(14));

-- Location: LCCOMB_X36_Y70_N24
\PROC|Add1~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Add1~45_combout\ = (\PROC|state.add1~q\ & ((\PROC|RT\(14)))) # (!\PROC|state.add1~q\ & (!\MEM|altsyncram_component|auto_generated|q_a\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEM|altsyncram_component|auto_generated|q_a\(14),
	datac => \PROC|RT\(14),
	datad => \PROC|state.add1~q\,
	combout => \PROC|Add1~45_combout\);

-- Location: LCCOMB_X33_Y69_N2
\PROC|Selector8~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector8~5_combout\ = (!\PROC|IR\(1) & ((\PROC|IR\(0) & (\PROC|AC\(14))) # (!\PROC|IR\(0) & ((\PROC|AC\(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AC\(14),
	datab => \PROC|IR\(0),
	datac => \PROC|AC\(15),
	datad => \PROC|IR\(1),
	combout => \PROC|Selector8~5_combout\);

-- Location: LCCOMB_X34_Y71_N26
\PROC|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Equal0~3_combout\ = (!\PROC|AC\(2) & (!\PROC|AC\(0) & !\PROC|AC\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AC\(2),
	datac => \PROC|AC\(0),
	datad => \PROC|AC\(1),
	combout => \PROC|Equal0~3_combout\);

-- Location: FF_X36_Y70_N19
\PROC|state.jump\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|state~34_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|state.jump~q\);

-- Location: LCCOMB_X35_Y71_N18
\PROC|Selector6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector6~2_combout\ = (\PROC|AC\(15) & (!\PROC|state.jpos~q\ & (!\PROC|state.jzero~q\))) # (!\PROC|AC\(15) & ((\PROC|Equal0~4_combout\ & (!\PROC|state.jpos~q\)) # (!\PROC|Equal0~4_combout\ & ((!\PROC|state.jzero~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state.jpos~q\,
	datab => \PROC|state.jzero~q\,
	datac => \PROC|Equal0~4_combout\,
	datad => \PROC|AC\(15),
	combout => \PROC|Selector6~2_combout\);

-- Location: LCCOMB_X36_Y70_N18
\PROC|state~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|state~34_combout\ = (\PROC|IR\(8) & (\PROC|IR\(9) & \PROC|state~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IR\(8),
	datab => \PROC|IR\(9),
	datad => \PROC|state~24_combout\,
	combout => \PROC|state~34_combout\);

-- Location: LCCOMB_X39_Y69_N30
\PROC|Selector19~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector19~7_combout\ = (!\PROC|IR\(3) & (!\PROC|ShiftLeft0~0_combout\ & (\PROC|ShiftLeft0~9_combout\ & \PROC|state.shl1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IR\(3),
	datab => \PROC|ShiftLeft0~0_combout\,
	datac => \PROC|ShiftLeft0~9_combout\,
	datad => \PROC|state.shl1~q\,
	combout => \PROC|Selector19~7_combout\);

-- Location: LCCOMB_X32_Y70_N30
\PROC|Selector15~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector15~15_combout\ = (\PROC|AC[0]~3_combout\ & ((\PROC|IR\(2) & ((\PROC|ShiftRight0~6_combout\))) # (!\PROC|IR\(2) & (\PROC|ShiftRight0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ShiftRight0~9_combout\,
	datab => \PROC|AC[0]~3_combout\,
	datac => \PROC|IR\(2),
	datad => \PROC|ShiftRight0~6_combout\,
	combout => \PROC|Selector15~15_combout\);

-- Location: LCCOMB_X32_Y69_N30
\PROC|Selector15~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector15~16_combout\ = (\PROC|AC[0]~2_combout\ & (\PROC|AC\(0) & (\PROC|IR\(3) & \PROC|state.shl1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AC[0]~2_combout\,
	datab => \PROC|AC\(0),
	datac => \PROC|IR\(3),
	datad => \PROC|state.shl1~q\,
	combout => \PROC|Selector15~16_combout\);

-- Location: LCCOMB_X32_Y69_N12
\PROC|Selector12~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector12~7_combout\ = (\PROC|state.shl1~q\ & (!\PROC|IR\(2) & (\PROC|IR\(3) & \PROC|ShiftLeft0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state.shl1~q\,
	datab => \PROC|IR\(2),
	datac => \PROC|IR\(3),
	datad => \PROC|ShiftLeft0~5_combout\,
	combout => \PROC|Selector12~7_combout\);

-- Location: IOOBUF_X31_Y73_N2
\IR_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PROC|IR\(0),
	devoe => ww_devoe,
	o => \IR_out[0]~output_o\);

-- Location: IOOBUF_X33_Y73_N9
\IR_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PROC|IR\(1),
	devoe => ww_devoe,
	o => \IR_out[1]~output_o\);

-- Location: IOOBUF_X35_Y73_N16
\IR_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PROC|IR\(2),
	devoe => ww_devoe,
	o => \IR_out[2]~output_o\);

-- Location: IOOBUF_X38_Y73_N9
\IR_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PROC|IR\(3),
	devoe => ww_devoe,
	o => \IR_out[3]~output_o\);

-- Location: IOOBUF_X0_Y67_N16
\IR_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PROC|IR\(4),
	devoe => ww_devoe,
	o => \IR_out[4]~output_o\);

-- Location: IOOBUF_X45_Y73_N2
\IR_out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PROC|IR\(5),
	devoe => ww_devoe,
	o => \IR_out[5]~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\IR_out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PROC|IR\(6),
	devoe => ww_devoe,
	o => \IR_out[6]~output_o\);

-- Location: IOOBUF_X52_Y73_N2
\IR_out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PROC|IR\(7),
	devoe => ww_devoe,
	o => \IR_out[7]~output_o\);

-- Location: IOOBUF_X42_Y73_N9
\IR_out[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PROC|IR\(8),
	devoe => ww_devoe,
	o => \IR_out[8]~output_o\);

-- Location: IOOBUF_X40_Y73_N9
\IR_out[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PROC|IR\(9),
	devoe => ww_devoe,
	o => \IR_out[9]~output_o\);

-- Location: IOOBUF_X0_Y69_N9
\IR_out[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PROC|IR\(10),
	devoe => ww_devoe,
	o => \IR_out[10]~output_o\);

-- Location: IOOBUF_X42_Y73_N2
\IR_out[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PROC|IR\(11),
	devoe => ww_devoe,
	o => \IR_out[11]~output_o\);

-- Location: IOOBUF_X45_Y73_N9
\IR_out[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PROC|IR\(12),
	devoe => ww_devoe,
	o => \IR_out[12]~output_o\);

-- Location: IOOBUF_X52_Y73_N9
\IR_out[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PROC|IR\(13),
	devoe => ww_devoe,
	o => \IR_out[13]~output_o\);

-- Location: IOOBUF_X49_Y73_N16
\IR_out[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PROC|IR\(14),
	devoe => ww_devoe,
	o => \IR_out[14]~output_o\);

-- Location: IOOBUF_X49_Y73_N23
\IR_out[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PROC|IR\(15),
	devoe => ww_devoe,
	o => \IR_out[15]~output_o\);

-- Location: IOOBUF_X0_Y68_N2
\AC_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PROC|AC\(0),
	devoe => ww_devoe,
	o => \AC_out[0]~output_o\);

-- Location: IOOBUF_X33_Y73_N2
\AC_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PROC|AC\(1),
	devoe => ww_devoe,
	o => \AC_out[1]~output_o\);

-- Location: IOOBUF_X35_Y73_N23
\AC_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PROC|AC\(2),
	devoe => ww_devoe,
	o => \AC_out[2]~output_o\);

-- Location: IOOBUF_X27_Y73_N23
\AC_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PROC|AC\(3),
	devoe => ww_devoe,
	o => \AC_out[3]~output_o\);

-- Location: IOOBUF_X29_Y73_N9
\AC_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PROC|AC\(4),
	devoe => ww_devoe,
	o => \AC_out[4]~output_o\);

-- Location: IOOBUF_X0_Y68_N16
\AC_out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PROC|AC\(5),
	devoe => ww_devoe,
	o => \AC_out[5]~output_o\);

-- Location: IOOBUF_X23_Y73_N2
\AC_out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PROC|AC\(6),
	devoe => ww_devoe,
	o => \AC_out[6]~output_o\);

-- Location: IOOBUF_X0_Y68_N9
\AC_out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PROC|AC\(7),
	devoe => ww_devoe,
	o => \AC_out[7]~output_o\);

-- Location: IOOBUF_X27_Y73_N16
\AC_out[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PROC|AC\(8),
	devoe => ww_devoe,
	o => \AC_out[8]~output_o\);

-- Location: IOOBUF_X25_Y73_N16
\AC_out[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PROC|AC\(9),
	devoe => ww_devoe,
	o => \AC_out[9]~output_o\);

-- Location: IOOBUF_X25_Y73_N23
\AC_out[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PROC|AC\(10),
	devoe => ww_devoe,
	o => \AC_out[10]~output_o\);

-- Location: IOOBUF_X27_Y73_N9
\AC_out[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PROC|AC\(11),
	devoe => ww_devoe,
	o => \AC_out[11]~output_o\);

-- Location: IOOBUF_X29_Y73_N2
\AC_out[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PROC|AC\(12),
	devoe => ww_devoe,
	o => \AC_out[12]~output_o\);

-- Location: IOOBUF_X38_Y73_N16
\AC_out[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PROC|AC\(13),
	devoe => ww_devoe,
	o => \AC_out[13]~output_o\);

-- Location: IOOBUF_X31_Y73_N9
\AC_out[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PROC|AC\(14),
	devoe => ww_devoe,
	o => \AC_out[14]~output_o\);

-- Location: IOOBUF_X38_Y73_N23
\AC_out[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PROC|AC\(15),
	devoe => ww_devoe,
	o => \AC_out[15]~output_o\);

-- Location: IOOBUF_X47_Y73_N16
\PC_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PROC|PC\(0),
	devoe => ww_devoe,
	o => \PC_out[0]~output_o\);

-- Location: IOOBUF_X47_Y73_N2
\PC_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PROC|PC\(1),
	devoe => ww_devoe,
	o => \PC_out[1]~output_o\);

-- Location: IOOBUF_X23_Y73_N16
\PC_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PROC|PC\(2),
	devoe => ww_devoe,
	o => \PC_out[2]~output_o\);

-- Location: IOOBUF_X23_Y73_N9
\PC_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PROC|PC\(3),
	devoe => ww_devoe,
	o => \PC_out[3]~output_o\);

-- Location: IOOBUF_X52_Y73_N16
\PC_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PROC|PC\(4),
	devoe => ww_devoe,
	o => \PC_out[4]~output_o\);

-- Location: IOOBUF_X40_Y73_N2
\PC_out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PROC|PC\(5),
	devoe => ww_devoe,
	o => \PC_out[5]~output_o\);

-- Location: IOOBUF_X38_Y73_N2
\PC_out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PROC|PC\(6),
	devoe => ww_devoe,
	o => \PC_out[6]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\PC_out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PROC|PC\(7),
	devoe => ww_devoe,
	o => \PC_out[7]~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\reloj~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reloj,
	o => \reloj~input_o\);

-- Location: CLKCTRL_G2
\reloj~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reloj~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reloj~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y36_N15
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G4
\reset~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: FF_X35_Y71_N27
\PROC|state.decode\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \PROC|state.fetch1~q\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|state.decode~q\);

-- Location: LCCOMB_X39_Y71_N8
\PROC|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Add0~0_combout\ = \PROC|PC\(0) $ (VCC)
-- \PROC|Add0~1\ = CARRY(\PROC|PC\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|PC\(0),
	datad => VCC,
	combout => \PROC|Add0~0_combout\,
	cout => \PROC|Add0~1\);

-- Location: LCCOMB_X39_Y71_N10
\PROC|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Add0~2_combout\ = (\PROC|PC\(1) & (!\PROC|Add0~1\)) # (!\PROC|PC\(1) & ((\PROC|Add0~1\) # (GND)))
-- \PROC|Add0~3\ = CARRY((!\PROC|Add0~1\) # (!\PROC|PC\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|PC\(1),
	datad => VCC,
	cin => \PROC|Add0~1\,
	combout => \PROC|Add0~2_combout\,
	cout => \PROC|Add0~3\);

-- Location: LCCOMB_X39_Y71_N12
\PROC|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Add0~4_combout\ = (\PROC|PC\(2) & (\PROC|Add0~3\ $ (GND))) # (!\PROC|PC\(2) & (!\PROC|Add0~3\ & VCC))
-- \PROC|Add0~5\ = CARRY((\PROC|PC\(2) & !\PROC|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|PC\(2),
	datad => VCC,
	cin => \PROC|Add0~3\,
	combout => \PROC|Add0~4_combout\,
	cout => \PROC|Add0~5\);

-- Location: LCCOMB_X39_Y71_N14
\PROC|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Add0~6_combout\ = (\PROC|PC\(3) & (!\PROC|Add0~5\)) # (!\PROC|PC\(3) & ((\PROC|Add0~5\) # (GND)))
-- \PROC|Add0~7\ = CARRY((!\PROC|Add0~5\) # (!\PROC|PC\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PROC|PC\(3),
	datad => VCC,
	cin => \PROC|Add0~5\,
	combout => \PROC|Add0~6_combout\,
	cout => \PROC|Add0~7\);

-- Location: LCCOMB_X39_Y71_N6
\PROC|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector4~0_combout\ = (\PROC|state.fetch1~q\ & ((\PROC|Add0~6_combout\) # ((!\PROC|Selector6~1_combout\ & \PROC|IR\(3))))) # (!\PROC|state.fetch1~q\ & (!\PROC|Selector6~1_combout\ & ((\PROC|IR\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state.fetch1~q\,
	datab => \PROC|Selector6~1_combout\,
	datac => \PROC|Add0~6_combout\,
	datad => \PROC|IR\(3),
	combout => \PROC|Selector4~0_combout\);

-- Location: LCCOMB_X39_Y71_N28
\PROC|Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector4~1_combout\ = (\PROC|Selector4~0_combout\) # ((!\PROC|Selector6~3_combout\ & \PROC|PC\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|Selector6~3_combout\,
	datac => \PROC|PC\(3),
	datad => \PROC|Selector4~0_combout\,
	combout => \PROC|Selector4~1_combout\);

-- Location: LCCOMB_X36_Y70_N26
\PROC|state~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|state~32_combout\ = (!\PROC|IR\(8) & (\PROC|IR\(9) & \PROC|state~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IR\(8),
	datab => \PROC|IR\(9),
	datac => \PROC|state~26_combout\,
	combout => \PROC|state~32_combout\);

-- Location: FF_X36_Y70_N27
\PROC|state.jzero\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|state~32_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|state.jzero~q\);

-- Location: LCCOMB_X35_Y71_N12
\PROC|state.reset_pc~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|state.reset_pc~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \PROC|state.reset_pc~feeder_combout\);

-- Location: FF_X35_Y71_N13
\PROC|state.reset_pc\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|state.reset_pc~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|state.reset_pc~q\);

-- Location: LCCOMB_X36_Y70_N14
\PROC|state~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|state~31_combout\ = (\PROC|IR\(8) & (\PROC|IR\(9) & \PROC|state~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IR\(8),
	datab => \PROC|IR\(9),
	datac => \PROC|state~26_combout\,
	combout => \PROC|state~31_combout\);

-- Location: FF_X36_Y70_N15
\PROC|state.jpos\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|state~31_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|state.jpos~q\);

-- Location: LCCOMB_X35_Y71_N10
\PROC|WideOr5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|WideOr5~0_combout\ = (!\PROC|state.jump~q\ & (!\PROC|state.jneg~q\ & (\PROC|state.reset_pc~q\ & !\PROC|state.jpos~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state.jump~q\,
	datab => \PROC|state.jneg~q\,
	datac => \PROC|state.reset_pc~q\,
	datad => \PROC|state.jpos~q\,
	combout => \PROC|WideOr5~0_combout\);

-- Location: LCCOMB_X35_Y71_N24
\PROC|PC[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|PC[0]~0_combout\ = (!\reset~input_o\ & ((\PROC|state.fetch1~q\) # ((\PROC|state.jzero~q\) # (!\PROC|WideOr5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \PROC|state.fetch1~q\,
	datac => \PROC|state.jzero~q\,
	datad => \PROC|WideOr5~0_combout\,
	combout => \PROC|PC[0]~0_combout\);

-- Location: FF_X39_Y71_N29
\PROC|PC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|Selector4~1_combout\,
	ena => \PROC|PC[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|PC\(3));

-- Location: LCCOMB_X39_Y71_N16
\PROC|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Add0~8_combout\ = (\PROC|PC\(4) & (\PROC|Add0~7\ $ (GND))) # (!\PROC|PC\(4) & (!\PROC|Add0~7\ & VCC))
-- \PROC|Add0~9\ = CARRY((\PROC|PC\(4) & !\PROC|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PROC|PC\(4),
	datad => VCC,
	cin => \PROC|Add0~7\,
	combout => \PROC|Add0~8_combout\,
	cout => \PROC|Add0~9\);

-- Location: LCCOMB_X38_Y71_N28
\PROC|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector3~0_combout\ = (\PROC|IR\(4) & (((\PROC|Add0~8_combout\ & \PROC|state.fetch1~q\)) # (!\PROC|Selector6~1_combout\))) # (!\PROC|IR\(4) & (\PROC|Add0~8_combout\ & ((\PROC|state.fetch1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IR\(4),
	datab => \PROC|Add0~8_combout\,
	datac => \PROC|Selector6~1_combout\,
	datad => \PROC|state.fetch1~q\,
	combout => \PROC|Selector3~0_combout\);

-- Location: LCCOMB_X38_Y71_N18
\PROC|Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector3~1_combout\ = (\PROC|Selector3~0_combout\) # ((!\PROC|Selector6~3_combout\ & \PROC|PC\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Selector6~3_combout\,
	datac => \PROC|PC\(4),
	datad => \PROC|Selector3~0_combout\,
	combout => \PROC|Selector3~1_combout\);

-- Location: FF_X38_Y71_N19
\PROC|PC[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|Selector3~1_combout\,
	ena => \PROC|PC[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|PC\(4));

-- Location: LCCOMB_X39_Y71_N22
\PROC|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Add0~14_combout\ = \PROC|Add0~13\ $ (\PROC|PC\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \PROC|PC\(7),
	cin => \PROC|Add0~13\,
	combout => \PROC|Add0~14_combout\);

-- Location: LCCOMB_X34_Y71_N28
\PROC|ShiftLeft0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftLeft0~1_combout\ = (\PROC|IR\(0) & (\PROC|AC\(0))) # (!\PROC|IR\(0) & ((\PROC|AC\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IR\(0),
	datac => \PROC|AC\(0),
	datad => \PROC|AC\(1),
	combout => \PROC|ShiftLeft0~1_combout\);

-- Location: LCCOMB_X34_Y71_N12
\PROC|ShiftLeft0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftLeft0~2_combout\ = (!\PROC|IR\(0) & ((\PROC|IR\(1) & ((\PROC|AC\(0)))) # (!\PROC|IR\(1) & (\PROC|AC\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AC\(2),
	datab => \PROC|AC\(0),
	datac => \PROC|IR\(1),
	datad => \PROC|IR\(0),
	combout => \PROC|ShiftLeft0~2_combout\);

-- Location: LCCOMB_X34_Y71_N10
\PROC|ShiftLeft0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftLeft0~3_combout\ = (\PROC|ShiftLeft0~2_combout\) # ((\PROC|IR\(0) & (\PROC|AC\(1) & !\PROC|IR\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IR\(0),
	datab => \PROC|AC\(1),
	datac => \PROC|IR\(1),
	datad => \PROC|ShiftLeft0~2_combout\,
	combout => \PROC|ShiftLeft0~3_combout\);

-- Location: LCCOMB_X36_Y70_N8
\PROC|state~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|state~36_combout\ = (!\PROC|IR\(8) & (!\PROC|IR\(9) & \PROC|state~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IR\(8),
	datab => \PROC|IR\(9),
	datad => \PROC|state~24_combout\,
	combout => \PROC|state~36_combout\);

-- Location: FF_X36_Y70_N9
\PROC|state.add2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|state~36_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|state.add2~q\);

-- Location: FF_X36_Y70_N5
\PROC|state.add1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \PROC|state.add2~q\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|state.add1~q\);

-- Location: LCCOMB_X36_Y70_N10
\PROC|state~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|state~28_combout\ = (\PROC|IR\(8) & (!\PROC|IR\(9) & \PROC|state~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IR\(8),
	datab => \PROC|IR\(9),
	datac => \PROC|state~26_combout\,
	combout => \PROC|state~28_combout\);

-- Location: FF_X36_Y70_N11
\PROC|state.sub1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|state~28_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|state.sub1~q\);

-- Location: LCCOMB_X36_Y70_N4
\PROC|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|WideOr1~0_combout\ = (!\PROC|state.add1~q\ & !\PROC|state.sub1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PROC|state.add1~q\,
	datad => \PROC|state.sub1~q\,
	combout => \PROC|WideOr1~0_combout\);

-- Location: LCCOMB_X36_Y70_N16
\PROC|state~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|state~25_combout\ = (!\PROC|IR\(8) & (\PROC|IR\(9) & \PROC|state~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IR\(8),
	datab => \PROC|IR\(9),
	datad => \PROC|state~24_combout\,
	combout => \PROC|state~25_combout\);

-- Location: FF_X36_Y70_N17
\PROC|state.load1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|state~25_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|state.load1~q\);

-- Location: LCCOMB_X33_Y70_N26
\PROC|Selector21~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector21~3_combout\ = (\MEM|altsyncram_component|auto_generated|q_a\(2) & ((\PROC|state.load1~q\) # ((\PROC|state.nand1~q\ & !\PROC|AC\(2))))) # (!\MEM|altsyncram_component|auto_generated|q_a\(2) & (\PROC|state.nand1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state.nand1~q\,
	datab => \PROC|state.load1~q\,
	datac => \MEM|altsyncram_component|auto_generated|q_a\(2),
	datad => \PROC|AC\(2),
	combout => \PROC|Selector21~3_combout\);

-- Location: LCCOMB_X36_Y70_N22
\PROC|Add1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Add1~1_combout\ = (\PROC|state.add1~q\ & (\PROC|RT\(0))) # (!\PROC|state.add1~q\ & ((!\MEM|altsyncram_component|auto_generated|q_a\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|RT\(0),
	datab => \PROC|state.add1~q\,
	datad => \MEM|altsyncram_component|auto_generated|q_a\(0),
	combout => \PROC|Add1~1_combout\);

-- Location: LCCOMB_X35_Y70_N16
\PROC|Add1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Add1~3_cout\ = CARRY(!\PROC|state.add1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state.add1~q\,
	datad => VCC,
	cout => \PROC|Add1~3_cout\);

-- Location: LCCOMB_X35_Y70_N18
\PROC|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Add1~4_combout\ = (\PROC|AC\(0) & ((\PROC|Add1~1_combout\ & (\PROC|Add1~3_cout\ & VCC)) # (!\PROC|Add1~1_combout\ & (!\PROC|Add1~3_cout\)))) # (!\PROC|AC\(0) & ((\PROC|Add1~1_combout\ & (!\PROC|Add1~3_cout\)) # (!\PROC|Add1~1_combout\ & 
-- ((\PROC|Add1~3_cout\) # (GND)))))
-- \PROC|Add1~5\ = CARRY((\PROC|AC\(0) & (!\PROC|Add1~1_combout\ & !\PROC|Add1~3_cout\)) # (!\PROC|AC\(0) & ((!\PROC|Add1~3_cout\) # (!\PROC|Add1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AC\(0),
	datab => \PROC|Add1~1_combout\,
	datad => VCC,
	cin => \PROC|Add1~3_cout\,
	combout => \PROC|Add1~4_combout\,
	cout => \PROC|Add1~5\);

-- Location: LCCOMB_X35_Y70_N20
\PROC|Add1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Add1~7_combout\ = ((\PROC|Add1~6_combout\ $ (\PROC|AC\(1) $ (!\PROC|Add1~5\)))) # (GND)
-- \PROC|Add1~8\ = CARRY((\PROC|Add1~6_combout\ & ((\PROC|AC\(1)) # (!\PROC|Add1~5\))) # (!\PROC|Add1~6_combout\ & (\PROC|AC\(1) & !\PROC|Add1~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Add1~6_combout\,
	datab => \PROC|AC\(1),
	datad => VCC,
	cin => \PROC|Add1~5\,
	combout => \PROC|Add1~7_combout\,
	cout => \PROC|Add1~8\);

-- Location: LCCOMB_X35_Y70_N22
\PROC|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Add1~10_combout\ = (\PROC|Add1~9_combout\ & ((\PROC|AC\(2) & (\PROC|Add1~8\ & VCC)) # (!\PROC|AC\(2) & (!\PROC|Add1~8\)))) # (!\PROC|Add1~9_combout\ & ((\PROC|AC\(2) & (!\PROC|Add1~8\)) # (!\PROC|AC\(2) & ((\PROC|Add1~8\) # (GND)))))
-- \PROC|Add1~11\ = CARRY((\PROC|Add1~9_combout\ & (!\PROC|AC\(2) & !\PROC|Add1~8\)) # (!\PROC|Add1~9_combout\ & ((!\PROC|Add1~8\) # (!\PROC|AC\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Add1~9_combout\,
	datab => \PROC|AC\(2),
	datad => VCC,
	cin => \PROC|Add1~8\,
	combout => \PROC|Add1~10_combout\,
	cout => \PROC|Add1~11\);

-- Location: LCCOMB_X33_Y70_N20
\PROC|Selector21~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector21~4_combout\ = (\PROC|Selector21~2_combout\) # ((\PROC|Selector21~3_combout\) # ((!\PROC|WideOr1~0_combout\ & \PROC|Add1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Selector21~2_combout\,
	datab => \PROC|WideOr1~0_combout\,
	datac => \PROC|Selector21~3_combout\,
	datad => \PROC|Add1~10_combout\,
	combout => \PROC|Selector21~4_combout\);

-- Location: LCCOMB_X33_Y70_N2
\PROC|Selector21~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector21~5_combout\ = (\PROC|Selector21~4_combout\) # ((\PROC|Selector18~0_combout\ & (\PROC|ShiftLeft0~3_combout\ & !\PROC|IR\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Selector18~0_combout\,
	datab => \PROC|ShiftLeft0~3_combout\,
	datac => \PROC|IR\(2),
	datad => \PROC|Selector21~4_combout\,
	combout => \PROC|Selector21~5_combout\);

-- Location: LCCOMB_X33_Y71_N26
\PROC|ShiftLeft0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftLeft0~4_combout\ = (\PROC|IR\(0) & (\PROC|AC\(2))) # (!\PROC|IR\(0) & ((\PROC|AC\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|AC\(2),
	datac => \PROC|IR\(0),
	datad => \PROC|AC\(3),
	combout => \PROC|ShiftLeft0~4_combout\);

-- Location: LCCOMB_X33_Y71_N24
\PROC|ShiftLeft0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftLeft0~5_combout\ = (\PROC|IR\(1) & ((\PROC|ShiftLeft0~1_combout\))) # (!\PROC|IR\(1) & (\PROC|ShiftLeft0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IR\(1),
	datac => \PROC|ShiftLeft0~4_combout\,
	datad => \PROC|ShiftLeft0~1_combout\,
	combout => \PROC|ShiftLeft0~5_combout\);

-- Location: LCCOMB_X34_Y70_N8
\PROC|Selector20~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector20~3_combout\ = (\MEM|altsyncram_component|auto_generated|q_a\(3) & ((\PROC|state.load1~q\) # ((!\PROC|AC\(3) & \PROC|state.nand1~q\)))) # (!\MEM|altsyncram_component|auto_generated|q_a\(3) & (((\PROC|state.nand1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state.load1~q\,
	datab => \PROC|AC\(3),
	datac => \MEM|altsyncram_component|auto_generated|q_a\(3),
	datad => \PROC|state.nand1~q\,
	combout => \PROC|Selector20~3_combout\);

-- Location: LCCOMB_X35_Y71_N6
\PROC|RT[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|RT[0]~0_combout\ = (\PROC|state.add2~q\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|state.add2~q\,
	datac => \reset~input_o\,
	combout => \PROC|RT[0]~0_combout\);

-- Location: FF_X35_Y70_N3
\PROC|RT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \MEM|altsyncram_component|auto_generated|q_a\(3),
	sload => VCC,
	ena => \PROC|RT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|RT\(3));

-- Location: LCCOMB_X35_Y70_N2
\PROC|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Add1~12_combout\ = (\PROC|state.add1~q\ & ((\PROC|RT\(3)))) # (!\PROC|state.add1~q\ & (!\MEM|altsyncram_component|auto_generated|q_a\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|altsyncram_component|auto_generated|q_a\(3),
	datac => \PROC|RT\(3),
	datad => \PROC|state.add1~q\,
	combout => \PROC|Add1~12_combout\);

-- Location: LCCOMB_X35_Y70_N24
\PROC|Add1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Add1~13_combout\ = ((\PROC|AC\(3) $ (\PROC|Add1~12_combout\ $ (!\PROC|Add1~11\)))) # (GND)
-- \PROC|Add1~14\ = CARRY((\PROC|AC\(3) & ((\PROC|Add1~12_combout\) # (!\PROC|Add1~11\))) # (!\PROC|AC\(3) & (\PROC|Add1~12_combout\ & !\PROC|Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AC\(3),
	datab => \PROC|Add1~12_combout\,
	datad => VCC,
	cin => \PROC|Add1~11\,
	combout => \PROC|Add1~13_combout\,
	cout => \PROC|Add1~14\);

-- Location: LCCOMB_X34_Y70_N6
\PROC|Selector20~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector20~4_combout\ = (\PROC|Selector20~2_combout\) # ((\PROC|Selector20~3_combout\) # ((!\PROC|WideOr1~0_combout\ & \PROC|Add1~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Selector20~2_combout\,
	datab => \PROC|WideOr1~0_combout\,
	datac => \PROC|Selector20~3_combout\,
	datad => \PROC|Add1~13_combout\,
	combout => \PROC|Selector20~4_combout\);

-- Location: LCCOMB_X34_Y70_N14
\PROC|Selector20~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector20~5_combout\ = (\PROC|Selector20~4_combout\) # ((\PROC|Selector18~0_combout\ & (!\PROC|IR\(2) & \PROC|ShiftLeft0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Selector18~0_combout\,
	datab => \PROC|IR\(2),
	datac => \PROC|ShiftLeft0~5_combout\,
	datad => \PROC|Selector20~4_combout\,
	combout => \PROC|Selector20~5_combout\);

-- Location: FF_X34_Y70_N15
\PROC|AC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|Selector20~5_combout\,
	ena => \PROC|AC[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|AC\(3));

-- Location: LCCOMB_X35_Y70_N26
\PROC|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Add1~16_combout\ = (\PROC|Add1~15_combout\ & ((\PROC|AC\(4) & (\PROC|Add1~14\ & VCC)) # (!\PROC|AC\(4) & (!\PROC|Add1~14\)))) # (!\PROC|Add1~15_combout\ & ((\PROC|AC\(4) & (!\PROC|Add1~14\)) # (!\PROC|AC\(4) & ((\PROC|Add1~14\) # (GND)))))
-- \PROC|Add1~17\ = CARRY((\PROC|Add1~15_combout\ & (!\PROC|AC\(4) & !\PROC|Add1~14\)) # (!\PROC|Add1~15_combout\ & ((!\PROC|Add1~14\) # (!\PROC|AC\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Add1~15_combout\,
	datab => \PROC|AC\(4),
	datad => VCC,
	cin => \PROC|Add1~14\,
	combout => \PROC|Add1~16_combout\,
	cout => \PROC|Add1~17\);

-- Location: LCCOMB_X39_Y69_N10
\PROC|state~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|state~29_combout\ = (!\PROC|IR\(9) & (\PROC|IR\(8) & \PROC|state~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IR\(9),
	datab => \PROC|IR\(8),
	datad => \PROC|state~22_combout\,
	combout => \PROC|state~29_combout\);

-- Location: FF_X39_Y69_N11
\PROC|state.shl1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|state~29_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|state.shl1~q\);

-- Location: LCCOMB_X36_Y71_N4
\PROC|Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector18~0_combout\ = (!\PROC|IR\(3) & (!\PROC|ShiftLeft0~0_combout\ & \PROC|state.shl1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IR\(3),
	datab => \PROC|ShiftLeft0~0_combout\,
	datac => \PROC|state.shl1~q\,
	combout => \PROC|Selector18~0_combout\);

-- Location: LCCOMB_X36_Y70_N28
\PROC|state~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|state~23_combout\ = (\PROC|state~22_combout\ & (\PROC|IR\(9) & !\PROC|IR\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state~22_combout\,
	datab => \PROC|IR\(9),
	datac => \PROC|IR\(8),
	combout => \PROC|state~23_combout\);

-- Location: FF_X36_Y70_N29
\PROC|state.shr1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|state~23_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|state.shr1~q\);

-- Location: LCCOMB_X38_Y70_N4
\PROC|Selector18~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector18~2_combout\ = (\MEM|altsyncram_component|auto_generated|q_a\(5) & ((\PROC|state.load1~q\) # ((!\PROC|AC\(5) & \PROC|state.nand1~q\)))) # (!\MEM|altsyncram_component|auto_generated|q_a\(5) & (((\PROC|state.nand1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state.load1~q\,
	datab => \PROC|AC\(5),
	datac => \PROC|state.nand1~q\,
	datad => \MEM|altsyncram_component|auto_generated|q_a\(5),
	combout => \PROC|Selector18~2_combout\);

-- Location: LCCOMB_X39_Y69_N28
\PROC|AC[11]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|AC[11]~9_combout\ = (\PROC|state.shl1~q\ & \PROC|ShiftLeft0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state.shl1~q\,
	datad => \PROC|ShiftLeft0~0_combout\,
	combout => \PROC|AC[11]~9_combout\);

-- Location: LCCOMB_X32_Y69_N16
\PROC|Selector15~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector15~13_combout\ = (\PROC|state.shl1~q\ & (\PROC|IR\(2) & ((\PROC|ShiftLeft0~0_combout\) # (!\PROC|IR\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state.shl1~q\,
	datab => \PROC|IR\(2),
	datac => \PROC|IR\(3),
	datad => \PROC|ShiftLeft0~0_combout\,
	combout => \PROC|Selector15~13_combout\);

-- Location: LCCOMB_X33_Y71_N22
\PROC|ShiftLeft0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftLeft0~10_combout\ = (\PROC|IR\(0) & (\PROC|AC\(4))) # (!\PROC|IR\(0) & ((\PROC|AC\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IR\(0),
	datac => \PROC|AC\(4),
	datad => \PROC|AC\(5),
	combout => \PROC|ShiftLeft0~10_combout\);

-- Location: LCCOMB_X39_Y69_N18
\PROC|WideOr1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|WideOr1~1_combout\ = (\PROC|state.shr1~q\) # ((\PROC|state.in1~q\) # ((\PROC|state.nand1~q\) # (\PROC|state.shl1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state.shr1~q\,
	datab => \PROC|state.in1~q\,
	datac => \PROC|state.nand1~q\,
	datad => \PROC|state.shl1~q\,
	combout => \PROC|WideOr1~1_combout\);

-- Location: LCCOMB_X39_Y69_N4
\PROC|WideOr1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|WideOr1~2_combout\ = (\PROC|state.load1~q\) # (((\PROC|WideOr1~1_combout\) # (!\PROC|state.reset_pc~q\)) # (!\PROC|WideOr1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state.load1~q\,
	datab => \PROC|WideOr1~0_combout\,
	datac => \PROC|state.reset_pc~q\,
	datad => \PROC|WideOr1~1_combout\,
	combout => \PROC|WideOr1~2_combout\);

-- Location: LCCOMB_X39_Y69_N2
\PROC|Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector16~0_combout\ = (\PROC|AC\(7) & (((\PROC|state.in1~q\ & \PROC|IR\(0))) # (!\PROC|WideOr1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AC\(7),
	datab => \PROC|state.in1~q\,
	datac => \PROC|WideOr1~2_combout\,
	datad => \PROC|IR\(0),
	combout => \PROC|Selector16~0_combout\);

-- Location: LCCOMB_X38_Y70_N24
\PROC|AC[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|AC[0]~6_combout\ = (!\PROC|IR\(3) & !\PROC|ShiftLeft0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|IR\(3),
	datac => \PROC|ShiftLeft0~0_combout\,
	combout => \PROC|AC[0]~6_combout\);

-- Location: LCCOMB_X39_Y69_N20
\PROC|Selector16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector16~2_combout\ = (\PROC|Selector16~0_combout\) # ((\PROC|Selector16~1_combout\ & (\PROC|AC[0]~6_combout\ & !\PROC|IR\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Selector16~1_combout\,
	datab => \PROC|Selector16~0_combout\,
	datac => \PROC|AC[0]~6_combout\,
	datad => \PROC|IR\(2),
	combout => \PROC|Selector16~2_combout\);

-- Location: LCCOMB_X38_Y70_N30
\PROC|AC[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|AC[0]~3_combout\ = (!\PROC|ShiftLeft0~0_combout\ & (!\PROC|IR\(3) & \PROC|state.shr1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ShiftLeft0~0_combout\,
	datab => \PROC|IR\(3),
	datad => \PROC|state.shr1~q\,
	combout => \PROC|AC[0]~3_combout\);

-- Location: LCCOMB_X39_Y69_N26
\PROC|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector11~0_combout\ = (\PROC|state.shl1~q\ & !\PROC|ShiftLeft0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state.shl1~q\,
	datad => \PROC|ShiftLeft0~0_combout\,
	combout => \PROC|Selector11~0_combout\);

-- Location: LCCOMB_X33_Y70_N14
\PROC|AC[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|AC[0]~1_combout\ = (\PROC|IR\(3)) # ((\PROC|IR\(1) & !\PROC|IR\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|IR\(1),
	datac => \PROC|IR\(2),
	datad => \PROC|IR\(3),
	combout => \PROC|AC[0]~1_combout\);

-- Location: LCCOMB_X34_Y69_N10
\PROC|ShiftLeft0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftLeft0~22_combout\ = (\PROC|IR\(0) & (\PROC|AC\(10))) # (!\PROC|IR\(0) & ((\PROC|AC\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|IR\(0),
	datac => \PROC|AC\(10),
	datad => \PROC|AC\(11),
	combout => \PROC|ShiftLeft0~22_combout\);

-- Location: LCCOMB_X33_Y70_N0
\PROC|AC[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|AC[0]~0_combout\ = (\PROC|IR\(2)) # (\PROC|IR\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|IR\(2),
	datac => \PROC|IR\(3),
	combout => \PROC|AC[0]~0_combout\);

-- Location: LCCOMB_X33_Y69_N16
\PROC|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector10~0_combout\ = (\PROC|AC[0]~1_combout\ & (((!\PROC|AC[0]~0_combout\)))) # (!\PROC|AC[0]~1_combout\ & ((\PROC|AC[0]~0_combout\ & (\PROC|ShiftLeft0~20_combout\)) # (!\PROC|AC[0]~0_combout\ & ((\PROC|ShiftLeft0~25_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ShiftLeft0~20_combout\,
	datab => \PROC|AC[0]~1_combout\,
	datac => \PROC|AC[0]~0_combout\,
	datad => \PROC|ShiftLeft0~25_combout\,
	combout => \PROC|Selector10~0_combout\);

-- Location: LCCOMB_X33_Y69_N14
\PROC|Selector10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector10~1_combout\ = (\PROC|AC[0]~1_combout\ & ((\PROC|Selector10~0_combout\ & ((\PROC|ShiftLeft0~22_combout\))) # (!\PROC|Selector10~0_combout\ & (\PROC|ShiftLeft0~12_combout\)))) # (!\PROC|AC[0]~1_combout\ & (((\PROC|Selector10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ShiftLeft0~12_combout\,
	datab => \PROC|AC[0]~1_combout\,
	datac => \PROC|ShiftLeft0~22_combout\,
	datad => \PROC|Selector10~0_combout\,
	combout => \PROC|Selector10~1_combout\);

-- Location: LCCOMB_X34_Y69_N30
\PROC|Selector10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector10~2_combout\ = (\PROC|ShiftRight0~29_combout\ & ((\PROC|AC[0]~3_combout\) # ((\PROC|Selector11~0_combout\ & \PROC|Selector10~1_combout\)))) # (!\PROC|ShiftRight0~29_combout\ & (((\PROC|Selector11~0_combout\ & \PROC|Selector10~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ShiftRight0~29_combout\,
	datab => \PROC|AC[0]~3_combout\,
	datac => \PROC|Selector11~0_combout\,
	datad => \PROC|Selector10~1_combout\,
	combout => \PROC|Selector10~2_combout\);

-- Location: FF_X36_Y70_N23
\PROC|RT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \MEM|altsyncram_component|auto_generated|q_a\(6),
	sload => VCC,
	ena => \PROC|RT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|RT\(6));

-- Location: LCCOMB_X35_Y70_N14
\PROC|Add1~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Add1~21_combout\ = (\PROC|state.add1~q\ & (\PROC|RT\(6))) # (!\PROC|state.add1~q\ & ((!\MEM|altsyncram_component|auto_generated|q_a\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|RT\(6),
	datac => \PROC|state.add1~q\,
	datad => \MEM|altsyncram_component|auto_generated|q_a\(6),
	combout => \PROC|Add1~21_combout\);

-- Location: FF_X36_Y70_N31
\PROC|RT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \MEM|altsyncram_component|auto_generated|q_a\(5),
	sload => VCC,
	ena => \PROC|RT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|RT\(5));

-- Location: LCCOMB_X35_Y70_N8
\PROC|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Add1~18_combout\ = (\PROC|state.add1~q\ & (\PROC|RT\(5))) # (!\PROC|state.add1~q\ & ((!\MEM|altsyncram_component|auto_generated|q_a\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state.add1~q\,
	datab => \PROC|RT\(5),
	datad => \MEM|altsyncram_component|auto_generated|q_a\(5),
	combout => \PROC|Add1~18_combout\);

-- Location: LCCOMB_X35_Y70_N28
\PROC|Add1~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Add1~19_combout\ = ((\PROC|AC\(5) $ (\PROC|Add1~18_combout\ $ (!\PROC|Add1~17\)))) # (GND)
-- \PROC|Add1~20\ = CARRY((\PROC|AC\(5) & ((\PROC|Add1~18_combout\) # (!\PROC|Add1~17\))) # (!\PROC|AC\(5) & (\PROC|Add1~18_combout\ & !\PROC|Add1~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AC\(5),
	datab => \PROC|Add1~18_combout\,
	datad => VCC,
	cin => \PROC|Add1~17\,
	combout => \PROC|Add1~19_combout\,
	cout => \PROC|Add1~20\);

-- Location: LCCOMB_X35_Y70_N30
\PROC|Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Add1~22_combout\ = (\PROC|AC\(6) & ((\PROC|Add1~21_combout\ & (\PROC|Add1~20\ & VCC)) # (!\PROC|Add1~21_combout\ & (!\PROC|Add1~20\)))) # (!\PROC|AC\(6) & ((\PROC|Add1~21_combout\ & (!\PROC|Add1~20\)) # (!\PROC|Add1~21_combout\ & ((\PROC|Add1~20\) # 
-- (GND)))))
-- \PROC|Add1~23\ = CARRY((\PROC|AC\(6) & (!\PROC|Add1~21_combout\ & !\PROC|Add1~20\)) # (!\PROC|AC\(6) & ((!\PROC|Add1~20\) # (!\PROC|Add1~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AC\(6),
	datab => \PROC|Add1~21_combout\,
	datad => VCC,
	cin => \PROC|Add1~20\,
	combout => \PROC|Add1~22_combout\,
	cout => \PROC|Add1~23\);

-- Location: LCCOMB_X35_Y70_N4
\PROC|Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector17~0_combout\ = (\PROC|Add1~22_combout\ & ((\PROC|state.sub1~q\) # (\PROC|state.add1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|state.sub1~q\,
	datac => \PROC|Add1~22_combout\,
	datad => \PROC|state.add1~q\,
	combout => \PROC|Selector17~0_combout\);

-- Location: LCCOMB_X32_Y71_N6
\PROC|ShiftLeft0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftLeft0~13_combout\ = (\PROC|IR\(0) & (\PROC|AC\(3))) # (!\PROC|IR\(0) & ((\PROC|AC\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|IR\(0),
	datac => \PROC|AC\(3),
	datad => \PROC|AC\(4),
	combout => \PROC|ShiftLeft0~13_combout\);

-- Location: LCCOMB_X33_Y71_N12
\PROC|ShiftLeft0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftLeft0~14_combout\ = (\PROC|IR\(0) & ((\PROC|AC\(5)))) # (!\PROC|IR\(0) & (\PROC|AC\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AC\(6),
	datac => \PROC|IR\(0),
	datad => \PROC|AC\(5),
	combout => \PROC|ShiftLeft0~14_combout\);

-- Location: LCCOMB_X34_Y71_N16
\PROC|Selector17~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector17~5_combout\ = (!\PROC|IR\(2) & ((\PROC|IR\(1) & (\PROC|ShiftLeft0~13_combout\)) # (!\PROC|IR\(1) & ((\PROC|ShiftLeft0~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IR\(2),
	datab => \PROC|ShiftLeft0~13_combout\,
	datac => \PROC|IR\(1),
	datad => \PROC|ShiftLeft0~14_combout\,
	combout => \PROC|Selector17~5_combout\);

-- Location: LCCOMB_X34_Y71_N2
\PROC|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector9~0_combout\ = (\PROC|Selector17~5_combout\) # ((\PROC|IR\(2) & \PROC|ShiftLeft0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IR\(2),
	datab => \PROC|Selector17~5_combout\,
	datad => \PROC|ShiftLeft0~3_combout\,
	combout => \PROC|Selector9~0_combout\);

-- Location: LCCOMB_X35_Y70_N6
\PROC|Selector17~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector17~6_combout\ = (\PROC|Selector17~4_combout\) # ((\PROC|Selector17~0_combout\) # ((\PROC|Selector18~0_combout\ & \PROC|Selector9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Selector17~4_combout\,
	datab => \PROC|Selector18~0_combout\,
	datac => \PROC|Selector17~0_combout\,
	datad => \PROC|Selector9~0_combout\,
	combout => \PROC|Selector17~6_combout\);

-- Location: FF_X35_Y70_N7
\PROC|AC[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|Selector17~6_combout\,
	ena => \PROC|AC[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|AC\(6));

-- Location: LCCOMB_X35_Y69_N0
\PROC|Add1~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Add1~25_combout\ = ((\PROC|Add1~24_combout\ $ (\PROC|AC\(7) $ (!\PROC|Add1~23\)))) # (GND)
-- \PROC|Add1~26\ = CARRY((\PROC|Add1~24_combout\ & ((\PROC|AC\(7)) # (!\PROC|Add1~23\))) # (!\PROC|Add1~24_combout\ & (\PROC|AC\(7) & !\PROC|Add1~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Add1~24_combout\,
	datab => \PROC|AC\(7),
	datad => VCC,
	cin => \PROC|Add1~23\,
	combout => \PROC|Add1~25_combout\,
	cout => \PROC|Add1~26\);

-- Location: LCCOMB_X35_Y69_N2
\PROC|Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Add1~28_combout\ = (\PROC|Add1~27_combout\ & ((\PROC|AC\(8) & (\PROC|Add1~26\ & VCC)) # (!\PROC|AC\(8) & (!\PROC|Add1~26\)))) # (!\PROC|Add1~27_combout\ & ((\PROC|AC\(8) & (!\PROC|Add1~26\)) # (!\PROC|AC\(8) & ((\PROC|Add1~26\) # (GND)))))
-- \PROC|Add1~29\ = CARRY((\PROC|Add1~27_combout\ & (!\PROC|AC\(8) & !\PROC|Add1~26\)) # (!\PROC|Add1~27_combout\ & ((!\PROC|Add1~26\) # (!\PROC|AC\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Add1~27_combout\,
	datab => \PROC|AC\(8),
	datad => VCC,
	cin => \PROC|Add1~26\,
	combout => \PROC|Add1~28_combout\,
	cout => \PROC|Add1~29\);

-- Location: LCCOMB_X33_Y71_N20
\PROC|ShiftLeft0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftLeft0~17_combout\ = (\PROC|IR\(0) & ((\PROC|AC\(7)))) # (!\PROC|IR\(0) & (\PROC|AC\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|IR\(0),
	datac => \PROC|AC\(8),
	datad => \PROC|AC\(7),
	combout => \PROC|ShiftLeft0~17_combout\);

-- Location: LCCOMB_X33_Y71_N8
\PROC|ShiftLeft0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftLeft0~18_combout\ = (\PROC|IR\(1) & ((\PROC|ShiftLeft0~14_combout\))) # (!\PROC|IR\(1) & (\PROC|ShiftLeft0~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IR\(1),
	datab => \PROC|ShiftLeft0~17_combout\,
	datad => \PROC|ShiftLeft0~14_combout\,
	combout => \PROC|ShiftLeft0~18_combout\);

-- Location: LCCOMB_X32_Y69_N24
\PROC|AC[11]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|AC[11]~8_combout\ = (\PROC|state.shl1~q\ & ((\PROC|ShiftLeft0~0_combout\) # ((!\PROC|IR\(2) & !\PROC|IR\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state.shl1~q\,
	datab => \PROC|IR\(2),
	datac => \PROC|IR\(3),
	datad => \PROC|ShiftLeft0~0_combout\,
	combout => \PROC|AC[11]~8_combout\);

-- Location: LCCOMB_X33_Y69_N20
\PROC|Selector15~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector15~9_combout\ = (\MEM|altsyncram_component|auto_generated|q_a\(8) & ((\PROC|state.load1~q\) # ((\PROC|state.nand1~q\ & !\PROC|AC\(8))))) # (!\MEM|altsyncram_component|auto_generated|q_a\(8) & (\PROC|state.nand1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state.nand1~q\,
	datab => \PROC|state.load1~q\,
	datac => \PROC|AC\(8),
	datad => \MEM|altsyncram_component|auto_generated|q_a\(8),
	combout => \PROC|Selector15~9_combout\);

-- Location: LCCOMB_X33_Y69_N6
\PROC|Selector15~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector15~10_combout\ = (\PROC|Selector15~8_combout\) # ((\PROC|Selector15~9_combout\) # ((\PROC|ShiftLeft0~18_combout\ & \PROC|AC[11]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Selector15~8_combout\,
	datab => \PROC|ShiftLeft0~18_combout\,
	datac => \PROC|AC[11]~8_combout\,
	datad => \PROC|Selector15~9_combout\,
	combout => \PROC|Selector15~10_combout\);

-- Location: LCCOMB_X32_Y69_N2
\PROC|Selector15~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector15~11_combout\ = (\PROC|Selector15~15_combout\) # ((\PROC|Selector15~10_combout\) # ((!\PROC|WideOr1~0_combout\ & \PROC|Add1~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Selector15~15_combout\,
	datab => \PROC|WideOr1~0_combout\,
	datac => \PROC|Add1~28_combout\,
	datad => \PROC|Selector15~10_combout\,
	combout => \PROC|Selector15~11_combout\);

-- Location: LCCOMB_X32_Y69_N0
\PROC|Selector15~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector15~17_combout\ = (\PROC|ShiftLeft0~0_combout\ & (((!\PROC|state.shl1~q\ & \PROC|Selector15~11_combout\)))) # (!\PROC|ShiftLeft0~0_combout\ & ((\PROC|Selector15~14_combout\) # ((\PROC|Selector15~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Selector15~14_combout\,
	datab => \PROC|ShiftLeft0~0_combout\,
	datac => \PROC|state.shl1~q\,
	datad => \PROC|Selector15~11_combout\,
	combout => \PROC|Selector15~17_combout\);

-- Location: FF_X32_Y69_N1
\PROC|AC[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|Selector15~17_combout\,
	ena => \PROC|AC[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|AC\(8));

-- Location: LCCOMB_X34_Y71_N20
\PROC|Selector15~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector15~12_combout\ = (\PROC|IR\(3) & \PROC|state.shl1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IR\(3),
	datad => \PROC|state.shl1~q\,
	combout => \PROC|Selector15~12_combout\);

-- Location: LCCOMB_X34_Y71_N14
\PROC|Selector14~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector14~6_combout\ = (\PROC|ShiftLeft0~11_combout\ & ((\PROC|Selector15~13_combout\) # ((\PROC|Selector15~12_combout\ & \PROC|Selector22~5_combout\)))) # (!\PROC|ShiftLeft0~11_combout\ & (\PROC|Selector15~12_combout\ & 
-- ((\PROC|Selector22~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ShiftLeft0~11_combout\,
	datab => \PROC|Selector15~12_combout\,
	datac => \PROC|Selector15~13_combout\,
	datad => \PROC|Selector22~5_combout\,
	combout => \PROC|Selector14~6_combout\);

-- Location: LCCOMB_X32_Y70_N10
\PROC|ShiftRight0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftRight0~16_combout\ = (\PROC|IR\(2) & ((\PROC|IR\(1) & (\PROC|AC\(15))) # (!\PROC|IR\(1) & ((\PROC|ShiftRight0~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IR\(1),
	datab => \PROC|AC\(15),
	datac => \PROC|IR\(2),
	datad => \PROC|ShiftRight0~15_combout\,
	combout => \PROC|ShiftRight0~16_combout\);

-- Location: LCCOMB_X33_Y70_N8
\PROC|Selector14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector14~2_combout\ = (\PROC|AC[0]~3_combout\ & ((\PROC|ShiftRight0~16_combout\) # ((\PROC|ShiftRight0~19_combout\ & !\PROC|IR\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ShiftRight0~19_combout\,
	datab => \PROC|AC[0]~3_combout\,
	datac => \PROC|IR\(2),
	datad => \PROC|ShiftRight0~16_combout\,
	combout => \PROC|Selector14~2_combout\);

-- Location: FF_X36_Y69_N29
\PROC|RT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \MEM|altsyncram_component|auto_generated|q_a\(9),
	sload => VCC,
	ena => \PROC|RT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|RT\(9));

-- Location: LCCOMB_X36_Y69_N28
\PROC|Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Add1~30_combout\ = (\PROC|state.add1~q\ & ((\PROC|RT\(9)))) # (!\PROC|state.add1~q\ & (!\MEM|altsyncram_component|auto_generated|q_a\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEM|altsyncram_component|auto_generated|q_a\(9),
	datac => \PROC|RT\(9),
	datad => \PROC|state.add1~q\,
	combout => \PROC|Add1~30_combout\);

-- Location: LCCOMB_X35_Y69_N4
\PROC|Add1~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Add1~31_combout\ = ((\PROC|AC\(9) $ (\PROC|Add1~30_combout\ $ (!\PROC|Add1~29\)))) # (GND)
-- \PROC|Add1~32\ = CARRY((\PROC|AC\(9) & ((\PROC|Add1~30_combout\) # (!\PROC|Add1~29\))) # (!\PROC|AC\(9) & (\PROC|Add1~30_combout\ & !\PROC|Add1~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AC\(9),
	datab => \PROC|Add1~30_combout\,
	datad => VCC,
	cin => \PROC|Add1~29\,
	combout => \PROC|Add1~31_combout\,
	cout => \PROC|Add1~32\);

-- Location: LCCOMB_X33_Y69_N4
\PROC|ShiftLeft0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftLeft0~19_combout\ = (\PROC|IR\(0) & (\PROC|AC\(8))) # (!\PROC|IR\(0) & ((\PROC|AC\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|AC\(8),
	datac => \PROC|IR\(0),
	datad => \PROC|AC\(9),
	combout => \PROC|ShiftLeft0~19_combout\);

-- Location: LCCOMB_X33_Y69_N22
\PROC|ShiftLeft0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftLeft0~20_combout\ = (\PROC|IR\(1) & (\PROC|ShiftLeft0~15_combout\)) # (!\PROC|IR\(1) & ((\PROC|ShiftLeft0~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ShiftLeft0~15_combout\,
	datab => \PROC|IR\(1),
	datac => \PROC|ShiftLeft0~19_combout\,
	combout => \PROC|ShiftLeft0~20_combout\);

-- Location: LCCOMB_X39_Y69_N14
\PROC|Selector15~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector15~8_combout\ = (\PROC|state.shr1~q\ & (\PROC|AC\(15) & ((\PROC|IR\(3)) # (\PROC|ShiftLeft0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IR\(3),
	datab => \PROC|ShiftLeft0~0_combout\,
	datac => \PROC|state.shr1~q\,
	datad => \PROC|AC\(15),
	combout => \PROC|Selector15~8_combout\);

-- Location: LCCOMB_X34_Y69_N18
\PROC|Selector14~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector14~3_combout\ = (\MEM|altsyncram_component|auto_generated|q_a\(9) & ((\PROC|state.load1~q\) # ((\PROC|state.nand1~q\ & !\PROC|AC\(9))))) # (!\MEM|altsyncram_component|auto_generated|q_a\(9) & (\PROC|state.nand1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state.nand1~q\,
	datab => \PROC|AC\(9),
	datac => \PROC|state.load1~q\,
	datad => \MEM|altsyncram_component|auto_generated|q_a\(9),
	combout => \PROC|Selector14~3_combout\);

-- Location: LCCOMB_X34_Y69_N28
\PROC|Selector14~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector14~4_combout\ = (\PROC|Selector15~8_combout\) # ((\PROC|Selector14~3_combout\) # ((\PROC|AC[11]~8_combout\ & \PROC|ShiftLeft0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AC[11]~8_combout\,
	datab => \PROC|ShiftLeft0~20_combout\,
	datac => \PROC|Selector15~8_combout\,
	datad => \PROC|Selector14~3_combout\,
	combout => \PROC|Selector14~4_combout\);

-- Location: LCCOMB_X35_Y69_N18
\PROC|Selector14~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector14~5_combout\ = (\PROC|Selector14~2_combout\) # ((\PROC|Selector14~4_combout\) # ((!\PROC|WideOr1~0_combout\ & \PROC|Add1~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|WideOr1~0_combout\,
	datab => \PROC|Selector14~2_combout\,
	datac => \PROC|Add1~31_combout\,
	datad => \PROC|Selector14~4_combout\,
	combout => \PROC|Selector14~5_combout\);

-- Location: LCCOMB_X35_Y69_N22
\PROC|Selector14~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector14~7_combout\ = (\PROC|ShiftLeft0~0_combout\ & (!\PROC|state.shl1~q\ & ((\PROC|Selector14~5_combout\)))) # (!\PROC|ShiftLeft0~0_combout\ & (((\PROC|Selector14~6_combout\) # (\PROC|Selector14~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state.shl1~q\,
	datab => \PROC|ShiftLeft0~0_combout\,
	datac => \PROC|Selector14~6_combout\,
	datad => \PROC|Selector14~5_combout\,
	combout => \PROC|Selector14~7_combout\);

-- Location: FF_X35_Y69_N23
\PROC|AC[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|Selector14~7_combout\,
	ena => \PROC|AC[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|AC\(9));

-- Location: LCCOMB_X38_Y69_N28
\PROC|Selector9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector9~2_combout\ = (\PROC|state.shr1~q\ & (\PROC|AC\(15) & ((!\PROC|AC[0]~6_combout\) # (!\PROC|AC[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state.shr1~q\,
	datab => \PROC|AC\(15),
	datac => \PROC|AC[0]~2_combout\,
	datad => \PROC|AC[0]~6_combout\,
	combout => \PROC|Selector9~2_combout\);

-- Location: LCCOMB_X34_Y69_N6
\PROC|ShiftLeft0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftLeft0~21_combout\ = (\PROC|IR\(0) & ((\PROC|AC\(9)))) # (!\PROC|IR\(0) & (\PROC|AC\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|IR\(0),
	datac => \PROC|AC\(10),
	datad => \PROC|AC\(9),
	combout => \PROC|ShiftLeft0~21_combout\);

-- Location: LCCOMB_X33_Y71_N18
\PROC|Selector9~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector9~5_combout\ = (\PROC|IR\(2) & ((\PROC|IR\(1) & (\PROC|ShiftLeft0~17_combout\)) # (!\PROC|IR\(1) & ((\PROC|ShiftLeft0~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IR\(1),
	datab => \PROC|ShiftLeft0~17_combout\,
	datac => \PROC|IR\(2),
	datad => \PROC|ShiftLeft0~21_combout\,
	combout => \PROC|Selector9~5_combout\);

-- Location: LCCOMB_X34_Y71_N0
\PROC|Selector9~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector9~6_combout\ = (!\PROC|IR\(1) & ((\PROC|IR\(0) & (\PROC|AC\(13))) # (!\PROC|IR\(0) & ((\PROC|AC\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IR\(0),
	datab => \PROC|IR\(1),
	datac => \PROC|AC\(13),
	datad => \PROC|AC\(14),
	combout => \PROC|Selector9~6_combout\);

-- Location: LCCOMB_X34_Y69_N8
\PROC|ShiftLeft0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftLeft0~24_combout\ = (\PROC|IR\(0) & ((\PROC|AC\(11)))) # (!\PROC|IR\(0) & (\PROC|AC\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|AC\(12),
	datac => \PROC|IR\(0),
	datad => \PROC|AC\(11),
	combout => \PROC|ShiftLeft0~24_combout\);

-- Location: LCCOMB_X34_Y71_N22
\PROC|Selector9~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector9~7_combout\ = (!\PROC|IR\(2) & ((\PROC|Selector9~6_combout\) # ((\PROC|IR\(1) & \PROC|ShiftLeft0~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IR\(1),
	datab => \PROC|Selector9~6_combout\,
	datac => \PROC|ShiftLeft0~24_combout\,
	datad => \PROC|IR\(2),
	combout => \PROC|Selector9~7_combout\);

-- Location: LCCOMB_X34_Y71_N24
\PROC|Selector9~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector9~8_combout\ = (\PROC|IR\(3) & (((\PROC|Selector9~0_combout\)))) # (!\PROC|IR\(3) & ((\PROC|Selector9~5_combout\) # ((\PROC|Selector9~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IR\(3),
	datab => \PROC|Selector9~5_combout\,
	datac => \PROC|Selector9~7_combout\,
	datad => \PROC|Selector9~0_combout\,
	combout => \PROC|Selector9~8_combout\);

-- Location: LCCOMB_X38_Y69_N20
\PROC|Selector9~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector9~9_combout\ = (\PROC|Selector9~4_combout\) # ((\PROC|Selector9~2_combout\) # ((\PROC|Selector9~8_combout\ & \PROC|Selector11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Selector9~4_combout\,
	datab => \PROC|Selector9~2_combout\,
	datac => \PROC|Selector9~8_combout\,
	datad => \PROC|Selector11~0_combout\,
	combout => \PROC|Selector9~9_combout\);

-- Location: LCCOMB_X38_Y69_N30
\PROC|Selector9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector9~1_combout\ = (\MEM|altsyncram_component|auto_generated|q_a\(14) & ((\PROC|state.load1~q\) # ((!\PROC|AC\(14) & \PROC|state.nand1~q\)))) # (!\MEM|altsyncram_component|auto_generated|q_a\(14) & (((\PROC|state.nand1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state.load1~q\,
	datab => \PROC|AC\(14),
	datac => \PROC|state.nand1~q\,
	datad => \MEM|altsyncram_component|auto_generated|q_a\(14),
	combout => \PROC|Selector9~1_combout\);

-- Location: M9K_X37_Y70_N0
\MEM|altsyncram_component|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000A0102804DED032B2C092802808090502800005200000003401400F00000000000000000000000000000000000000000000000000000000000000000000000000000000000000C180C3202CC40A30024A4082801C9C06260149404240048C0022000840220",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "programa.mif",
	init_file_layout => "port_a",
	logical_ram_name => "IP_RAM_256_x_16:MEM|altsyncram:altsyncram_component|altsyncram_dfi1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \PROC|state.store0~q\,
	portare => VCC,
	clk0 => \reloj~inputclkctrl_outclk\,
	portadatain => \MEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \MEM|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \MEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: FF_X36_Y69_N9
\PROC|RT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \MEM|altsyncram_component|auto_generated|q_a\(12),
	sload => VCC,
	ena => \PROC|RT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|RT\(12));

-- Location: LCCOMB_X36_Y69_N8
\PROC|Add1~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Add1~39_combout\ = (\PROC|state.add1~q\ & ((\PROC|RT\(12)))) # (!\PROC|state.add1~q\ & (!\MEM|altsyncram_component|auto_generated|q_a\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|altsyncram_component|auto_generated|q_a\(12),
	datac => \PROC|RT\(12),
	datad => \PROC|state.add1~q\,
	combout => \PROC|Add1~39_combout\);

-- Location: FF_X36_Y69_N23
\PROC|RT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \MEM|altsyncram_component|auto_generated|q_a\(11),
	sload => VCC,
	ena => \PROC|RT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|RT\(11));

-- Location: LCCOMB_X36_Y69_N22
\PROC|Add1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Add1~36_combout\ = (\PROC|state.add1~q\ & ((\PROC|RT\(11)))) # (!\PROC|state.add1~q\ & (!\MEM|altsyncram_component|auto_generated|q_a\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEM|altsyncram_component|auto_generated|q_a\(11),
	datac => \PROC|RT\(11),
	datad => \PROC|state.add1~q\,
	combout => \PROC|Add1~36_combout\);

-- Location: LCCOMB_X35_Y69_N6
\PROC|Add1~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Add1~34_combout\ = (\PROC|Add1~33_combout\ & ((\PROC|AC\(10) & (\PROC|Add1~32\ & VCC)) # (!\PROC|AC\(10) & (!\PROC|Add1~32\)))) # (!\PROC|Add1~33_combout\ & ((\PROC|AC\(10) & (!\PROC|Add1~32\)) # (!\PROC|AC\(10) & ((\PROC|Add1~32\) # (GND)))))
-- \PROC|Add1~35\ = CARRY((\PROC|Add1~33_combout\ & (!\PROC|AC\(10) & !\PROC|Add1~32\)) # (!\PROC|Add1~33_combout\ & ((!\PROC|Add1~32\) # (!\PROC|AC\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Add1~33_combout\,
	datab => \PROC|AC\(10),
	datad => VCC,
	cin => \PROC|Add1~32\,
	combout => \PROC|Add1~34_combout\,
	cout => \PROC|Add1~35\);

-- Location: LCCOMB_X35_Y69_N8
\PROC|Add1~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Add1~37_combout\ = ((\PROC|AC\(11) $ (\PROC|Add1~36_combout\ $ (!\PROC|Add1~35\)))) # (GND)
-- \PROC|Add1~38\ = CARRY((\PROC|AC\(11) & ((\PROC|Add1~36_combout\) # (!\PROC|Add1~35\))) # (!\PROC|AC\(11) & (\PROC|Add1~36_combout\ & !\PROC|Add1~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AC\(11),
	datab => \PROC|Add1~36_combout\,
	datad => VCC,
	cin => \PROC|Add1~35\,
	combout => \PROC|Add1~37_combout\,
	cout => \PROC|Add1~38\);

-- Location: LCCOMB_X35_Y69_N10
\PROC|Add1~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Add1~40_combout\ = (\PROC|AC\(12) & ((\PROC|Add1~39_combout\ & (\PROC|Add1~38\ & VCC)) # (!\PROC|Add1~39_combout\ & (!\PROC|Add1~38\)))) # (!\PROC|AC\(12) & ((\PROC|Add1~39_combout\ & (!\PROC|Add1~38\)) # (!\PROC|Add1~39_combout\ & ((\PROC|Add1~38\) 
-- # (GND)))))
-- \PROC|Add1~41\ = CARRY((\PROC|AC\(12) & (!\PROC|Add1~39_combout\ & !\PROC|Add1~38\)) # (!\PROC|AC\(12) & ((!\PROC|Add1~38\) # (!\PROC|Add1~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AC\(12),
	datab => \PROC|Add1~39_combout\,
	datad => VCC,
	cin => \PROC|Add1~38\,
	combout => \PROC|Add1~40_combout\,
	cout => \PROC|Add1~41\);

-- Location: LCCOMB_X35_Y69_N12
\PROC|Add1~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Add1~43_combout\ = ((\PROC|Add1~42_combout\ $ (\PROC|AC\(13) $ (!\PROC|Add1~41\)))) # (GND)
-- \PROC|Add1~44\ = CARRY((\PROC|Add1~42_combout\ & ((\PROC|AC\(13)) # (!\PROC|Add1~41\))) # (!\PROC|Add1~42_combout\ & (\PROC|AC\(13) & !\PROC|Add1~41\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Add1~42_combout\,
	datab => \PROC|AC\(13),
	datad => VCC,
	cin => \PROC|Add1~41\,
	combout => \PROC|Add1~43_combout\,
	cout => \PROC|Add1~44\);

-- Location: LCCOMB_X35_Y69_N14
\PROC|Add1~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Add1~46_combout\ = (\PROC|Add1~45_combout\ & ((\PROC|AC\(14) & (\PROC|Add1~44\ & VCC)) # (!\PROC|AC\(14) & (!\PROC|Add1~44\)))) # (!\PROC|Add1~45_combout\ & ((\PROC|AC\(14) & (!\PROC|Add1~44\)) # (!\PROC|AC\(14) & ((\PROC|Add1~44\) # (GND)))))
-- \PROC|Add1~47\ = CARRY((\PROC|Add1~45_combout\ & (!\PROC|AC\(14) & !\PROC|Add1~44\)) # (!\PROC|Add1~45_combout\ & ((!\PROC|Add1~44\) # (!\PROC|AC\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Add1~45_combout\,
	datab => \PROC|AC\(14),
	datad => VCC,
	cin => \PROC|Add1~44\,
	combout => \PROC|Add1~46_combout\,
	cout => \PROC|Add1~47\);

-- Location: LCCOMB_X38_Y69_N0
\PROC|Selector9~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector9~10_combout\ = (\PROC|Selector9~9_combout\) # ((\PROC|Selector9~1_combout\) # ((!\PROC|WideOr1~0_combout\ & \PROC|Add1~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|WideOr1~0_combout\,
	datab => \PROC|Selector9~9_combout\,
	datac => \PROC|Selector9~1_combout\,
	datad => \PROC|Add1~46_combout\,
	combout => \PROC|Selector9~10_combout\);

-- Location: FF_X38_Y69_N1
\PROC|AC[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|Selector9~10_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|AC\(14));

-- Location: LCCOMB_X38_Y69_N16
\PROC|Selector10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector10~3_combout\ = (\MEM|altsyncram_component|auto_generated|q_a\(13) & ((\PROC|state.load1~q\) # ((!\PROC|AC\(13) & \PROC|state.nand1~q\)))) # (!\MEM|altsyncram_component|auto_generated|q_a\(13) & (((\PROC|state.nand1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state.load1~q\,
	datab => \PROC|AC\(13),
	datac => \MEM|altsyncram_component|auto_generated|q_a\(13),
	datad => \PROC|state.nand1~q\,
	combout => \PROC|Selector10~3_combout\);

-- Location: LCCOMB_X38_Y69_N12
\PROC|Selector10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector10~4_combout\ = (\PROC|Selector15~8_combout\) # (\PROC|Selector10~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Selector15~8_combout\,
	datad => \PROC|Selector10~3_combout\,
	combout => \PROC|Selector10~4_combout\);

-- Location: LCCOMB_X35_Y69_N24
\PROC|Selector10~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector10~5_combout\ = (\PROC|Selector10~2_combout\) # ((\PROC|Selector10~4_combout\) # ((!\PROC|WideOr1~0_combout\ & \PROC|Add1~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|WideOr1~0_combout\,
	datab => \PROC|Selector10~2_combout\,
	datac => \PROC|Selector10~4_combout\,
	datad => \PROC|Add1~43_combout\,
	combout => \PROC|Selector10~5_combout\);

-- Location: FF_X35_Y69_N25
\PROC|AC[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|Selector10~5_combout\,
	ena => \PROC|AC[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|AC\(13));

-- Location: LCCOMB_X33_Y69_N0
\PROC|ShiftRight0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftRight0~15_combout\ = (\PROC|IR\(0) & ((\PROC|AC\(14)))) # (!\PROC|IR\(0) & (\PROC|AC\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|IR\(0),
	datac => \PROC|AC\(13),
	datad => \PROC|AC\(14),
	combout => \PROC|ShiftRight0~15_combout\);

-- Location: LCCOMB_X33_Y69_N18
\PROC|ShiftRight0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftRight0~26_combout\ = (\PROC|IR\(1) & (\PROC|ShiftRight0~15_combout\)) # (!\PROC|IR\(1) & ((\PROC|ShiftRight0~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|ShiftRight0~15_combout\,
	datac => \PROC|ShiftRight0~17_combout\,
	datad => \PROC|IR\(1),
	combout => \PROC|ShiftRight0~26_combout\);

-- Location: LCCOMB_X39_Y69_N8
\PROC|Selector16~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector16~6_combout\ = (\PROC|AC[0]~6_combout\ & (((\PROC|ShiftRight0~26_combout\ & \PROC|IR\(2))))) # (!\PROC|AC[0]~6_combout\ & (\PROC|AC\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AC\(15),
	datab => \PROC|ShiftRight0~26_combout\,
	datac => \PROC|AC[0]~6_combout\,
	datad => \PROC|IR\(2),
	combout => \PROC|Selector16~6_combout\);

-- Location: LCCOMB_X39_Y69_N0
\PROC|Selector16~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector16~4_combout\ = (\MEM|altsyncram_component|auto_generated|q_a\(7) & ((\PROC|state.load1~q\) # ((\PROC|state.nand1~q\ & !\PROC|AC\(7))))) # (!\MEM|altsyncram_component|auto_generated|q_a\(7) & (((\PROC|state.nand1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state.load1~q\,
	datab => \MEM|altsyncram_component|auto_generated|q_a\(7),
	datac => \PROC|state.nand1~q\,
	datad => \PROC|AC\(7),
	combout => \PROC|Selector16~4_combout\);

-- Location: LCCOMB_X39_Y69_N6
\PROC|Selector16~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector16~5_combout\ = (\PROC|Selector16~3_combout\) # ((\PROC|Selector16~4_combout\) # ((!\PROC|WideOr1~0_combout\ & \PROC|Add1~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Selector16~3_combout\,
	datab => \PROC|WideOr1~0_combout\,
	datac => \PROC|Add1~25_combout\,
	datad => \PROC|Selector16~4_combout\,
	combout => \PROC|Selector16~5_combout\);

-- Location: LCCOMB_X39_Y69_N12
\PROC|Selector16~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector16~7_combout\ = (\PROC|Selector16~2_combout\) # ((\PROC|Selector16~5_combout\) # ((\PROC|state.shr1~q\ & \PROC|Selector16~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state.shr1~q\,
	datab => \PROC|Selector16~2_combout\,
	datac => \PROC|Selector16~6_combout\,
	datad => \PROC|Selector16~5_combout\,
	combout => \PROC|Selector16~7_combout\);

-- Location: FF_X39_Y69_N13
\PROC|AC[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|Selector16~7_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|AC\(7));

-- Location: LCCOMB_X33_Y71_N10
\PROC|ShiftLeft0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftLeft0~15_combout\ = (\PROC|IR\(0) & (\PROC|AC\(6))) # (!\PROC|IR\(0) & ((\PROC|AC\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AC\(6),
	datac => \PROC|IR\(0),
	datad => \PROC|AC\(7),
	combout => \PROC|ShiftLeft0~15_combout\);

-- Location: LCCOMB_X33_Y71_N4
\PROC|ShiftLeft0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftLeft0~16_combout\ = (\PROC|IR\(1) & (\PROC|ShiftLeft0~10_combout\)) # (!\PROC|IR\(1) & ((\PROC|ShiftLeft0~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IR\(1),
	datac => \PROC|ShiftLeft0~10_combout\,
	datad => \PROC|ShiftLeft0~15_combout\,
	combout => \PROC|ShiftLeft0~16_combout\);

-- Location: LCCOMB_X32_Y69_N4
\PROC|Selector12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector12~2_combout\ = (!\PROC|ShiftLeft0~0_combout\ & ((\PROC|Selector12~7_combout\) # ((\PROC|Selector15~13_combout\ & \PROC|ShiftLeft0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Selector12~7_combout\,
	datab => \PROC|Selector15~13_combout\,
	datac => \PROC|ShiftLeft0~16_combout\,
	datad => \PROC|ShiftLeft0~0_combout\,
	combout => \PROC|Selector12~2_combout\);

-- Location: LCCOMB_X36_Y69_N24
\PROC|Selector12~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector12~4_combout\ = (\MEM|altsyncram_component|auto_generated|q_a\(11) & ((\PROC|state.load1~q\) # ((\PROC|state.nand1~q\ & !\PROC|AC\(11))))) # (!\MEM|altsyncram_component|auto_generated|q_a\(11) & (\PROC|state.nand1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state.nand1~q\,
	datab => \PROC|AC\(11),
	datac => \MEM|altsyncram_component|auto_generated|q_a\(11),
	datad => \PROC|state.load1~q\,
	combout => \PROC|Selector12~4_combout\);

-- Location: LCCOMB_X35_Y69_N20
\PROC|Selector12~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector12~5_combout\ = (\PROC|Selector15~8_combout\) # ((\PROC|Selector12~4_combout\) # ((\PROC|Add1~37_combout\ & !\PROC|WideOr1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Selector15~8_combout\,
	datab => \PROC|Selector12~4_combout\,
	datac => \PROC|Add1~37_combout\,
	datad => \PROC|WideOr1~0_combout\,
	combout => \PROC|Selector12~5_combout\);

-- Location: LCCOMB_X35_Y69_N28
\PROC|Selector12~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector12~6_combout\ = (!\PROC|AC[11]~9_combout\ & ((\PROC|Selector12~3_combout\) # ((\PROC|Selector12~2_combout\) # (\PROC|Selector12~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Selector12~3_combout\,
	datab => \PROC|AC[11]~9_combout\,
	datac => \PROC|Selector12~2_combout\,
	datad => \PROC|Selector12~5_combout\,
	combout => \PROC|Selector12~6_combout\);

-- Location: FF_X35_Y69_N29
\PROC|AC[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|Selector12~6_combout\,
	ena => \PROC|AC[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|AC\(11));

-- Location: LCCOMB_X32_Y70_N28
\PROC|ShiftRight0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftRight0~17_combout\ = (\PROC|IR\(0) & (\PROC|AC\(12))) # (!\PROC|IR\(0) & ((\PROC|AC\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IR\(0),
	datac => \PROC|AC\(12),
	datad => \PROC|AC\(11),
	combout => \PROC|ShiftRight0~17_combout\);

-- Location: LCCOMB_X32_Y70_N18
\PROC|ShiftRight0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftRight0~18_combout\ = (\PROC|IR\(0) & (\PROC|AC\(10))) # (!\PROC|IR\(0) & ((\PROC|AC\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IR\(0),
	datac => \PROC|AC\(10),
	datad => \PROC|AC\(9),
	combout => \PROC|ShiftRight0~18_combout\);

-- Location: LCCOMB_X32_Y70_N24
\PROC|ShiftRight0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftRight0~19_combout\ = (\PROC|IR\(1) & (\PROC|ShiftRight0~17_combout\)) # (!\PROC|IR\(1) & ((\PROC|ShiftRight0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|ShiftRight0~17_combout\,
	datac => \PROC|ShiftRight0~18_combout\,
	datad => \PROC|IR\(1),
	combout => \PROC|ShiftRight0~19_combout\);

-- Location: LCCOMB_X33_Y71_N16
\PROC|ShiftRight0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftRight0~12_combout\ = (\PROC|IR\(0) & (\PROC|AC\(8))) # (!\PROC|IR\(0) & ((\PROC|AC\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AC\(8),
	datac => \PROC|IR\(0),
	datad => \PROC|AC\(7),
	combout => \PROC|ShiftRight0~12_combout\);

-- Location: LCCOMB_X33_Y71_N14
\PROC|ShiftRight0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftRight0~13_combout\ = (\PROC|IR\(0) & (\PROC|AC\(6))) # (!\PROC|IR\(0) & ((\PROC|AC\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AC\(6),
	datac => \PROC|IR\(0),
	datad => \PROC|AC\(5),
	combout => \PROC|ShiftRight0~13_combout\);

-- Location: LCCOMB_X34_Y71_N4
\PROC|ShiftRight0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftRight0~14_combout\ = (\PROC|IR\(1) & (\PROC|ShiftRight0~12_combout\)) # (!\PROC|IR\(1) & ((\PROC|ShiftRight0~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IR\(1),
	datac => \PROC|ShiftRight0~12_combout\,
	datad => \PROC|ShiftRight0~13_combout\,
	combout => \PROC|ShiftRight0~14_combout\);

-- Location: LCCOMB_X33_Y69_N26
\PROC|ShiftRight0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftRight0~29_combout\ = (\PROC|IR\(2) & (\PROC|AC\(15))) # (!\PROC|IR\(2) & ((\PROC|IR\(1) & (\PROC|AC\(15))) # (!\PROC|IR\(1) & ((\PROC|ShiftRight0~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AC\(15),
	datab => \PROC|ShiftRight0~15_combout\,
	datac => \PROC|IR\(2),
	datad => \PROC|IR\(1),
	combout => \PROC|ShiftRight0~29_combout\);

-- Location: LCCOMB_X38_Y70_N14
\PROC|Selector18~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector18~3_combout\ = (\PROC|AC[6]~7_combout\ & (!\PROC|AC[0]~6_combout\)) # (!\PROC|AC[6]~7_combout\ & ((\PROC|AC[0]~6_combout\ & (\PROC|ShiftRight0~14_combout\)) # (!\PROC|AC[0]~6_combout\ & ((\PROC|ShiftRight0~29_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AC[6]~7_combout\,
	datab => \PROC|AC[0]~6_combout\,
	datac => \PROC|ShiftRight0~14_combout\,
	datad => \PROC|ShiftRight0~29_combout\,
	combout => \PROC|Selector18~3_combout\);

-- Location: LCCOMB_X38_Y70_N12
\PROC|AC[6]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|AC[6]~7_combout\ = (\PROC|ShiftLeft0~0_combout\) # ((!\PROC|IR\(3) & \PROC|IR\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ShiftLeft0~0_combout\,
	datab => \PROC|IR\(3),
	datac => \PROC|IR\(2),
	combout => \PROC|AC[6]~7_combout\);

-- Location: LCCOMB_X38_Y70_N20
\PROC|Selector18~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector18~4_combout\ = (\PROC|Selector18~3_combout\ & ((\PROC|AC\(15)) # ((!\PROC|AC[6]~7_combout\)))) # (!\PROC|Selector18~3_combout\ & (((\PROC|ShiftRight0~19_combout\ & \PROC|AC[6]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AC\(15),
	datab => \PROC|ShiftRight0~19_combout\,
	datac => \PROC|Selector18~3_combout\,
	datad => \PROC|AC[6]~7_combout\,
	combout => \PROC|Selector18~4_combout\);

-- Location: LCCOMB_X38_Y70_N18
\PROC|Selector18~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector18~5_combout\ = (\PROC|Selector18~2_combout\) # ((\PROC|state.shr1~q\ & \PROC|Selector18~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|state.shr1~q\,
	datac => \PROC|Selector18~2_combout\,
	datad => \PROC|Selector18~4_combout\,
	combout => \PROC|Selector18~5_combout\);

-- Location: LCCOMB_X35_Y70_N12
\PROC|Selector18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector18~1_combout\ = (\PROC|Add1~19_combout\ & ((\PROC|state.add1~q\) # (\PROC|state.sub1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state.add1~q\,
	datab => \PROC|state.sub1~q\,
	datad => \PROC|Add1~19_combout\,
	combout => \PROC|Selector18~1_combout\);

-- Location: LCCOMB_X35_Y70_N0
\PROC|Selector18~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector18~6_combout\ = (\PROC|Selector18~5_combout\) # ((\PROC|Selector18~1_combout\) # ((\PROC|ShiftLeft0~12_combout\ & \PROC|Selector18~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ShiftLeft0~12_combout\,
	datab => \PROC|Selector18~0_combout\,
	datac => \PROC|Selector18~5_combout\,
	datad => \PROC|Selector18~1_combout\,
	combout => \PROC|Selector18~6_combout\);

-- Location: FF_X35_Y70_N1
\PROC|AC[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|Selector18~6_combout\,
	ena => \PROC|AC[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|AC\(5));

-- Location: LCCOMB_X38_Y71_N12
\PROC|IR[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|IR[4]~feeder_combout\ = \MEM|altsyncram_component|auto_generated|q_a\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MEM|altsyncram_component|auto_generated|q_a\(4),
	combout => \PROC|IR[4]~feeder_combout\);

-- Location: LCCOMB_X35_Y71_N22
\PROC|IR[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|IR[0]~0_combout\ = (!\reset~input_o\ & \PROC|state.fetch1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \PROC|state.fetch1~q\,
	combout => \PROC|IR[0]~0_combout\);

-- Location: FF_X38_Y71_N13
\PROC|IR[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|IR[4]~feeder_combout\,
	ena => \PROC|IR[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|IR\(4));

-- Location: LCCOMB_X38_Y71_N14
\PROC|ShiftLeft0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftLeft0~0_combout\ = (\PROC|IR\(5)) # ((\PROC|IR\(6)) # ((\PROC|IR\(7)) # (\PROC|IR\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IR\(5),
	datab => \PROC|IR\(6),
	datac => \PROC|IR\(7),
	datad => \PROC|IR\(4),
	combout => \PROC|ShiftLeft0~0_combout\);

-- Location: LCCOMB_X34_Y71_N8
\PROC|Selector13~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector13~7_combout\ = (\PROC|Selector15~13_combout\ & ((\PROC|IR\(1) & ((\PROC|ShiftLeft0~13_combout\))) # (!\PROC|IR\(1) & (\PROC|ShiftLeft0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ShiftLeft0~14_combout\,
	datab => \PROC|ShiftLeft0~13_combout\,
	datac => \PROC|Selector15~13_combout\,
	datad => \PROC|IR\(1),
	combout => \PROC|Selector13~7_combout\);

-- Location: LCCOMB_X34_Y71_N18
\PROC|Selector13~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector13~8_combout\ = (\PROC|Selector13~7_combout\) # ((\PROC|ShiftLeft0~3_combout\ & (\PROC|Selector15~12_combout\ & !\PROC|IR\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ShiftLeft0~3_combout\,
	datab => \PROC|Selector15~12_combout\,
	datac => \PROC|Selector13~7_combout\,
	datad => \PROC|IR\(2),
	combout => \PROC|Selector13~8_combout\);

-- Location: LCCOMB_X33_Y69_N28
\PROC|Selector13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector13~3_combout\ = (\PROC|AC[11]~8_combout\ & ((\PROC|IR\(1) & ((\PROC|ShiftLeft0~17_combout\))) # (!\PROC|IR\(1) & (\PROC|ShiftLeft0~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ShiftLeft0~21_combout\,
	datab => \PROC|IR\(1),
	datac => \PROC|AC[11]~8_combout\,
	datad => \PROC|ShiftLeft0~17_combout\,
	combout => \PROC|Selector13~3_combout\);

-- Location: LCCOMB_X34_Y69_N12
\PROC|Selector13~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector13~4_combout\ = (\PROC|Selector13~3_combout\) # ((\MEM|altsyncram_component|auto_generated|q_a\(10) & ((\PROC|state.load1~q\))) # (!\MEM|altsyncram_component|auto_generated|q_a\(10) & (\PROC|state.nand1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state.nand1~q\,
	datab => \PROC|Selector13~3_combout\,
	datac => \PROC|state.load1~q\,
	datad => \MEM|altsyncram_component|auto_generated|q_a\(10),
	combout => \PROC|Selector13~4_combout\);

-- Location: LCCOMB_X34_Y69_N14
\PROC|Selector13~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector13~5_combout\ = (\PROC|Selector15~8_combout\) # (\PROC|Selector13~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PROC|Selector15~8_combout\,
	datad => \PROC|Selector13~4_combout\,
	combout => \PROC|Selector13~5_combout\);

-- Location: LCCOMB_X32_Y70_N6
\PROC|ShiftRight0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftRight0~5_combout\ = (\PROC|IR\(0) & ((\PROC|AC\(13)))) # (!\PROC|IR\(0) & (\PROC|AC\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IR\(0),
	datac => \PROC|AC\(12),
	datad => \PROC|AC\(13),
	combout => \PROC|ShiftRight0~5_combout\);

-- Location: LCCOMB_X32_Y70_N0
\PROC|ShiftRight0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftRight0~23_combout\ = (\PROC|IR\(1) & ((\PROC|ShiftRight0~5_combout\))) # (!\PROC|IR\(1) & (\PROC|ShiftRight0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IR\(1),
	datab => \PROC|ShiftRight0~7_combout\,
	datad => \PROC|ShiftRight0~5_combout\,
	combout => \PROC|ShiftRight0~23_combout\);

-- Location: LCCOMB_X32_Y70_N14
\PROC|ShiftRight0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftRight0~24_combout\ = (\PROC|IR\(2) & (\PROC|ShiftRight0~22_combout\)) # (!\PROC|IR\(2) & ((\PROC|ShiftRight0~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ShiftRight0~22_combout\,
	datab => \PROC|ShiftRight0~23_combout\,
	datac => \PROC|IR\(2),
	combout => \PROC|ShiftRight0~24_combout\);

-- Location: LCCOMB_X33_Y70_N30
\PROC|Selector13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector13~2_combout\ = (\PROC|AC\(10) & (\PROC|AC[0]~3_combout\ & ((\PROC|ShiftRight0~24_combout\)))) # (!\PROC|AC\(10) & ((\PROC|state.nand1~q\) # ((\PROC|AC[0]~3_combout\ & \PROC|ShiftRight0~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AC\(10),
	datab => \PROC|AC[0]~3_combout\,
	datac => \PROC|state.nand1~q\,
	datad => \PROC|ShiftRight0~24_combout\,
	combout => \PROC|Selector13~2_combout\);

-- Location: LCCOMB_X34_Y69_N24
\PROC|Selector13~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector13~6_combout\ = (\PROC|Selector13~5_combout\) # ((\PROC|Selector13~2_combout\) # ((!\PROC|WideOr1~0_combout\ & \PROC|Add1~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|WideOr1~0_combout\,
	datab => \PROC|Selector13~5_combout\,
	datac => \PROC|Selector13~2_combout\,
	datad => \PROC|Add1~34_combout\,
	combout => \PROC|Selector13~6_combout\);

-- Location: LCCOMB_X34_Y69_N22
\PROC|Selector13~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector13~9_combout\ = (\PROC|ShiftLeft0~0_combout\ & (!\PROC|state.shl1~q\ & ((\PROC|Selector13~6_combout\)))) # (!\PROC|ShiftLeft0~0_combout\ & (((\PROC|Selector13~8_combout\) # (\PROC|Selector13~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state.shl1~q\,
	datab => \PROC|ShiftLeft0~0_combout\,
	datac => \PROC|Selector13~8_combout\,
	datad => \PROC|Selector13~6_combout\,
	combout => \PROC|Selector13~9_combout\);

-- Location: FF_X34_Y69_N23
\PROC|AC[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|Selector13~9_combout\,
	ena => \PROC|AC[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|AC\(10));

-- Location: LCCOMB_X32_Y70_N2
\PROC|ShiftRight0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftRight0~7_combout\ = (\PROC|IR\(0) & ((\PROC|AC\(11)))) # (!\PROC|IR\(0) & (\PROC|AC\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IR\(0),
	datac => \PROC|AC\(10),
	datad => \PROC|AC\(11),
	combout => \PROC|ShiftRight0~7_combout\);

-- Location: LCCOMB_X32_Y70_N8
\PROC|ShiftRight0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftRight0~8_combout\ = (\PROC|IR\(0) & ((\PROC|AC\(9)))) # (!\PROC|IR\(0) & (\PROC|AC\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IR\(0),
	datac => \PROC|AC\(8),
	datad => \PROC|AC\(9),
	combout => \PROC|ShiftRight0~8_combout\);

-- Location: LCCOMB_X32_Y70_N22
\PROC|ShiftRight0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftRight0~9_combout\ = (\PROC|IR\(1) & (\PROC|ShiftRight0~7_combout\)) # (!\PROC|IR\(1) & ((\PROC|ShiftRight0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|ShiftRight0~7_combout\,
	datac => \PROC|ShiftRight0~8_combout\,
	datad => \PROC|IR\(1),
	combout => \PROC|ShiftRight0~9_combout\);

-- Location: LCCOMB_X32_Y70_N16
\PROC|ShiftRight0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftRight0~4_combout\ = (\PROC|IR\(1) & ((\PROC|IR\(0) & (\PROC|AC\(15))) # (!\PROC|IR\(0) & ((\PROC|AC\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IR\(0),
	datab => \PROC|AC\(15),
	datac => \PROC|AC\(14),
	datad => \PROC|IR\(1),
	combout => \PROC|ShiftRight0~4_combout\);

-- Location: LCCOMB_X32_Y70_N20
\PROC|ShiftRight0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftRight0~6_combout\ = (\PROC|ShiftRight0~4_combout\) # ((\PROC|ShiftRight0~5_combout\ & !\PROC|IR\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ShiftRight0~5_combout\,
	datab => \PROC|ShiftRight0~4_combout\,
	datad => \PROC|IR\(1),
	combout => \PROC|ShiftRight0~6_combout\);

-- Location: LCCOMB_X32_Y70_N12
\PROC|ShiftRight0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftRight0~28_combout\ = (\PROC|IR\(2) & (\PROC|AC\(15))) # (!\PROC|IR\(2) & ((\PROC|ShiftRight0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|AC\(15),
	datac => \PROC|IR\(2),
	datad => \PROC|ShiftRight0~6_combout\,
	combout => \PROC|ShiftRight0~28_combout\);

-- Location: LCCOMB_X33_Y71_N30
\PROC|ShiftRight0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftRight0~0_combout\ = (\PROC|IR\(0) & ((\PROC|AC\(7)))) # (!\PROC|IR\(0) & (\PROC|AC\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AC\(6),
	datac => \PROC|IR\(0),
	datad => \PROC|AC\(7),
	combout => \PROC|ShiftRight0~0_combout\);

-- Location: LCCOMB_X34_Y70_N28
\PROC|ShiftRight0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftRight0~1_combout\ = (\PROC|IR\(0) & ((\PROC|AC\(5)))) # (!\PROC|IR\(0) & (\PROC|AC\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AC\(4),
	datab => \PROC|AC\(5),
	datac => \PROC|IR\(0),
	combout => \PROC|ShiftRight0~1_combout\);

-- Location: LCCOMB_X33_Y70_N12
\PROC|ShiftRight0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftRight0~2_combout\ = (\PROC|IR\(1) & (\PROC|ShiftRight0~0_combout\)) # (!\PROC|IR\(1) & ((\PROC|ShiftRight0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|IR\(1),
	datac => \PROC|ShiftRight0~0_combout\,
	datad => \PROC|ShiftRight0~1_combout\,
	combout => \PROC|ShiftRight0~2_combout\);

-- Location: LCCOMB_X38_Y70_N22
\PROC|Selector19~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector19~3_combout\ = (\PROC|AC[6]~7_combout\ & (!\PROC|AC[0]~6_combout\)) # (!\PROC|AC[6]~7_combout\ & ((\PROC|AC[0]~6_combout\ & ((\PROC|ShiftRight0~2_combout\))) # (!\PROC|AC[0]~6_combout\ & (\PROC|ShiftRight0~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AC[6]~7_combout\,
	datab => \PROC|AC[0]~6_combout\,
	datac => \PROC|ShiftRight0~28_combout\,
	datad => \PROC|ShiftRight0~2_combout\,
	combout => \PROC|Selector19~3_combout\);

-- Location: LCCOMB_X38_Y70_N28
\PROC|Selector19~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector19~4_combout\ = (\PROC|Selector19~3_combout\ & ((\PROC|AC\(15)) # ((!\PROC|AC[6]~7_combout\)))) # (!\PROC|Selector19~3_combout\ & (((\PROC|ShiftRight0~9_combout\ & \PROC|AC[6]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AC\(15),
	datab => \PROC|ShiftRight0~9_combout\,
	datac => \PROC|Selector19~3_combout\,
	datad => \PROC|AC[6]~7_combout\,
	combout => \PROC|Selector19~4_combout\);

-- Location: LCCOMB_X38_Y70_N2
\PROC|Selector19~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector19~2_combout\ = (\MEM|altsyncram_component|auto_generated|q_a\(4) & ((\PROC|state.load1~q\) # ((\PROC|state.nand1~q\ & !\PROC|AC\(4))))) # (!\MEM|altsyncram_component|auto_generated|q_a\(4) & (((\PROC|state.nand1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|altsyncram_component|auto_generated|q_a\(4),
	datab => \PROC|state.load1~q\,
	datac => \PROC|state.nand1~q\,
	datad => \PROC|AC\(4),
	combout => \PROC|Selector19~2_combout\);

-- Location: LCCOMB_X38_Y70_N6
\PROC|Selector19~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector19~5_combout\ = (\PROC|Selector19~2_combout\) # ((\PROC|Selector19~4_combout\ & \PROC|state.shr1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|Selector19~4_combout\,
	datac => \PROC|state.shr1~q\,
	datad => \PROC|Selector19~2_combout\,
	combout => \PROC|Selector19~5_combout\);

-- Location: LCCOMB_X38_Y70_N0
\PROC|Selector19~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector19~6_combout\ = (\PROC|Selector19~7_combout\) # ((\PROC|Selector19~5_combout\) # ((!\PROC|WideOr1~0_combout\ & \PROC|Add1~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Selector19~7_combout\,
	datab => \PROC|WideOr1~0_combout\,
	datac => \PROC|Add1~16_combout\,
	datad => \PROC|Selector19~5_combout\,
	combout => \PROC|Selector19~6_combout\);

-- Location: FF_X38_Y70_N1
\PROC|AC[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|Selector19~6_combout\,
	ena => \PROC|AC[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|AC\(4));

-- Location: LCCOMB_X38_Y69_N24
\PROC|IR[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|IR[14]~feeder_combout\ = \MEM|altsyncram_component|auto_generated|q_a\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MEM|altsyncram_component|auto_generated|q_a\(14),
	combout => \PROC|IR[14]~feeder_combout\);

-- Location: FF_X38_Y69_N25
\PROC|IR[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|IR[14]~feeder_combout\,
	ena => \PROC|IR[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|IR\(14));

-- Location: LCCOMB_X38_Y69_N26
\PROC|IR[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|IR[15]~feeder_combout\ = \MEM|altsyncram_component|auto_generated|q_a\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MEM|altsyncram_component|auto_generated|q_a\(15),
	combout => \PROC|IR[15]~feeder_combout\);

-- Location: FF_X38_Y69_N27
\PROC|IR[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|IR[15]~feeder_combout\,
	ena => \PROC|IR[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|IR\(15));

-- Location: FF_X38_Y69_N13
\PROC|IR[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \MEM|altsyncram_component|auto_generated|q_a\(12),
	sload => VCC,
	ena => \PROC|IR[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|IR\(12));

-- Location: LCCOMB_X38_Y69_N18
\PROC|Selector24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector24~0_combout\ = (!\PROC|IR\(13) & (!\PROC|IR\(14) & (!\PROC|IR\(15) & !\PROC|IR\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IR\(13),
	datab => \PROC|IR\(14),
	datac => \PROC|IR\(15),
	datad => \PROC|IR\(12),
	combout => \PROC|Selector24~0_combout\);

-- Location: LCCOMB_X36_Y69_N12
\PROC|state~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|state~22_combout\ = (\PROC|IR\(11) & (!\PROC|IR\(10) & (\PROC|state.decode~q\ & \PROC|Selector24~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IR\(11),
	datab => \PROC|IR\(10),
	datac => \PROC|state.decode~q\,
	datad => \PROC|Selector24~0_combout\,
	combout => \PROC|state~22_combout\);

-- Location: LCCOMB_X39_Y69_N24
\PROC|state~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|state~30_combout\ = (\PROC|IR\(9) & (\PROC|IR\(8) & \PROC|state~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IR\(9),
	datab => \PROC|IR\(8),
	datad => \PROC|state~22_combout\,
	combout => \PROC|state~30_combout\);

-- Location: FF_X39_Y69_N25
\PROC|state.in1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|state~30_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|state.in1~q\);

-- Location: LCCOMB_X38_Y69_N4
\PROC|AC[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|AC[2]~4_combout\ = (!\PROC|state.in1~q\ & (!\reset~input_o\ & \PROC|WideOr1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|state.in1~q\,
	datac => \reset~input_o\,
	datad => \PROC|WideOr1~2_combout\,
	combout => \PROC|AC[2]~4_combout\);

-- Location: FF_X33_Y70_N3
\PROC|AC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|Selector21~5_combout\,
	ena => \PROC|AC[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|AC\(2));

-- Location: LCCOMB_X33_Y70_N4
\PROC|IR[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|IR[1]~feeder_combout\ = \MEM|altsyncram_component|auto_generated|q_a\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MEM|altsyncram_component|auto_generated|q_a\(1),
	combout => \PROC|IR[1]~feeder_combout\);

-- Location: FF_X33_Y70_N5
\PROC|IR[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|IR[1]~feeder_combout\,
	ena => \PROC|IR[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|IR\(1));

-- Location: LCCOMB_X34_Y71_N6
\PROC|Selector22~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector22~5_combout\ = (\PROC|ShiftLeft0~1_combout\ & (!\PROC|IR\(1) & !\PROC|IR\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|ShiftLeft0~1_combout\,
	datac => \PROC|IR\(1),
	datad => \PROC|IR\(2),
	combout => \PROC|Selector22~5_combout\);

-- Location: LCCOMB_X34_Y70_N4
\PROC|Selector22~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector22~3_combout\ = (\MEM|altsyncram_component|auto_generated|q_a\(1) & ((\PROC|state.load1~q\) # ((!\PROC|AC\(1) & \PROC|state.nand1~q\)))) # (!\MEM|altsyncram_component|auto_generated|q_a\(1) & (((\PROC|state.nand1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AC\(1),
	datab => \PROC|state.nand1~q\,
	datac => \PROC|state.load1~q\,
	datad => \MEM|altsyncram_component|auto_generated|q_a\(1),
	combout => \PROC|Selector22~3_combout\);

-- Location: LCCOMB_X34_Y70_N18
\PROC|Selector22~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector22~4_combout\ = (\PROC|Selector22~2_combout\) # ((\PROC|Selector22~3_combout\) # ((!\PROC|WideOr1~0_combout\ & \PROC|Add1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Selector22~2_combout\,
	datab => \PROC|WideOr1~0_combout\,
	datac => \PROC|Add1~7_combout\,
	datad => \PROC|Selector22~3_combout\,
	combout => \PROC|Selector22~4_combout\);

-- Location: LCCOMB_X34_Y70_N0
\PROC|Selector22~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector22~6_combout\ = (\PROC|Selector22~4_combout\) # ((\PROC|Selector18~0_combout\ & \PROC|Selector22~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Selector18~0_combout\,
	datab => \PROC|Selector22~5_combout\,
	datad => \PROC|Selector22~4_combout\,
	combout => \PROC|Selector22~6_combout\);

-- Location: LCCOMB_X34_Y69_N0
\PROC|AC[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|AC[0]~5_combout\ = (\PROC|AC[2]~4_combout\ & ((!\PROC|AC[0]~3_combout\) # (!\PROC|AC[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|AC[0]~2_combout\,
	datac => \PROC|AC[2]~4_combout\,
	datad => \PROC|AC[0]~3_combout\,
	combout => \PROC|AC[0]~5_combout\);

-- Location: FF_X34_Y70_N1
\PROC|AC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|Selector22~6_combout\,
	ena => \PROC|AC[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|AC\(1));

-- Location: FF_X38_Y71_N15
\PROC|IR[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \MEM|altsyncram_component|auto_generated|q_a\(7),
	sload => VCC,
	ena => \PROC|IR[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|IR\(7));

-- Location: LCCOMB_X39_Y71_N4
\PROC|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector0~0_combout\ = (\PROC|state.fetch1~q\ & ((\PROC|Add0~14_combout\) # ((!\PROC|Selector6~1_combout\ & \PROC|IR\(7))))) # (!\PROC|state.fetch1~q\ & (!\PROC|Selector6~1_combout\ & ((\PROC|IR\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state.fetch1~q\,
	datab => \PROC|Selector6~1_combout\,
	datac => \PROC|Add0~14_combout\,
	datad => \PROC|IR\(7),
	combout => \PROC|Selector0~0_combout\);

-- Location: LCCOMB_X39_Y71_N2
\PROC|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector0~1_combout\ = (\PROC|Selector0~0_combout\) # ((\PROC|PC\(7) & !\PROC|Selector6~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|Selector0~0_combout\,
	datac => \PROC|PC\(7),
	datad => \PROC|Selector6~3_combout\,
	combout => \PROC|Selector0~1_combout\);

-- Location: FF_X39_Y71_N3
\PROC|PC[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|Selector0~1_combout\,
	ena => \PROC|PC[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|PC\(7));

-- Location: LCCOMB_X39_Y71_N30
\PROC|Selector25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector25~0_combout\ = (\PROC|Selector32~4_combout\ & ((\PROC|IR\(7)) # ((\PROC|PC\(7) & \PROC|Selector32~2_combout\)))) # (!\PROC|Selector32~4_combout\ & (\PROC|PC\(7) & (\PROC|Selector32~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Selector32~4_combout\,
	datab => \PROC|PC\(7),
	datac => \PROC|Selector32~2_combout\,
	datad => \PROC|IR\(7),
	combout => \PROC|Selector25~0_combout\);

-- Location: FF_X38_Y71_N25
\PROC|IR[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \MEM|altsyncram_component|auto_generated|q_a\(6),
	sload => VCC,
	ena => \PROC|IR[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|IR\(6));

-- Location: LCCOMB_X38_Y71_N26
\PROC|Selector26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector26~0_combout\ = (\PROC|PC\(6) & ((\PROC|Selector32~2_combout\) # ((\PROC|IR\(6) & \PROC|Selector32~4_combout\)))) # (!\PROC|PC\(6) & (\PROC|IR\(6) & (\PROC|Selector32~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|PC\(6),
	datab => \PROC|IR\(6),
	datac => \PROC|Selector32~4_combout\,
	datad => \PROC|Selector32~2_combout\,
	combout => \PROC|Selector26~0_combout\);

-- Location: FF_X38_Y71_N7
\PROC|IR[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \MEM|altsyncram_component|auto_generated|q_a\(5),
	sload => VCC,
	ena => \PROC|IR[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|IR\(5));

-- Location: LCCOMB_X38_Y71_N6
\PROC|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector2~0_combout\ = (\PROC|Add0~10_combout\ & ((\PROC|state.fetch1~q\) # ((\PROC|IR\(5) & !\PROC|Selector6~1_combout\)))) # (!\PROC|Add0~10_combout\ & (((\PROC|IR\(5) & !\PROC|Selector6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Add0~10_combout\,
	datab => \PROC|state.fetch1~q\,
	datac => \PROC|IR\(5),
	datad => \PROC|Selector6~1_combout\,
	combout => \PROC|Selector2~0_combout\);

-- Location: LCCOMB_X38_Y71_N0
\PROC|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector2~1_combout\ = (\PROC|Selector2~0_combout\) # ((!\PROC|Selector6~3_combout\ & \PROC|PC\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Selector6~3_combout\,
	datab => \PROC|Selector2~0_combout\,
	datac => \PROC|PC\(5),
	combout => \PROC|Selector2~1_combout\);

-- Location: FF_X38_Y71_N1
\PROC|PC[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|Selector2~1_combout\,
	ena => \PROC|PC[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|PC\(5));

-- Location: LCCOMB_X38_Y71_N4
\PROC|Selector27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector27~0_combout\ = (\PROC|IR\(5) & ((\PROC|Selector32~4_combout\) # ((\PROC|PC\(5) & \PROC|Selector32~2_combout\)))) # (!\PROC|IR\(5) & (((\PROC|PC\(5) & \PROC|Selector32~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IR\(5),
	datab => \PROC|Selector32~4_combout\,
	datac => \PROC|PC\(5),
	datad => \PROC|Selector32~2_combout\,
	combout => \PROC|Selector27~0_combout\);

-- Location: FF_X36_Y69_N27
\PROC|IR[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \MEM|altsyncram_component|auto_generated|q_a\(11),
	sload => VCC,
	ena => \PROC|IR[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|IR\(11));

-- Location: LCCOMB_X36_Y69_N26
\PROC|state~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|state~24_combout\ = (\PROC|state.decode~q\ & (!\PROC|IR\(10) & (!\PROC|IR\(11) & \PROC|Selector24~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state.decode~q\,
	datab => \PROC|IR\(10),
	datac => \PROC|IR\(11),
	datad => \PROC|Selector24~0_combout\,
	combout => \PROC|state~24_combout\);

-- Location: LCCOMB_X36_Y70_N0
\PROC|state~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|state~35_combout\ = (\PROC|IR\(8) & (!\PROC|IR\(9) & \PROC|state~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IR\(8),
	datab => \PROC|IR\(9),
	datad => \PROC|state~24_combout\,
	combout => \PROC|state~35_combout\);

-- Location: FF_X36_Y70_N1
\PROC|state.store0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|state~35_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|state.store0~q\);

-- Location: LCCOMB_X35_Y71_N8
\PROC|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|WideOr2~0_combout\ = (!\PROC|state.decode~q\ & !\PROC|state.store0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|state.decode~q\,
	datad => \PROC|state.store0~q\,
	combout => \PROC|WideOr2~0_combout\);

-- Location: LCCOMB_X35_Y71_N14
\PROC|Selector32~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector32~2_combout\ = ((\PROC|WideOr5~0_combout\ & (!\PROC|state.jzero~q\ & \PROC|WideOr2~0_combout\))) # (!\PROC|Selector6~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|WideOr5~0_combout\,
	datab => \PROC|state.jzero~q\,
	datac => \PROC|Selector6~3_combout\,
	datad => \PROC|WideOr2~0_combout\,
	combout => \PROC|Selector32~2_combout\);

-- Location: LCCOMB_X38_Y71_N30
\PROC|Selector28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector28~0_combout\ = (\PROC|IR\(4) & ((\PROC|Selector32~4_combout\) # ((\PROC|PC\(4) & \PROC|Selector32~2_combout\)))) # (!\PROC|IR\(4) & (\PROC|PC\(4) & ((\PROC|Selector32~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IR\(4),
	datab => \PROC|PC\(4),
	datac => \PROC|Selector32~4_combout\,
	datad => \PROC|Selector32~2_combout\,
	combout => \PROC|Selector28~0_combout\);

-- Location: FF_X33_Y70_N1
\PROC|IR[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \MEM|altsyncram_component|auto_generated|q_a\(3),
	sload => VCC,
	ena => \PROC|IR[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|IR\(3));

-- Location: LCCOMB_X36_Y71_N28
\PROC|Selector29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector29~0_combout\ = (\PROC|PC\(3) & ((\PROC|Selector32~2_combout\) # ((\PROC|Selector32~4_combout\ & \PROC|IR\(3))))) # (!\PROC|PC\(3) & (\PROC|Selector32~4_combout\ & (\PROC|IR\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|PC\(3),
	datab => \PROC|Selector32~4_combout\,
	datac => \PROC|IR\(3),
	datad => \PROC|Selector32~2_combout\,
	combout => \PROC|Selector29~0_combout\);

-- Location: FF_X36_Y69_N1
\PROC|IR[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \MEM|altsyncram_component|auto_generated|q_a\(10),
	sload => VCC,
	ena => \PROC|IR[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|IR\(10));

-- Location: LCCOMB_X36_Y69_N14
\PROC|state~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|state~26_combout\ = (!\PROC|IR\(11) & (\PROC|IR\(10) & (\PROC|state.decode~q\ & \PROC|Selector24~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IR\(11),
	datab => \PROC|IR\(10),
	datac => \PROC|state.decode~q\,
	datad => \PROC|Selector24~0_combout\,
	combout => \PROC|state~26_combout\);

-- Location: LCCOMB_X36_Y70_N6
\PROC|state~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|state~27_combout\ = (!\PROC|IR\(8) & (!\PROC|IR\(9) & \PROC|state~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IR\(8),
	datab => \PROC|IR\(9),
	datac => \PROC|state~26_combout\,
	combout => \PROC|state~27_combout\);

-- Location: FF_X36_Y70_N7
\PROC|state.nand1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|state~27_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|state.nand1~q\);

-- Location: LCCOMB_X36_Y69_N2
\PROC|Selector11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector11~4_combout\ = (\MEM|altsyncram_component|auto_generated|q_a\(12) & ((\PROC|state.load1~q\) # ((!\PROC|AC\(12) & \PROC|state.nand1~q\)))) # (!\MEM|altsyncram_component|auto_generated|q_a\(12) & (((\PROC|state.nand1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AC\(12),
	datab => \PROC|state.nand1~q\,
	datac => \MEM|altsyncram_component|auto_generated|q_a\(12),
	datad => \PROC|state.load1~q\,
	combout => \PROC|Selector11~4_combout\);

-- Location: LCCOMB_X36_Y69_N10
\PROC|Selector11~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector11~5_combout\ = (\PROC|Selector15~8_combout\) # (\PROC|Selector11~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Selector15~8_combout\,
	datad => \PROC|Selector11~4_combout\,
	combout => \PROC|Selector11~5_combout\);

-- Location: LCCOMB_X34_Y69_N16
\PROC|Selector11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector11~3_combout\ = (\PROC|Selector11~2_combout\ & ((\PROC|Selector11~0_combout\) # ((\PROC|ShiftRight0~28_combout\ & \PROC|AC[0]~3_combout\)))) # (!\PROC|Selector11~2_combout\ & (\PROC|ShiftRight0~28_combout\ & ((\PROC|AC[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Selector11~2_combout\,
	datab => \PROC|ShiftRight0~28_combout\,
	datac => \PROC|Selector11~0_combout\,
	datad => \PROC|AC[0]~3_combout\,
	combout => \PROC|Selector11~3_combout\);

-- Location: LCCOMB_X35_Y69_N26
\PROC|Selector11~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector11~6_combout\ = (\PROC|Selector11~5_combout\) # ((\PROC|Selector11~3_combout\) # ((!\PROC|WideOr1~0_combout\ & \PROC|Add1~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|WideOr1~0_combout\,
	datab => \PROC|Selector11~5_combout\,
	datac => \PROC|Selector11~3_combout\,
	datad => \PROC|Add1~40_combout\,
	combout => \PROC|Selector11~6_combout\);

-- Location: FF_X35_Y69_N27
\PROC|AC[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|Selector11~6_combout\,
	ena => \PROC|AC[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|AC\(12));

-- Location: LCCOMB_X32_Y69_N14
\PROC|ShiftLeft0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftLeft0~25_combout\ = (\PROC|IR\(0) & (\PROC|AC\(12))) # (!\PROC|IR\(0) & ((\PROC|AC\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IR\(0),
	datac => \PROC|AC\(12),
	datad => \PROC|AC\(13),
	combout => \PROC|ShiftLeft0~25_combout\);

-- Location: LCCOMB_X33_Y69_N24
\PROC|Selector8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector8~3_combout\ = (\PROC|IR\(2) & ((\PROC|IR\(1) & (\PROC|ShiftLeft0~19_combout\)) # (!\PROC|IR\(1) & ((\PROC|ShiftLeft0~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IR\(2),
	datab => \PROC|ShiftLeft0~19_combout\,
	datac => \PROC|ShiftLeft0~22_combout\,
	datad => \PROC|IR\(1),
	combout => \PROC|Selector8~3_combout\);

-- Location: LCCOMB_X32_Y69_N8
\PROC|Selector8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector8~4_combout\ = (\PROC|Selector8~3_combout\) # ((\PROC|IR\(1) & (\PROC|ShiftLeft0~25_combout\ & !\PROC|IR\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IR\(1),
	datab => \PROC|ShiftLeft0~25_combout\,
	datac => \PROC|IR\(2),
	datad => \PROC|Selector8~3_combout\,
	combout => \PROC|Selector8~4_combout\);

-- Location: LCCOMB_X32_Y69_N10
\PROC|Selector8~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector8~6_combout\ = (\PROC|IR\(2) & (((\PROC|IR\(3) & \PROC|ShiftLeft0~5_combout\)))) # (!\PROC|IR\(2) & ((\PROC|Selector8~5_combout\) # ((\PROC|IR\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Selector8~5_combout\,
	datab => \PROC|IR\(2),
	datac => \PROC|IR\(3),
	datad => \PROC|ShiftLeft0~5_combout\,
	combout => \PROC|Selector8~6_combout\);

-- Location: LCCOMB_X32_Y69_N20
\PROC|Selector8~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector8~7_combout\ = (\PROC|IR\(2) & ((\PROC|ShiftLeft0~5_combout\))) # (!\PROC|IR\(2) & (\PROC|ShiftLeft0~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|IR\(2),
	datac => \PROC|ShiftLeft0~16_combout\,
	datad => \PROC|ShiftLeft0~5_combout\,
	combout => \PROC|Selector8~7_combout\);

-- Location: LCCOMB_X32_Y69_N18
\PROC|Selector8~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector8~11_combout\ = (\PROC|state.shl1~q\ & (!\PROC|ShiftLeft0~0_combout\ & ((\PROC|Selector8~7_combout\) # (!\PROC|IR\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state.shl1~q\,
	datab => \PROC|ShiftLeft0~0_combout\,
	datac => \PROC|IR\(3),
	datad => \PROC|Selector8~7_combout\,
	combout => \PROC|Selector8~11_combout\);

-- Location: LCCOMB_X31_Y69_N16
\PROC|Selector8~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector8~8_combout\ = (\PROC|Selector8~11_combout\ & ((\PROC|Selector8~4_combout\) # (\PROC|Selector8~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|Selector8~4_combout\,
	datac => \PROC|Selector8~6_combout\,
	datad => \PROC|Selector8~11_combout\,
	combout => \PROC|Selector8~8_combout\);

-- Location: LCCOMB_X39_Y69_N16
\PROC|Selector9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector9~3_combout\ = (\PROC|WideOr1~2_combout\ & ((\PROC|IR\(0)) # (!\PROC|state.in1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|state.in1~q\,
	datac => \PROC|WideOr1~2_combout\,
	datad => \PROC|IR\(0),
	combout => \PROC|Selector9~3_combout\);

-- Location: LCCOMB_X38_Y69_N8
\PROC|Selector8~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector8~9_combout\ = (\PROC|Selector8~8_combout\) # ((\PROC|AC\(15) & ((\PROC|state.shr1~q\) # (!\PROC|Selector9~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state.shr1~q\,
	datab => \PROC|AC\(15),
	datac => \PROC|Selector8~8_combout\,
	datad => \PROC|Selector9~3_combout\,
	combout => \PROC|Selector8~9_combout\);

-- Location: LCCOMB_X38_Y69_N14
\PROC|Selector8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector8~2_combout\ = (\MEM|altsyncram_component|auto_generated|q_a\(15) & ((\PROC|state.load1~q\) # ((!\PROC|AC\(15) & \PROC|state.nand1~q\)))) # (!\MEM|altsyncram_component|auto_generated|q_a\(15) & (((\PROC|state.nand1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state.load1~q\,
	datab => \PROC|AC\(15),
	datac => \MEM|altsyncram_component|auto_generated|q_a\(15),
	datad => \PROC|state.nand1~q\,
	combout => \PROC|Selector8~2_combout\);

-- Location: FF_X36_Y69_N19
\PROC|RT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \MEM|altsyncram_component|auto_generated|q_a\(15),
	sload => VCC,
	ena => \PROC|RT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|RT\(15));

-- Location: LCCOMB_X36_Y69_N18
\PROC|Add1~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Add1~48_combout\ = (\PROC|state.add1~q\ & ((\PROC|RT\(15)))) # (!\PROC|state.add1~q\ & (!\MEM|altsyncram_component|auto_generated|q_a\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEM|altsyncram_component|auto_generated|q_a\(15),
	datac => \PROC|RT\(15),
	datad => \PROC|state.add1~q\,
	combout => \PROC|Add1~48_combout\);

-- Location: LCCOMB_X35_Y69_N16
\PROC|Add1~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Add1~49_combout\ = \PROC|AC\(15) $ (\PROC|Add1~47\ $ (!\PROC|Add1~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PROC|AC\(15),
	datad => \PROC|Add1~48_combout\,
	cin => \PROC|Add1~47\,
	combout => \PROC|Add1~49_combout\);

-- Location: LCCOMB_X38_Y69_N2
\PROC|Selector8~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector8~10_combout\ = (\PROC|Selector8~9_combout\) # ((\PROC|Selector8~2_combout\) # ((!\PROC|WideOr1~0_combout\ & \PROC|Add1~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|WideOr1~0_combout\,
	datab => \PROC|Selector8~9_combout\,
	datac => \PROC|Selector8~2_combout\,
	datad => \PROC|Add1~49_combout\,
	combout => \PROC|Selector8~10_combout\);

-- Location: FF_X38_Y69_N3
\PROC|AC[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|Selector8~10_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|AC\(15));

-- Location: LCCOMB_X35_Y70_N10
\PROC|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Equal0~2_combout\ = (!\PROC|AC\(3) & (!\PROC|AC\(5) & (!\PROC|AC\(4) & !\PROC|AC\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AC\(3),
	datab => \PROC|AC\(5),
	datac => \PROC|AC\(4),
	datad => \PROC|AC\(6),
	combout => \PROC|Equal0~2_combout\);

-- Location: LCCOMB_X35_Y69_N30
\PROC|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Equal0~1_combout\ = (!\PROC|AC\(9) & (!\PROC|AC\(10) & (!\PROC|AC\(8) & !\PROC|AC\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AC\(9),
	datab => \PROC|AC\(10),
	datac => \PROC|AC\(8),
	datad => \PROC|AC\(7),
	combout => \PROC|Equal0~1_combout\);

-- Location: LCCOMB_X35_Y71_N0
\PROC|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Equal0~0_combout\ = (!\PROC|AC\(12) & (!\PROC|AC\(11) & (!\PROC|AC\(14) & !\PROC|AC\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AC\(12),
	datab => \PROC|AC\(11),
	datac => \PROC|AC\(14),
	datad => \PROC|AC\(13),
	combout => \PROC|Equal0~0_combout\);

-- Location: LCCOMB_X35_Y71_N4
\PROC|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Equal0~4_combout\ = (\PROC|Equal0~3_combout\ & (\PROC|Equal0~2_combout\ & (\PROC|Equal0~1_combout\ & \PROC|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Equal0~3_combout\,
	datab => \PROC|Equal0~2_combout\,
	datac => \PROC|Equal0~1_combout\,
	datad => \PROC|Equal0~0_combout\,
	combout => \PROC|Equal0~4_combout\);

-- Location: LCCOMB_X35_Y71_N20
\PROC|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector6~0_combout\ = (\PROC|AC\(15)) # ((\PROC|Equal0~4_combout\ & ((!\PROC|state.jzero~q\))) # (!\PROC|Equal0~4_combout\ & (!\PROC|state.jpos~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state.jpos~q\,
	datab => \PROC|state.jzero~q\,
	datac => \PROC|Equal0~4_combout\,
	datad => \PROC|AC\(15),
	combout => \PROC|Selector6~0_combout\);

-- Location: LCCOMB_X35_Y71_N30
\PROC|Selector6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector6~1_combout\ = (!\PROC|state.jump~q\ & (\PROC|Selector6~0_combout\ & ((!\PROC|state.jneg~q\) # (!\PROC|AC\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state.jump~q\,
	datab => \PROC|AC\(15),
	datac => \PROC|state.jneg~q\,
	datad => \PROC|Selector6~0_combout\,
	combout => \PROC|Selector6~1_combout\);

-- Location: LCCOMB_X35_Y71_N16
\PROC|Selector32~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector32~4_combout\ = ((\PROC|state.decode~q\) # ((\PROC|state.store0~q\) # (!\PROC|Selector6~1_combout\))) # (!\PROC|state.reset_pc~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state.reset_pc~q\,
	datab => \PROC|state.decode~q\,
	datac => \PROC|Selector6~1_combout\,
	datad => \PROC|state.store0~q\,
	combout => \PROC|Selector32~4_combout\);

-- Location: LCCOMB_X36_Y71_N30
\PROC|Selector30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector30~0_combout\ = (\PROC|PC\(2) & ((\PROC|Selector32~2_combout\) # ((\PROC|Selector32~4_combout\ & \PROC|IR\(2))))) # (!\PROC|PC\(2) & (\PROC|Selector32~4_combout\ & (\PROC|IR\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|PC\(2),
	datab => \PROC|Selector32~4_combout\,
	datac => \PROC|IR\(2),
	datad => \PROC|Selector32~2_combout\,
	combout => \PROC|Selector30~0_combout\);

-- Location: LCCOMB_X36_Y69_N16
\PROC|IR[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|IR[8]~feeder_combout\ = \MEM|altsyncram_component|auto_generated|q_a\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MEM|altsyncram_component|auto_generated|q_a\(8),
	combout => \PROC|IR[8]~feeder_combout\);

-- Location: FF_X36_Y69_N17
\PROC|IR[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|IR[8]~feeder_combout\,
	ena => \PROC|IR[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|IR\(8));

-- Location: LCCOMB_X36_Y69_N0
\PROC|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Mux0~0_combout\ = (\PROC|IR\(11) & (\PROC|IR\(10) & ((\PROC|IR\(8)) # (\PROC|IR\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IR\(11),
	datab => \PROC|IR\(8),
	datac => \PROC|IR\(10),
	datad => \PROC|IR\(9),
	combout => \PROC|Mux0~0_combout\);

-- Location: LCCOMB_X35_Y71_N2
\PROC|WideOr2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|WideOr2~1_combout\ = (!\PROC|state.decode~q\ & (!\PROC|state.add2~q\ & (!\PROC|state.fetch1~q\ & !\PROC|state.store0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state.decode~q\,
	datab => \PROC|state.add2~q\,
	datac => \PROC|state.fetch1~q\,
	datad => \PROC|state.store0~q\,
	combout => \PROC|WideOr2~1_combout\);

-- Location: LCCOMB_X35_Y71_N28
\PROC|Selector24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector24~1_combout\ = (\PROC|WideOr2~1_combout\) # ((\PROC|state.decode~q\ & ((\PROC|Mux0~0_combout\) # (!\PROC|Selector24~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state.decode~q\,
	datab => \PROC|Mux0~0_combout\,
	datac => \PROC|Selector24~0_combout\,
	datad => \PROC|WideOr2~1_combout\,
	combout => \PROC|Selector24~1_combout\);

-- Location: FF_X35_Y71_N29
\PROC|state.fetch1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|Selector24~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|state.fetch1~q\);

-- Location: LCCOMB_X38_Y71_N2
\PROC|Selector6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector6~4_combout\ = (\PROC|IR\(1) & (((\PROC|state.fetch1~q\ & \PROC|Add0~2_combout\)) # (!\PROC|Selector6~1_combout\))) # (!\PROC|IR\(1) & (\PROC|state.fetch1~q\ & (\PROC|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IR\(1),
	datab => \PROC|state.fetch1~q\,
	datac => \PROC|Add0~2_combout\,
	datad => \PROC|Selector6~1_combout\,
	combout => \PROC|Selector6~4_combout\);

-- Location: LCCOMB_X38_Y71_N16
\PROC|Selector6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector6~5_combout\ = (\PROC|Selector6~4_combout\) # ((!\PROC|Selector6~3_combout\ & \PROC|PC\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Selector6~3_combout\,
	datac => \PROC|PC\(1),
	datad => \PROC|Selector6~4_combout\,
	combout => \PROC|Selector6~5_combout\);

-- Location: FF_X38_Y71_N17
\PROC|PC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|Selector6~5_combout\,
	ena => \PROC|PC[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|PC\(1));

-- Location: LCCOMB_X38_Y71_N8
\PROC|Selector31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector31~0_combout\ = (\PROC|IR\(1) & ((\PROC|Selector32~4_combout\) # ((\PROC|PC\(1) & \PROC|Selector32~2_combout\)))) # (!\PROC|IR\(1) & (\PROC|PC\(1) & ((\PROC|Selector32~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IR\(1),
	datab => \PROC|PC\(1),
	datac => \PROC|Selector32~4_combout\,
	datad => \PROC|Selector32~2_combout\,
	combout => \PROC|Selector31~0_combout\);

-- Location: FF_X36_Y69_N11
\PROC|IR[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \MEM|altsyncram_component|auto_generated|q_a\(9),
	sload => VCC,
	ena => \PROC|IR[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|IR\(9));

-- Location: LCCOMB_X36_Y70_N12
\PROC|state~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|state~33_combout\ = (\PROC|state~22_combout\ & (!\PROC|IR\(9) & !\PROC|IR\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state~22_combout\,
	datab => \PROC|IR\(9),
	datac => \PROC|IR\(8),
	combout => \PROC|state~33_combout\);

-- Location: FF_X36_Y70_N13
\PROC|state.jneg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|state~33_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|state.jneg~q\);

-- Location: LCCOMB_X35_Y71_N26
\PROC|Selector6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector6~3_combout\ = (\PROC|Selector6~2_combout\ & ((\PROC|AC\(15)) # (!\PROC|state.jneg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Selector6~2_combout\,
	datab => \PROC|state.jneg~q\,
	datad => \PROC|AC\(15),
	combout => \PROC|Selector6~3_combout\);

-- Location: LCCOMB_X38_Y71_N20
\PROC|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector7~0_combout\ = (\PROC|IR\(0) & (((\PROC|Add0~0_combout\ & \PROC|state.fetch1~q\)) # (!\PROC|Selector6~1_combout\))) # (!\PROC|IR\(0) & (((\PROC|Add0~0_combout\ & \PROC|state.fetch1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IR\(0),
	datab => \PROC|Selector6~1_combout\,
	datac => \PROC|Add0~0_combout\,
	datad => \PROC|state.fetch1~q\,
	combout => \PROC|Selector7~0_combout\);

-- Location: LCCOMB_X39_Y71_N24
\PROC|Selector7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector7~1_combout\ = (\PROC|Selector7~0_combout\) # ((!\PROC|Selector6~3_combout\ & \PROC|PC\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|Selector6~3_combout\,
	datac => \PROC|PC\(0),
	datad => \PROC|Selector7~0_combout\,
	combout => \PROC|Selector7~1_combout\);

-- Location: FF_X39_Y71_N25
\PROC|PC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|Selector7~1_combout\,
	ena => \PROC|PC[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|PC\(0));

-- Location: LCCOMB_X38_Y71_N22
\PROC|Selector32~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector32~3_combout\ = (\PROC|IR\(0) & ((\PROC|Selector32~4_combout\) # ((\PROC|PC\(0) & \PROC|Selector32~2_combout\)))) # (!\PROC|IR\(0) & (\PROC|PC\(0) & ((\PROC|Selector32~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IR\(0),
	datab => \PROC|PC\(0),
	datac => \PROC|Selector32~4_combout\,
	datad => \PROC|Selector32~2_combout\,
	combout => \PROC|Selector32~3_combout\);

-- Location: FF_X33_Y70_N15
\PROC|IR[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \MEM|altsyncram_component|auto_generated|q_a\(2),
	sload => VCC,
	ena => \PROC|IR[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|IR\(2));

-- Location: LCCOMB_X32_Y69_N26
\PROC|AC[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|AC[0]~2_combout\ = (!\PROC|IR\(2) & (!\PROC|IR\(1) & !\PROC|IR\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|IR\(2),
	datac => \PROC|IR\(1),
	datad => \PROC|IR\(0),
	combout => \PROC|AC[0]~2_combout\);

-- Location: LCCOMB_X34_Y69_N20
\PROC|Selector23~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector23~3_combout\ = (\MEM|altsyncram_component|auto_generated|q_a\(0) & ((\PROC|state.load1~q\) # ((\PROC|state.nand1~q\ & !\PROC|AC\(0))))) # (!\MEM|altsyncram_component|auto_generated|q_a\(0) & (((\PROC|state.nand1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|altsyncram_component|auto_generated|q_a\(0),
	datab => \PROC|state.load1~q\,
	datac => \PROC|state.nand1~q\,
	datad => \PROC|AC\(0),
	combout => \PROC|Selector23~3_combout\);

-- Location: LCCOMB_X32_Y70_N4
\PROC|ShiftRight0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftRight0~10_combout\ = (\PROC|IR\(2) & ((\PROC|ShiftRight0~6_combout\))) # (!\PROC|IR\(2) & (\PROC|ShiftRight0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|IR\(2),
	datac => \PROC|ShiftRight0~9_combout\,
	datad => \PROC|ShiftRight0~6_combout\,
	combout => \PROC|ShiftRight0~10_combout\);

-- Location: LCCOMB_X33_Y70_N24
\PROC|Selector23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector23~1_combout\ = (\PROC|Selector23~0_combout\ & (((\PROC|ShiftRight0~10_combout\)) # (!\PROC|AC[0]~0_combout\))) # (!\PROC|Selector23~0_combout\ & (\PROC|AC[0]~0_combout\ & ((\PROC|ShiftRight0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Selector23~0_combout\,
	datab => \PROC|AC[0]~0_combout\,
	datac => \PROC|ShiftRight0~10_combout\,
	datad => \PROC|ShiftRight0~2_combout\,
	combout => \PROC|Selector23~1_combout\);

-- Location: LCCOMB_X34_Y70_N24
\PROC|Selector23~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector23~2_combout\ = (\PROC|state.shr1~q\ & ((\PROC|ShiftLeft0~0_combout\ & (\PROC|AC\(15))) # (!\PROC|ShiftLeft0~0_combout\ & ((\PROC|Selector23~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AC\(15),
	datab => \PROC|state.shr1~q\,
	datac => \PROC|ShiftLeft0~0_combout\,
	datad => \PROC|Selector23~1_combout\,
	combout => \PROC|Selector23~2_combout\);

-- Location: LCCOMB_X34_Y69_N2
\PROC|Selector23~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector23~4_combout\ = (\PROC|Selector23~3_combout\) # ((\PROC|Selector23~2_combout\) # ((!\PROC|WideOr1~0_combout\ & \PROC|Add1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|WideOr1~0_combout\,
	datab => \PROC|Selector23~3_combout\,
	datac => \PROC|Selector23~2_combout\,
	datad => \PROC|Add1~4_combout\,
	combout => \PROC|Selector23~4_combout\);

-- Location: LCCOMB_X34_Y69_N4
\PROC|Selector23~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector23~5_combout\ = (\PROC|Selector23~4_combout\) # ((\PROC|Selector18~0_combout\ & (\PROC|AC[0]~2_combout\ & \PROC|AC\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Selector18~0_combout\,
	datab => \PROC|AC[0]~2_combout\,
	datac => \PROC|AC\(0),
	datad => \PROC|Selector23~4_combout\,
	combout => \PROC|Selector23~5_combout\);

-- Location: FF_X34_Y69_N5
\PROC|AC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|Selector23~5_combout\,
	ena => \PROC|AC[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|AC\(0));

-- Location: FF_X33_Y71_N9
\PROC|IR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \MEM|altsyncram_component|auto_generated|q_a\(0),
	sload => VCC,
	ena => \PROC|IR[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|IR\(0));

-- Location: LCCOMB_X38_Y69_N6
\PROC|IR[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|IR[13]~feeder_combout\ = \MEM|altsyncram_component|auto_generated|q_a\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MEM|altsyncram_component|auto_generated|q_a\(13),
	combout => \PROC|IR[13]~feeder_combout\);

-- Location: FF_X38_Y69_N7
\PROC|IR[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|IR[13]~feeder_combout\,
	ena => \PROC|IR[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|IR\(13));

-- Location: LCCOMB_X39_Y71_N0
\PROC|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector5~0_combout\ = (\PROC|state.fetch1~q\ & ((\PROC|Add0~4_combout\) # ((!\PROC|Selector6~1_combout\ & \PROC|IR\(2))))) # (!\PROC|state.fetch1~q\ & (!\PROC|Selector6~1_combout\ & (\PROC|IR\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state.fetch1~q\,
	datab => \PROC|Selector6~1_combout\,
	datac => \PROC|IR\(2),
	datad => \PROC|Add0~4_combout\,
	combout => \PROC|Selector5~0_combout\);

-- Location: LCCOMB_X39_Y71_N26
\PROC|Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector5~1_combout\ = (\PROC|Selector5~0_combout\) # ((!\PROC|Selector6~3_combout\ & \PROC|PC\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|Selector6~3_combout\,
	datac => \PROC|PC\(2),
	datad => \PROC|Selector5~0_combout\,
	combout => \PROC|Selector5~1_combout\);

-- Location: FF_X39_Y71_N27
\PROC|PC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|Selector5~1_combout\,
	ena => \PROC|PC[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|PC\(2));

-- Location: LCCOMB_X38_Y71_N24
\PROC|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector1~0_combout\ = (\PROC|Add0~12_combout\ & ((\PROC|state.fetch1~q\) # ((\PROC|IR\(6) & !\PROC|Selector6~1_combout\)))) # (!\PROC|Add0~12_combout\ & (((\PROC|IR\(6) & !\PROC|Selector6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Add0~12_combout\,
	datab => \PROC|state.fetch1~q\,
	datac => \PROC|IR\(6),
	datad => \PROC|Selector6~1_combout\,
	combout => \PROC|Selector1~0_combout\);

-- Location: LCCOMB_X38_Y71_N10
\PROC|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector1~1_combout\ = (\PROC|Selector1~0_combout\) # ((!\PROC|Selector6~3_combout\ & \PROC|PC\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Selector6~3_combout\,
	datac => \PROC|PC\(6),
	datad => \PROC|Selector1~0_combout\,
	combout => \PROC|Selector1~1_combout\);

-- Location: FF_X38_Y71_N11
\PROC|PC[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|Selector1~1_combout\,
	ena => \PROC|PC[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|PC\(6));

ww_IR_out(0) <= \IR_out[0]~output_o\;

ww_IR_out(1) <= \IR_out[1]~output_o\;

ww_IR_out(2) <= \IR_out[2]~output_o\;

ww_IR_out(3) <= \IR_out[3]~output_o\;

ww_IR_out(4) <= \IR_out[4]~output_o\;

ww_IR_out(5) <= \IR_out[5]~output_o\;

ww_IR_out(6) <= \IR_out[6]~output_o\;

ww_IR_out(7) <= \IR_out[7]~output_o\;

ww_IR_out(8) <= \IR_out[8]~output_o\;

ww_IR_out(9) <= \IR_out[9]~output_o\;

ww_IR_out(10) <= \IR_out[10]~output_o\;

ww_IR_out(11) <= \IR_out[11]~output_o\;

ww_IR_out(12) <= \IR_out[12]~output_o\;

ww_IR_out(13) <= \IR_out[13]~output_o\;

ww_IR_out(14) <= \IR_out[14]~output_o\;

ww_IR_out(15) <= \IR_out[15]~output_o\;

ww_AC_out(0) <= \AC_out[0]~output_o\;

ww_AC_out(1) <= \AC_out[1]~output_o\;

ww_AC_out(2) <= \AC_out[2]~output_o\;

ww_AC_out(3) <= \AC_out[3]~output_o\;

ww_AC_out(4) <= \AC_out[4]~output_o\;

ww_AC_out(5) <= \AC_out[5]~output_o\;

ww_AC_out(6) <= \AC_out[6]~output_o\;

ww_AC_out(7) <= \AC_out[7]~output_o\;

ww_AC_out(8) <= \AC_out[8]~output_o\;

ww_AC_out(9) <= \AC_out[9]~output_o\;

ww_AC_out(10) <= \AC_out[10]~output_o\;

ww_AC_out(11) <= \AC_out[11]~output_o\;

ww_AC_out(12) <= \AC_out[12]~output_o\;

ww_AC_out(13) <= \AC_out[13]~output_o\;

ww_AC_out(14) <= \AC_out[14]~output_o\;

ww_AC_out(15) <= \AC_out[15]~output_o\;

ww_PC_out(0) <= \PC_out[0]~output_o\;

ww_PC_out(1) <= \PC_out[1]~output_o\;

ww_PC_out(2) <= \PC_out[2]~output_o\;

ww_PC_out(3) <= \PC_out[3]~output_o\;

ww_PC_out(4) <= \PC_out[4]~output_o\;

ww_PC_out(5) <= \PC_out[5]~output_o\;

ww_PC_out(6) <= \PC_out[6]~output_o\;

ww_PC_out(7) <= \PC_out[7]~output_o\;
END structure;


