# Respuestas actividad 3.8
1. En el archivo [`logical_tb.vhd`](logical_tb.vhd).
2. Como dura 1.5 ns, la señal de `x` cambia también mientras que la de `y` no cambia, porque su retardo es de 1.8 y no le afectan retardos menores.
3. Al realizar los cambios del apartado anterior con un modelo de transporte se propaga cualquier cambio, así que el cambio de 1.5 ns de `a` afecta tanto a `x` como a `y`.
