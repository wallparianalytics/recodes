**************ESTRUCTURA DE MERCADO

/*
		1	Sector público
		2	2 a 10 Trabajadores
		3	11 a 100 trabajadores
		4	Más de 100 trabajadores
		5	Privado no especificado
		6	Independiente profesional, técnico
		7	Independiente no profesional, no técnico
		8	Independiente no especificado
		9	Trabajador familiar no remunerado
		10	Trabajador del hogar
		11	No especificado
		12	No ocupado


*/

recode r19em (1=1 "Sector público") ///
(2=2 "De 2 a 10 trabajadores") ///
(3=3 "De 11 a 100 trabajadores") ///
(4=4 "Mas de 100 trabajadores") ///
(6/7=5 "Independiente") ///
(9=6 "T.F.N.R.") ///
(10=7 "Trabajadores del hogar") ///
(5 8 11=8 "No especificado") ///
(12=9 "No ocupado"), ///
g(r19em_8)

recode r19em (1=1 "Sector público") ///
(2/5=2 "Sector privado") ///
(6/8=3 "Independientes") ///
(9=4 "TFNR") ///
(10/12=5 "Otros"), ///
gen(r19em_5)


recode r19em (1/5 10=1 "Dependientes") ///
(9=2 "TFNR") ///
(6/8=3 "Independientes") ///
(11=4 "No especificado") ///
(12=5 "No ocupado"), ///
gen(r19em_4)

label variable r19em_8 "Estructura de Mercado"
label variable r19em_5 "Estructura de Mercado"
label variable r19em_4 "Estructura de Mercado"


