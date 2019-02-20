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

-- DATE "02/19/2019 18:20:54"

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

ENTITY 	Top IS
    PORT (
	Velocidad : IN std_logic_vector(2 DOWNTO 0);
	Reloj : IN std_logic;
	Reset : IN std_logic;
	SegDigit1 : OUT std_logic_vector(0 TO 6);
	SegDigit2 : OUT std_logic_vector(0 TO 6)
	);
END Top;

-- Design Ports Information
-- SegDigit1[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SegDigit1[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SegDigit1[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SegDigit1[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SegDigit1[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SegDigit1[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SegDigit1[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SegDigit2[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SegDigit2[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SegDigit2[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SegDigit2[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SegDigit2[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SegDigit2[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SegDigit2[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reset	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Velocidad[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Velocidad[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Velocidad[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reloj	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Velocidad : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_Reloj : std_logic;
SIGNAL ww_Reset : std_logic;
SIGNAL ww_SegDigit1 : std_logic_vector(0 TO 6);
SIGNAL ww_SegDigit2 : std_logic_vector(0 TO 6);
SIGNAL \Reloj~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DivisorFrecuencia|Salida~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DivisorFrecuencia|Contador[1]~25_combout\ : std_logic;
SIGNAL \DivisorFrecuencia|Contador[1]~26\ : std_logic;
SIGNAL \DivisorFrecuencia|Contador[2]~27_combout\ : std_logic;
SIGNAL \DivisorFrecuencia|Contador[2]~28\ : std_logic;
SIGNAL \DivisorFrecuencia|Contador[3]~29_combout\ : std_logic;
SIGNAL \DivisorFrecuencia|Contador[3]~30\ : std_logic;
SIGNAL \DivisorFrecuencia|Contador[4]~31_combout\ : std_logic;
SIGNAL \DivisorFrecuencia|Contador[4]~32\ : std_logic;
SIGNAL \DivisorFrecuencia|Contador[5]~33_combout\ : std_logic;
SIGNAL \DivisorFrecuencia|Contador[5]~34\ : std_logic;
SIGNAL \DivisorFrecuencia|Contador[6]~35_combout\ : std_logic;
SIGNAL \DivisorFrecuencia|Contador[6]~36\ : std_logic;
SIGNAL \DivisorFrecuencia|Contador[7]~37_combout\ : std_logic;
SIGNAL \DivisorFrecuencia|Contador[7]~38\ : std_logic;
SIGNAL \DivisorFrecuencia|Contador[8]~39_combout\ : std_logic;
SIGNAL \DivisorFrecuencia|Contador[8]~40\ : std_logic;
SIGNAL \DivisorFrecuencia|Contador[9]~41_combout\ : std_logic;
SIGNAL \DivisorFrecuencia|Contador[9]~42\ : std_logic;
SIGNAL \DivisorFrecuencia|Contador[10]~43_combout\ : std_logic;
SIGNAL \DivisorFrecuencia|Contador[10]~44\ : std_logic;
SIGNAL \DivisorFrecuencia|Contador[11]~45_combout\ : std_logic;
SIGNAL \DivisorFrecuencia|Contador[11]~46\ : std_logic;
SIGNAL \DivisorFrecuencia|Contador[12]~47_combout\ : std_logic;
SIGNAL \DivisorFrecuencia|Contador[12]~48\ : std_logic;
SIGNAL \DivisorFrecuencia|Contador[13]~49_combout\ : std_logic;
SIGNAL \DivisorFrecuencia|Contador[13]~50\ : std_logic;
SIGNAL \DivisorFrecuencia|Contador[14]~51_combout\ : std_logic;
SIGNAL \DivisorFrecuencia|Contador[14]~52\ : std_logic;
SIGNAL \DivisorFrecuencia|Contador[15]~53_combout\ : std_logic;
SIGNAL \DivisorFrecuencia|Contador[15]~54\ : std_logic;
SIGNAL \DivisorFrecuencia|Contador[16]~55_combout\ : std_logic;
SIGNAL \DivisorFrecuencia|Contador[16]~56\ : std_logic;
SIGNAL \DivisorFrecuencia|Contador[17]~57_combout\ : std_logic;
SIGNAL \DivisorFrecuencia|Contador[17]~58\ : std_logic;
SIGNAL \DivisorFrecuencia|Contador[18]~59_combout\ : std_logic;
SIGNAL \DivisorFrecuencia|Contador[18]~60\ : std_logic;
SIGNAL \DivisorFrecuencia|Contador[19]~61_combout\ : std_logic;
SIGNAL \DivisorFrecuencia|Contador[19]~62\ : std_logic;
SIGNAL \DivisorFrecuencia|Contador[20]~63_combout\ : std_logic;
SIGNAL \DivisorFrecuencia|Contador[20]~64\ : std_logic;
SIGNAL \DivisorFrecuencia|Contador[21]~65_combout\ : std_logic;
SIGNAL \DivisorFrecuencia|Contador[21]~66\ : std_logic;
SIGNAL \DivisorFrecuencia|Contador[22]~67_combout\ : std_logic;
SIGNAL \DivisorFrecuencia|Contador[22]~68\ : std_logic;
SIGNAL \DivisorFrecuencia|Contador[23]~69_combout\ : std_logic;
SIGNAL \DivisorFrecuencia|Contador[23]~70\ : std_logic;
SIGNAL \DivisorFrecuencia|Contador[24]~71_combout\ : std_logic;
SIGNAL \DivisorFrecuencia|Contador[24]~72\ : std_logic;
SIGNAL \DivisorFrecuencia|Contador[25]~73_combout\ : std_logic;
SIGNAL \DivisorFrecuencia|Salida~q\ : std_logic;
SIGNAL \DivisorFrecuencia|Salida_int~0_combout\ : std_logic;
SIGNAL \DivisorFrecuencia|Salida_int~1_combout\ : std_logic;
SIGNAL \DivisorFrecuencia|Salida_int~2_combout\ : std_logic;
SIGNAL \DivisorFrecuencia|Salida_int~3_combout\ : std_logic;
SIGNAL \DivisorFrecuencia|Salida_int~4_combout\ : std_logic;
SIGNAL \DivisorFrecuencia|Contador[0]~75_combout\ : std_logic;
SIGNAL \Velocidad[2]~input_o\ : std_logic;
SIGNAL \Velocidad[1]~input_o\ : std_logic;
SIGNAL \Velocidad[0]~input_o\ : std_logic;
SIGNAL \Reloj~input_o\ : std_logic;
SIGNAL \Reloj~inputclkctrl_outclk\ : std_logic;
SIGNAL \DivisorFrecuencia|Salida~clkctrl_outclk\ : std_logic;
SIGNAL \SegDigit1[6]~output_o\ : std_logic;
SIGNAL \SegDigit1[5]~output_o\ : std_logic;
SIGNAL \SegDigit1[4]~output_o\ : std_logic;
SIGNAL \SegDigit1[3]~output_o\ : std_logic;
SIGNAL \SegDigit1[2]~output_o\ : std_logic;
SIGNAL \SegDigit1[1]~output_o\ : std_logic;
SIGNAL \SegDigit1[0]~output_o\ : std_logic;
SIGNAL \SegDigit2[6]~output_o\ : std_logic;
SIGNAL \SegDigit2[5]~output_o\ : std_logic;
SIGNAL \SegDigit2[4]~output_o\ : std_logic;
SIGNAL \SegDigit2[3]~output_o\ : std_logic;
SIGNAL \SegDigit2[2]~output_o\ : std_logic;
SIGNAL \SegDigit2[1]~output_o\ : std_logic;
SIGNAL \SegDigit2[0]~output_o\ : std_logic;
SIGNAL \Contador8|Contador[1]~7_combout\ : std_logic;
SIGNAL \Reset~input_o\ : std_logic;
SIGNAL \Contador8|Contador[1]~8\ : std_logic;
SIGNAL \Contador8|Contador[2]~9_combout\ : std_logic;
SIGNAL \Contador8|Contador[2]~10\ : std_logic;
SIGNAL \Contador8|Contador[3]~11_combout\ : std_logic;
SIGNAL \Contador8|Contador[0]~21_combout\ : std_logic;
SIGNAL \Digito1|Mux6~0_combout\ : std_logic;
SIGNAL \Digito1|Mux5~0_combout\ : std_logic;
SIGNAL \Digito1|Mux4~0_combout\ : std_logic;
SIGNAL \Digito1|Mux3~0_combout\ : std_logic;
SIGNAL \Digito1|Mux2~0_combout\ : std_logic;
SIGNAL \Digito1|Mux1~0_combout\ : std_logic;
SIGNAL \Digito1|Mux0~0_combout\ : std_logic;
SIGNAL \Contador8|Contador[3]~12\ : std_logic;
SIGNAL \Contador8|Contador[4]~13_combout\ : std_logic;
SIGNAL \Contador8|Contador[4]~14\ : std_logic;
SIGNAL \Contador8|Contador[5]~15_combout\ : std_logic;
SIGNAL \Contador8|Contador[5]~16\ : std_logic;
SIGNAL \Contador8|Contador[6]~17_combout\ : std_logic;
SIGNAL \Contador8|Contador[6]~18\ : std_logic;
SIGNAL \Contador8|Contador[7]~19_combout\ : std_logic;
SIGNAL \Digito2|Mux6~0_combout\ : std_logic;
SIGNAL \Digito2|Mux5~0_combout\ : std_logic;
SIGNAL \Digito2|Mux4~0_combout\ : std_logic;
SIGNAL \Digito2|Mux3~0_combout\ : std_logic;
SIGNAL \Digito2|Mux2~0_combout\ : std_logic;
SIGNAL \Digito2|Mux1~0_combout\ : std_logic;
SIGNAL \Digito2|Mux0~0_combout\ : std_logic;
SIGNAL \DivisorFrecuencia|Contador\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \Contador8|Contador\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_Reset~input_o\ : std_logic;
SIGNAL \Digito2|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \Digito1|ALT_INV_Mux6~0_combout\ : std_logic;

BEGIN

ww_Velocidad <= Velocidad;
ww_Reloj <= Reloj;
ww_Reset <= Reset;
SegDigit1 <= ww_SegDigit1;
SegDigit2 <= ww_SegDigit2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Reloj~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Reloj~input_o\);

\DivisorFrecuencia|Salida~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \DivisorFrecuencia|Salida~q\);
\ALT_INV_Reset~input_o\ <= NOT \Reset~input_o\;
\Digito2|ALT_INV_Mux6~0_combout\ <= NOT \Digito2|Mux6~0_combout\;
\Digito1|ALT_INV_Mux6~0_combout\ <= NOT \Digito1|Mux6~0_combout\;

-- Location: FF_X113_Y33_N15
\DivisorFrecuencia|Contador[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \DivisorFrecuencia|Contador[20]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DivisorFrecuencia|Contador\(20));

-- Location: FF_X113_Y33_N19
\DivisorFrecuencia|Contador[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \DivisorFrecuencia|Contador[22]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DivisorFrecuencia|Contador\(22));

-- Location: FF_X113_Y33_N23
\DivisorFrecuencia|Contador[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \DivisorFrecuencia|Contador[24]~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DivisorFrecuencia|Contador\(24));

-- Location: FF_X113_Y33_N11
\DivisorFrecuencia|Contador[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \DivisorFrecuencia|Contador[18]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DivisorFrecuencia|Contador\(18));

-- Location: FF_X113_Y33_N21
\DivisorFrecuencia|Contador[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \DivisorFrecuencia|Contador[23]~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DivisorFrecuencia|Contador\(23));

-- Location: FF_X113_Y33_N17
\DivisorFrecuencia|Contador[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \DivisorFrecuencia|Contador[21]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DivisorFrecuencia|Contador\(21));

-- Location: FF_X113_Y33_N25
\DivisorFrecuencia|Contador[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \DivisorFrecuencia|Contador[25]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DivisorFrecuencia|Contador\(25));

-- Location: FF_X113_Y33_N13
\DivisorFrecuencia|Contador[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \DivisorFrecuencia|Contador[19]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DivisorFrecuencia|Contador\(19));

-- Location: FF_X113_Y33_N9
\DivisorFrecuencia|Contador[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \DivisorFrecuencia|Contador[17]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DivisorFrecuencia|Contador\(17));

-- Location: FF_X113_Y33_N7
\DivisorFrecuencia|Contador[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \DivisorFrecuencia|Contador[16]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DivisorFrecuencia|Contador\(16));

-- Location: FF_X113_Y33_N5
\DivisorFrecuencia|Contador[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \DivisorFrecuencia|Contador[15]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DivisorFrecuencia|Contador\(15));

-- Location: FF_X113_Y33_N3
\DivisorFrecuencia|Contador[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \DivisorFrecuencia|Contador[14]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DivisorFrecuencia|Contador\(14));

-- Location: FF_X113_Y33_N1
\DivisorFrecuencia|Contador[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \DivisorFrecuencia|Contador[13]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DivisorFrecuencia|Contador\(13));

-- Location: FF_X113_Y34_N31
\DivisorFrecuencia|Contador[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \DivisorFrecuencia|Contador[12]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DivisorFrecuencia|Contador\(12));

-- Location: FF_X113_Y34_N29
\DivisorFrecuencia|Contador[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \DivisorFrecuencia|Contador[11]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DivisorFrecuencia|Contador\(11));

-- Location: FF_X113_Y34_N27
\DivisorFrecuencia|Contador[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \DivisorFrecuencia|Contador[10]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DivisorFrecuencia|Contador\(10));

-- Location: FF_X113_Y34_N25
\DivisorFrecuencia|Contador[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \DivisorFrecuencia|Contador[9]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DivisorFrecuencia|Contador\(9));

-- Location: FF_X113_Y34_N23
\DivisorFrecuencia|Contador[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \DivisorFrecuencia|Contador[8]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DivisorFrecuencia|Contador\(8));

-- Location: FF_X113_Y34_N21
\DivisorFrecuencia|Contador[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \DivisorFrecuencia|Contador[7]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DivisorFrecuencia|Contador\(7));

-- Location: FF_X113_Y34_N19
\DivisorFrecuencia|Contador[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \DivisorFrecuencia|Contador[6]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DivisorFrecuencia|Contador\(6));

-- Location: FF_X113_Y34_N17
\DivisorFrecuencia|Contador[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \DivisorFrecuencia|Contador[5]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DivisorFrecuencia|Contador\(5));

-- Location: FF_X113_Y34_N15
\DivisorFrecuencia|Contador[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \DivisorFrecuencia|Contador[4]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DivisorFrecuencia|Contador\(4));

-- Location: FF_X113_Y34_N13
\DivisorFrecuencia|Contador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \DivisorFrecuencia|Contador[3]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DivisorFrecuencia|Contador\(3));

-- Location: FF_X113_Y34_N11
\DivisorFrecuencia|Contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \DivisorFrecuencia|Contador[2]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DivisorFrecuencia|Contador\(2));

-- Location: FF_X113_Y34_N9
\DivisorFrecuencia|Contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \DivisorFrecuencia|Contador[1]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DivisorFrecuencia|Contador\(1));

-- Location: LCCOMB_X113_Y34_N8
\DivisorFrecuencia|Contador[1]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \DivisorFrecuencia|Contador[1]~25_combout\ = (\DivisorFrecuencia|Contador\(1) & (\DivisorFrecuencia|Contador\(0) $ (VCC))) # (!\DivisorFrecuencia|Contador\(1) & (\DivisorFrecuencia|Contador\(0) & VCC))
-- \DivisorFrecuencia|Contador[1]~26\ = CARRY((\DivisorFrecuencia|Contador\(1) & \DivisorFrecuencia|Contador\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DivisorFrecuencia|Contador\(1),
	datab => \DivisorFrecuencia|Contador\(0),
	datad => VCC,
	combout => \DivisorFrecuencia|Contador[1]~25_combout\,
	cout => \DivisorFrecuencia|Contador[1]~26\);

-- Location: LCCOMB_X113_Y34_N10
\DivisorFrecuencia|Contador[2]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \DivisorFrecuencia|Contador[2]~27_combout\ = (\DivisorFrecuencia|Contador\(2) & (!\DivisorFrecuencia|Contador[1]~26\)) # (!\DivisorFrecuencia|Contador\(2) & ((\DivisorFrecuencia|Contador[1]~26\) # (GND)))
-- \DivisorFrecuencia|Contador[2]~28\ = CARRY((!\DivisorFrecuencia|Contador[1]~26\) # (!\DivisorFrecuencia|Contador\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DivisorFrecuencia|Contador\(2),
	datad => VCC,
	cin => \DivisorFrecuencia|Contador[1]~26\,
	combout => \DivisorFrecuencia|Contador[2]~27_combout\,
	cout => \DivisorFrecuencia|Contador[2]~28\);

-- Location: LCCOMB_X113_Y34_N12
\DivisorFrecuencia|Contador[3]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \DivisorFrecuencia|Contador[3]~29_combout\ = (\DivisorFrecuencia|Contador\(3) & (\DivisorFrecuencia|Contador[2]~28\ $ (GND))) # (!\DivisorFrecuencia|Contador\(3) & (!\DivisorFrecuencia|Contador[2]~28\ & VCC))
-- \DivisorFrecuencia|Contador[3]~30\ = CARRY((\DivisorFrecuencia|Contador\(3) & !\DivisorFrecuencia|Contador[2]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DivisorFrecuencia|Contador\(3),
	datad => VCC,
	cin => \DivisorFrecuencia|Contador[2]~28\,
	combout => \DivisorFrecuencia|Contador[3]~29_combout\,
	cout => \DivisorFrecuencia|Contador[3]~30\);

-- Location: LCCOMB_X113_Y34_N14
\DivisorFrecuencia|Contador[4]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \DivisorFrecuencia|Contador[4]~31_combout\ = (\DivisorFrecuencia|Contador\(4) & (!\DivisorFrecuencia|Contador[3]~30\)) # (!\DivisorFrecuencia|Contador\(4) & ((\DivisorFrecuencia|Contador[3]~30\) # (GND)))
-- \DivisorFrecuencia|Contador[4]~32\ = CARRY((!\DivisorFrecuencia|Contador[3]~30\) # (!\DivisorFrecuencia|Contador\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DivisorFrecuencia|Contador\(4),
	datad => VCC,
	cin => \DivisorFrecuencia|Contador[3]~30\,
	combout => \DivisorFrecuencia|Contador[4]~31_combout\,
	cout => \DivisorFrecuencia|Contador[4]~32\);

-- Location: LCCOMB_X113_Y34_N16
\DivisorFrecuencia|Contador[5]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \DivisorFrecuencia|Contador[5]~33_combout\ = (\DivisorFrecuencia|Contador\(5) & (\DivisorFrecuencia|Contador[4]~32\ $ (GND))) # (!\DivisorFrecuencia|Contador\(5) & (!\DivisorFrecuencia|Contador[4]~32\ & VCC))
-- \DivisorFrecuencia|Contador[5]~34\ = CARRY((\DivisorFrecuencia|Contador\(5) & !\DivisorFrecuencia|Contador[4]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DivisorFrecuencia|Contador\(5),
	datad => VCC,
	cin => \DivisorFrecuencia|Contador[4]~32\,
	combout => \DivisorFrecuencia|Contador[5]~33_combout\,
	cout => \DivisorFrecuencia|Contador[5]~34\);

-- Location: LCCOMB_X113_Y34_N18
\DivisorFrecuencia|Contador[6]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \DivisorFrecuencia|Contador[6]~35_combout\ = (\DivisorFrecuencia|Contador\(6) & (!\DivisorFrecuencia|Contador[5]~34\)) # (!\DivisorFrecuencia|Contador\(6) & ((\DivisorFrecuencia|Contador[5]~34\) # (GND)))
-- \DivisorFrecuencia|Contador[6]~36\ = CARRY((!\DivisorFrecuencia|Contador[5]~34\) # (!\DivisorFrecuencia|Contador\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DivisorFrecuencia|Contador\(6),
	datad => VCC,
	cin => \DivisorFrecuencia|Contador[5]~34\,
	combout => \DivisorFrecuencia|Contador[6]~35_combout\,
	cout => \DivisorFrecuencia|Contador[6]~36\);

-- Location: LCCOMB_X113_Y34_N20
\DivisorFrecuencia|Contador[7]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \DivisorFrecuencia|Contador[7]~37_combout\ = (\DivisorFrecuencia|Contador\(7) & (\DivisorFrecuencia|Contador[6]~36\ $ (GND))) # (!\DivisorFrecuencia|Contador\(7) & (!\DivisorFrecuencia|Contador[6]~36\ & VCC))
-- \DivisorFrecuencia|Contador[7]~38\ = CARRY((\DivisorFrecuencia|Contador\(7) & !\DivisorFrecuencia|Contador[6]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DivisorFrecuencia|Contador\(7),
	datad => VCC,
	cin => \DivisorFrecuencia|Contador[6]~36\,
	combout => \DivisorFrecuencia|Contador[7]~37_combout\,
	cout => \DivisorFrecuencia|Contador[7]~38\);

-- Location: LCCOMB_X113_Y34_N22
\DivisorFrecuencia|Contador[8]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \DivisorFrecuencia|Contador[8]~39_combout\ = (\DivisorFrecuencia|Contador\(8) & (!\DivisorFrecuencia|Contador[7]~38\)) # (!\DivisorFrecuencia|Contador\(8) & ((\DivisorFrecuencia|Contador[7]~38\) # (GND)))
-- \DivisorFrecuencia|Contador[8]~40\ = CARRY((!\DivisorFrecuencia|Contador[7]~38\) # (!\DivisorFrecuencia|Contador\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DivisorFrecuencia|Contador\(8),
	datad => VCC,
	cin => \DivisorFrecuencia|Contador[7]~38\,
	combout => \DivisorFrecuencia|Contador[8]~39_combout\,
	cout => \DivisorFrecuencia|Contador[8]~40\);

-- Location: LCCOMB_X113_Y34_N24
\DivisorFrecuencia|Contador[9]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \DivisorFrecuencia|Contador[9]~41_combout\ = (\DivisorFrecuencia|Contador\(9) & (\DivisorFrecuencia|Contador[8]~40\ $ (GND))) # (!\DivisorFrecuencia|Contador\(9) & (!\DivisorFrecuencia|Contador[8]~40\ & VCC))
-- \DivisorFrecuencia|Contador[9]~42\ = CARRY((\DivisorFrecuencia|Contador\(9) & !\DivisorFrecuencia|Contador[8]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DivisorFrecuencia|Contador\(9),
	datad => VCC,
	cin => \DivisorFrecuencia|Contador[8]~40\,
	combout => \DivisorFrecuencia|Contador[9]~41_combout\,
	cout => \DivisorFrecuencia|Contador[9]~42\);

-- Location: LCCOMB_X113_Y34_N26
\DivisorFrecuencia|Contador[10]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \DivisorFrecuencia|Contador[10]~43_combout\ = (\DivisorFrecuencia|Contador\(10) & (!\DivisorFrecuencia|Contador[9]~42\)) # (!\DivisorFrecuencia|Contador\(10) & ((\DivisorFrecuencia|Contador[9]~42\) # (GND)))
-- \DivisorFrecuencia|Contador[10]~44\ = CARRY((!\DivisorFrecuencia|Contador[9]~42\) # (!\DivisorFrecuencia|Contador\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DivisorFrecuencia|Contador\(10),
	datad => VCC,
	cin => \DivisorFrecuencia|Contador[9]~42\,
	combout => \DivisorFrecuencia|Contador[10]~43_combout\,
	cout => \DivisorFrecuencia|Contador[10]~44\);

-- Location: LCCOMB_X113_Y34_N28
\DivisorFrecuencia|Contador[11]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \DivisorFrecuencia|Contador[11]~45_combout\ = (\DivisorFrecuencia|Contador\(11) & (\DivisorFrecuencia|Contador[10]~44\ $ (GND))) # (!\DivisorFrecuencia|Contador\(11) & (!\DivisorFrecuencia|Contador[10]~44\ & VCC))
-- \DivisorFrecuencia|Contador[11]~46\ = CARRY((\DivisorFrecuencia|Contador\(11) & !\DivisorFrecuencia|Contador[10]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DivisorFrecuencia|Contador\(11),
	datad => VCC,
	cin => \DivisorFrecuencia|Contador[10]~44\,
	combout => \DivisorFrecuencia|Contador[11]~45_combout\,
	cout => \DivisorFrecuencia|Contador[11]~46\);

-- Location: LCCOMB_X113_Y34_N30
\DivisorFrecuencia|Contador[12]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \DivisorFrecuencia|Contador[12]~47_combout\ = (\DivisorFrecuencia|Contador\(12) & (!\DivisorFrecuencia|Contador[11]~46\)) # (!\DivisorFrecuencia|Contador\(12) & ((\DivisorFrecuencia|Contador[11]~46\) # (GND)))
-- \DivisorFrecuencia|Contador[12]~48\ = CARRY((!\DivisorFrecuencia|Contador[11]~46\) # (!\DivisorFrecuencia|Contador\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DivisorFrecuencia|Contador\(12),
	datad => VCC,
	cin => \DivisorFrecuencia|Contador[11]~46\,
	combout => \DivisorFrecuencia|Contador[12]~47_combout\,
	cout => \DivisorFrecuencia|Contador[12]~48\);

-- Location: LCCOMB_X113_Y33_N0
\DivisorFrecuencia|Contador[13]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \DivisorFrecuencia|Contador[13]~49_combout\ = (\DivisorFrecuencia|Contador\(13) & (\DivisorFrecuencia|Contador[12]~48\ $ (GND))) # (!\DivisorFrecuencia|Contador\(13) & (!\DivisorFrecuencia|Contador[12]~48\ & VCC))
-- \DivisorFrecuencia|Contador[13]~50\ = CARRY((\DivisorFrecuencia|Contador\(13) & !\DivisorFrecuencia|Contador[12]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DivisorFrecuencia|Contador\(13),
	datad => VCC,
	cin => \DivisorFrecuencia|Contador[12]~48\,
	combout => \DivisorFrecuencia|Contador[13]~49_combout\,
	cout => \DivisorFrecuencia|Contador[13]~50\);

-- Location: LCCOMB_X113_Y33_N2
\DivisorFrecuencia|Contador[14]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \DivisorFrecuencia|Contador[14]~51_combout\ = (\DivisorFrecuencia|Contador\(14) & (!\DivisorFrecuencia|Contador[13]~50\)) # (!\DivisorFrecuencia|Contador\(14) & ((\DivisorFrecuencia|Contador[13]~50\) # (GND)))
-- \DivisorFrecuencia|Contador[14]~52\ = CARRY((!\DivisorFrecuencia|Contador[13]~50\) # (!\DivisorFrecuencia|Contador\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DivisorFrecuencia|Contador\(14),
	datad => VCC,
	cin => \DivisorFrecuencia|Contador[13]~50\,
	combout => \DivisorFrecuencia|Contador[14]~51_combout\,
	cout => \DivisorFrecuencia|Contador[14]~52\);

-- Location: LCCOMB_X113_Y33_N4
\DivisorFrecuencia|Contador[15]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \DivisorFrecuencia|Contador[15]~53_combout\ = (\DivisorFrecuencia|Contador\(15) & (\DivisorFrecuencia|Contador[14]~52\ $ (GND))) # (!\DivisorFrecuencia|Contador\(15) & (!\DivisorFrecuencia|Contador[14]~52\ & VCC))
-- \DivisorFrecuencia|Contador[15]~54\ = CARRY((\DivisorFrecuencia|Contador\(15) & !\DivisorFrecuencia|Contador[14]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DivisorFrecuencia|Contador\(15),
	datad => VCC,
	cin => \DivisorFrecuencia|Contador[14]~52\,
	combout => \DivisorFrecuencia|Contador[15]~53_combout\,
	cout => \DivisorFrecuencia|Contador[15]~54\);

-- Location: LCCOMB_X113_Y33_N6
\DivisorFrecuencia|Contador[16]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \DivisorFrecuencia|Contador[16]~55_combout\ = (\DivisorFrecuencia|Contador\(16) & (!\DivisorFrecuencia|Contador[15]~54\)) # (!\DivisorFrecuencia|Contador\(16) & ((\DivisorFrecuencia|Contador[15]~54\) # (GND)))
-- \DivisorFrecuencia|Contador[16]~56\ = CARRY((!\DivisorFrecuencia|Contador[15]~54\) # (!\DivisorFrecuencia|Contador\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DivisorFrecuencia|Contador\(16),
	datad => VCC,
	cin => \DivisorFrecuencia|Contador[15]~54\,
	combout => \DivisorFrecuencia|Contador[16]~55_combout\,
	cout => \DivisorFrecuencia|Contador[16]~56\);

-- Location: LCCOMB_X113_Y33_N8
\DivisorFrecuencia|Contador[17]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \DivisorFrecuencia|Contador[17]~57_combout\ = (\DivisorFrecuencia|Contador\(17) & (\DivisorFrecuencia|Contador[16]~56\ $ (GND))) # (!\DivisorFrecuencia|Contador\(17) & (!\DivisorFrecuencia|Contador[16]~56\ & VCC))
-- \DivisorFrecuencia|Contador[17]~58\ = CARRY((\DivisorFrecuencia|Contador\(17) & !\DivisorFrecuencia|Contador[16]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DivisorFrecuencia|Contador\(17),
	datad => VCC,
	cin => \DivisorFrecuencia|Contador[16]~56\,
	combout => \DivisorFrecuencia|Contador[17]~57_combout\,
	cout => \DivisorFrecuencia|Contador[17]~58\);

-- Location: LCCOMB_X113_Y33_N10
\DivisorFrecuencia|Contador[18]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \DivisorFrecuencia|Contador[18]~59_combout\ = (\DivisorFrecuencia|Contador\(18) & (!\DivisorFrecuencia|Contador[17]~58\)) # (!\DivisorFrecuencia|Contador\(18) & ((\DivisorFrecuencia|Contador[17]~58\) # (GND)))
-- \DivisorFrecuencia|Contador[18]~60\ = CARRY((!\DivisorFrecuencia|Contador[17]~58\) # (!\DivisorFrecuencia|Contador\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DivisorFrecuencia|Contador\(18),
	datad => VCC,
	cin => \DivisorFrecuencia|Contador[17]~58\,
	combout => \DivisorFrecuencia|Contador[18]~59_combout\,
	cout => \DivisorFrecuencia|Contador[18]~60\);

-- Location: LCCOMB_X113_Y33_N12
\DivisorFrecuencia|Contador[19]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \DivisorFrecuencia|Contador[19]~61_combout\ = (\DivisorFrecuencia|Contador\(19) & (\DivisorFrecuencia|Contador[18]~60\ $ (GND))) # (!\DivisorFrecuencia|Contador\(19) & (!\DivisorFrecuencia|Contador[18]~60\ & VCC))
-- \DivisorFrecuencia|Contador[19]~62\ = CARRY((\DivisorFrecuencia|Contador\(19) & !\DivisorFrecuencia|Contador[18]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DivisorFrecuencia|Contador\(19),
	datad => VCC,
	cin => \DivisorFrecuencia|Contador[18]~60\,
	combout => \DivisorFrecuencia|Contador[19]~61_combout\,
	cout => \DivisorFrecuencia|Contador[19]~62\);

-- Location: LCCOMB_X113_Y33_N14
\DivisorFrecuencia|Contador[20]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \DivisorFrecuencia|Contador[20]~63_combout\ = (\DivisorFrecuencia|Contador\(20) & (!\DivisorFrecuencia|Contador[19]~62\)) # (!\DivisorFrecuencia|Contador\(20) & ((\DivisorFrecuencia|Contador[19]~62\) # (GND)))
-- \DivisorFrecuencia|Contador[20]~64\ = CARRY((!\DivisorFrecuencia|Contador[19]~62\) # (!\DivisorFrecuencia|Contador\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DivisorFrecuencia|Contador\(20),
	datad => VCC,
	cin => \DivisorFrecuencia|Contador[19]~62\,
	combout => \DivisorFrecuencia|Contador[20]~63_combout\,
	cout => \DivisorFrecuencia|Contador[20]~64\);

-- Location: LCCOMB_X113_Y33_N16
\DivisorFrecuencia|Contador[21]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \DivisorFrecuencia|Contador[21]~65_combout\ = (\DivisorFrecuencia|Contador\(21) & (\DivisorFrecuencia|Contador[20]~64\ $ (GND))) # (!\DivisorFrecuencia|Contador\(21) & (!\DivisorFrecuencia|Contador[20]~64\ & VCC))
-- \DivisorFrecuencia|Contador[21]~66\ = CARRY((\DivisorFrecuencia|Contador\(21) & !\DivisorFrecuencia|Contador[20]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DivisorFrecuencia|Contador\(21),
	datad => VCC,
	cin => \DivisorFrecuencia|Contador[20]~64\,
	combout => \DivisorFrecuencia|Contador[21]~65_combout\,
	cout => \DivisorFrecuencia|Contador[21]~66\);

-- Location: LCCOMB_X113_Y33_N18
\DivisorFrecuencia|Contador[22]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \DivisorFrecuencia|Contador[22]~67_combout\ = (\DivisorFrecuencia|Contador\(22) & (!\DivisorFrecuencia|Contador[21]~66\)) # (!\DivisorFrecuencia|Contador\(22) & ((\DivisorFrecuencia|Contador[21]~66\) # (GND)))
-- \DivisorFrecuencia|Contador[22]~68\ = CARRY((!\DivisorFrecuencia|Contador[21]~66\) # (!\DivisorFrecuencia|Contador\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DivisorFrecuencia|Contador\(22),
	datad => VCC,
	cin => \DivisorFrecuencia|Contador[21]~66\,
	combout => \DivisorFrecuencia|Contador[22]~67_combout\,
	cout => \DivisorFrecuencia|Contador[22]~68\);

-- Location: LCCOMB_X113_Y33_N20
\DivisorFrecuencia|Contador[23]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \DivisorFrecuencia|Contador[23]~69_combout\ = (\DivisorFrecuencia|Contador\(23) & (\DivisorFrecuencia|Contador[22]~68\ $ (GND))) # (!\DivisorFrecuencia|Contador\(23) & (!\DivisorFrecuencia|Contador[22]~68\ & VCC))
-- \DivisorFrecuencia|Contador[23]~70\ = CARRY((\DivisorFrecuencia|Contador\(23) & !\DivisorFrecuencia|Contador[22]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DivisorFrecuencia|Contador\(23),
	datad => VCC,
	cin => \DivisorFrecuencia|Contador[22]~68\,
	combout => \DivisorFrecuencia|Contador[23]~69_combout\,
	cout => \DivisorFrecuencia|Contador[23]~70\);

-- Location: LCCOMB_X113_Y33_N22
\DivisorFrecuencia|Contador[24]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \DivisorFrecuencia|Contador[24]~71_combout\ = (\DivisorFrecuencia|Contador\(24) & (!\DivisorFrecuencia|Contador[23]~70\)) # (!\DivisorFrecuencia|Contador\(24) & ((\DivisorFrecuencia|Contador[23]~70\) # (GND)))
-- \DivisorFrecuencia|Contador[24]~72\ = CARRY((!\DivisorFrecuencia|Contador[23]~70\) # (!\DivisorFrecuencia|Contador\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DivisorFrecuencia|Contador\(24),
	datad => VCC,
	cin => \DivisorFrecuencia|Contador[23]~70\,
	combout => \DivisorFrecuencia|Contador[24]~71_combout\,
	cout => \DivisorFrecuencia|Contador[24]~72\);

-- Location: LCCOMB_X113_Y33_N24
\DivisorFrecuencia|Contador[25]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \DivisorFrecuencia|Contador[25]~73_combout\ = \DivisorFrecuencia|Contador[24]~72\ $ (!\DivisorFrecuencia|Contador\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \DivisorFrecuencia|Contador\(25),
	cin => \DivisorFrecuencia|Contador[24]~72\,
	combout => \DivisorFrecuencia|Contador[25]~73_combout\);

-- Location: FF_X114_Y33_N9
\DivisorFrecuencia|Salida\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \DivisorFrecuencia|Salida_int~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DivisorFrecuencia|Salida~q\);

-- Location: LCCOMB_X113_Y33_N30
\DivisorFrecuencia|Salida_int~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DivisorFrecuencia|Salida_int~0_combout\ = (\Velocidad[1]~input_o\ & ((\DivisorFrecuencia|Contador\(22)) # ((\Velocidad[2]~input_o\)))) # (!\Velocidad[1]~input_o\ & (((\DivisorFrecuencia|Contador\(24) & !\Velocidad[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Velocidad[1]~input_o\,
	datab => \DivisorFrecuencia|Contador\(22),
	datac => \DivisorFrecuencia|Contador\(24),
	datad => \Velocidad[2]~input_o\,
	combout => \DivisorFrecuencia|Salida_int~0_combout\);

-- Location: LCCOMB_X113_Y33_N28
\DivisorFrecuencia|Salida_int~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DivisorFrecuencia|Salida_int~1_combout\ = (\DivisorFrecuencia|Salida_int~0_combout\ & ((\DivisorFrecuencia|Contador\(18)) # ((!\Velocidad[2]~input_o\)))) # (!\DivisorFrecuencia|Salida_int~0_combout\ & (((\DivisorFrecuencia|Contador\(20) & 
-- \Velocidad[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DivisorFrecuencia|Contador\(18),
	datab => \DivisorFrecuencia|Contador\(20),
	datac => \DivisorFrecuencia|Salida_int~0_combout\,
	datad => \Velocidad[2]~input_o\,
	combout => \DivisorFrecuencia|Salida_int~1_combout\);

-- Location: LCCOMB_X113_Y33_N26
\DivisorFrecuencia|Salida_int~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DivisorFrecuencia|Salida_int~2_combout\ = (\Velocidad[2]~input_o\ & (((\Velocidad[1]~input_o\) # (\DivisorFrecuencia|Contador\(21))))) # (!\Velocidad[2]~input_o\ & (\DivisorFrecuencia|Contador\(25) & (!\Velocidad[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Velocidad[2]~input_o\,
	datab => \DivisorFrecuencia|Contador\(25),
	datac => \Velocidad[1]~input_o\,
	datad => \DivisorFrecuencia|Contador\(21),
	combout => \DivisorFrecuencia|Salida_int~2_combout\);

-- Location: LCCOMB_X114_Y33_N0
\DivisorFrecuencia|Salida_int~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DivisorFrecuencia|Salida_int~3_combout\ = (\DivisorFrecuencia|Salida_int~2_combout\ & ((\DivisorFrecuencia|Contador\(19)) # ((!\Velocidad[1]~input_o\)))) # (!\DivisorFrecuencia|Salida_int~2_combout\ & (((\DivisorFrecuencia|Contador\(23) & 
-- \Velocidad[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DivisorFrecuencia|Contador\(19),
	datab => \DivisorFrecuencia|Contador\(23),
	datac => \DivisorFrecuencia|Salida_int~2_combout\,
	datad => \Velocidad[1]~input_o\,
	combout => \DivisorFrecuencia|Salida_int~3_combout\);

-- Location: LCCOMB_X114_Y33_N8
\DivisorFrecuencia|Salida_int~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DivisorFrecuencia|Salida_int~4_combout\ = (\Velocidad[0]~input_o\ & (\DivisorFrecuencia|Salida_int~1_combout\)) # (!\Velocidad[0]~input_o\ & ((\DivisorFrecuencia|Salida_int~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Velocidad[0]~input_o\,
	datab => \DivisorFrecuencia|Salida_int~1_combout\,
	datad => \DivisorFrecuencia|Salida_int~3_combout\,
	combout => \DivisorFrecuencia|Salida_int~4_combout\);

-- Location: FF_X113_Y34_N5
\DivisorFrecuencia|Contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \DivisorFrecuencia|Contador[0]~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DivisorFrecuencia|Contador\(0));

-- Location: LCCOMB_X113_Y34_N4
\DivisorFrecuencia|Contador[0]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \DivisorFrecuencia|Contador[0]~75_combout\ = !\DivisorFrecuencia|Contador\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DivisorFrecuencia|Contador\(0),
	combout => \DivisorFrecuencia|Contador[0]~75_combout\);

-- Location: IOIBUF_X115_Y15_N8
\Velocidad[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Velocidad(2),
	o => \Velocidad[2]~input_o\);

-- Location: IOIBUF_X115_Y14_N1
\Velocidad[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Velocidad(1),
	o => \Velocidad[1]~input_o\);

-- Location: IOIBUF_X115_Y17_N1
\Velocidad[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Velocidad(0),
	o => \Velocidad[0]~input_o\);

-- Location: IOIBUF_X0_Y36_N15
\Reloj~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Reloj,
	o => \Reloj~input_o\);

-- Location: CLKCTRL_G4
\Reloj~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Reloj~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Reloj~inputclkctrl_outclk\);

-- Location: CLKCTRL_G8
\DivisorFrecuencia|Salida~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \DivisorFrecuencia|Salida~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \DivisorFrecuencia|Salida~clkctrl_outclk\);

-- Location: IOOBUF_X115_Y69_N2
\SegDigit1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Digito1|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \SegDigit1[6]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\SegDigit1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Digito1|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \SegDigit1[5]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\SegDigit1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Digito1|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \SegDigit1[4]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\SegDigit1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Digito1|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \SegDigit1[3]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\SegDigit1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Digito1|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \SegDigit1[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\SegDigit1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Digito1|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \SegDigit1[1]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\SegDigit1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Digito1|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \SegDigit1[0]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\SegDigit2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Digito2|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \SegDigit2[6]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\SegDigit2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Digito2|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \SegDigit2[5]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\SegDigit2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Digito2|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \SegDigit2[4]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\SegDigit2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Digito2|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \SegDigit2[3]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\SegDigit2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Digito2|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \SegDigit2[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\SegDigit2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Digito2|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \SegDigit2[1]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\SegDigit2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Digito2|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \SegDigit2[0]~output_o\);

-- Location: LCCOMB_X113_Y50_N14
\Contador8|Contador[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Contador8|Contador[1]~7_combout\ = (\Contador8|Contador\(0) & (\Contador8|Contador\(1) $ (VCC))) # (!\Contador8|Contador\(0) & (\Contador8|Contador\(1) & VCC))
-- \Contador8|Contador[1]~8\ = CARRY((\Contador8|Contador\(0) & \Contador8|Contador\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Contador8|Contador\(0),
	datab => \Contador8|Contador\(1),
	datad => VCC,
	combout => \Contador8|Contador[1]~7_combout\,
	cout => \Contador8|Contador[1]~8\);

-- Location: IOIBUF_X115_Y13_N8
\Reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Reset,
	o => \Reset~input_o\);

-- Location: FF_X113_Y50_N15
\Contador8|Contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DivisorFrecuencia|Salida~clkctrl_outclk\,
	d => \Contador8|Contador[1]~7_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Contador8|Contador\(1));

-- Location: LCCOMB_X113_Y50_N16
\Contador8|Contador[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Contador8|Contador[2]~9_combout\ = (\Contador8|Contador\(2) & (!\Contador8|Contador[1]~8\)) # (!\Contador8|Contador\(2) & ((\Contador8|Contador[1]~8\) # (GND)))
-- \Contador8|Contador[2]~10\ = CARRY((!\Contador8|Contador[1]~8\) # (!\Contador8|Contador\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Contador8|Contador\(2),
	datad => VCC,
	cin => \Contador8|Contador[1]~8\,
	combout => \Contador8|Contador[2]~9_combout\,
	cout => \Contador8|Contador[2]~10\);

-- Location: FF_X113_Y50_N17
\Contador8|Contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DivisorFrecuencia|Salida~clkctrl_outclk\,
	d => \Contador8|Contador[2]~9_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Contador8|Contador\(2));

-- Location: LCCOMB_X113_Y50_N18
\Contador8|Contador[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Contador8|Contador[3]~11_combout\ = (\Contador8|Contador\(3) & (\Contador8|Contador[2]~10\ $ (GND))) # (!\Contador8|Contador\(3) & (!\Contador8|Contador[2]~10\ & VCC))
-- \Contador8|Contador[3]~12\ = CARRY((\Contador8|Contador\(3) & !\Contador8|Contador[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Contador8|Contador\(3),
	datad => VCC,
	cin => \Contador8|Contador[2]~10\,
	combout => \Contador8|Contador[3]~11_combout\,
	cout => \Contador8|Contador[3]~12\);

-- Location: FF_X113_Y50_N19
\Contador8|Contador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DivisorFrecuencia|Salida~clkctrl_outclk\,
	d => \Contador8|Contador[3]~11_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Contador8|Contador\(3));

-- Location: LCCOMB_X113_Y50_N12
\Contador8|Contador[0]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Contador8|Contador[0]~21_combout\ = !\Contador8|Contador\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Contador8|Contador\(0),
	combout => \Contador8|Contador[0]~21_combout\);

-- Location: FF_X113_Y50_N13
\Contador8|Contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DivisorFrecuencia|Salida~clkctrl_outclk\,
	d => \Contador8|Contador[0]~21_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Contador8|Contador\(0));

-- Location: LCCOMB_X114_Y50_N12
\Digito1|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Digito1|Mux6~0_combout\ = (\Contador8|Contador\(0) & ((\Contador8|Contador\(3)) # (\Contador8|Contador\(1) $ (\Contador8|Contador\(2))))) # (!\Contador8|Contador\(0) & ((\Contador8|Contador\(1)) # (\Contador8|Contador\(3) $ (\Contador8|Contador\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Contador8|Contador\(1),
	datab => \Contador8|Contador\(3),
	datac => \Contador8|Contador\(2),
	datad => \Contador8|Contador\(0),
	combout => \Digito1|Mux6~0_combout\);

-- Location: LCCOMB_X114_Y50_N26
\Digito1|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Digito1|Mux5~0_combout\ = (\Contador8|Contador\(1) & (!\Contador8|Contador\(3) & ((\Contador8|Contador\(0)) # (!\Contador8|Contador\(2))))) # (!\Contador8|Contador\(1) & (\Contador8|Contador\(0) & (\Contador8|Contador\(3) $ (!\Contador8|Contador\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Contador8|Contador\(1),
	datab => \Contador8|Contador\(3),
	datac => \Contador8|Contador\(2),
	datad => \Contador8|Contador\(0),
	combout => \Digito1|Mux5~0_combout\);

-- Location: LCCOMB_X114_Y50_N0
\Digito1|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Digito1|Mux4~0_combout\ = (\Contador8|Contador\(1) & (!\Contador8|Contador\(3) & ((\Contador8|Contador\(0))))) # (!\Contador8|Contador\(1) & ((\Contador8|Contador\(2) & (!\Contador8|Contador\(3))) # (!\Contador8|Contador\(2) & 
-- ((\Contador8|Contador\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Contador8|Contador\(1),
	datab => \Contador8|Contador\(3),
	datac => \Contador8|Contador\(2),
	datad => \Contador8|Contador\(0),
	combout => \Digito1|Mux4~0_combout\);

-- Location: LCCOMB_X114_Y50_N2
\Digito1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Digito1|Mux3~0_combout\ = (\Contador8|Contador\(1) & ((\Contador8|Contador\(2) & ((\Contador8|Contador\(0)))) # (!\Contador8|Contador\(2) & (\Contador8|Contador\(3) & !\Contador8|Contador\(0))))) # (!\Contador8|Contador\(1) & (!\Contador8|Contador\(3) & 
-- (\Contador8|Contador\(2) $ (\Contador8|Contador\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Contador8|Contador\(1),
	datab => \Contador8|Contador\(3),
	datac => \Contador8|Contador\(2),
	datad => \Contador8|Contador\(0),
	combout => \Digito1|Mux3~0_combout\);

-- Location: LCCOMB_X113_Y50_N10
\Digito1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Digito1|Mux2~0_combout\ = (\Contador8|Contador\(2) & (\Contador8|Contador\(3) & ((\Contador8|Contador\(1)) # (!\Contador8|Contador\(0))))) # (!\Contador8|Contador\(2) & (\Contador8|Contador\(1) & (!\Contador8|Contador\(0) & !\Contador8|Contador\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Contador8|Contador\(2),
	datab => \Contador8|Contador\(1),
	datac => \Contador8|Contador\(0),
	datad => \Contador8|Contador\(3),
	combout => \Digito1|Mux2~0_combout\);

-- Location: LCCOMB_X113_Y50_N0
\Digito1|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Digito1|Mux1~0_combout\ = (\Contador8|Contador\(1) & ((\Contador8|Contador\(0) & ((\Contador8|Contador\(3)))) # (!\Contador8|Contador\(0) & (\Contador8|Contador\(2))))) # (!\Contador8|Contador\(1) & (\Contador8|Contador\(2) & (\Contador8|Contador\(0) $ 
-- (\Contador8|Contador\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Contador8|Contador\(2),
	datab => \Contador8|Contador\(1),
	datac => \Contador8|Contador\(0),
	datad => \Contador8|Contador\(3),
	combout => \Digito1|Mux1~0_combout\);

-- Location: LCCOMB_X113_Y50_N2
\Digito1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Digito1|Mux0~0_combout\ = (\Contador8|Contador\(2) & (!\Contador8|Contador\(1) & (\Contador8|Contador\(0) $ (!\Contador8|Contador\(3))))) # (!\Contador8|Contador\(2) & (\Contador8|Contador\(0) & (\Contador8|Contador\(1) $ (!\Contador8|Contador\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Contador8|Contador\(2),
	datab => \Contador8|Contador\(1),
	datac => \Contador8|Contador\(0),
	datad => \Contador8|Contador\(3),
	combout => \Digito1|Mux0~0_combout\);

-- Location: LCCOMB_X113_Y50_N20
\Contador8|Contador[4]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Contador8|Contador[4]~13_combout\ = (\Contador8|Contador\(4) & (!\Contador8|Contador[3]~12\)) # (!\Contador8|Contador\(4) & ((\Contador8|Contador[3]~12\) # (GND)))
-- \Contador8|Contador[4]~14\ = CARRY((!\Contador8|Contador[3]~12\) # (!\Contador8|Contador\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Contador8|Contador\(4),
	datad => VCC,
	cin => \Contador8|Contador[3]~12\,
	combout => \Contador8|Contador[4]~13_combout\,
	cout => \Contador8|Contador[4]~14\);

-- Location: FF_X113_Y50_N21
\Contador8|Contador[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DivisorFrecuencia|Salida~clkctrl_outclk\,
	d => \Contador8|Contador[4]~13_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Contador8|Contador\(4));

-- Location: LCCOMB_X113_Y50_N22
\Contador8|Contador[5]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Contador8|Contador[5]~15_combout\ = (\Contador8|Contador\(5) & (\Contador8|Contador[4]~14\ $ (GND))) # (!\Contador8|Contador\(5) & (!\Contador8|Contador[4]~14\ & VCC))
-- \Contador8|Contador[5]~16\ = CARRY((\Contador8|Contador\(5) & !\Contador8|Contador[4]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Contador8|Contador\(5),
	datad => VCC,
	cin => \Contador8|Contador[4]~14\,
	combout => \Contador8|Contador[5]~15_combout\,
	cout => \Contador8|Contador[5]~16\);

-- Location: FF_X113_Y50_N23
\Contador8|Contador[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DivisorFrecuencia|Salida~clkctrl_outclk\,
	d => \Contador8|Contador[5]~15_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Contador8|Contador\(5));

-- Location: LCCOMB_X113_Y50_N24
\Contador8|Contador[6]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Contador8|Contador[6]~17_combout\ = (\Contador8|Contador\(6) & (!\Contador8|Contador[5]~16\)) # (!\Contador8|Contador\(6) & ((\Contador8|Contador[5]~16\) # (GND)))
-- \Contador8|Contador[6]~18\ = CARRY((!\Contador8|Contador[5]~16\) # (!\Contador8|Contador\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Contador8|Contador\(6),
	datad => VCC,
	cin => \Contador8|Contador[5]~16\,
	combout => \Contador8|Contador[6]~17_combout\,
	cout => \Contador8|Contador[6]~18\);

-- Location: FF_X113_Y50_N25
\Contador8|Contador[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DivisorFrecuencia|Salida~clkctrl_outclk\,
	d => \Contador8|Contador[6]~17_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Contador8|Contador\(6));

-- Location: LCCOMB_X113_Y50_N26
\Contador8|Contador[7]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Contador8|Contador[7]~19_combout\ = \Contador8|Contador\(7) $ (!\Contador8|Contador[6]~18\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Contador8|Contador\(7),
	cin => \Contador8|Contador[6]~18\,
	combout => \Contador8|Contador[7]~19_combout\);

-- Location: FF_X113_Y50_N27
\Contador8|Contador[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DivisorFrecuencia|Salida~clkctrl_outclk\,
	d => \Contador8|Contador[7]~19_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Contador8|Contador\(7));

-- Location: LCCOMB_X114_Y30_N28
\Digito2|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Digito2|Mux6~0_combout\ = (\Contador8|Contador\(4) & ((\Contador8|Contador\(7)) # (\Contador8|Contador\(5) $ (\Contador8|Contador\(6))))) # (!\Contador8|Contador\(4) & ((\Contador8|Contador\(5)) # (\Contador8|Contador\(6) $ (\Contador8|Contador\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Contador8|Contador\(5),
	datab => \Contador8|Contador\(6),
	datac => \Contador8|Contador\(7),
	datad => \Contador8|Contador\(4),
	combout => \Digito2|Mux6~0_combout\);

-- Location: LCCOMB_X114_Y30_N22
\Digito2|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Digito2|Mux5~0_combout\ = (\Contador8|Contador\(5) & (!\Contador8|Contador\(7) & ((\Contador8|Contador\(4)) # (!\Contador8|Contador\(6))))) # (!\Contador8|Contador\(5) & (\Contador8|Contador\(4) & (\Contador8|Contador\(6) $ (!\Contador8|Contador\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Contador8|Contador\(5),
	datab => \Contador8|Contador\(6),
	datac => \Contador8|Contador\(7),
	datad => \Contador8|Contador\(4),
	combout => \Digito2|Mux5~0_combout\);

-- Location: LCCOMB_X114_Y30_N20
\Digito2|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Digito2|Mux4~0_combout\ = (\Contador8|Contador\(5) & (((!\Contador8|Contador\(7) & \Contador8|Contador\(4))))) # (!\Contador8|Contador\(5) & ((\Contador8|Contador\(6) & (!\Contador8|Contador\(7))) # (!\Contador8|Contador\(6) & 
-- ((\Contador8|Contador\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Contador8|Contador\(5),
	datab => \Contador8|Contador\(6),
	datac => \Contador8|Contador\(7),
	datad => \Contador8|Contador\(4),
	combout => \Digito2|Mux4~0_combout\);

-- Location: LCCOMB_X114_Y30_N2
\Digito2|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Digito2|Mux3~0_combout\ = (\Contador8|Contador\(5) & ((\Contador8|Contador\(6) & ((\Contador8|Contador\(4)))) # (!\Contador8|Contador\(6) & (\Contador8|Contador\(7) & !\Contador8|Contador\(4))))) # (!\Contador8|Contador\(5) & (!\Contador8|Contador\(7) & 
-- (\Contador8|Contador\(6) $ (\Contador8|Contador\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Contador8|Contador\(5),
	datab => \Contador8|Contador\(6),
	datac => \Contador8|Contador\(7),
	datad => \Contador8|Contador\(4),
	combout => \Digito2|Mux3~0_combout\);

-- Location: LCCOMB_X114_Y30_N12
\Digito2|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Digito2|Mux2~0_combout\ = (\Contador8|Contador\(6) & (\Contador8|Contador\(7) & ((\Contador8|Contador\(5)) # (!\Contador8|Contador\(4))))) # (!\Contador8|Contador\(6) & (\Contador8|Contador\(5) & (!\Contador8|Contador\(7) & !\Contador8|Contador\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Contador8|Contador\(5),
	datab => \Contador8|Contador\(6),
	datac => \Contador8|Contador\(7),
	datad => \Contador8|Contador\(4),
	combout => \Digito2|Mux2~0_combout\);

-- Location: LCCOMB_X114_Y30_N10
\Digito2|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Digito2|Mux1~0_combout\ = (\Contador8|Contador\(5) & ((\Contador8|Contador\(4) & ((\Contador8|Contador\(7)))) # (!\Contador8|Contador\(4) & (\Contador8|Contador\(6))))) # (!\Contador8|Contador\(5) & (\Contador8|Contador\(6) & (\Contador8|Contador\(7) $ 
-- (\Contador8|Contador\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Contador8|Contador\(5),
	datab => \Contador8|Contador\(6),
	datac => \Contador8|Contador\(7),
	datad => \Contador8|Contador\(4),
	combout => \Digito2|Mux1~0_combout\);

-- Location: LCCOMB_X114_Y30_N0
\Digito2|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Digito2|Mux0~0_combout\ = (\Contador8|Contador\(6) & (!\Contador8|Contador\(5) & (\Contador8|Contador\(7) $ (!\Contador8|Contador\(4))))) # (!\Contador8|Contador\(6) & (\Contador8|Contador\(4) & (\Contador8|Contador\(5) $ (!\Contador8|Contador\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Contador8|Contador\(5),
	datab => \Contador8|Contador\(6),
	datac => \Contador8|Contador\(7),
	datad => \Contador8|Contador\(4),
	combout => \Digito2|Mux0~0_combout\);

ww_SegDigit1(6) <= \SegDigit1[6]~output_o\;

ww_SegDigit1(5) <= \SegDigit1[5]~output_o\;

ww_SegDigit1(4) <= \SegDigit1[4]~output_o\;

ww_SegDigit1(3) <= \SegDigit1[3]~output_o\;

ww_SegDigit1(2) <= \SegDigit1[2]~output_o\;

ww_SegDigit1(1) <= \SegDigit1[1]~output_o\;

ww_SegDigit1(0) <= \SegDigit1[0]~output_o\;

ww_SegDigit2(6) <= \SegDigit2[6]~output_o\;

ww_SegDigit2(5) <= \SegDigit2[5]~output_o\;

ww_SegDigit2(4) <= \SegDigit2[4]~output_o\;

ww_SegDigit2(3) <= \SegDigit2[3]~output_o\;

ww_SegDigit2(2) <= \SegDigit2[2]~output_o\;

ww_SegDigit2(1) <= \SegDigit2[1]~output_o\;

ww_SegDigit2(0) <= \SegDigit2[0]~output_o\;
END structure;


