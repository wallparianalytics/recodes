

*Niveles de adecuación ocupacional

capture drop nivcom
gen nivcom=.


//1. Ocupación profesional o de dirección
//=======================================

replace nivcom=1 if (p505>=111 & p505<=241) | p505==245 | (p505>=251 & p505<=284) 

//2. Ocupación Técnica
//====================

replace nivcom=2 if (p505>=242 & p505<=244) | p505==246 | p505==247 |(p505>=311 & p505<=321) | (p505>=323 & p505<=379) ///
					| p505==382 | p505==391 | p505==411 | p505==422 | (p505>=431 & p505<=435) | p505==441 | p505==521 | p505==611

//3. Ocupación Intermedia o elemental
//===================================
replace nivcom=3 if p505==322 | p505==381 | p505==383 | (p505>=392 & p505<=396) | (p505>=412 & p505<=421) | p505==423 ///
					 | p505==436 | (p505>=442 & p505<=512) | (p505>=522 & p505<=583) | (p505>=612 & p505<=999)

* INDICADOR DE ADECUACIÓN OCUPACIONAL
capture drop nivade
gen nivade=.
replace nivade=1 if r2r_b==4 & nivcom==2
replace nivade=1 if r2r_b==5 & nivcom==1
replace nivade=0 if r2r_b==5 & nivcom==2
replace nivade=0 if r2r_b==4 & nivcom==3
replace nivade=0 if r2r_b==5 & nivcom==3
replace nivade=2 if r2r_b==4 & nivcom==1

* CASOS ESPECIALES

/*  1.	Profesores de educación secundaria y básica, Profesores y/o maestros de primaria Profesores de educación inicial o pre-escolar, 
		Profesor de acad. y cenecapes (cent. de educ. de calif. Profesional extraordinaria) y Otros profesionales de la enseñanza */
replace nivade=1 if ((p505>=242 & p505<=244) | p505==246 | p505==247) & r2r_b==5 & ///
((p301a1>=111016 & p301a1<=131056) | (p301a1>=151016 & p301a1<=161996) | p301a1==190016 | p301a1==199996) 

/*  2. Fotógrafos y operadores de equipos de grabación de imagen y sonido (CIUO 322) */
replace nivade=1 if p505==322 & r2r_b==4 & (p301a1==321025 | p301a1==321035 | p301a1==323015 | p301a1==323025 | p301a1==323035)

/*  3. Secretarias, taquígrafas, mecanógrafas y operadoras de máquina de oficina (CIUO 413) */
replace nivade=1 if p505==413 & r2r_b==4 & (p301a1>=337015 & p301a1<=337065)

/*  4. Mecánicos de vehículos de motor (CIUO 782) */
replace nivade=1 if p505==782 & r2r_b==4 & (p301a1>=526015 & p301a1<=526045)

/*  5. Cocineros calificados (CIUO 522)  */
replace nivade=1 if p505==522 & r2r_b==4 & (p301a1==332105 | p301a1==332125 | p301a1==332165)

/*  6. Empleado de biblioteca o servicio de archivo (CIUO 442) */
replace nivade=1 if p505==442 & r2r_b==5 & (p301a1==215016 | p301a1==215026)
replace nivade=1 if p505==442 & r2r_b==4 & (p301a1==215015)

/*  7. Locutores de radio, tv y afines (CIUO 392) */
replace nivade=1 if p505==392 & r2r_b==4 & (p301a1==321015 | p301a1>=322015 & p301a1<=322075)

/*  8. Peluqueros, especialistas en tratado de belleza  (CIUO 541) */
replace nivade=1 if p505==541 & r2r_b==4 & p301a1==812015

lab var nivade "Indicador de adecuación ocupacional"
la def nivade 0 "Subutilizado" 1 "Adecuado" 2 "Sobreutilizado", modify
la val nivade nivade

*Recodificamos la variable "nivade"
capture drop nivader
recode nivade (0 2=0 "Inadecuado") (1=1 "Adecuado"), gen(nivader)
