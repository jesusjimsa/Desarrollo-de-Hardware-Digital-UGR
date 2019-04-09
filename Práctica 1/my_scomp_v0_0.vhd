
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY my_scomp_v0_0 IS
PORT( reloj : IN STD_LOGIC;
		reset : IN STD_LOGIC;
		IR_out: out std_logic_vector(15 downto 0);
		AC_out: out std_logic_vector(15 downto 0);
		PC_out : out std_logic_vector(7 downto 0)
		);
END my_scomp_v0_0;

ARCHITECTURE rtl OF my_scomp_v0_0 IS

	SIGNAL MEMq, MEMdata: STD_LOGIC_VECTOR(15 DOWNTO 0 );
	SIGNAL MEMadr : STD_LOGIC_VECTOR( 7 DOWNTO 0 );
	SIGNAL MEMwe : STD_LOGIC;

	-- Declaracion del IP core ram_256_x_16
	--
	-- 	Memoria RAM de un puerto, 256 palabras, 16 bits por palabra,
	-- 	Entradas de datos, direcciones y control de memoria REGISTRADAS,
	-- 	Salida NO REGISTRADA
	-- 	Fichero de inicializacion: programa.mif

	component IP_RAM_256_x_16
		PORT
		(
			address		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
			clock		: IN STD_LOGIC  := '1';
			data		: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
			wren		: IN STD_LOGIC ;
			q		: OUT STD_LOGIC_VECTOR (15 DOWNTO 0)
		);
	end component;

	-- Declaracion del componente con versión inicial del procesador
	--

	COMPONENT procesador_v1_1 is
	PORT(
		clock : IN STD_LOGIC;
		reset : IN STD_LOGIC;
		AC_out : out std_logic_vector(15 downto 0);
		IR_out : out std_logic_vector(15 downto 0);
		PC_out : out std_logic_vector(7 downto 0);
		MEMq : in std_logic_vector(15 downto 0);
		MEMdata: out std_logic_vector(15 downto 0);
		MEMwe : out std_logic;
		MEMadr : out std_logic_vector(7 downto 0);
		IO_input : in std_logic_vector(7 downto 0);
		IO_output : out std_logic_vector(7 downto 0)
	);
	END COMPONENT;


	BEGIN

	-- Instancia denominada MEM del IP core ram_256_x_16
	--

	MEM: IP_RAM_256_x_16 PORT MAP
	(
		address => MEMadr,
		clock => reloj,
		data => MEMdata,
		wren => MEMwe,
		q => MEMq
	);

	-- Instancia denominada PROC de la version inicial del procesador
	--

	PROC: procesador_v1_1 PORT MAP (
		clock => reloj,
		reset => reset,
		AC_out => AC_out,
		IR_out => IR_out,
		PC_out => PC_out,
		MEMq => MEMq,
		MEMdata => MEMdata,
		MEMwe => MEMwe,
		MEMadr => MEMadr,
		IO_input => IO_input,
		IO_output => IO_output
	);



END rtl;