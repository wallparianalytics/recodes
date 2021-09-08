	global disco K:\ // Disco donde se ubican las bases
	global memoria F: // Disco donde se necesita guardar todos los archivos que se estan generando	
	set scheme s1manual, permanently /* Utilidad al momento de combinar 2 graficos para que el fondo sea blanco */
	global recode "$memoria\IBMAS\DISEL\BASES\PRIMITIVAS\ENAHO\recodes" 
	global color "43 99 161" /* Puede definir el color deseado de cualquier grafico*/
	global azul "145 201 247" 
	global blanco "255 255 255"
