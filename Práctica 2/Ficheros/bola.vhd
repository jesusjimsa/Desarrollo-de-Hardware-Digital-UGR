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
		vs : IN std_logic;
		pixel_Y, pixel_X : IN std_logic_vector(9 downto 0)
	);
END bola;

ENTITY pala IS
	PORT(
		Red_pala, Green_pala, Blue_pala : OUT std_logic;
		vs : IN std_logic;
		pixel_Y, pixel_X : IN std_logic_vector(9 downto 0);
		Pala_arriba, Pala_abajo : IN std_logic
	);
END pala;

architecture funcional of bola is
	-- Bola
	SIGNAL Bola_on : std_logic;
	SIGNAL Desplaza_Bola_X, Desplaza_Bola_Y: STD_LOGIC_VECTOR(9 DOWNTO 0);
	SIGNAL Bola_X, Bola_Y  : std_logic_vector(9 DOWNTO 0);

	CONSTANT Size: std_logic_vector(9 DOWNTO 0):= CONV_STD_LOGIC_VECTOR(8,10);
	
	-- Pala
	SIGNAL Pala_on : std_logic;
	SIGNAL Desplaza_Pala_X, Desplaza_Pala_Y: STD_LOGIC_VECTOR(9 DOWNTO 0);
	SIGNAL Pala_X, Pala_Y  : std_logic_vector(9 DOWNTO 0);

	CONSTANT Size_X: std_logic_vector(9 DOWNTO 0):= CONV_STD_LOGIC_VECTOR(3,10);
	CONSTANT Size_Y: std_logic_vector(9 DOWNTO 0):= CONV_STD_LOGIC_VECTOR(30,10);

BEGIN

Red_bola <= Bola_on;
Green_bola <= Bola_on;
Blue_bola <= Bola_on;

Red_pala <= Pala_on;
Green_pala <= Pala_on;
Blue_pala <= Pala_on;

Dibujar_Bola: Process (Bola_Y, pixel_X, pixel_Y)
BEGIN
	-- Chequear coordenadas X e Y para identificar el area de la bola
	-- Poner Bola_on a '1' para visualizar la bola
	IF (Bola_X <= pixel_X + Size) AND (Bola_X + Size >= pixel_X) AND
		(Bola_Y <= pixel_Y + Size) AND (Bola_Y + Size >= pixel_Y ) THEN
		
		Bola_on <= '1';
	ELSE
		Bola_on <= '0';
	END IF;
END process Dibujar_Bola;

Mover_Bola: PROCESS (vs)
BEGIN
	-- Actualizar la posicion de la bola en cada refresco de pantalla
	IF vs'event and vs = '1' THEN
			-- Detectar los bordes superior e inferior de la pantalla
			IF Bola_Y  >= CONV_STD_LOGIC_VECTOR(479,10) - Size THEN
				Desplaza_Bola_Y <= CONV_STD_LOGIC_VECTOR(-2,10);
			ELSIF  Bola_Y <= Size  THEN
				Desplaza_Bola_Y <= CONV_STD_LOGIC_VECTOR(2,10);
			END IF;
			-- Calcular la siguiente posicion de la bola
			Bola_Y <= Bola_Y + Desplaza_Bola_Y;
			
			-- Detectar los bordes derecho e izquierda de la pantalla
			IF Bola_X  >= CONV_STD_LOGIC_VECTOR(639,10) - Size THEN
				Desplaza_Bola_X <= CONV_STD_LOGIC_VECTOR(-2,10);
			ELSIF  Bola_X <= Size  THEN
				Desplaza_Bola_X <= CONV_STD_LOGIC_VECTOR(2,10);
			END IF;
			
			-- Calcular la siguiente posicion de la bola
			Bola_X <= Bola_X + Desplaza_Bola_X;
	END IF;
END process Mover_Bola;

Dibujar_Pala: Process (Pala_Y, pixel_X, pixel_Y)
BEGIN
	-- Chequear coordenadas X e Y para identificar el area de la pala
	-- Poner pala_on a '1' para visualizar la pala
	IF (Pala_X <= pixel_X + Size_X) AND (Pala_X + Size_X >= pixel_X) AND
		(Pala_Y <= pixel_Y + Size_Y) AND (Pala_Y + Size_Y >= pixel_Y ) THEN
		
		Pala_on <= '1';
	ELSE
		Pala_on <= '0';
	END IF;
END process Dibujar_Pala;

Mover_Pala: PROCESS (vs)
BEGIN
	-- Colocar la pala en uno de los extremos de la pantalla
	Pala_X <= CONV_STD_LOGIC_VECTOR(20,10);
	
	-- Actualizar la posicion de la pala en cada refresco de pantalla
	IF vs'event and vs = '1' THEN
			-- Detectar los bordes superior e inferior de la pantalla
			-- Un 1 en Pala_abajo o Pala_arriba significa que el botón está siendo pulsado
			IF Pala_arriba = '0' AND Pala_Y >= Size_Y THEN
				Desplaza_Pala_Y <= CONV_STD_LOGIC_VECTOR(-3,10);
			ELSIF Pala_abajo = '0' AND Pala_Y  <= CONV_STD_LOGIC_VECTOR(479,10) - Size_Y THEN
				Desplaza_Pala_Y <= CONV_STD_LOGIC_VECTOR(3,10);
			ELSE
				Desplaza_Pala_Y <= CONV_STD_LOGIC_VECTOR(0,10);
			END IF;
			
			-- Calcular la siguiente posicion de la pala
			Pala_Y <= Pala_Y + Desplaza_Pala_Y;
	END IF;
END process Mover_Pala;

END funcional;
