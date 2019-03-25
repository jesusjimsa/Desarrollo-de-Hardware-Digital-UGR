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

-- DATE "03/25/2019 11:57:03"

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
-- IR_out[0]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR_out[1]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR_out[2]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR_out[3]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR_out[4]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR_out[5]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR_out[6]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR_out[7]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR_out[8]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR_out[9]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR_out[10]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR_out[11]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR_out[12]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR_out[13]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR_out[14]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR_out[15]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AC_out[0]	=>  Location: PIN_K28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AC_out[1]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AC_out[2]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AC_out[3]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AC_out[4]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AC_out[5]	=>  Location: PIN_B26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AC_out[6]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AC_out[7]	=>  Location: PIN_AE2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AC_out[8]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AC_out[9]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AC_out[10]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AC_out[11]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AC_out[12]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AC_out[13]	=>  Location: PIN_AF26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AC_out[14]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AC_out[15]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[0]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[1]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[2]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[3]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[4]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[5]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[6]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[7]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \PROC|Add0~0_combout\ : std_logic;
SIGNAL \PROC|Selector7~0_combout\ : std_logic;
SIGNAL \PROC|Add0~1\ : std_logic;
SIGNAL \PROC|Add0~2_combout\ : std_logic;
SIGNAL \PROC|Add0~3\ : std_logic;
SIGNAL \PROC|Add0~4_combout\ : std_logic;
SIGNAL \PROC|Selector5~0_combout\ : std_logic;
SIGNAL \PROC|Add0~5\ : std_logic;
SIGNAL \PROC|Add0~7\ : std_logic;
SIGNAL \PROC|Add0~9\ : std_logic;
SIGNAL \PROC|Add0~10_combout\ : std_logic;
SIGNAL \PROC|Add0~11\ : std_logic;
SIGNAL \PROC|Add0~12_combout\ : std_logic;
SIGNAL \PROC|Selector1~0_combout\ : std_logic;
SIGNAL \PROC|Add0~13\ : std_logic;
SIGNAL \PROC|Add0~14_combout\ : std_logic;
SIGNAL \PROC|Selector0~0_combout\ : std_logic;
SIGNAL \PROC|MEMadr[7]~7_combout\ : std_logic;
SIGNAL \PROC|MEMadr[6]~6_combout\ : std_logic;
SIGNAL \PROC|Selector2~0_combout\ : std_logic;
SIGNAL \PROC|MEMadr[5]~5_combout\ : std_logic;
SIGNAL \PROC|Add0~8_combout\ : std_logic;
SIGNAL \PROC|Selector3~0_combout\ : std_logic;
SIGNAL \PROC|MEMadr[4]~4_combout\ : std_logic;
SIGNAL \PROC|Add0~6_combout\ : std_logic;
SIGNAL \PROC|Selector4~0_combout\ : std_logic;
SIGNAL \PROC|MEMadr[3]~3_combout\ : std_logic;
SIGNAL \PROC|MEMadr[2]~2_combout\ : std_logic;
SIGNAL \PROC|Selector6~0_combout\ : std_logic;
SIGNAL \PROC|MEMadr[1]~1_combout\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \PROC|state.decode~q\ : std_logic;
SIGNAL \PROC|state~15_combout\ : std_logic;
SIGNAL \PROC|state~16_combout\ : std_logic;
SIGNAL \PROC|state~17_combout\ : std_logic;
SIGNAL \PROC|state.jump~q\ : std_logic;
SIGNAL \PROC|state.reset_pc~feeder_combout\ : std_logic;
SIGNAL \PROC|state.reset_pc~q\ : std_logic;
SIGNAL \PROC|PC[0]~0_combout\ : std_logic;
SIGNAL \PROC|PC[0]~1_combout\ : std_logic;
SIGNAL \PROC|MEMadr[0]~0_combout\ : std_logic;
SIGNAL \PROC|state~19_combout\ : std_logic;
SIGNAL \PROC|state.load0~q\ : std_logic;
SIGNAL \PROC|state~18_combout\ : std_logic;
SIGNAL \PROC|state.add0~q\ : std_logic;
SIGNAL \PROC|Selector24~1_combout\ : std_logic;
SIGNAL \PROC|state.store1~q\ : std_logic;
SIGNAL \PROC|Selector24~0_combout\ : std_logic;
SIGNAL \PROC|Selector24~2_combout\ : std_logic;
SIGNAL \PROC|state.fetch0~q\ : std_logic;
SIGNAL \PROC|state.fetch1~q\ : std_logic;
SIGNAL \PROC|IR[0]~0_combout\ : std_logic;
SIGNAL \PROC|state~20_combout\ : std_logic;
SIGNAL \PROC|state.store0~q\ : std_logic;
SIGNAL \PROC|PC\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \PROC|IR\ : std_logic_vector(15 DOWNTO 0);
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

\MEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\
& \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\MEM|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\PROC|MEMadr[7]~7_combout\ & \PROC|MEMadr[6]~6_combout\ & \PROC|MEMadr[5]~5_combout\ & \PROC|MEMadr[4]~4_combout\ & \PROC|MEMadr[3]~3_combout\ & \PROC|MEMadr[2]~2_combout\ & 
\PROC|MEMadr[1]~1_combout\ & \PROC|MEMadr[0]~0_combout\);

\PROC|IR\(0) <= \MEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\PROC|IR\(1) <= \MEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\PROC|IR\(2) <= \MEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\PROC|IR\(3) <= \MEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\PROC|IR\(4) <= \MEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\PROC|IR\(5) <= \MEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\PROC|IR\(6) <= \MEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\PROC|IR\(7) <= \MEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\PROC|IR\(8) <= \MEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\PROC|IR\(9) <= \MEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\PROC|IR\(10) <= \MEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\PROC|IR\(11) <= \MEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\PROC|IR\(12) <= \MEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\PROC|IR\(13) <= \MEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);
\PROC|IR\(14) <= \MEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(14);
\PROC|IR\(15) <= \MEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(15);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\reloj~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reloj~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;

-- Location: IOOBUF_X11_Y73_N16
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

-- Location: IOOBUF_X16_Y73_N2
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

-- Location: IOOBUF_X11_Y73_N2
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

-- Location: IOOBUF_X16_Y73_N9
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

-- Location: IOOBUF_X13_Y73_N16
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

-- Location: IOOBUF_X11_Y73_N23
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

-- Location: IOOBUF_X16_Y73_N23
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

-- Location: IOOBUF_X16_Y73_N16
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

-- Location: IOOBUF_X18_Y73_N16
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

-- Location: IOOBUF_X7_Y73_N16
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

-- Location: IOOBUF_X20_Y73_N2
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

-- Location: IOOBUF_X13_Y73_N2
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

-- Location: IOOBUF_X18_Y73_N23
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

-- Location: IOOBUF_X23_Y73_N16
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

-- Location: IOOBUF_X23_Y73_N23
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

-- Location: IOOBUF_X13_Y73_N9
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

-- Location: IOOBUF_X115_Y49_N2
\AC_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \AC_out[0]~output_o\);

-- Location: IOOBUF_X33_Y73_N9
\AC_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \AC_out[1]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\AC_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \AC_out[2]~output_o\);

-- Location: IOOBUF_X96_Y0_N16
\AC_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \AC_out[3]~output_o\);

-- Location: IOOBUF_X40_Y73_N2
\AC_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \AC_out[4]~output_o\);

-- Location: IOOBUF_X113_Y73_N9
\AC_out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \AC_out[5]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\AC_out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \AC_out[6]~output_o\);

-- Location: IOOBUF_X0_Y17_N16
\AC_out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \AC_out[7]~output_o\);

-- Location: IOOBUF_X60_Y73_N2
\AC_out[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \AC_out[8]~output_o\);

-- Location: IOOBUF_X52_Y73_N16
\AC_out[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \AC_out[9]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\AC_out[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \AC_out[10]~output_o\);

-- Location: IOOBUF_X35_Y73_N16
\AC_out[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \AC_out[11]~output_o\);

-- Location: IOOBUF_X0_Y15_N16
\AC_out[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \AC_out[12]~output_o\);

-- Location: IOOBUF_X89_Y0_N2
\AC_out[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \AC_out[13]~output_o\);

-- Location: IOOBUF_X60_Y0_N23
\AC_out[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \AC_out[14]~output_o\);

-- Location: IOOBUF_X96_Y73_N16
\AC_out[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \AC_out[15]~output_o\);

-- Location: IOOBUF_X9_Y73_N2
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

-- Location: IOOBUF_X20_Y73_N16
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

-- Location: IOOBUF_X11_Y73_N9
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

-- Location: IOOBUF_X20_Y73_N23
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

-- Location: IOOBUF_X13_Y73_N23
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

-- Location: IOOBUF_X9_Y73_N9
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

-- Location: IOOBUF_X20_Y73_N9
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

-- Location: IOOBUF_X23_Y73_N2
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

-- Location: LCCOMB_X16_Y72_N2
\~GND\ : cycloneive_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LCCOMB_X13_Y72_N12
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

-- Location: LCCOMB_X13_Y72_N28
\PROC|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector7~0_combout\ = (\PROC|state.jump~q\ & (\PROC|IR\(0))) # (!\PROC|state.jump~q\ & (((\PROC|state.fetch1~q\ & \PROC|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state.jump~q\,
	datab => \PROC|IR\(0),
	datac => \PROC|state.fetch1~q\,
	datad => \PROC|Add0~0_combout\,
	combout => \PROC|Selector7~0_combout\);

-- Location: LCCOMB_X13_Y72_N14
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

-- Location: LCCOMB_X13_Y72_N16
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

-- Location: LCCOMB_X13_Y72_N0
\PROC|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector5~0_combout\ = (\PROC|state.jump~q\ & (((\PROC|IR\(2))))) # (!\PROC|state.jump~q\ & (\PROC|state.fetch1~q\ & ((\PROC|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state.jump~q\,
	datab => \PROC|state.fetch1~q\,
	datac => \PROC|IR\(2),
	datad => \PROC|Add0~4_combout\,
	combout => \PROC|Selector5~0_combout\);

-- Location: FF_X13_Y72_N1
\PROC|PC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|Selector5~0_combout\,
	ena => \PROC|PC[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|PC\(2));

-- Location: LCCOMB_X13_Y72_N18
\PROC|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Add0~6_combout\ = (\PROC|PC\(3) & (!\PROC|Add0~5\)) # (!\PROC|PC\(3) & ((\PROC|Add0~5\) # (GND)))
-- \PROC|Add0~7\ = CARRY((!\PROC|Add0~5\) # (!\PROC|PC\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|PC\(3),
	datad => VCC,
	cin => \PROC|Add0~5\,
	combout => \PROC|Add0~6_combout\,
	cout => \PROC|Add0~7\);

-- Location: LCCOMB_X13_Y72_N20
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

-- Location: LCCOMB_X13_Y72_N22
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

-- Location: LCCOMB_X13_Y72_N24
\PROC|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Add0~12_combout\ = (\PROC|PC\(6) & (\PROC|Add0~11\ $ (GND))) # (!\PROC|PC\(6) & (!\PROC|Add0~11\ & VCC))
-- \PROC|Add0~13\ = CARRY((\PROC|PC\(6) & !\PROC|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PROC|PC\(6),
	datad => VCC,
	cin => \PROC|Add0~11\,
	combout => \PROC|Add0~12_combout\,
	cout => \PROC|Add0~13\);

-- Location: LCCOMB_X13_Y72_N8
\PROC|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector1~0_combout\ = (\PROC|state.jump~q\ & (((\PROC|IR\(6))))) # (!\PROC|state.jump~q\ & (\PROC|state.fetch1~q\ & ((\PROC|Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state.jump~q\,
	datab => \PROC|state.fetch1~q\,
	datac => \PROC|IR\(6),
	datad => \PROC|Add0~12_combout\,
	combout => \PROC|Selector1~0_combout\);

-- Location: FF_X13_Y72_N9
\PROC|PC[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|Selector1~0_combout\,
	ena => \PROC|PC[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|PC\(6));

-- Location: LCCOMB_X13_Y72_N26
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

-- Location: M9K_X15_Y72_N0
\MEM|altsyncram_component|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003401400F0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003040048C0022000840220",
	clk0_output_clock_enable => "ena0",
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
	port_a_data_out_clock => "clock0",
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
	ena0 => \PROC|IR[0]~0_combout\,
	portadatain => \MEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \MEM|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \MEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X13_Y72_N2
\PROC|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector0~0_combout\ = (\PROC|state.jump~q\ & (((\PROC|IR\(7))))) # (!\PROC|state.jump~q\ & (\PROC|state.fetch1~q\ & (\PROC|Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state.jump~q\,
	datab => \PROC|state.fetch1~q\,
	datac => \PROC|Add0~14_combout\,
	datad => \PROC|IR\(7),
	combout => \PROC|Selector0~0_combout\);

-- Location: FF_X13_Y72_N3
\PROC|PC[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|Selector0~0_combout\,
	ena => \PROC|PC[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|PC\(7));

-- Location: LCCOMB_X16_Y72_N4
\PROC|MEMadr[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|MEMadr[7]~7_combout\ = (\PROC|state.fetch0~q\ & (\PROC|PC\(7))) # (!\PROC|state.fetch0~q\ & ((\PROC|IR\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state.fetch0~q\,
	datac => \PROC|PC\(7),
	datad => \PROC|IR\(7),
	combout => \PROC|MEMadr[7]~7_combout\);

-- Location: LCCOMB_X16_Y72_N10
\PROC|MEMadr[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|MEMadr[6]~6_combout\ = (\PROC|state.fetch0~q\ & (\PROC|PC\(6))) # (!\PROC|state.fetch0~q\ & ((\PROC|IR\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|PC\(6),
	datac => \PROC|state.fetch0~q\,
	datad => \PROC|IR\(6),
	combout => \PROC|MEMadr[6]~6_combout\);

-- Location: LCCOMB_X13_Y72_N30
\PROC|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector2~0_combout\ = (\PROC|state.jump~q\ & (((\PROC|IR\(5))))) # (!\PROC|state.jump~q\ & (\PROC|state.fetch1~q\ & (\PROC|Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state.jump~q\,
	datab => \PROC|state.fetch1~q\,
	datac => \PROC|Add0~10_combout\,
	datad => \PROC|IR\(5),
	combout => \PROC|Selector2~0_combout\);

-- Location: FF_X13_Y72_N31
\PROC|PC[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|Selector2~0_combout\,
	ena => \PROC|PC[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|PC\(5));

-- Location: LCCOMB_X14_Y72_N4
\PROC|MEMadr[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|MEMadr[5]~5_combout\ = (\PROC|state.fetch0~q\ & (\PROC|PC\(5))) # (!\PROC|state.fetch0~q\ & ((\PROC|IR\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state.fetch0~q\,
	datab => \PROC|PC\(5),
	datad => \PROC|IR\(5),
	combout => \PROC|MEMadr[5]~5_combout\);

-- Location: LCCOMB_X13_Y72_N4
\PROC|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector3~0_combout\ = (\PROC|state.jump~q\ & (((\PROC|IR\(4))))) # (!\PROC|state.jump~q\ & (\PROC|state.fetch1~q\ & ((\PROC|Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state.jump~q\,
	datab => \PROC|state.fetch1~q\,
	datac => \PROC|IR\(4),
	datad => \PROC|Add0~8_combout\,
	combout => \PROC|Selector3~0_combout\);

-- Location: FF_X13_Y72_N5
\PROC|PC[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|Selector3~0_combout\,
	ena => \PROC|PC[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|PC\(4));

-- Location: LCCOMB_X14_Y72_N22
\PROC|MEMadr[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|MEMadr[4]~4_combout\ = (\PROC|state.fetch0~q\ & (\PROC|PC\(4))) # (!\PROC|state.fetch0~q\ & ((\PROC|IR\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|state.fetch0~q\,
	datac => \PROC|PC\(4),
	datad => \PROC|IR\(4),
	combout => \PROC|MEMadr[4]~4_combout\);

-- Location: LCCOMB_X13_Y72_N10
\PROC|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector4~0_combout\ = (\PROC|state.jump~q\ & (((\PROC|IR\(3))))) # (!\PROC|state.jump~q\ & (\PROC|state.fetch1~q\ & ((\PROC|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state.jump~q\,
	datab => \PROC|state.fetch1~q\,
	datac => \PROC|IR\(3),
	datad => \PROC|Add0~6_combout\,
	combout => \PROC|Selector4~0_combout\);

-- Location: FF_X13_Y72_N11
\PROC|PC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|Selector4~0_combout\,
	ena => \PROC|PC[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|PC\(3));

-- Location: LCCOMB_X16_Y72_N12
\PROC|MEMadr[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|MEMadr[3]~3_combout\ = (\PROC|state.fetch0~q\ & (\PROC|PC\(3))) # (!\PROC|state.fetch0~q\ & ((\PROC|IR\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state.fetch0~q\,
	datac => \PROC|PC\(3),
	datad => \PROC|IR\(3),
	combout => \PROC|MEMadr[3]~3_combout\);

-- Location: LCCOMB_X16_Y72_N14
\PROC|MEMadr[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|MEMadr[2]~2_combout\ = (\PROC|state.fetch0~q\ & (\PROC|PC\(2))) # (!\PROC|state.fetch0~q\ & ((\PROC|IR\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|PC\(2),
	datac => \PROC|state.fetch0~q\,
	datad => \PROC|IR\(2),
	combout => \PROC|MEMadr[2]~2_combout\);

-- Location: LCCOMB_X13_Y72_N6
\PROC|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector6~0_combout\ = (\PROC|state.jump~q\ & (((\PROC|IR\(1))))) # (!\PROC|state.jump~q\ & (\PROC|state.fetch1~q\ & (\PROC|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state.jump~q\,
	datab => \PROC|state.fetch1~q\,
	datac => \PROC|Add0~2_combout\,
	datad => \PROC|IR\(1),
	combout => \PROC|Selector6~0_combout\);

-- Location: FF_X13_Y72_N7
\PROC|PC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|Selector6~0_combout\,
	ena => \PROC|PC[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|PC\(1));

-- Location: LCCOMB_X16_Y72_N16
\PROC|MEMadr[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|MEMadr[1]~1_combout\ = (\PROC|state.fetch0~q\ & (\PROC|PC\(1))) # (!\PROC|state.fetch0~q\ & ((\PROC|IR\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state.fetch0~q\,
	datac => \PROC|PC\(1),
	datad => \PROC|IR\(1),
	combout => \PROC|MEMadr[1]~1_combout\);

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

-- Location: FF_X14_Y72_N25
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

-- Location: LCCOMB_X14_Y72_N6
\PROC|state~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|state~15_combout\ = (!\PROC|IR\(12) & (!\PROC|IR\(14) & (!\PROC|IR\(15) & !\PROC|IR\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IR\(12),
	datab => \PROC|IR\(14),
	datac => \PROC|IR\(15),
	datad => \PROC|IR\(13),
	combout => \PROC|state~15_combout\);

-- Location: LCCOMB_X14_Y72_N24
\PROC|state~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|state~16_combout\ = (!\PROC|IR\(10) & (!\PROC|IR\(11) & (\PROC|state.decode~q\ & \PROC|state~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IR\(10),
	datab => \PROC|IR\(11),
	datac => \PROC|state.decode~q\,
	datad => \PROC|state~15_combout\,
	combout => \PROC|state~16_combout\);

-- Location: LCCOMB_X14_Y72_N2
\PROC|state~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|state~17_combout\ = (\PROC|IR\(9) & (\PROC|IR\(8) & \PROC|state~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|IR\(9),
	datac => \PROC|IR\(8),
	datad => \PROC|state~16_combout\,
	combout => \PROC|state~17_combout\);

-- Location: FF_X14_Y72_N3
\PROC|state.jump\ : dffeas
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
	q => \PROC|state.jump~q\);

-- Location: LCCOMB_X14_Y72_N26
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

-- Location: FF_X14_Y72_N27
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

-- Location: LCCOMB_X14_Y72_N28
\PROC|PC[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|PC[0]~0_combout\ = (\reset~input_o\) # ((!\PROC|state.jump~q\ & (\PROC|state.reset_pc~q\ & !\PROC|state.fetch1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \PROC|state.jump~q\,
	datac => \PROC|state.reset_pc~q\,
	datad => \PROC|state.fetch1~q\,
	combout => \PROC|PC[0]~0_combout\);

-- Location: LCCOMB_X14_Y72_N10
\PROC|PC[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|PC[0]~1_combout\ = (!\PROC|state.add0~q\ & (!\PROC|state.load0~q\ & !\PROC|PC[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state.add0~q\,
	datac => \PROC|state.load0~q\,
	datad => \PROC|PC[0]~0_combout\,
	combout => \PROC|PC[0]~1_combout\);

-- Location: FF_X13_Y72_N29
\PROC|PC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|Selector7~0_combout\,
	ena => \PROC|PC[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|PC\(0));

-- Location: LCCOMB_X14_Y72_N0
\PROC|MEMadr[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|MEMadr[0]~0_combout\ = (\PROC|state.fetch0~q\ & (\PROC|PC\(0))) # (!\PROC|state.fetch0~q\ & ((\PROC|IR\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|PC\(0),
	datac => \PROC|state.fetch0~q\,
	datad => \PROC|IR\(0),
	combout => \PROC|MEMadr[0]~0_combout\);

-- Location: LCCOMB_X14_Y72_N14
\PROC|state~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|state~19_combout\ = (\PROC|IR\(9) & (!\PROC|IR\(8) & \PROC|state~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|IR\(9),
	datac => \PROC|IR\(8),
	datad => \PROC|state~16_combout\,
	combout => \PROC|state~19_combout\);

-- Location: FF_X14_Y72_N15
\PROC|state.load0\ : dffeas
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
	q => \PROC|state.load0~q\);

-- Location: LCCOMB_X14_Y72_N30
\PROC|state~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|state~18_combout\ = (!\PROC|IR\(9) & (!\PROC|IR\(8) & \PROC|state~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|IR\(9),
	datac => \PROC|IR\(8),
	datad => \PROC|state~16_combout\,
	combout => \PROC|state~18_combout\);

-- Location: FF_X14_Y72_N31
\PROC|state.add0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|state~18_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|state.add0~q\);

-- Location: LCCOMB_X14_Y72_N16
\PROC|Selector24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector24~1_combout\ = ((\PROC|state.load0~q\) # ((\PROC|state.add0~q\) # (\PROC|state.jump~q\))) # (!\PROC|state.reset_pc~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state.reset_pc~q\,
	datab => \PROC|state.load0~q\,
	datac => \PROC|state.add0~q\,
	datad => \PROC|state.jump~q\,
	combout => \PROC|Selector24~1_combout\);

-- Location: FF_X14_Y72_N5
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

-- Location: LCCOMB_X14_Y72_N12
\PROC|Selector24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector24~0_combout\ = (\PROC|state.decode~q\ & ((\PROC|IR\(10)) # ((\PROC|IR\(11)) # (!\PROC|state~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IR\(10),
	datab => \PROC|IR\(11),
	datac => \PROC|state.decode~q\,
	datad => \PROC|state~15_combout\,
	combout => \PROC|Selector24~0_combout\);

-- Location: LCCOMB_X14_Y72_N20
\PROC|Selector24~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector24~2_combout\ = (\PROC|Selector24~1_combout\) # ((\PROC|state.store1~q\) # (\PROC|Selector24~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|Selector24~1_combout\,
	datac => \PROC|state.store1~q\,
	datad => \PROC|Selector24~0_combout\,
	combout => \PROC|Selector24~2_combout\);

-- Location: FF_X14_Y72_N21
\PROC|state.fetch0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|Selector24~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|state.fetch0~q\);

-- Location: FF_X14_Y72_N1
\PROC|state.fetch1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \PROC|state.fetch0~q\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|state.fetch1~q\);

-- Location: LCCOMB_X14_Y72_N18
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

-- Location: LCCOMB_X14_Y72_N8
\PROC|state~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|state~20_combout\ = (!\PROC|IR\(9) & (\PROC|IR\(8) & \PROC|state~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|IR\(9),
	datac => \PROC|IR\(8),
	datad => \PROC|state~16_combout\,
	combout => \PROC|state~20_combout\);

-- Location: FF_X14_Y72_N9
\PROC|state.store0\ : dffeas
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
	q => \PROC|state.store0~q\);

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


