-- Descripcion de una pala cuadrada que se mueve hacia arriba y hacia abajo,
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

ENTITY pala IS
	PORT(
		Red, Green, Blue : OUT std_logic;
		vs : IN std_logic;
		pixel_Y, pixel_X : IN std_logic_vector(9 downto 0);
		Pala_arriba, Pala_abajo : IN std_logic
	);
END pala;

architecture funcional of pala is
	SIGNAL Pala_on : std_logic;
	SIGNAL Desplaza_Pala_X, Desplaza_Pala_Y: STD_LOGIC_VECTOR(9 DOWNTO 0);
	SIGNAL Pala_X, Pala_Y  : std_logic_vector(9 DOWNTO 0);

	CONSTANT Size_X: std_logic_vector(9 DOWNTO 0):= CONV_STD_LOGIC_VECTOR(3,10);
	CONSTANT Size_Y: std_logic_vector(9 DOWNTO 0):= CONV_STD_LOGIC_VECTOR(8,10);

BEGIN

Red <= Pala_on;
Green <= Pala_on;
Blue <= Pala_on;

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
	Pala_X <= CONV_STD_LOGIC_VECTOR(600,10);
	
	-- Actualizar la posicion de la pala en cada refresco de pantalla
	IF vs'event and vs = '1' THEN
			-- Detectar los bordes superior e inferior de la pantalla
			-- Un 1 en Pala_abajo o Pala_arriba significa que el botón está siendo pulsado
			IF Pala_arriba = '1' AND Pala_Y  >= CONV_STD_LOGIC_VECTOR(479,10) - Size_Y THEN
				Desplaza_Pala_Y <= CONV_STD_LOGIC_VECTOR(-2,10);
			ELSIF Pala_abajo = '1' AND Pala_Y <= Size_Y  THEN
				Desplaza_Pala_Y <= CONV_STD_LOGIC_VECTOR(2,10);
			ELSE
				Desplaza_Pala_Y <= CONV_STD_LOGIC_VECTOR(0,10);
			END IF;
			
			-- Calcular la siguiente posicion de la pala
			Pala_Y <= Pala_Y + Desplaza_Pala_Y;
	END IF;
END process Mover_Pala;

END funcional;
