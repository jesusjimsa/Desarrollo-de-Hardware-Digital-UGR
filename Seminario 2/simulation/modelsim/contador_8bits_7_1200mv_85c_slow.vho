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

-- DATE "02/26/2019 18:04:19"

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

ENTITY 	contador_8bits IS
    PORT (
	Reloj : IN std_logic;
	Reset : IN std_logic;
	Salida : OUT std_logic_vector(7 DOWNTO 0)
	);
END contador_8bits;

-- Design Ports Information
-- Salida[0]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Salida[1]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Salida[2]	=>  Location: PIN_AD22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Salida[3]	=>  Location: PIN_AG26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Salida[4]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Salida[5]	=>  Location: PIN_AH26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Salida[6]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Salida[7]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reloj	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reset	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF contador_8bits IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Reloj : std_logic;
SIGNAL ww_Reset : std_logic;
SIGNAL ww_Salida : std_logic_vector(7 DOWNTO 0);
SIGNAL \Reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Reloj~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Salida[0]~output_o\ : std_logic;
SIGNAL \Salida[1]~output_o\ : std_logic;
SIGNAL \Salida[2]~output_o\ : std_logic;
SIGNAL \Salida[3]~output_o\ : std_logic;
SIGNAL \Salida[4]~output_o\ : std_logic;
SIGNAL \Salida[5]~output_o\ : std_logic;
SIGNAL \Salida[6]~output_o\ : std_logic;
SIGNAL \Salida[7]~output_o\ : std_logic;
SIGNAL \Reloj~input_o\ : std_logic;
SIGNAL \Reloj~inputclkctrl_outclk\ : std_logic;
SIGNAL \Contador[0]~21_combout\ : std_logic;
SIGNAL \Reset~input_o\ : std_logic;
SIGNAL \Reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \Contador[1]~7_combout\ : std_logic;
SIGNAL \Contador[1]~8\ : std_logic;
SIGNAL \Contador[2]~9_combout\ : std_logic;
SIGNAL \Contador[2]~10\ : std_logic;
SIGNAL \Contador[3]~11_combout\ : std_logic;
SIGNAL \Contador[3]~12\ : std_logic;
SIGNAL \Contador[4]~13_combout\ : std_logic;
SIGNAL \Contador[4]~14\ : std_logic;
SIGNAL \Contador[5]~15_combout\ : std_logic;
SIGNAL \Contador[5]~16\ : std_logic;
SIGNAL \Contador[6]~17_combout\ : std_logic;
SIGNAL \Contador[6]~18\ : std_logic;
SIGNAL \Contador[7]~19_combout\ : std_logic;
SIGNAL Contador : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_Reset~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_Reloj <= Reloj;
ww_Reset <= Reset;
Salida <= ww_Salida;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Reset~input_o\);

\Reloj~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Reloj~input_o\);
\ALT_INV_Reset~inputclkctrl_outclk\ <= NOT \Reset~inputclkctrl_outclk\;

-- Location: IOOBUF_X115_Y4_N16
\Salida[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Contador(0),
	devoe => ww_devoe,
	o => \Salida[0]~output_o\);

-- Location: IOOBUF_X115_Y5_N16
\Salida[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Contador(1),
	devoe => ww_devoe,
	o => \Salida[1]~output_o\);

-- Location: IOOBUF_X111_Y0_N9
\Salida[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Contador(2),
	devoe => ww_devoe,
	o => \Salida[2]~output_o\);

-- Location: IOOBUF_X113_Y0_N9
\Salida[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Contador(3),
	devoe => ww_devoe,
	o => \Salida[3]~output_o\);

-- Location: IOOBUF_X115_Y6_N16
\Salida[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Contador(4),
	devoe => ww_devoe,
	o => \Salida[4]~output_o\);

-- Location: IOOBUF_X113_Y0_N2
\Salida[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Contador(5),
	devoe => ww_devoe,
	o => \Salida[5]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\Salida[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Contador(6),
	devoe => ww_devoe,
	o => \Salida[6]~output_o\);

-- Location: IOOBUF_X115_Y4_N23
\Salida[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Contador(7),
	devoe => ww_devoe,
	o => \Salida[7]~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\Reloj~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Reloj,
	o => \Reloj~input_o\);

-- Location: CLKCTRL_G2
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

-- Location: LCCOMB_X114_Y4_N12
\Contador[0]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Contador[0]~21_combout\ = !Contador(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => Contador(0),
	combout => \Contador[0]~21_combout\);

-- Location: IOIBUF_X0_Y36_N15
\Reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Reset,
	o => \Reset~input_o\);

-- Location: CLKCTRL_G4
\Reset~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Reset~inputclkctrl_outclk\);

-- Location: FF_X114_Y4_N13
\Contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Contador[0]~21_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Contador(0));

-- Location: LCCOMB_X114_Y4_N14
\Contador[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Contador[1]~7_combout\ = (Contador(0) & (Contador(1) $ (VCC))) # (!Contador(0) & (Contador(1) & VCC))
-- \Contador[1]~8\ = CARRY((Contador(0) & Contador(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Contador(0),
	datab => Contador(1),
	datad => VCC,
	combout => \Contador[1]~7_combout\,
	cout => \Contador[1]~8\);

-- Location: FF_X114_Y4_N15
\Contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Contador[1]~7_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Contador(1));

-- Location: LCCOMB_X114_Y4_N16
\Contador[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Contador[2]~9_combout\ = (Contador(2) & (!\Contador[1]~8\)) # (!Contador(2) & ((\Contador[1]~8\) # (GND)))
-- \Contador[2]~10\ = CARRY((!\Contador[1]~8\) # (!Contador(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Contador(2),
	datad => VCC,
	cin => \Contador[1]~8\,
	combout => \Contador[2]~9_combout\,
	cout => \Contador[2]~10\);

-- Location: FF_X114_Y4_N17
\Contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Contador[2]~9_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Contador(2));

-- Location: LCCOMB_X114_Y4_N18
\Contador[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Contador[3]~11_combout\ = (Contador(3) & (\Contador[2]~10\ $ (GND))) # (!Contador(3) & (!\Contador[2]~10\ & VCC))
-- \Contador[3]~12\ = CARRY((Contador(3) & !\Contador[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Contador(3),
	datad => VCC,
	cin => \Contador[2]~10\,
	combout => \Contador[3]~11_combout\,
	cout => \Contador[3]~12\);

-- Location: FF_X114_Y4_N19
\Contador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Contador[3]~11_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Contador(3));

-- Location: LCCOMB_X114_Y4_N20
\Contador[4]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Contador[4]~13_combout\ = (Contador(4) & (!\Contador[3]~12\)) # (!Contador(4) & ((\Contador[3]~12\) # (GND)))
-- \Contador[4]~14\ = CARRY((!\Contador[3]~12\) # (!Contador(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Contador(4),
	datad => VCC,
	cin => \Contador[3]~12\,
	combout => \Contador[4]~13_combout\,
	cout => \Contador[4]~14\);

-- Location: FF_X114_Y4_N21
\Contador[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Contador[4]~13_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Contador(4));

-- Location: LCCOMB_X114_Y4_N22
\Contador[5]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Contador[5]~15_combout\ = (Contador(5) & (\Contador[4]~14\ $ (GND))) # (!Contador(5) & (!\Contador[4]~14\ & VCC))
-- \Contador[5]~16\ = CARRY((Contador(5) & !\Contador[4]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Contador(5),
	datad => VCC,
	cin => \Contador[4]~14\,
	combout => \Contador[5]~15_combout\,
	cout => \Contador[5]~16\);

-- Location: FF_X114_Y4_N23
\Contador[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Contador[5]~15_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Contador(5));

-- Location: LCCOMB_X114_Y4_N24
\Contador[6]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Contador[6]~17_combout\ = (Contador(6) & (!\Contador[5]~16\)) # (!Contador(6) & ((\Contador[5]~16\) # (GND)))
-- \Contador[6]~18\ = CARRY((!\Contador[5]~16\) # (!Contador(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Contador(6),
	datad => VCC,
	cin => \Contador[5]~16\,
	combout => \Contador[6]~17_combout\,
	cout => \Contador[6]~18\);

-- Location: FF_X114_Y4_N25
\Contador[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Contador[6]~17_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Contador(6));

-- Location: LCCOMB_X114_Y4_N26
\Contador[7]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Contador[7]~19_combout\ = Contador(7) $ (!\Contador[6]~18\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Contador(7),
	cin => \Contador[6]~18\,
	combout => \Contador[7]~19_combout\);

-- Location: FF_X114_Y4_N27
\Contador[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Contador[7]~19_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Contador(7));

ww_Salida(0) <= \Salida[0]~output_o\;

ww_Salida(1) <= \Salida[1]~output_o\;

ww_Salida(2) <= \Salida[2]~output_o\;

ww_Salida(3) <= \Salida[3]~output_o\;

ww_Salida(4) <= \Salida[4]~output_o\;

ww_Salida(5) <= \Salida[5]~output_o\;

ww_Salida(6) <= \Salida[6]~output_o\;

ww_Salida(7) <= \Salida[7]~output_o\;
END structure;


