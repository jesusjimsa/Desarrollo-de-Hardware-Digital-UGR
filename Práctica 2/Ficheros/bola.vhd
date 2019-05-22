-- Descripcion de una bola cuadrada que se mueve hacia arriba y hacia abajo,
-- respetando los margenes superior e inferior de la pantalla.
--
-- Basado en ejemplo de Hamblen, J.O., Hall T.S., Furman, M.D.:
-- Rapid Prototyping of Digital Systems : SOPC Edition, Springer 2008.
-- (Capitulo 10)


LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE IEEE.STD_LOGIC_ARITH.all;
USE IEEE.STD_LOGIC_UNSIGNED.all;
LIBRARY lpm;
USE lpm.lpm_components.ALL;

ENTITY bola IS
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
END bola;

architecture funcional of bola is
	-- Bola
	SIGNAL Bola_on : std_logic;
	SIGNAL Desplaza_Bola_X, Desplaza_Bola_Y: STD_LOGIC_VECTOR(9 DOWNTO 0);
	SIGNAL Bola_X, Bola_Y  : std_logic_vector(9 DOWNTO 0);

	CONSTANT Size_bola: std_logic_vector(9 DOWNTO 0):= CONV_STD_LOGIC_VECTOR(8,10);
	
	-- Pala izquierda
	SIGNAL Pala_on_izq : std_logic;
	SIGNAL Desplaza_Pala_X_izq, Desplaza_Pala_Y_izq: STD_LOGIC_VECTOR(9 DOWNTO 0);
	SIGNAL Pala_X_izq, Pala_Y_izq  : std_logic_vector(9 DOWNTO 0);

	CONSTANT Size_X_pala_izq: std_logic_vector(9 DOWNTO 0):= CONV_STD_LOGIC_VECTOR(3,10);
	CONSTANT Size_Y_pala_izq: std_logic_vector(9 DOWNTO 0):= CONV_STD_LOGIC_VECTOR(30,10);
	
	-- Pala derecha
	SIGNAL Pala_on_der : std_logic;
	SIGNAL Desplaza_Pala_X_der, Desplaza_Pala_Y_der: STD_LOGIC_VECTOR(9 DOWNTO 0);
	SIGNAL Pala_X_der, Pala_Y_der  : std_logic_vector(9 DOWNTO 0);

	CONSTANT Size_X_pala_der: std_logic_vector(9 DOWNTO 0):= CONV_STD_LOGIC_VECTOR(3,10);
	CONSTANT Size_Y_pala_der: std_logic_vector(9 DOWNTO 0):= CONV_STD_LOGIC_VECTOR(30,10);
	
	--Linea
	SIGNAL Linea_on : std_logic;
	SIGNAL Linea_X, Linea_Y  : std_logic_vector(9 DOWNTO 0);

	CONSTANT Size_X_linea: std_logic_vector(9 DOWNTO 0):= CONV_STD_LOGIC_VECTOR(1,10);
	CONSTANT Size_Y_linea: std_logic_vector(9 DOWNTO 0):= CONV_STD_LOGIC_VECTOR(480,10);
	

BEGIN

Red_bola <= Bola_on;
Green_bola <= Bola_on;
Blue_bola <= Bola_on;

Red_pala_izq <= Pala_on_izq;
Green_pala_izq <= Pala_on_izq;
Blue_pala_izq <= Pala_on_izq;

Red_pala_der <= Pala_on_der;
Green_pala_der <= Pala_on_der;
Blue_pala_der <= Pala_on_der;

Green_linea <= Linea_on;
Red_linea <= Linea_on;

-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------
-------------------------------------- Bola
-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------

Dibujar_Bola: Process (Bola_Y, pixel_X_bola, pixel_Y_bola)
BEGIN
	-- Chequear coordenadas X e Y para identificar el area de la bola
	-- Poner Bola_on a '1' para visualizar la bola
	IF (Bola_X <= pixel_X_bola + Size_bola) AND (Bola_X + Size_bola >= pixel_X_bola) AND
		(Bola_Y <= pixel_Y_bola + Size_bola) AND (Bola_Y + Size_bola >= pixel_Y_bola ) THEN
		
		Bola_on <= '1';
	ELSE
		Bola_on <= '0';
	END IF;
END process Dibujar_Bola;

Mover_Bola: PROCESS (vs_bola)
BEGIN
	-- Actualizar la posicion de la bola en cada refresco de pantalla
	IF vs_bola'event and vs_bola = '1' THEN
			-- Detectar los bordes superior e inferior de la pantalla
			IF Bola_Y >= CONV_STD_LOGIC_VECTOR(479,10) - Size_bola THEN
				Desplaza_Bola_Y <= CONV_STD_LOGIC_VECTOR(-2,10);
			ELSIF  Bola_Y <= Size_bola  THEN
				Desplaza_Bola_Y <= CONV_STD_LOGIC_VECTOR(2,10);
			END IF;
			
			-- Calcular la siguiente posicion de la bola
			Bola_Y <= Bola_Y + Desplaza_Bola_Y;
			
			-- Detectar los bordes derecho e izquierda de la pantalla
			IF Bola_Y + Size_bola >= Pala_Y_izq - Size_Y_pala_izq AND
				Bola_Y <= Pala_Y_izq + Size_Y_pala_izq + Size_bola AND
				Bola_X <= Pala_X_izq + Size_X_pala_izq + Size_bola THEN
				
				Desplaza_Bola_X <= CONV_STD_LOGIC_VECTOR(2,10);
			ELSIF Bola_Y >= Pala_Y_der - Size_Y_pala_der + Size_bola AND
				Bola_Y <= Pala_Y_der + Size_Y_pala_der + Size_bola AND
				Bola_X + Size_bola >= Pala_X_der - Size_X_pala_der THEN
				
				Desplaza_Bola_X <= CONV_STD_LOGIC_VECTOR(-2,10);
			ELSIF Bola_X  >= CONV_STD_LOGIC_VECTOR(639,10) - Size_bola THEN
				Desplaza_Bola_X <= CONV_STD_LOGIC_VECTOR(-2,10);
			ELSIF  Bola_X <= Size_bola  THEN
				Desplaza_Bola_X <= CONV_STD_LOGIC_VECTOR(2,10);
			END IF;
			
			-- Calcular la siguiente posicion de la bola
			Bola_X <= Bola_X + Desplaza_Bola_X;
	END IF;
END process Mover_Bola;

-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------
-------------------------------------- Pala izquierda
-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------

Dibujar_Pala_izq: Process (Pala_Y_izq, pixel_X_pala_izq, pixel_Y_pala_izq)
BEGIN
	-- Chequear coordenadas X e Y para identificar el area de la pala
	-- Poner pala_on a '1' para visualizar la pala
	IF (Pala_X_izq <= pixel_X_pala_izq + Size_X_pala_izq) AND (Pala_X_izq + Size_X_pala_izq >= pixel_X_pala_izq) AND
		(Pala_Y_izq <= pixel_Y_pala_izq + Size_Y_pala_izq) AND (Pala_Y_izq + Size_Y_pala_izq >= pixel_Y_pala_izq) THEN
		
		Pala_on_izq <= '1';
	ELSE
		Pala_on_izq <= '0';
	END IF;
END process Dibujar_Pala_izq;

Mover_Pala_izq: PROCESS (vs_pala_izq)
BEGIN
	-- Colocar la pala en uno de los extremos de la pantalla
	Pala_X_izq <= CONV_STD_LOGIC_VECTOR(20,10);
	
	-- Actualizar la posicion de la pala en cada refresco de pantalla
	IF vs_pala_izq'event and vs_pala_izq = '1' THEN
			-- Detectar los bordes superior e inferior de la pantalla
			-- Un 1 en Pala_abajo o Pala_arriba significa que el botón está siendo pulsado
			IF Pala_arriba_izq = '0' AND Pala_Y_izq >= Size_Y_pala_izq THEN
				Desplaza_Pala_Y_izq <= CONV_STD_LOGIC_VECTOR(-3,10);
			ELSIF Pala_abajo_izq = '0' AND Pala_Y_izq  <= CONV_STD_LOGIC_VECTOR(476,10) - Size_Y_pala_izq THEN
				Desplaza_Pala_Y_izq <= CONV_STD_LOGIC_VECTOR(3,10);
			ELSE
				Desplaza_Pala_Y_izq <= CONV_STD_LOGIC_VECTOR(0,10);
			END IF;
			
			-- Calcular la siguiente posicion de la pala
			Pala_Y_izq <= Pala_Y_izq + Desplaza_Pala_Y_izq;
	END IF;
END process Mover_Pala_izq;

-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------
-------------------------------------- Pala derecha
-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------

Dibujar_Pala_der: Process (Pala_Y_der, pixel_X_pala_der, pixel_Y_pala_der)
BEGIN
	-- Chequear coordenadas X e Y para identificar el area de la pala
	-- Poner pala_on a '1' para visualizar la pala
	IF (Pala_X_der <= pixel_X_pala_der + Size_X_pala_der) AND (Pala_X_der + Size_X_pala_der >= pixel_X_pala_der) AND
		(Pala_Y_der <= pixel_Y_pala_der + Size_Y_pala_der) AND (Pala_Y_der + Size_Y_pala_der >= pixel_Y_pala_der) THEN
		
		Pala_on_der <= '1';
	ELSE
		Pala_on_der <= '0';
	END IF;
END process Dibujar_Pala_der;

Mover_Pala_der: PROCESS (vs_pala_der)
BEGIN
	-- Colocar la pala en uno de los extremos de la pantalla
	Pala_X_der <= CONV_STD_LOGIC_VECTOR(620,10);
	
	-- Actualizar la posicion de la pala en cada refresco de pantalla
	IF vs_pala_der'event and vs_pala_der = '1' THEN
			-- Detectar los bordes superior e inferior de la pantalla
			-- Un 1 en Pala_abajo o Pala_arriba significa que el botón está siendo pulsado
			IF Pala_arriba_der = '0' AND Pala_Y_der >= Size_Y_pala_der THEN
				Desplaza_Pala_Y_der <= CONV_STD_LOGIC_VECTOR(-3,10);
			ELSIF Pala_abajo_der = '0' AND Pala_Y_der  <= CONV_STD_LOGIC_VECTOR(476,10) - Size_Y_pala_der THEN
				Desplaza_Pala_Y_der <= CONV_STD_LOGIC_VECTOR(3,10);
			ELSE
				Desplaza_Pala_Y_der <= CONV_STD_LOGIC_VECTOR(0,10);
			END IF;
			
			-- Calcular la siguiente posicion de la pala
			Pala_Y_der <= Pala_Y_der + Desplaza_Pala_Y_der;
	END IF;
END process Mover_Pala_der;

-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------
-------------------------------------- Línea
-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------

Dibujar_Linea: Process (Linea_Y, pixel_X_linea, pixel_Y_linea)
BEGIN
	-- Colocar la línea en uno de el centro de la pantalla
	Linea_X <= CONV_STD_LOGIC_VECTOR(320,10);
	Linea_Y <= CONV_STD_LOGIC_VECTOR(0,10);
	
	-- Chequear coordenadas X e Y para identificar el area de la bola
	-- Poner Bola_on a '1' para visualizar la bola
	IF (Linea_X <= pixel_X_linea + Size_X_linea) AND (Linea_X + Size_X_linea >= pixel_X_linea) AND
		(Linea_Y <= pixel_Y_linea + Size_Y_linea) AND (Linea_Y + Size_Y_linea >= pixel_Y_linea) THEN
		
		Linea_on <= '1';
	ELSE
		Linea_on <= '0';
	END IF;
	
	
END process Dibujar_Linea;

END funcional;
