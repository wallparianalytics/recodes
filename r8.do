
capture {
******  Variable R8  ******.
capture drop r8
gen r8=1 if r3==1 & p507==1
replace r8=2 if r3==1 & p507==3 & (p510>=3 & p510<=7)
replace r8=3 if r3==1 & p507==3 & (p510>=1 & p510<=2)
replace r8=4 if r3==1 & p507==4 & (p510>=3 & p510<=7)
replace r8=5 if r3==1 & p507==4 & (p510>=1 & p510<=2)
replace r8=6 if r3==1 & p507==2
replace r8=7 if r3==1 & (p507==5 | p507==7)
replace r8=8 if r3==1 & p507==6
replace r8=10 if r3==1 & p507==.
replace r8=11 if r3==2 | r3==3

label variable r8 "Categoría ocupacional (ocup. princ.)"

label define r8 /* 
*/ 1 "Empleador" /* 
*/ 2 "Empleado privado" /* 
*/ 3 "Empleado público" /* 
*/ 4 "Obrero privado" /* 
*/ 5 "Obrero público" /* 
*/ 6 "Independiente" /* 
*/ 7 "Trabajador familiar no remunerado" /* 
*/ 8 "Trabajador del hogar" /* 
*/ 10 "No especificado" /* 
*/ 11 "No ocupado"
  
label values r8 r8
}

/* r8 -- Categoría ocupacional (ocup. princ.)					
1  Empleador
2  Empleado privado
3  Empleado público
4  Obrero privado
5  Obrero público
6  Independiente
7  Trabajador familiar no
8  Trabajador del hogar
9  practicante
11 No ocupado
   
*/



recode r8 (2 4=1 "Asalariado privado") (3 5=2 "Asalariado público") (1=3 "Empleador") (6=4 "Independiente") (7=5 "TFNR") (8/10=6 "Otros") (11=7 "no ocupado"), gen(r8_1)	
recode r8 (1=1 "Empleador") (2/5=2 "Asalariado")  (6=3 "Independiente") (7=4 "TFNR") (8/10=5 "Otros") (11=6 "No ocupado"), gen(r8_2)	
recode r8 (1=1 "Empleador") (2=2 "Empleado privado") (3=3 "Empleado público") (4=4 "Obrero privado") (5=5 "Obrero público") ///
(6=6 "Independiente") (7=7 "TFNR") (8/9=8 "Otros"), gen(r8_3)	


label variable r8_1 "Categoria Ocupacional"
label variable r8_2 "Categoria Ocupacional"
label variable r8_3 "Categoria Ocupacional"
