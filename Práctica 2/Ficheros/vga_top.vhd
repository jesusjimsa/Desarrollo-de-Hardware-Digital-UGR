-- Descripcion que visualiza franjas de colores en un monitor VGA
--
-- Basado en ejemplo de Hamblen, J.O., Hall T.S., Furman, M.D.:
-- Rapid Prototyping of Digital Systems : SOPC Edition, Springer 2008.
-- (Capitulo 10)


LIBRARY IEEE;
USE  IEEE.STD_LOGIC_1164.all;
USE IEEE.STD_LOGIC_ARITH.all;
USE  IEEE.STD_LOGIC_UNSIGNED.all;

LIBRARY lpm;
USE lpm.lpm_components.ALL;


ENTITY vga_top IS

PORT(
	CLOCK_50			     : IN STD_LOGIC;
	VGA_R		: OUT STD_LOGIC_vector(0 to 7);
	VGA_G		: OUT STD_LOGIC_vector(0 to 7);
	VGA_B		: OUT STD_LOGIC_vector(0 to 7);
	VGA_BLANK_N		: OUT STD_LOGIC;
	VGA_HS		: OUT STD_LOGIC;
	VGA_VS		: OUT STD_LOGIC;
	VGA_CLK		: OUT STD_LOGIC;
	UP_IZQ		: IN STD_LOGIC;	-- PIN_R24
	DOWN_IZQ		: IN STD_LOGIC;	-- PIN_N21
	UP_DER		: IN STD_LOGIC;	-- PIN_M21
	DOWN_DER		: IN STD_LOGIC	-- PIN_M23
);

END vga_top;

ARCHITECTURE funcional OF vga_top IS

	COMPONENT vga_PLL
		PORT(
			inclk0 : IN STD_LOGIC  := '0';
			c0	: OUT STD_LOGIC
		);
	END COMPONENT;

	COMPONENT controlador_vga_640_x_480_60
		PORT(
			clock_25		: 	IN	STD_LOGIC;
			R,G,B       : 	IN	STD_LOGIC;
			VGA_R, VGA_G, VGA_B		:	OUT	STD_LOGIC;
			vga_blank_N	:	OUT	STD_LOGIC;
			vga_hs		:	OUT   STD_LOGIC;
			vga_vs		:	OUT   STD_LOGIC;
			vga_clk		:	OUT   STD_LOGIC;
			pixel_y		:	OUT   STD_LOGIC_VECTOR(9 DOWNTO 0);
			pixel_x		:	OUT	STD_LOGIC_VECTOR(9 DOWNTO 0)
		);
	END COMPONENT;

	COMPONENT bola IS
		PORT(
			Red_bola, Green_bola, Blue_bola : OUT std_logic;
			vs_bola : IN std_logic;
			pixel_Y_bola, pixel_X_bola : IN std_logic_vector(9 downto 0);
			Red_pala_izq, Green_pala_izq, Blue_pala_izq : OUT std_logic;
			vs_pala_izq : IN std_logic;
			pixel_Y_pala_izq, pixel_X_pala_izq : IN std_logic_vector(9 downto 0);
			Pala_arriba_izq, Pala_abajo_izq : IN std_logic;
			Red_pala_der, Green_pala_der, Blue_pala_der : OUT std_logic;
			vs_pala_der : IN std_logic;
			pixel_Y_pala_der, pixel_X_pala_der : IN std_logic_vector(9 downto 0);
			Pala_arriba_der, Pala_abajo_der : IN std_logic;
			Green_linea, Red_linea : OUT std_logic;
			pixel_Y_linea, pixel_X_linea : IN std_logic_vector(9 downto 0)
		);
	END COMPONENT;

SIGNAL clock_25 : STD_LOGIC;
SIGNAL R_Data, G_Data, B_Data : STD_LOGIC;
SIGNAL R_Bola, G_Bola, B_Bola : STD_LOGIC;
SIGNAL R_Pala_izq, G_Pala_izq, B_Pala_izq : STD_LOGIC;
SIGNAL R_Pala_der, G_Pala_der, B_Pala_der : STD_LOGIC;
SIGNAL G_Linea, R_linea : STD_LOGIC;
SIGNAL pixel_x, pixel_y	: STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL vs_top : STD_LOGIC;

BEGIN

VGA_VS <= vs_top;

-- PLL para generar el reloj de 25 MHz
PLL: vga_pll PORT MAP (
		inclk0 => clock_50,
		c0 => clock_25
);

-- Controlador de la VGA
VGA:  controlador_vga_640_x_480_60 PORT MAP (
		clock_25	=> clock_25,
		R => R_Bola or R_Pala_der or R_Linea,
		g => G_Bola or G_Pala_izq or G_Linea,
		b => B_Bola,
		vga_r	=> vga_R(7),
		vga_g => vga_g(7),
		vga_b => vga_b(7),
		vga_blank_n => vga_blank_n,
		vga_hs => vga_hs,
		vga_vs => vs_top,
		vga_clk	=> vga_clk,
		pixel_y => pixel_y,
		pixel_x => pixel_x
);

-- Controlador de la bola
BALL: bola PORT MAP(
		Red_bola => R_Bola,
		Green_bola => G_Bola,
		Blue_bola => B_Bola,
		vs_bola => vs_top,
		pixel_Y_bola => pixel_y,
		pixel_X_bola => pixel_x,
		---------------------------
		Red_pala_izq => R_Pala_izq,
		Green_pala_izq => G_Pala_izq,
		Blue_pala_izq => B_Pala_izq,
		vs_pala_izq => vs_top,
		pixel_Y_pala_izq => pixel_y,
		pixel_X_pala_izq => pixel_x,
		Pala_abajo_izq => Down_izq,
		Pala_arriba_izq => Up_izq,
		---------------------------
		Red_pala_der => R_Pala_der,
		Green_pala_der => G_Pala_der,
		Blue_pala_der => B_Pala_der,
		vs_pala_der => vs_top,
		pixel_Y_pala_der => pixel_y,
		pixel_X_pala_der => pixel_x,
		Pala_abajo_der => Down_der,
		Pala_arriba_der => Up_der,
		---------------------------
		Green_linea => G_Linea,
		Red_linea => R_Linea,
		pixel_Y_linea => pixel_y,
		pixel_X_linea => pixel_x
);

END funcional;
