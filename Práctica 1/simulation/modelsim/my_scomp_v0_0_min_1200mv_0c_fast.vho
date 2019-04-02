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

-- DATE "04/02/2019 11:43:48"

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
-- IR_out[0]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR_out[1]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR_out[2]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR_out[3]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR_out[4]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR_out[5]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR_out[6]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR_out[7]	=>  Location: PIN_AH11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR_out[8]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR_out[9]	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR_out[10]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR_out[11]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR_out[12]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR_out[13]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR_out[14]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR_out[15]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AC_out[0]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AC_out[1]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AC_out[2]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AC_out[3]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AC_out[4]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AC_out[5]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AC_out[6]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AC_out[7]	=>  Location: PIN_AC10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AC_out[8]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AC_out[9]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AC_out[10]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AC_out[11]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AC_out[12]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AC_out[13]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AC_out[14]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AC_out[15]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[0]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[1]	=>  Location: PIN_N26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[2]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[3]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[4]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[5]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[6]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[7]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL \PROC|Add1~4_combout\ : std_logic;
SIGNAL \PROC|Add0~2_combout\ : std_logic;
SIGNAL \PROC|Add1~1_combout\ : std_logic;
SIGNAL \PROC|Selector23~0_combout\ : std_logic;
SIGNAL \PROC|Add1~7_combout\ : std_logic;
SIGNAL \PROC|Add1~13_combout\ : std_logic;
SIGNAL \PROC|Add1~25_combout\ : std_logic;
SIGNAL \PROC|Add1~31_combout\ : std_logic;
SIGNAL \PROC|Add1~34_combout\ : std_logic;
SIGNAL \PROC|Add1~37_combout\ : std_logic;
SIGNAL \PROC|Add1~40_combout\ : std_logic;
SIGNAL \PROC|Add1~43_combout\ : std_logic;
SIGNAL \PROC|Selector24~0_combout\ : std_logic;
SIGNAL \PROC|state~18_combout\ : std_logic;
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
SIGNAL \PROC|state~21_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \PROC|state.store0~q\ : std_logic;
SIGNAL \PROC|state.decode~feeder_combout\ : std_logic;
SIGNAL \PROC|state.decode~q\ : std_logic;
SIGNAL \PROC|WideOr2~0_combout\ : std_logic;
SIGNAL \PROC|Add0~1\ : std_logic;
SIGNAL \PROC|Add0~3\ : std_logic;
SIGNAL \PROC|Add0~4_combout\ : std_logic;
SIGNAL \PROC|Selector5~0_combout\ : std_logic;
SIGNAL \PROC|state.reset_pc~feeder_combout\ : std_logic;
SIGNAL \PROC|state.reset_pc~q\ : std_logic;
SIGNAL \PROC|PC[0]~0_combout\ : std_logic;
SIGNAL \PROC|Add0~5\ : std_logic;
SIGNAL \PROC|Add0~6_combout\ : std_logic;
SIGNAL \PROC|state~16_combout\ : std_logic;
SIGNAL \PROC|state.add1~q\ : std_logic;
SIGNAL \PROC|Add1~10_combout\ : std_logic;
SIGNAL \PROC|Add1~3_cout\ : std_logic;
SIGNAL \PROC|Add1~5\ : std_logic;
SIGNAL \PROC|Add1~9\ : std_logic;
SIGNAL \PROC|Add1~11_combout\ : std_logic;
SIGNAL \PROC|Selector21~0_combout\ : std_logic;
SIGNAL \PROC|Selector21~1_combout\ : std_logic;
SIGNAL \PROC|state.store1~q\ : std_logic;
SIGNAL \PROC|AC[0]~0_combout\ : std_logic;
SIGNAL \PROC|Add1~12\ : std_logic;
SIGNAL \PROC|Add1~14_combout\ : std_logic;
SIGNAL \PROC|Selector20~0_combout\ : std_logic;
SIGNAL \PROC|Selector20~1_combout\ : std_logic;
SIGNAL \PROC|Add1~16_combout\ : std_logic;
SIGNAL \PROC|Add1~15\ : std_logic;
SIGNAL \PROC|Add1~17_combout\ : std_logic;
SIGNAL \PROC|Selector19~0_combout\ : std_logic;
SIGNAL \PROC|Selector19~1_combout\ : std_logic;
SIGNAL \PROC|Add1~19_combout\ : std_logic;
SIGNAL \PROC|Add1~18\ : std_logic;
SIGNAL \PROC|Add1~20_combout\ : std_logic;
SIGNAL \PROC|Selector18~0_combout\ : std_logic;
SIGNAL \PROC|Selector18~1_combout\ : std_logic;
SIGNAL \PROC|Add1~22_combout\ : std_logic;
SIGNAL \PROC|Add1~21\ : std_logic;
SIGNAL \PROC|Add1~23_combout\ : std_logic;
SIGNAL \PROC|Selector17~0_combout\ : std_logic;
SIGNAL \PROC|Selector17~1_combout\ : std_logic;
SIGNAL \PROC|Add1~24\ : std_logic;
SIGNAL \PROC|Add1~26_combout\ : std_logic;
SIGNAL \PROC|Selector16~0_combout\ : std_logic;
SIGNAL \PROC|Selector16~1_combout\ : std_logic;
SIGNAL \PROC|Add1~28_combout\ : std_logic;
SIGNAL \PROC|Add1~27\ : std_logic;
SIGNAL \PROC|Add1~29_combout\ : std_logic;
SIGNAL \PROC|Selector15~0_combout\ : std_logic;
SIGNAL \PROC|Selector15~1_combout\ : std_logic;
SIGNAL \PROC|Add1~30\ : std_logic;
SIGNAL \PROC|Add1~32_combout\ : std_logic;
SIGNAL \PROC|Selector14~0_combout\ : std_logic;
SIGNAL \PROC|Selector14~1_combout\ : std_logic;
SIGNAL \PROC|Add1~33\ : std_logic;
SIGNAL \PROC|Add1~35_combout\ : std_logic;
SIGNAL \PROC|Selector13~0_combout\ : std_logic;
SIGNAL \PROC|Selector13~1_combout\ : std_logic;
SIGNAL \PROC|Add1~36\ : std_logic;
SIGNAL \PROC|Add1~38_combout\ : std_logic;
SIGNAL \PROC|Selector12~0_combout\ : std_logic;
SIGNAL \PROC|Selector12~1_combout\ : std_logic;
SIGNAL \PROC|Selector8~0_combout\ : std_logic;
SIGNAL \PROC|Add1~49_combout\ : std_logic;
SIGNAL \PROC|Add1~39\ : std_logic;
SIGNAL \PROC|Add1~42\ : std_logic;
SIGNAL \PROC|Add1~45\ : std_logic;
SIGNAL \PROC|Add1~48\ : std_logic;
SIGNAL \PROC|Add1~50_combout\ : std_logic;
SIGNAL \PROC|Selector8~1_combout\ : std_logic;
SIGNAL \PROC|Add1~46_combout\ : std_logic;
SIGNAL \PROC|Add1~47_combout\ : std_logic;
SIGNAL \PROC|Selector9~0_combout\ : std_logic;
SIGNAL \PROC|Selector9~1_combout\ : std_logic;
SIGNAL \PROC|Selector10~0_combout\ : std_logic;
SIGNAL \PROC|Add1~44_combout\ : std_logic;
SIGNAL \PROC|Selector10~1_combout\ : std_logic;
SIGNAL \PROC|Selector11~0_combout\ : std_logic;
SIGNAL \PROC|Add1~41_combout\ : std_logic;
SIGNAL \PROC|Selector11~1_combout\ : std_logic;
SIGNAL \PROC|IR[0]~0_combout\ : std_logic;
SIGNAL \PROC|IR[13]~feeder_combout\ : std_logic;
SIGNAL \PROC|IR[12]~feeder_combout\ : std_logic;
SIGNAL \PROC|state~14_combout\ : std_logic;
SIGNAL \PROC|state~19_combout\ : std_logic;
SIGNAL \PROC|state.nand1~q\ : std_logic;
SIGNAL \PROC|Add1~6_combout\ : std_logic;
SIGNAL \PROC|Add1~8_combout\ : std_logic;
SIGNAL \PROC|Selector22~0_combout\ : std_logic;
SIGNAL \PROC|Selector22~1_combout\ : std_logic;
SIGNAL \PROC|IR[7]~feeder_combout\ : std_logic;
SIGNAL \PROC|Add0~7\ : std_logic;
SIGNAL \PROC|Add0~9\ : std_logic;
SIGNAL \PROC|Add0~11\ : std_logic;
SIGNAL \PROC|Add0~13\ : std_logic;
SIGNAL \PROC|Add0~14_combout\ : std_logic;
SIGNAL \PROC|Selector0~0_combout\ : std_logic;
SIGNAL \PROC|MEMadr[7]~7_combout\ : std_logic;
SIGNAL \PROC|IR[6]~feeder_combout\ : std_logic;
SIGNAL \PROC|Add0~12_combout\ : std_logic;
SIGNAL \PROC|Selector1~0_combout\ : std_logic;
SIGNAL \PROC|MEMadr[6]~6_combout\ : std_logic;
SIGNAL \PROC|IR[5]~feeder_combout\ : std_logic;
SIGNAL \PROC|Add0~10_combout\ : std_logic;
SIGNAL \PROC|Selector2~0_combout\ : std_logic;
SIGNAL \PROC|MEMadr[5]~5_combout\ : std_logic;
SIGNAL \PROC|IR[4]~feeder_combout\ : std_logic;
SIGNAL \PROC|Add0~8_combout\ : std_logic;
SIGNAL \PROC|Selector3~0_combout\ : std_logic;
SIGNAL \PROC|MEMadr[4]~4_combout\ : std_logic;
SIGNAL \PROC|IR[3]~feeder_combout\ : std_logic;
SIGNAL \PROC|Selector4~0_combout\ : std_logic;
SIGNAL \PROC|MEMadr[3]~3_combout\ : std_logic;
SIGNAL \PROC|IR[2]~feeder_combout\ : std_logic;
SIGNAL \PROC|MEMadr[2]~2_combout\ : std_logic;
SIGNAL \PROC|Mux0~0_combout\ : std_logic;
SIGNAL \PROC|Selector24~1_combout\ : std_logic;
SIGNAL \PROC|state.fetch1~q\ : std_logic;
SIGNAL \PROC|IR[1]~feeder_combout\ : std_logic;
SIGNAL \PROC|Selector6~0_combout\ : std_logic;
SIGNAL \PROC|MEMadr[1]~1_combout\ : std_logic;
SIGNAL \PROC|IR[8]~feeder_combout\ : std_logic;
SIGNAL \PROC|state~20_combout\ : std_logic;
SIGNAL \PROC|state.jump~q\ : std_logic;
SIGNAL \PROC|Add0~0_combout\ : std_logic;
SIGNAL \PROC|Selector7~0_combout\ : std_logic;
SIGNAL \PROC|MEMadr[0]~0_combout\ : std_logic;
SIGNAL \PROC|IR[10]~feeder_combout\ : std_logic;
SIGNAL \PROC|state~15_combout\ : std_logic;
SIGNAL \PROC|state~17_combout\ : std_logic;
SIGNAL \PROC|state.load1~q\ : std_logic;
SIGNAL \PROC|Selector23~1_combout\ : std_logic;
SIGNAL \PROC|Selector23~2_combout\ : std_logic;
SIGNAL \PROC|IR[0]~feeder_combout\ : std_logic;
SIGNAL \PROC|IR[9]~feeder_combout\ : std_logic;
SIGNAL \PROC|IR[14]~feeder_combout\ : std_logic;
SIGNAL \MEM|altsyncram_component|auto_generated|q_a\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \PROC|PC\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \PROC|IR\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \PROC|AC\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;

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

\MEM|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\PROC|MEMadr[7]~7_combout\ & \PROC|MEMadr[6]~6_combout\ & \PROC|MEMadr[5]~5_combout\ & \PROC|MEMadr[4]~4_combout\ & \PROC|MEMadr[3]~3_combout\ & \PROC|MEMadr[2]~2_combout\ & 
\PROC|MEMadr[1]~1_combout\ & \PROC|MEMadr[0]~0_combout\);

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

-- Location: LCCOMB_X38_Y44_N18
\PROC|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Add1~4_combout\ = (\PROC|Add1~1_combout\ & ((\PROC|AC\(0) & (!\PROC|Add1~3_cout\)) # (!\PROC|AC\(0) & ((\PROC|Add1~3_cout\) # (GND))))) # (!\PROC|Add1~1_combout\ & ((\PROC|AC\(0) & (\PROC|Add1~3_cout\ & VCC)) # (!\PROC|AC\(0) & 
-- (!\PROC|Add1~3_cout\))))
-- \PROC|Add1~5\ = CARRY((\PROC|Add1~1_combout\ & ((!\PROC|Add1~3_cout\) # (!\PROC|AC\(0)))) # (!\PROC|Add1~1_combout\ & (!\PROC|AC\(0) & !\PROC|Add1~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Add1~1_combout\,
	datab => \PROC|AC\(0),
	datad => VCC,
	cin => \PROC|Add1~3_cout\,
	combout => \PROC|Add1~4_combout\,
	cout => \PROC|Add1~5\);

-- Location: LCCOMB_X35_Y44_N10
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

-- Location: LCCOMB_X38_Y44_N12
\PROC|Add1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Add1~1_combout\ = \PROC|state.add1~q\ $ (\MEM|altsyncram_component|auto_generated|q_a\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PROC|state.add1~q\,
	datad => \MEM|altsyncram_component|auto_generated|q_a\(0),
	combout => \PROC|Add1~1_combout\);

-- Location: LCCOMB_X39_Y44_N26
\PROC|Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector23~0_combout\ = (\PROC|Add1~6_combout\ & ((\PROC|Add1~4_combout\) # ((\PROC|state.load1~q\ & \MEM|altsyncram_component|auto_generated|q_a\(0))))) # (!\PROC|Add1~6_combout\ & (\PROC|state.load1~q\ & 
-- (\MEM|altsyncram_component|auto_generated|q_a\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Add1~6_combout\,
	datab => \PROC|state.load1~q\,
	datac => \MEM|altsyncram_component|auto_generated|q_a\(0),
	datad => \PROC|Add1~4_combout\,
	combout => \PROC|Selector23~0_combout\);

-- Location: LCCOMB_X38_Y44_N10
\PROC|Add1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Add1~7_combout\ = \PROC|state.add1~q\ $ (\MEM|altsyncram_component|auto_generated|q_a\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PROC|state.add1~q\,
	datad => \MEM|altsyncram_component|auto_generated|q_a\(1),
	combout => \PROC|Add1~7_combout\);

-- Location: LCCOMB_X38_Y44_N6
\PROC|Add1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Add1~13_combout\ = \PROC|state.add1~q\ $ (\MEM|altsyncram_component|auto_generated|q_a\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PROC|state.add1~q\,
	datad => \MEM|altsyncram_component|auto_generated|q_a\(3),
	combout => \PROC|Add1~13_combout\);

-- Location: LCCOMB_X38_Y43_N26
\PROC|Add1~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Add1~25_combout\ = \PROC|state.add1~q\ $ (\MEM|altsyncram_component|auto_generated|q_a\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state.add1~q\,
	datad => \MEM|altsyncram_component|auto_generated|q_a\(7),
	combout => \PROC|Add1~25_combout\);

-- Location: LCCOMB_X38_Y44_N14
\PROC|Add1~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Add1~31_combout\ = \PROC|state.add1~q\ $ (\MEM|altsyncram_component|auto_generated|q_a\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PROC|state.add1~q\,
	datad => \MEM|altsyncram_component|auto_generated|q_a\(9),
	combout => \PROC|Add1~31_combout\);

-- Location: LCCOMB_X38_Y43_N22
\PROC|Add1~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Add1~34_combout\ = \MEM|altsyncram_component|auto_generated|q_a\(10) $ (\PROC|state.add1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MEM|altsyncram_component|auto_generated|q_a\(10),
	datad => \PROC|state.add1~q\,
	combout => \PROC|Add1~34_combout\);

-- Location: LCCOMB_X39_Y43_N2
\PROC|Add1~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Add1~37_combout\ = \PROC|state.add1~q\ $ (\MEM|altsyncram_component|auto_generated|q_a\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PROC|state.add1~q\,
	datad => \MEM|altsyncram_component|auto_generated|q_a\(11),
	combout => \PROC|Add1~37_combout\);

-- Location: LCCOMB_X36_Y43_N28
\PROC|Add1~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Add1~40_combout\ = \PROC|state.add1~q\ $ (\MEM|altsyncram_component|auto_generated|q_a\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state.add1~q\,
	datad => \MEM|altsyncram_component|auto_generated|q_a\(12),
	combout => \PROC|Add1~40_combout\);

-- Location: LCCOMB_X39_Y43_N30
\PROC|Add1~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Add1~43_combout\ = \PROC|state.add1~q\ $ (\MEM|altsyncram_component|auto_generated|q_a\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PROC|state.add1~q\,
	datad => \MEM|altsyncram_component|auto_generated|q_a\(13),
	combout => \PROC|Add1~43_combout\);

-- Location: LCCOMB_X35_Y43_N28
\PROC|Selector24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector24~0_combout\ = (\PROC|state.decode~q\ & ((\PROC|IR\(14)) # ((\PROC|IR\(13)) # (\PROC|IR\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IR\(14),
	datab => \PROC|IR\(13),
	datac => \PROC|IR\(15),
	datad => \PROC|state.decode~q\,
	combout => \PROC|Selector24~0_combout\);

-- Location: LCCOMB_X35_Y43_N10
\PROC|state~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|state~18_combout\ = (!\PROC|IR\(8) & (!\PROC|IR\(9) & \PROC|IR\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|IR\(8),
	datac => \PROC|IR\(9),
	datad => \PROC|IR\(10),
	combout => \PROC|state~18_combout\);

-- Location: IOOBUF_X33_Y73_N2
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

-- Location: IOOBUF_X31_Y73_N2
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

-- Location: IOOBUF_X33_Y0_N9
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

-- Location: IOOBUF_X0_Y44_N9
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

-- Location: IOOBUF_X0_Y45_N16
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

-- Location: IOOBUF_X0_Y46_N23
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

-- Location: IOOBUF_X0_Y35_N2
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

-- Location: IOOBUF_X40_Y0_N16
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

-- Location: IOOBUF_X0_Y43_N16
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

-- Location: IOOBUF_X33_Y0_N2
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

-- Location: IOOBUF_X31_Y73_N9
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

-- Location: IOOBUF_X35_Y0_N16
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

-- Location: IOOBUF_X38_Y73_N23
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

-- Location: IOOBUF_X35_Y0_N23
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

-- Location: IOOBUF_X42_Y73_N2
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

-- Location: IOOBUF_X31_Y0_N2
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

-- Location: IOOBUF_X0_Y44_N23
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

-- Location: IOOBUF_X45_Y73_N9
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

-- Location: IOOBUF_X38_Y0_N9
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

-- Location: IOOBUF_X0_Y44_N16
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

-- Location: IOOBUF_X38_Y73_N2
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

-- Location: IOOBUF_X40_Y0_N23
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

-- Location: IOOBUF_X45_Y73_N2
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

-- Location: IOOBUF_X38_Y0_N2
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

-- Location: IOOBUF_X40_Y73_N2
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

-- Location: IOOBUF_X40_Y73_N9
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

-- Location: IOOBUF_X0_Y42_N9
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

-- Location: IOOBUF_X0_Y42_N2
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

-- Location: IOOBUF_X47_Y73_N2
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

-- Location: IOOBUF_X38_Y73_N9
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

-- Location: IOOBUF_X42_Y0_N16
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

-- Location: IOOBUF_X38_Y73_N16
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

-- Location: IOOBUF_X31_Y0_N9
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

-- Location: IOOBUF_X115_Y44_N2
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

-- Location: IOOBUF_X0_Y45_N23
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

-- Location: IOOBUF_X42_Y73_N9
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

-- Location: IOOBUF_X0_Y44_N2
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

-- Location: IOOBUF_X33_Y73_N9
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

-- Location: IOOBUF_X35_Y73_N23
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

-- Location: IOOBUF_X35_Y73_N16
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

-- Location: LCCOMB_X35_Y43_N0
\PROC|state~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|state~21_combout\ = (!\PROC|IR\(9) & (\PROC|state~15_combout\ & \PROC|IR\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IR\(9),
	datab => \PROC|state~15_combout\,
	datad => \PROC|IR\(8),
	combout => \PROC|state~21_combout\);

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

-- Location: FF_X35_Y43_N1
\PROC|state.store0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|state~21_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|state.store0~q\);

-- Location: LCCOMB_X36_Y43_N24
\PROC|state.decode~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|state.decode~feeder_combout\ = \PROC|state.fetch1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PROC|state.fetch1~q\,
	combout => \PROC|state.decode~feeder_combout\);

-- Location: FF_X36_Y43_N25
\PROC|state.decode\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|state.decode~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|state.decode~q\);

-- Location: LCCOMB_X36_Y43_N18
\PROC|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|WideOr2~0_combout\ = (!\PROC|state.fetch1~q\ & (!\PROC|state.store0~q\ & !\PROC|state.decode~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state.fetch1~q\,
	datac => \PROC|state.store0~q\,
	datad => \PROC|state.decode~q\,
	combout => \PROC|WideOr2~0_combout\);

-- Location: LCCOMB_X35_Y44_N8
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

-- Location: LCCOMB_X35_Y44_N12
\PROC|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Add0~4_combout\ = (\PROC|PC\(2) & (\PROC|Add0~3\ $ (GND))) # (!\PROC|PC\(2) & (!\PROC|Add0~3\ & VCC))
-- \PROC|Add0~5\ = CARRY((\PROC|PC\(2) & !\PROC|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PROC|PC\(2),
	datad => VCC,
	cin => \PROC|Add0~3\,
	combout => \PROC|Add0~4_combout\,
	cout => \PROC|Add0~5\);

-- Location: LCCOMB_X34_Y44_N6
\PROC|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector5~0_combout\ = (\PROC|state.jump~q\ & (((\PROC|IR\(2))))) # (!\PROC|state.jump~q\ & (\PROC|state.fetch1~q\ & (\PROC|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state.fetch1~q\,
	datab => \PROC|state.jump~q\,
	datac => \PROC|Add0~4_combout\,
	datad => \PROC|IR\(2),
	combout => \PROC|Selector5~0_combout\);

-- Location: LCCOMB_X36_Y43_N12
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

-- Location: FF_X36_Y43_N13
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

-- Location: LCCOMB_X36_Y43_N0
\PROC|PC[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|PC[0]~0_combout\ = (!\reset~input_o\ & ((\PROC|state.fetch1~q\) # ((\PROC|state.jump~q\) # (!\PROC|state.reset_pc~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state.fetch1~q\,
	datab => \PROC|state.jump~q\,
	datac => \reset~input_o\,
	datad => \PROC|state.reset_pc~q\,
	combout => \PROC|PC[0]~0_combout\);

-- Location: FF_X34_Y44_N7
\PROC|PC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|Selector5~0_combout\,
	ena => \PROC|PC[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|PC\(2));

-- Location: LCCOMB_X35_Y44_N14
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

-- Location: LCCOMB_X35_Y43_N12
\PROC|state~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|state~16_combout\ = (!\PROC|IR\(9) & (\PROC|state~15_combout\ & !\PROC|IR\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IR\(9),
	datab => \PROC|state~15_combout\,
	datad => \PROC|IR\(8),
	combout => \PROC|state~16_combout\);

-- Location: FF_X35_Y43_N13
\PROC|state.add1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|state~16_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|state.add1~q\);

-- Location: LCCOMB_X38_Y44_N8
\PROC|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Add1~10_combout\ = \PROC|state.add1~q\ $ (\MEM|altsyncram_component|auto_generated|q_a\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PROC|state.add1~q\,
	datad => \MEM|altsyncram_component|auto_generated|q_a\(2),
	combout => \PROC|Add1~10_combout\);

-- Location: LCCOMB_X38_Y44_N16
\PROC|Add1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Add1~3_cout\ = CARRY(!\PROC|state.add1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|state.add1~q\,
	datad => VCC,
	cout => \PROC|Add1~3_cout\);

-- Location: LCCOMB_X38_Y44_N20
\PROC|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Add1~8_combout\ = ((\PROC|Add1~7_combout\ $ (\PROC|AC\(1) $ (\PROC|Add1~5\)))) # (GND)
-- \PROC|Add1~9\ = CARRY((\PROC|Add1~7_combout\ & (\PROC|AC\(1) & !\PROC|Add1~5\)) # (!\PROC|Add1~7_combout\ & ((\PROC|AC\(1)) # (!\PROC|Add1~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Add1~7_combout\,
	datab => \PROC|AC\(1),
	datad => VCC,
	cin => \PROC|Add1~5\,
	combout => \PROC|Add1~8_combout\,
	cout => \PROC|Add1~9\);

-- Location: LCCOMB_X38_Y44_N22
\PROC|Add1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Add1~11_combout\ = (\PROC|AC\(2) & ((\PROC|Add1~10_combout\ & (!\PROC|Add1~9\)) # (!\PROC|Add1~10_combout\ & (\PROC|Add1~9\ & VCC)))) # (!\PROC|AC\(2) & ((\PROC|Add1~10_combout\ & ((\PROC|Add1~9\) # (GND))) # (!\PROC|Add1~10_combout\ & 
-- (!\PROC|Add1~9\))))
-- \PROC|Add1~12\ = CARRY((\PROC|AC\(2) & (\PROC|Add1~10_combout\ & !\PROC|Add1~9\)) # (!\PROC|AC\(2) & ((\PROC|Add1~10_combout\) # (!\PROC|Add1~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AC\(2),
	datab => \PROC|Add1~10_combout\,
	datad => VCC,
	cin => \PROC|Add1~9\,
	combout => \PROC|Add1~11_combout\,
	cout => \PROC|Add1~12\);

-- Location: LCCOMB_X39_Y44_N18
\PROC|Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector21~0_combout\ = (\MEM|altsyncram_component|auto_generated|q_a\(2) & ((\PROC|state.load1~q\) # ((\PROC|Add1~6_combout\ & \PROC|Add1~11_combout\)))) # (!\MEM|altsyncram_component|auto_generated|q_a\(2) & (\PROC|Add1~6_combout\ & 
-- ((\PROC|Add1~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|altsyncram_component|auto_generated|q_a\(2),
	datab => \PROC|Add1~6_combout\,
	datac => \PROC|state.load1~q\,
	datad => \PROC|Add1~11_combout\,
	combout => \PROC|Selector21~0_combout\);

-- Location: LCCOMB_X39_Y44_N20
\PROC|Selector21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector21~1_combout\ = (\PROC|Selector21~0_combout\) # ((\PROC|Selector23~1_combout\ & ((!\PROC|AC\(2)) # (!\MEM|altsyncram_component|auto_generated|q_a\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|altsyncram_component|auto_generated|q_a\(2),
	datab => \PROC|Selector23~1_combout\,
	datac => \PROC|AC\(2),
	datad => \PROC|Selector21~0_combout\,
	combout => \PROC|Selector21~1_combout\);

-- Location: FF_X36_Y43_N27
\PROC|state.store1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \PROC|state.store0~q\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|state.store1~q\);

-- Location: LCCOMB_X36_Y43_N26
\PROC|AC[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|AC[0]~0_combout\ = (!\PROC|state.jump~q\ & (!\reset~input_o\ & (!\PROC|state.store1~q\ & \PROC|WideOr2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state.jump~q\,
	datab => \reset~input_o\,
	datac => \PROC|state.store1~q\,
	datad => \PROC|WideOr2~0_combout\,
	combout => \PROC|AC[0]~0_combout\);

-- Location: FF_X39_Y44_N21
\PROC|AC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|Selector21~1_combout\,
	ena => \PROC|AC[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|AC\(2));

-- Location: LCCOMB_X38_Y44_N24
\PROC|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Add1~14_combout\ = ((\PROC|Add1~13_combout\ $ (\PROC|AC\(3) $ (\PROC|Add1~12\)))) # (GND)
-- \PROC|Add1~15\ = CARRY((\PROC|Add1~13_combout\ & (\PROC|AC\(3) & !\PROC|Add1~12\)) # (!\PROC|Add1~13_combout\ & ((\PROC|AC\(3)) # (!\PROC|Add1~12\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Add1~13_combout\,
	datab => \PROC|AC\(3),
	datad => VCC,
	cin => \PROC|Add1~12\,
	combout => \PROC|Add1~14_combout\,
	cout => \PROC|Add1~15\);

-- Location: LCCOMB_X39_Y44_N28
\PROC|Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector20~0_combout\ = (\PROC|state.load1~q\ & ((\MEM|altsyncram_component|auto_generated|q_a\(3)) # ((\PROC|Add1~6_combout\ & \PROC|Add1~14_combout\)))) # (!\PROC|state.load1~q\ & (\PROC|Add1~6_combout\ & ((\PROC|Add1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state.load1~q\,
	datab => \PROC|Add1~6_combout\,
	datac => \MEM|altsyncram_component|auto_generated|q_a\(3),
	datad => \PROC|Add1~14_combout\,
	combout => \PROC|Selector20~0_combout\);

-- Location: LCCOMB_X39_Y44_N22
\PROC|Selector20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector20~1_combout\ = (\PROC|Selector20~0_combout\) # ((\PROC|Selector23~1_combout\ & ((!\PROC|AC\(3)) # (!\MEM|altsyncram_component|auto_generated|q_a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|altsyncram_component|auto_generated|q_a\(3),
	datab => \PROC|Selector23~1_combout\,
	datac => \PROC|AC\(3),
	datad => \PROC|Selector20~0_combout\,
	combout => \PROC|Selector20~1_combout\);

-- Location: FF_X39_Y44_N23
\PROC|AC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|Selector20~1_combout\,
	ena => \PROC|AC[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|AC\(3));

-- Location: LCCOMB_X38_Y44_N0
\PROC|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Add1~16_combout\ = \PROC|state.add1~q\ $ (\MEM|altsyncram_component|auto_generated|q_a\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PROC|state.add1~q\,
	datad => \MEM|altsyncram_component|auto_generated|q_a\(4),
	combout => \PROC|Add1~16_combout\);

-- Location: LCCOMB_X38_Y44_N26
\PROC|Add1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Add1~17_combout\ = (\PROC|AC\(4) & ((\PROC|Add1~16_combout\ & (!\PROC|Add1~15\)) # (!\PROC|Add1~16_combout\ & (\PROC|Add1~15\ & VCC)))) # (!\PROC|AC\(4) & ((\PROC|Add1~16_combout\ & ((\PROC|Add1~15\) # (GND))) # (!\PROC|Add1~16_combout\ & 
-- (!\PROC|Add1~15\))))
-- \PROC|Add1~18\ = CARRY((\PROC|AC\(4) & (\PROC|Add1~16_combout\ & !\PROC|Add1~15\)) # (!\PROC|AC\(4) & ((\PROC|Add1~16_combout\) # (!\PROC|Add1~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AC\(4),
	datab => \PROC|Add1~16_combout\,
	datad => VCC,
	cin => \PROC|Add1~15\,
	combout => \PROC|Add1~17_combout\,
	cout => \PROC|Add1~18\);

-- Location: LCCOMB_X39_Y44_N2
\PROC|Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector19~0_combout\ = (\PROC|Add1~6_combout\ & ((\PROC|Add1~17_combout\) # ((\MEM|altsyncram_component|auto_generated|q_a\(4) & \PROC|state.load1~q\)))) # (!\PROC|Add1~6_combout\ & (\MEM|altsyncram_component|auto_generated|q_a\(4) & 
-- ((\PROC|state.load1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Add1~6_combout\,
	datab => \MEM|altsyncram_component|auto_generated|q_a\(4),
	datac => \PROC|Add1~17_combout\,
	datad => \PROC|state.load1~q\,
	combout => \PROC|Selector19~0_combout\);

-- Location: LCCOMB_X39_Y44_N12
\PROC|Selector19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector19~1_combout\ = (\PROC|Selector19~0_combout\) # ((\PROC|Selector23~1_combout\ & ((!\PROC|AC\(4)) # (!\MEM|altsyncram_component|auto_generated|q_a\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Selector23~1_combout\,
	datab => \MEM|altsyncram_component|auto_generated|q_a\(4),
	datac => \PROC|AC\(4),
	datad => \PROC|Selector19~0_combout\,
	combout => \PROC|Selector19~1_combout\);

-- Location: FF_X39_Y44_N13
\PROC|AC[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|Selector19~1_combout\,
	ena => \PROC|AC[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|AC\(4));

-- Location: LCCOMB_X38_Y44_N2
\PROC|Add1~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Add1~19_combout\ = \PROC|state.add1~q\ $ (\MEM|altsyncram_component|auto_generated|q_a\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PROC|state.add1~q\,
	datad => \MEM|altsyncram_component|auto_generated|q_a\(5),
	combout => \PROC|Add1~19_combout\);

-- Location: LCCOMB_X38_Y44_N28
\PROC|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Add1~20_combout\ = ((\PROC|AC\(5) $ (\PROC|Add1~19_combout\ $ (\PROC|Add1~18\)))) # (GND)
-- \PROC|Add1~21\ = CARRY((\PROC|AC\(5) & ((!\PROC|Add1~18\) # (!\PROC|Add1~19_combout\))) # (!\PROC|AC\(5) & (!\PROC|Add1~19_combout\ & !\PROC|Add1~18\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AC\(5),
	datab => \PROC|Add1~19_combout\,
	datad => VCC,
	cin => \PROC|Add1~18\,
	combout => \PROC|Add1~20_combout\,
	cout => \PROC|Add1~21\);

-- Location: LCCOMB_X39_Y44_N24
\PROC|Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector18~0_combout\ = (\MEM|altsyncram_component|auto_generated|q_a\(5) & ((\PROC|state.load1~q\) # ((\PROC|Add1~6_combout\ & \PROC|Add1~20_combout\)))) # (!\MEM|altsyncram_component|auto_generated|q_a\(5) & (\PROC|Add1~6_combout\ & 
-- ((\PROC|Add1~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|altsyncram_component|auto_generated|q_a\(5),
	datab => \PROC|Add1~6_combout\,
	datac => \PROC|state.load1~q\,
	datad => \PROC|Add1~20_combout\,
	combout => \PROC|Selector18~0_combout\);

-- Location: LCCOMB_X39_Y44_N30
\PROC|Selector18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector18~1_combout\ = (\PROC|Selector18~0_combout\) # ((\PROC|Selector23~1_combout\ & ((!\PROC|AC\(5)) # (!\MEM|altsyncram_component|auto_generated|q_a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|altsyncram_component|auto_generated|q_a\(5),
	datab => \PROC|Selector23~1_combout\,
	datac => \PROC|AC\(5),
	datad => \PROC|Selector18~0_combout\,
	combout => \PROC|Selector18~1_combout\);

-- Location: FF_X39_Y44_N31
\PROC|AC[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|Selector18~1_combout\,
	ena => \PROC|AC[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|AC\(5));

-- Location: LCCOMB_X38_Y44_N4
\PROC|Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Add1~22_combout\ = \PROC|state.add1~q\ $ (\MEM|altsyncram_component|auto_generated|q_a\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PROC|state.add1~q\,
	datad => \MEM|altsyncram_component|auto_generated|q_a\(6),
	combout => \PROC|Add1~22_combout\);

-- Location: LCCOMB_X38_Y44_N30
\PROC|Add1~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Add1~23_combout\ = (\PROC|AC\(6) & ((\PROC|Add1~22_combout\ & (!\PROC|Add1~21\)) # (!\PROC|Add1~22_combout\ & (\PROC|Add1~21\ & VCC)))) # (!\PROC|AC\(6) & ((\PROC|Add1~22_combout\ & ((\PROC|Add1~21\) # (GND))) # (!\PROC|Add1~22_combout\ & 
-- (!\PROC|Add1~21\))))
-- \PROC|Add1~24\ = CARRY((\PROC|AC\(6) & (\PROC|Add1~22_combout\ & !\PROC|Add1~21\)) # (!\PROC|AC\(6) & ((\PROC|Add1~22_combout\) # (!\PROC|Add1~21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AC\(6),
	datab => \PROC|Add1~22_combout\,
	datad => VCC,
	cin => \PROC|Add1~21\,
	combout => \PROC|Add1~23_combout\,
	cout => \PROC|Add1~24\);

-- Location: LCCOMB_X39_Y44_N6
\PROC|Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector17~0_combout\ = (\MEM|altsyncram_component|auto_generated|q_a\(6) & ((\PROC|state.load1~q\) # ((\PROC|Add1~6_combout\ & \PROC|Add1~23_combout\)))) # (!\MEM|altsyncram_component|auto_generated|q_a\(6) & (\PROC|Add1~6_combout\ & 
-- ((\PROC|Add1~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|altsyncram_component|auto_generated|q_a\(6),
	datab => \PROC|Add1~6_combout\,
	datac => \PROC|state.load1~q\,
	datad => \PROC|Add1~23_combout\,
	combout => \PROC|Selector17~0_combout\);

-- Location: LCCOMB_X39_Y44_N0
\PROC|Selector17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector17~1_combout\ = (\PROC|Selector17~0_combout\) # ((\PROC|Selector23~1_combout\ & ((!\PROC|AC\(6)) # (!\MEM|altsyncram_component|auto_generated|q_a\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|altsyncram_component|auto_generated|q_a\(6),
	datab => \PROC|Selector23~1_combout\,
	datac => \PROC|AC\(6),
	datad => \PROC|Selector17~0_combout\,
	combout => \PROC|Selector17~1_combout\);

-- Location: FF_X39_Y44_N1
\PROC|AC[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|Selector17~1_combout\,
	ena => \PROC|AC[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|AC\(6));

-- Location: LCCOMB_X38_Y43_N0
\PROC|Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Add1~26_combout\ = ((\PROC|Add1~25_combout\ $ (\PROC|AC\(7) $ (\PROC|Add1~24\)))) # (GND)
-- \PROC|Add1~27\ = CARRY((\PROC|Add1~25_combout\ & (\PROC|AC\(7) & !\PROC|Add1~24\)) # (!\PROC|Add1~25_combout\ & ((\PROC|AC\(7)) # (!\PROC|Add1~24\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Add1~25_combout\,
	datab => \PROC|AC\(7),
	datad => VCC,
	cin => \PROC|Add1~24\,
	combout => \PROC|Add1~26_combout\,
	cout => \PROC|Add1~27\);

-- Location: LCCOMB_X39_Y43_N18
\PROC|Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector16~0_combout\ = (\PROC|state.load1~q\ & ((\MEM|altsyncram_component|auto_generated|q_a\(7)) # ((\PROC|Add1~26_combout\ & \PROC|Add1~6_combout\)))) # (!\PROC|state.load1~q\ & (((\PROC|Add1~26_combout\ & \PROC|Add1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state.load1~q\,
	datab => \MEM|altsyncram_component|auto_generated|q_a\(7),
	datac => \PROC|Add1~26_combout\,
	datad => \PROC|Add1~6_combout\,
	combout => \PROC|Selector16~0_combout\);

-- Location: LCCOMB_X39_Y43_N8
\PROC|Selector16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector16~1_combout\ = (\PROC|Selector16~0_combout\) # ((\PROC|Selector23~1_combout\ & ((!\PROC|AC\(7)) # (!\MEM|altsyncram_component|auto_generated|q_a\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Selector23~1_combout\,
	datab => \MEM|altsyncram_component|auto_generated|q_a\(7),
	datac => \PROC|AC\(7),
	datad => \PROC|Selector16~0_combout\,
	combout => \PROC|Selector16~1_combout\);

-- Location: FF_X39_Y43_N9
\PROC|AC[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|Selector16~1_combout\,
	ena => \PROC|AC[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|AC\(7));

-- Location: LCCOMB_X38_Y43_N28
\PROC|Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Add1~28_combout\ = \PROC|state.add1~q\ $ (\MEM|altsyncram_component|auto_generated|q_a\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state.add1~q\,
	datad => \MEM|altsyncram_component|auto_generated|q_a\(8),
	combout => \PROC|Add1~28_combout\);

-- Location: LCCOMB_X38_Y43_N2
\PROC|Add1~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Add1~29_combout\ = (\PROC|AC\(8) & ((\PROC|Add1~28_combout\ & (!\PROC|Add1~27\)) # (!\PROC|Add1~28_combout\ & (\PROC|Add1~27\ & VCC)))) # (!\PROC|AC\(8) & ((\PROC|Add1~28_combout\ & ((\PROC|Add1~27\) # (GND))) # (!\PROC|Add1~28_combout\ & 
-- (!\PROC|Add1~27\))))
-- \PROC|Add1~30\ = CARRY((\PROC|AC\(8) & (\PROC|Add1~28_combout\ & !\PROC|Add1~27\)) # (!\PROC|AC\(8) & ((\PROC|Add1~28_combout\) # (!\PROC|Add1~27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AC\(8),
	datab => \PROC|Add1~28_combout\,
	datad => VCC,
	cin => \PROC|Add1~27\,
	combout => \PROC|Add1~29_combout\,
	cout => \PROC|Add1~30\);

-- Location: LCCOMB_X39_Y43_N24
\PROC|Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector15~0_combout\ = (\PROC|Add1~6_combout\ & ((\PROC|Add1~29_combout\) # ((\MEM|altsyncram_component|auto_generated|q_a\(8) & \PROC|state.load1~q\)))) # (!\PROC|Add1~6_combout\ & (\MEM|altsyncram_component|auto_generated|q_a\(8) & 
-- (\PROC|state.load1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Add1~6_combout\,
	datab => \MEM|altsyncram_component|auto_generated|q_a\(8),
	datac => \PROC|state.load1~q\,
	datad => \PROC|Add1~29_combout\,
	combout => \PROC|Selector15~0_combout\);

-- Location: LCCOMB_X39_Y43_N6
\PROC|Selector15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector15~1_combout\ = (\PROC|Selector15~0_combout\) # ((\PROC|Selector23~1_combout\ & ((!\PROC|AC\(8)) # (!\MEM|altsyncram_component|auto_generated|q_a\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Selector23~1_combout\,
	datab => \MEM|altsyncram_component|auto_generated|q_a\(8),
	datac => \PROC|AC\(8),
	datad => \PROC|Selector15~0_combout\,
	combout => \PROC|Selector15~1_combout\);

-- Location: FF_X39_Y43_N7
\PROC|AC[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|Selector15~1_combout\,
	ena => \PROC|AC[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|AC\(8));

-- Location: LCCOMB_X38_Y43_N4
\PROC|Add1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Add1~32_combout\ = ((\PROC|Add1~31_combout\ $ (\PROC|AC\(9) $ (\PROC|Add1~30\)))) # (GND)
-- \PROC|Add1~33\ = CARRY((\PROC|Add1~31_combout\ & (\PROC|AC\(9) & !\PROC|Add1~30\)) # (!\PROC|Add1~31_combout\ & ((\PROC|AC\(9)) # (!\PROC|Add1~30\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Add1~31_combout\,
	datab => \PROC|AC\(9),
	datad => VCC,
	cin => \PROC|Add1~30\,
	combout => \PROC|Add1~32_combout\,
	cout => \PROC|Add1~33\);

-- Location: LCCOMB_X39_Y43_N10
\PROC|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector14~0_combout\ = (\MEM|altsyncram_component|auto_generated|q_a\(9) & ((\PROC|state.load1~q\) # ((\PROC|Add1~32_combout\ & \PROC|Add1~6_combout\)))) # (!\MEM|altsyncram_component|auto_generated|q_a\(9) & (((\PROC|Add1~32_combout\ & 
-- \PROC|Add1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|altsyncram_component|auto_generated|q_a\(9),
	datab => \PROC|state.load1~q\,
	datac => \PROC|Add1~32_combout\,
	datad => \PROC|Add1~6_combout\,
	combout => \PROC|Selector14~0_combout\);

-- Location: LCCOMB_X39_Y43_N4
\PROC|Selector14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector14~1_combout\ = (\PROC|Selector14~0_combout\) # ((\PROC|Selector23~1_combout\ & ((!\PROC|AC\(9)) # (!\MEM|altsyncram_component|auto_generated|q_a\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|altsyncram_component|auto_generated|q_a\(9),
	datab => \PROC|Selector23~1_combout\,
	datac => \PROC|AC\(9),
	datad => \PROC|Selector14~0_combout\,
	combout => \PROC|Selector14~1_combout\);

-- Location: FF_X39_Y43_N5
\PROC|AC[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|Selector14~1_combout\,
	ena => \PROC|AC[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|AC\(9));

-- Location: LCCOMB_X38_Y43_N6
\PROC|Add1~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Add1~35_combout\ = (\PROC|Add1~34_combout\ & ((\PROC|AC\(10) & (!\PROC|Add1~33\)) # (!\PROC|AC\(10) & ((\PROC|Add1~33\) # (GND))))) # (!\PROC|Add1~34_combout\ & ((\PROC|AC\(10) & (\PROC|Add1~33\ & VCC)) # (!\PROC|AC\(10) & (!\PROC|Add1~33\))))
-- \PROC|Add1~36\ = CARRY((\PROC|Add1~34_combout\ & ((!\PROC|Add1~33\) # (!\PROC|AC\(10)))) # (!\PROC|Add1~34_combout\ & (!\PROC|AC\(10) & !\PROC|Add1~33\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Add1~34_combout\,
	datab => \PROC|AC\(10),
	datad => VCC,
	cin => \PROC|Add1~33\,
	combout => \PROC|Add1~35_combout\,
	cout => \PROC|Add1~36\);

-- Location: LCCOMB_X39_Y43_N16
\PROC|Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector13~0_combout\ = (\PROC|Add1~6_combout\ & ((\PROC|Add1~35_combout\) # ((\PROC|state.load1~q\ & \MEM|altsyncram_component|auto_generated|q_a\(10))))) # (!\PROC|Add1~6_combout\ & (\PROC|state.load1~q\ & 
-- ((\MEM|altsyncram_component|auto_generated|q_a\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Add1~6_combout\,
	datab => \PROC|state.load1~q\,
	datac => \PROC|Add1~35_combout\,
	datad => \MEM|altsyncram_component|auto_generated|q_a\(10),
	combout => \PROC|Selector13~0_combout\);

-- Location: LCCOMB_X39_Y43_N22
\PROC|Selector13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector13~1_combout\ = (\PROC|Selector13~0_combout\) # ((\PROC|Selector23~1_combout\ & ((!\PROC|AC\(10)) # (!\MEM|altsyncram_component|auto_generated|q_a\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Selector23~1_combout\,
	datab => \MEM|altsyncram_component|auto_generated|q_a\(10),
	datac => \PROC|AC\(10),
	datad => \PROC|Selector13~0_combout\,
	combout => \PROC|Selector13~1_combout\);

-- Location: FF_X39_Y43_N23
\PROC|AC[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|Selector13~1_combout\,
	ena => \PROC|AC[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|AC\(10));

-- Location: LCCOMB_X38_Y43_N8
\PROC|Add1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Add1~38_combout\ = ((\PROC|Add1~37_combout\ $ (\PROC|AC\(11) $ (\PROC|Add1~36\)))) # (GND)
-- \PROC|Add1~39\ = CARRY((\PROC|Add1~37_combout\ & (\PROC|AC\(11) & !\PROC|Add1~36\)) # (!\PROC|Add1~37_combout\ & ((\PROC|AC\(11)) # (!\PROC|Add1~36\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Add1~37_combout\,
	datab => \PROC|AC\(11),
	datad => VCC,
	cin => \PROC|Add1~36\,
	combout => \PROC|Add1~38_combout\,
	cout => \PROC|Add1~39\);

-- Location: LCCOMB_X39_Y43_N12
\PROC|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector12~0_combout\ = (\MEM|altsyncram_component|auto_generated|q_a\(11) & ((\PROC|state.load1~q\) # ((\PROC|Add1~6_combout\ & \PROC|Add1~38_combout\)))) # (!\MEM|altsyncram_component|auto_generated|q_a\(11) & (((\PROC|Add1~6_combout\ & 
-- \PROC|Add1~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|altsyncram_component|auto_generated|q_a\(11),
	datab => \PROC|state.load1~q\,
	datac => \PROC|Add1~6_combout\,
	datad => \PROC|Add1~38_combout\,
	combout => \PROC|Selector12~0_combout\);

-- Location: LCCOMB_X39_Y43_N20
\PROC|Selector12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector12~1_combout\ = (\PROC|Selector12~0_combout\) # ((\PROC|Selector23~1_combout\ & ((!\PROC|AC\(11)) # (!\MEM|altsyncram_component|auto_generated|q_a\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|altsyncram_component|auto_generated|q_a\(11),
	datab => \PROC|Selector23~1_combout\,
	datac => \PROC|AC\(11),
	datad => \PROC|Selector12~0_combout\,
	combout => \PROC|Selector12~1_combout\);

-- Location: FF_X39_Y43_N21
\PROC|AC[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|Selector12~1_combout\,
	ena => \PROC|AC[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|AC\(11));

-- Location: LCCOMB_X36_Y43_N22
\PROC|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector8~0_combout\ = (\MEM|altsyncram_component|auto_generated|q_a\(15) & ((\PROC|state.load1~q\) # ((\PROC|Selector23~1_combout\ & !\PROC|AC\(15))))) # (!\MEM|altsyncram_component|auto_generated|q_a\(15) & (\PROC|Selector23~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Selector23~1_combout\,
	datab => \PROC|AC\(15),
	datac => \PROC|state.load1~q\,
	datad => \MEM|altsyncram_component|auto_generated|q_a\(15),
	combout => \PROC|Selector8~0_combout\);

-- Location: LCCOMB_X36_Y43_N16
\PROC|Add1~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Add1~49_combout\ = \PROC|state.add1~q\ $ (\MEM|altsyncram_component|auto_generated|q_a\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state.add1~q\,
	datad => \MEM|altsyncram_component|auto_generated|q_a\(15),
	combout => \PROC|Add1~49_combout\);

-- Location: LCCOMB_X38_Y43_N10
\PROC|Add1~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Add1~41_combout\ = (\PROC|Add1~40_combout\ & ((\PROC|AC\(12) & (!\PROC|Add1~39\)) # (!\PROC|AC\(12) & ((\PROC|Add1~39\) # (GND))))) # (!\PROC|Add1~40_combout\ & ((\PROC|AC\(12) & (\PROC|Add1~39\ & VCC)) # (!\PROC|AC\(12) & (!\PROC|Add1~39\))))
-- \PROC|Add1~42\ = CARRY((\PROC|Add1~40_combout\ & ((!\PROC|Add1~39\) # (!\PROC|AC\(12)))) # (!\PROC|Add1~40_combout\ & (!\PROC|AC\(12) & !\PROC|Add1~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Add1~40_combout\,
	datab => \PROC|AC\(12),
	datad => VCC,
	cin => \PROC|Add1~39\,
	combout => \PROC|Add1~41_combout\,
	cout => \PROC|Add1~42\);

-- Location: LCCOMB_X38_Y43_N12
\PROC|Add1~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Add1~44_combout\ = ((\PROC|Add1~43_combout\ $ (\PROC|AC\(13) $ (\PROC|Add1~42\)))) # (GND)
-- \PROC|Add1~45\ = CARRY((\PROC|Add1~43_combout\ & (\PROC|AC\(13) & !\PROC|Add1~42\)) # (!\PROC|Add1~43_combout\ & ((\PROC|AC\(13)) # (!\PROC|Add1~42\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Add1~43_combout\,
	datab => \PROC|AC\(13),
	datad => VCC,
	cin => \PROC|Add1~42\,
	combout => \PROC|Add1~44_combout\,
	cout => \PROC|Add1~45\);

-- Location: LCCOMB_X38_Y43_N14
\PROC|Add1~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Add1~47_combout\ = (\PROC|AC\(14) & ((\PROC|Add1~46_combout\ & (!\PROC|Add1~45\)) # (!\PROC|Add1~46_combout\ & (\PROC|Add1~45\ & VCC)))) # (!\PROC|AC\(14) & ((\PROC|Add1~46_combout\ & ((\PROC|Add1~45\) # (GND))) # (!\PROC|Add1~46_combout\ & 
-- (!\PROC|Add1~45\))))
-- \PROC|Add1~48\ = CARRY((\PROC|AC\(14) & (\PROC|Add1~46_combout\ & !\PROC|Add1~45\)) # (!\PROC|AC\(14) & ((\PROC|Add1~46_combout\) # (!\PROC|Add1~45\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AC\(14),
	datab => \PROC|Add1~46_combout\,
	datad => VCC,
	cin => \PROC|Add1~45\,
	combout => \PROC|Add1~47_combout\,
	cout => \PROC|Add1~48\);

-- Location: LCCOMB_X38_Y43_N16
\PROC|Add1~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Add1~50_combout\ = \PROC|AC\(15) $ (\PROC|Add1~48\ $ (\PROC|Add1~49_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PROC|AC\(15),
	datad => \PROC|Add1~49_combout\,
	cin => \PROC|Add1~48\,
	combout => \PROC|Add1~50_combout\);

-- Location: LCCOMB_X38_Y43_N24
\PROC|Selector8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector8~1_combout\ = (\PROC|Selector8~0_combout\) # ((\PROC|Add1~6_combout\ & \PROC|Add1~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|Add1~6_combout\,
	datac => \PROC|Selector8~0_combout\,
	datad => \PROC|Add1~50_combout\,
	combout => \PROC|Selector8~1_combout\);

-- Location: FF_X38_Y43_N25
\PROC|AC[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|Selector8~1_combout\,
	ena => \PROC|AC[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|AC\(15));

-- Location: M9K_X37_Y44_N0
\MEM|altsyncram_component|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003048C005200000003401400F0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005250109003040048C0022000840220",
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

-- Location: LCCOMB_X39_Y43_N26
\PROC|Add1~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Add1~46_combout\ = \PROC|state.add1~q\ $ (\MEM|altsyncram_component|auto_generated|q_a\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PROC|state.add1~q\,
	datad => \MEM|altsyncram_component|auto_generated|q_a\(14),
	combout => \PROC|Add1~46_combout\);

-- Location: LCCOMB_X39_Y43_N28
\PROC|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector9~0_combout\ = (\MEM|altsyncram_component|auto_generated|q_a\(14) & ((\PROC|state.load1~q\) # ((\PROC|Selector23~1_combout\ & !\PROC|AC\(14))))) # (!\MEM|altsyncram_component|auto_generated|q_a\(14) & (\PROC|Selector23~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Selector23~1_combout\,
	datab => \PROC|AC\(14),
	datac => \PROC|state.load1~q\,
	datad => \MEM|altsyncram_component|auto_generated|q_a\(14),
	combout => \PROC|Selector9~0_combout\);

-- Location: LCCOMB_X38_Y43_N30
\PROC|Selector9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector9~1_combout\ = (\PROC|Selector9~0_combout\) # ((\PROC|Add1~6_combout\ & \PROC|Add1~47_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|Add1~6_combout\,
	datac => \PROC|Add1~47_combout\,
	datad => \PROC|Selector9~0_combout\,
	combout => \PROC|Selector9~1_combout\);

-- Location: FF_X38_Y43_N31
\PROC|AC[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|Selector9~1_combout\,
	ena => \PROC|AC[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|AC\(14));

-- Location: LCCOMB_X39_Y43_N0
\PROC|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector10~0_combout\ = (\MEM|altsyncram_component|auto_generated|q_a\(13) & ((\PROC|state.load1~q\) # ((\PROC|Selector23~1_combout\ & !\PROC|AC\(13))))) # (!\MEM|altsyncram_component|auto_generated|q_a\(13) & (\PROC|Selector23~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Selector23~1_combout\,
	datab => \PROC|AC\(13),
	datac => \PROC|state.load1~q\,
	datad => \MEM|altsyncram_component|auto_generated|q_a\(13),
	combout => \PROC|Selector10~0_combout\);

-- Location: LCCOMB_X38_Y43_N20
\PROC|Selector10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector10~1_combout\ = (\PROC|Selector10~0_combout\) # ((\PROC|Add1~6_combout\ & \PROC|Add1~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|Add1~6_combout\,
	datac => \PROC|Selector10~0_combout\,
	datad => \PROC|Add1~44_combout\,
	combout => \PROC|Selector10~1_combout\);

-- Location: FF_X38_Y43_N21
\PROC|AC[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|Selector10~1_combout\,
	ena => \PROC|AC[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|AC\(13));

-- Location: LCCOMB_X36_Y43_N14
\PROC|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector11~0_combout\ = (\MEM|altsyncram_component|auto_generated|q_a\(12) & ((\PROC|state.load1~q\) # ((\PROC|Selector23~1_combout\ & !\PROC|AC\(12))))) # (!\MEM|altsyncram_component|auto_generated|q_a\(12) & (\PROC|Selector23~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Selector23~1_combout\,
	datab => \PROC|AC\(12),
	datac => \PROC|state.load1~q\,
	datad => \MEM|altsyncram_component|auto_generated|q_a\(12),
	combout => \PROC|Selector11~0_combout\);

-- Location: LCCOMB_X38_Y43_N18
\PROC|Selector11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector11~1_combout\ = (\PROC|Selector11~0_combout\) # ((\PROC|Add1~6_combout\ & \PROC|Add1~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|Add1~6_combout\,
	datac => \PROC|Selector11~0_combout\,
	datad => \PROC|Add1~41_combout\,
	combout => \PROC|Selector11~1_combout\);

-- Location: FF_X38_Y43_N19
\PROC|AC[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|Selector11~1_combout\,
	ena => \PROC|AC[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|AC\(12));

-- Location: LCCOMB_X36_Y43_N2
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

-- Location: FF_X35_Y43_N29
\PROC|IR[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \MEM|altsyncram_component|auto_generated|q_a\(15),
	sload => VCC,
	ena => \PROC|IR[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|IR\(15));

-- Location: LCCOMB_X35_Y43_N8
\PROC|IR[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|IR[13]~feeder_combout\ = \MEM|altsyncram_component|auto_generated|q_a\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MEM|altsyncram_component|auto_generated|q_a\(13),
	combout => \PROC|IR[13]~feeder_combout\);

-- Location: FF_X35_Y43_N9
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

-- Location: LCCOMB_X36_Y43_N4
\PROC|IR[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|IR[12]~feeder_combout\ = \MEM|altsyncram_component|auto_generated|q_a\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MEM|altsyncram_component|auto_generated|q_a\(12),
	combout => \PROC|IR[12]~feeder_combout\);

-- Location: FF_X36_Y43_N5
\PROC|IR[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|IR[12]~feeder_combout\,
	ena => \PROC|IR[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|IR\(12));

-- Location: LCCOMB_X35_Y43_N18
\PROC|state~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|state~14_combout\ = (!\PROC|IR\(14) & (!\PROC|IR\(15) & (!\PROC|IR\(13) & !\PROC|IR\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IR\(14),
	datab => \PROC|IR\(15),
	datac => \PROC|IR\(13),
	datad => \PROC|IR\(12),
	combout => \PROC|state~14_combout\);

-- Location: LCCOMB_X35_Y43_N24
\PROC|state~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|state~19_combout\ = (\PROC|state~18_combout\ & (\PROC|state.decode~q\ & (!\PROC|IR\(11) & \PROC|state~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state~18_combout\,
	datab => \PROC|state.decode~q\,
	datac => \PROC|IR\(11),
	datad => \PROC|state~14_combout\,
	combout => \PROC|state~19_combout\);

-- Location: FF_X35_Y43_N25
\PROC|state.nand1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|state~19_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|state.nand1~q\);

-- Location: LCCOMB_X36_Y43_N10
\PROC|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Add1~6_combout\ = (\PROC|state.reset_pc~q\ & (!\PROC|state.load1~q\ & !\PROC|state.nand1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state.reset_pc~q\,
	datac => \PROC|state.load1~q\,
	datad => \PROC|state.nand1~q\,
	combout => \PROC|Add1~6_combout\);

-- Location: LCCOMB_X39_Y44_N16
\PROC|Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector22~0_combout\ = (\MEM|altsyncram_component|auto_generated|q_a\(1) & ((\PROC|state.load1~q\) # ((\PROC|Add1~6_combout\ & \PROC|Add1~8_combout\)))) # (!\MEM|altsyncram_component|auto_generated|q_a\(1) & (\PROC|Add1~6_combout\ & 
-- ((\PROC|Add1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|altsyncram_component|auto_generated|q_a\(1),
	datab => \PROC|Add1~6_combout\,
	datac => \PROC|state.load1~q\,
	datad => \PROC|Add1~8_combout\,
	combout => \PROC|Selector22~0_combout\);

-- Location: LCCOMB_X39_Y44_N10
\PROC|Selector22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector22~1_combout\ = (\PROC|Selector22~0_combout\) # ((\PROC|Selector23~1_combout\ & ((!\PROC|AC\(1)) # (!\MEM|altsyncram_component|auto_generated|q_a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|altsyncram_component|auto_generated|q_a\(1),
	datab => \PROC|Selector23~1_combout\,
	datac => \PROC|AC\(1),
	datad => \PROC|Selector22~0_combout\,
	combout => \PROC|Selector22~1_combout\);

-- Location: FF_X39_Y44_N11
\PROC|AC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|Selector22~1_combout\,
	ena => \PROC|AC[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|AC\(1));

-- Location: LCCOMB_X36_Y44_N16
\PROC|IR[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|IR[7]~feeder_combout\ = \MEM|altsyncram_component|auto_generated|q_a\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MEM|altsyncram_component|auto_generated|q_a\(7),
	combout => \PROC|IR[7]~feeder_combout\);

-- Location: FF_X36_Y44_N17
\PROC|IR[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|IR[7]~feeder_combout\,
	ena => \PROC|IR[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|IR\(7));

-- Location: LCCOMB_X35_Y44_N16
\PROC|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Add0~8_combout\ = (\PROC|PC\(4) & (\PROC|Add0~7\ $ (GND))) # (!\PROC|PC\(4) & (!\PROC|Add0~7\ & VCC))
-- \PROC|Add0~9\ = CARRY((\PROC|PC\(4) & !\PROC|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|PC\(4),
	datad => VCC,
	cin => \PROC|Add0~7\,
	combout => \PROC|Add0~8_combout\,
	cout => \PROC|Add0~9\);

-- Location: LCCOMB_X35_Y44_N18
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

-- Location: LCCOMB_X35_Y44_N20
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

-- Location: LCCOMB_X35_Y44_N22
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

-- Location: LCCOMB_X36_Y44_N28
\PROC|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector0~0_combout\ = (\PROC|state.jump~q\ & (((\PROC|IR\(7))))) # (!\PROC|state.jump~q\ & (\PROC|state.fetch1~q\ & (\PROC|Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state.fetch1~q\,
	datab => \PROC|Add0~14_combout\,
	datac => \PROC|IR\(7),
	datad => \PROC|state.jump~q\,
	combout => \PROC|Selector0~0_combout\);

-- Location: FF_X36_Y44_N29
\PROC|PC[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|Selector0~0_combout\,
	ena => \PROC|PC[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|PC\(7));

-- Location: LCCOMB_X36_Y44_N20
\PROC|MEMadr[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|MEMadr[7]~7_combout\ = (\PROC|state.fetch1~q\ & ((\PROC|PC\(7)))) # (!\PROC|state.fetch1~q\ & (\PROC|IR\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state.fetch1~q\,
	datab => \PROC|IR\(7),
	datad => \PROC|PC\(7),
	combout => \PROC|MEMadr[7]~7_combout\);

-- Location: LCCOMB_X36_Y44_N10
\PROC|IR[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|IR[6]~feeder_combout\ = \MEM|altsyncram_component|auto_generated|q_a\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MEM|altsyncram_component|auto_generated|q_a\(6),
	combout => \PROC|IR[6]~feeder_combout\);

-- Location: FF_X36_Y44_N11
\PROC|IR[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|IR[6]~feeder_combout\,
	ena => \PROC|IR[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|IR\(6));

-- Location: LCCOMB_X36_Y44_N2
\PROC|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector1~0_combout\ = (\PROC|state.jump~q\ & (((\PROC|IR\(6))))) # (!\PROC|state.jump~q\ & (\PROC|state.fetch1~q\ & ((\PROC|Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state.fetch1~q\,
	datab => \PROC|state.jump~q\,
	datac => \PROC|IR\(6),
	datad => \PROC|Add0~12_combout\,
	combout => \PROC|Selector1~0_combout\);

-- Location: FF_X36_Y44_N3
\PROC|PC[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|Selector1~0_combout\,
	ena => \PROC|PC[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|PC\(6));

-- Location: LCCOMB_X36_Y44_N6
\PROC|MEMadr[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|MEMadr[6]~6_combout\ = (\PROC|state.fetch1~q\ & (\PROC|PC\(6))) # (!\PROC|state.fetch1~q\ & ((\PROC|IR\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state.fetch1~q\,
	datab => \PROC|PC\(6),
	datad => \PROC|IR\(6),
	combout => \PROC|MEMadr[6]~6_combout\);

-- Location: LCCOMB_X34_Y44_N4
\PROC|IR[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|IR[5]~feeder_combout\ = \MEM|altsyncram_component|auto_generated|q_a\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MEM|altsyncram_component|auto_generated|q_a\(5),
	combout => \PROC|IR[5]~feeder_combout\);

-- Location: FF_X34_Y44_N5
\PROC|IR[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|IR[5]~feeder_combout\,
	ena => \PROC|IR[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|IR\(5));

-- Location: LCCOMB_X34_Y44_N14
\PROC|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector2~0_combout\ = (\PROC|state.jump~q\ & (((\PROC|IR\(5))))) # (!\PROC|state.jump~q\ & (\PROC|state.fetch1~q\ & ((\PROC|Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state.fetch1~q\,
	datab => \PROC|state.jump~q\,
	datac => \PROC|IR\(5),
	datad => \PROC|Add0~10_combout\,
	combout => \PROC|Selector2~0_combout\);

-- Location: FF_X34_Y44_N15
\PROC|PC[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|Selector2~0_combout\,
	ena => \PROC|PC[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|PC\(5));

-- Location: LCCOMB_X34_Y44_N8
\PROC|MEMadr[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|MEMadr[5]~5_combout\ = (\PROC|state.fetch1~q\ & (\PROC|PC\(5))) # (!\PROC|state.fetch1~q\ & ((\PROC|IR\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|PC\(5),
	datac => \PROC|IR\(5),
	datad => \PROC|state.fetch1~q\,
	combout => \PROC|MEMadr[5]~5_combout\);

-- Location: LCCOMB_X34_Y44_N22
\PROC|IR[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|IR[4]~feeder_combout\ = \MEM|altsyncram_component|auto_generated|q_a\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MEM|altsyncram_component|auto_generated|q_a\(4),
	combout => \PROC|IR[4]~feeder_combout\);

-- Location: FF_X34_Y44_N23
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

-- Location: LCCOMB_X34_Y44_N16
\PROC|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector3~0_combout\ = (\PROC|state.jump~q\ & (((\PROC|IR\(4))))) # (!\PROC|state.jump~q\ & (\PROC|state.fetch1~q\ & ((\PROC|Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state.fetch1~q\,
	datab => \PROC|state.jump~q\,
	datac => \PROC|IR\(4),
	datad => \PROC|Add0~8_combout\,
	combout => \PROC|Selector3~0_combout\);

-- Location: FF_X34_Y44_N17
\PROC|PC[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|Selector3~0_combout\,
	ena => \PROC|PC[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|PC\(4));

-- Location: LCCOMB_X34_Y44_N10
\PROC|MEMadr[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|MEMadr[4]~4_combout\ = (\PROC|state.fetch1~q\ & (\PROC|PC\(4))) # (!\PROC|state.fetch1~q\ & ((\PROC|IR\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|PC\(4),
	datac => \PROC|IR\(4),
	datad => \PROC|state.fetch1~q\,
	combout => \PROC|MEMadr[4]~4_combout\);

-- Location: LCCOMB_X36_Y44_N4
\PROC|IR[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|IR[3]~feeder_combout\ = \MEM|altsyncram_component|auto_generated|q_a\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MEM|altsyncram_component|auto_generated|q_a\(3),
	combout => \PROC|IR[3]~feeder_combout\);

-- Location: FF_X36_Y44_N5
\PROC|IR[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|IR[3]~feeder_combout\,
	ena => \PROC|IR[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|IR\(3));

-- Location: LCCOMB_X35_Y44_N4
\PROC|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector4~0_combout\ = (\PROC|state.jump~q\ & (((\PROC|IR\(3))))) # (!\PROC|state.jump~q\ & (\PROC|state.fetch1~q\ & (\PROC|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state.fetch1~q\,
	datab => \PROC|state.jump~q\,
	datac => \PROC|Add0~6_combout\,
	datad => \PROC|IR\(3),
	combout => \PROC|Selector4~0_combout\);

-- Location: FF_X35_Y44_N5
\PROC|PC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|Selector4~0_combout\,
	ena => \PROC|PC[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|PC\(3));

-- Location: LCCOMB_X35_Y44_N26
\PROC|MEMadr[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|MEMadr[3]~3_combout\ = (\PROC|state.fetch1~q\ & (\PROC|PC\(3))) # (!\PROC|state.fetch1~q\ & ((\PROC|IR\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state.fetch1~q\,
	datac => \PROC|PC\(3),
	datad => \PROC|IR\(3),
	combout => \PROC|MEMadr[3]~3_combout\);

-- Location: LCCOMB_X34_Y44_N0
\PROC|IR[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|IR[2]~feeder_combout\ = \MEM|altsyncram_component|auto_generated|q_a\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MEM|altsyncram_component|auto_generated|q_a\(2),
	combout => \PROC|IR[2]~feeder_combout\);

-- Location: FF_X34_Y44_N1
\PROC|IR[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|IR[2]~feeder_combout\,
	ena => \PROC|IR[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|IR\(2));

-- Location: LCCOMB_X34_Y44_N20
\PROC|MEMadr[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|MEMadr[2]~2_combout\ = (\PROC|state.fetch1~q\ & (\PROC|PC\(2))) # (!\PROC|state.fetch1~q\ & ((\PROC|IR\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|PC\(2),
	datab => \PROC|IR\(2),
	datad => \PROC|state.fetch1~q\,
	combout => \PROC|MEMadr[2]~2_combout\);

-- Location: FF_X35_Y43_N31
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

-- Location: LCCOMB_X35_Y43_N30
\PROC|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Mux0~0_combout\ = (\PROC|IR\(11)) # ((\PROC|IR\(12)) # ((\PROC|IR\(9) & \PROC|IR\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IR\(9),
	datab => \PROC|IR\(10),
	datac => \PROC|IR\(11),
	datad => \PROC|IR\(12),
	combout => \PROC|Mux0~0_combout\);

-- Location: LCCOMB_X35_Y43_N14
\PROC|Selector24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector24~1_combout\ = (\PROC|Selector24~0_combout\) # ((\PROC|WideOr2~0_combout\) # ((\PROC|Mux0~0_combout\ & \PROC|state.decode~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Selector24~0_combout\,
	datab => \PROC|WideOr2~0_combout\,
	datac => \PROC|Mux0~0_combout\,
	datad => \PROC|state.decode~q\,
	combout => \PROC|Selector24~1_combout\);

-- Location: FF_X35_Y43_N15
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

-- Location: LCCOMB_X35_Y44_N2
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

-- Location: FF_X35_Y44_N3
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

-- Location: LCCOMB_X35_Y44_N30
\PROC|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector6~0_combout\ = (\PROC|state.jump~q\ & (((\PROC|IR\(1))))) # (!\PROC|state.jump~q\ & (\PROC|Add0~2_combout\ & (\PROC|state.fetch1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Add0~2_combout\,
	datab => \PROC|state.jump~q\,
	datac => \PROC|state.fetch1~q\,
	datad => \PROC|IR\(1),
	combout => \PROC|Selector6~0_combout\);

-- Location: FF_X35_Y44_N31
\PROC|PC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|Selector6~0_combout\,
	ena => \PROC|PC[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|PC\(1));

-- Location: LCCOMB_X35_Y44_N24
\PROC|MEMadr[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|MEMadr[1]~1_combout\ = (\PROC|state.fetch1~q\ & (\PROC|PC\(1))) # (!\PROC|state.fetch1~q\ & ((\PROC|IR\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state.fetch1~q\,
	datac => \PROC|PC\(1),
	datad => \PROC|IR\(1),
	combout => \PROC|MEMadr[1]~1_combout\);

-- Location: LCCOMB_X35_Y43_N20
\PROC|IR[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|IR[8]~feeder_combout\ = \MEM|altsyncram_component|auto_generated|q_a\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MEM|altsyncram_component|auto_generated|q_a\(8),
	combout => \PROC|IR[8]~feeder_combout\);

-- Location: FF_X35_Y43_N21
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

-- Location: LCCOMB_X35_Y43_N2
\PROC|state~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|state~20_combout\ = (\PROC|IR\(9) & (\PROC|IR\(8) & \PROC|state~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IR\(9),
	datab => \PROC|IR\(8),
	datac => \PROC|state~15_combout\,
	combout => \PROC|state~20_combout\);

-- Location: FF_X35_Y43_N3
\PROC|state.jump\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|state~20_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|state.jump~q\);

-- Location: LCCOMB_X35_Y44_N28
\PROC|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector7~0_combout\ = (\PROC|state.jump~q\ & (((\PROC|IR\(0))))) # (!\PROC|state.jump~q\ & (\PROC|state.fetch1~q\ & (\PROC|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state.fetch1~q\,
	datab => \PROC|state.jump~q\,
	datac => \PROC|Add0~0_combout\,
	datad => \PROC|IR\(0),
	combout => \PROC|Selector7~0_combout\);

-- Location: FF_X35_Y44_N29
\PROC|PC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|Selector7~0_combout\,
	ena => \PROC|PC[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|PC\(0));

-- Location: LCCOMB_X35_Y44_N6
\PROC|MEMadr[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|MEMadr[0]~0_combout\ = (\PROC|state.fetch1~q\ & (\PROC|PC\(0))) # (!\PROC|state.fetch1~q\ & ((\PROC|IR\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state.fetch1~q\,
	datab => \PROC|PC\(0),
	datad => \PROC|IR\(0),
	combout => \PROC|MEMadr[0]~0_combout\);

-- Location: LCCOMB_X35_Y43_N16
\PROC|IR[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|IR[10]~feeder_combout\ = \MEM|altsyncram_component|auto_generated|q_a\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MEM|altsyncram_component|auto_generated|q_a\(10),
	combout => \PROC|IR[10]~feeder_combout\);

-- Location: FF_X35_Y43_N17
\PROC|IR[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|IR[10]~feeder_combout\,
	ena => \PROC|IR[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|IR\(10));

-- Location: LCCOMB_X35_Y43_N4
\PROC|state~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|state~15_combout\ = (\PROC|state~14_combout\ & (!\PROC|IR\(10) & (!\PROC|IR\(11) & \PROC|state.decode~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state~14_combout\,
	datab => \PROC|IR\(10),
	datac => \PROC|IR\(11),
	datad => \PROC|state.decode~q\,
	combout => \PROC|state~15_combout\);

-- Location: LCCOMB_X35_Y43_N26
\PROC|state~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|state~17_combout\ = (\PROC|IR\(9) & (\PROC|state~15_combout\ & !\PROC|IR\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IR\(9),
	datab => \PROC|state~15_combout\,
	datad => \PROC|IR\(8),
	combout => \PROC|state~17_combout\);

-- Location: FF_X35_Y43_N27
\PROC|state.load1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|state~17_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|state.load1~q\);

-- Location: LCCOMB_X36_Y43_N20
\PROC|Selector23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector23~1_combout\ = (\PROC|state.reset_pc~q\ & (!\PROC|state.load1~q\ & \PROC|state.nand1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state.reset_pc~q\,
	datac => \PROC|state.load1~q\,
	datad => \PROC|state.nand1~q\,
	combout => \PROC|Selector23~1_combout\);

-- Location: LCCOMB_X39_Y44_N8
\PROC|Selector23~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector23~2_combout\ = (\PROC|Selector23~0_combout\) # ((\PROC|Selector23~1_combout\ & ((!\PROC|AC\(0)) # (!\MEM|altsyncram_component|auto_generated|q_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Selector23~0_combout\,
	datab => \MEM|altsyncram_component|auto_generated|q_a\(0),
	datac => \PROC|AC\(0),
	datad => \PROC|Selector23~1_combout\,
	combout => \PROC|Selector23~2_combout\);

-- Location: FF_X39_Y44_N9
\PROC|AC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|Selector23~2_combout\,
	ena => \PROC|AC[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|AC\(0));

-- Location: LCCOMB_X35_Y44_N0
\PROC|IR[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|IR[0]~feeder_combout\ = \MEM|altsyncram_component|auto_generated|q_a\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MEM|altsyncram_component|auto_generated|q_a\(0),
	combout => \PROC|IR[0]~feeder_combout\);

-- Location: FF_X35_Y44_N1
\PROC|IR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|IR[0]~feeder_combout\,
	ena => \PROC|IR[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|IR\(0));

-- Location: LCCOMB_X35_Y43_N22
\PROC|IR[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|IR[9]~feeder_combout\ = \MEM|altsyncram_component|auto_generated|q_a\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MEM|altsyncram_component|auto_generated|q_a\(9),
	combout => \PROC|IR[9]~feeder_combout\);

-- Location: FF_X35_Y43_N23
\PROC|IR[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|IR[9]~feeder_combout\,
	ena => \PROC|IR[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|IR\(9));

-- Location: LCCOMB_X35_Y43_N6
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

-- Location: FF_X35_Y43_N7
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


