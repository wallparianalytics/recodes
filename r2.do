********************Variable r2***********************

capture {

gen r2=.
replace r2=1 if (p301a>=1 & p301a<=2)
replace r2=2 if (p301a==3)
replace r2=3 if (p301a==4)
replace r2=4 if (p301a==5)
replace r2=5 if (p301a==6)
replace r2=6 if (p301a==7)
replace r2=7 if (p301a==8)
replace r2=8 if (p301a==9)
replace r2=9 if (p301a>=10 & p301a<=11)
replace r2=10 if (p301a==.)

label define r2 /*
*/ 1 "Sin nivel educativo" /*
*/ 2 "Primaria incompleta" /*
*/ 3 "Primaria completa" /*
*/ 4 "Secundaria incompleta" /*
*/ 5 "Secundaria completa" /*
*/ 6 "Superior no universitaria incompleta" /*
*/ 7 "Superior no universitaria completa" /*
*/ 8 "Superior universitaria incompleta" /*
*/ 9 "Superior universitaria completa" /*
*/ 10 "No especificado"

label values r2 r2


********************Variable r2r_a***********************

gen r2r_a=.
replace r2r_a=1 if (r2==1)
replace r2r_a=2 if (r2>=2 & r2<=3)
replace r2r_a=3 if (r2>=4 & r2<=5)
replace r2r_a=4 if (r2>=6 & r2<=7)
replace r2r_a=5 if (r2>=8 & r2<=9)
replace r2r_a=6 if (r2==10)

label define r2r_a /*
*/ 1 "Sin nivel educativo" /*
*/ 2 "Primaria" /*
*/ 3 "Secundaria" /*
*/ 4 "Superior no universitaria" /*
*/ 5 "Superior universitaria" /*
*/ 6 "No especificado"

label values r2r_a r2r_a


*********************Variable r2r_b***************************

gen r2r_b=.
replace r2r_b=1 if (r2>=1 & r2<=2)
replace r2r_b=2 if (r2>=3 & r2<=4)
replace r2r_b=3 if (r2==5 | r2==6 | r2==8)
replace r2r_b=4 if (r2==7)
replace r2r_b=5 if (r2==9)
replace r2r_b=6 if (r2==10)

label define r2r_b /*
*/ 1 "Sin nivel educativo" /*
*/ 2 "Primaria" /*
*/ 3 "Secundaria" /*
*/ 4 "Superior no universitaria" /*
*/ 5 "Superior universitaria" /*
*/ 6 "No especificado"

label values r2r_b r2r_b

}


















**********************************************R2
/*
           1 Sin nivel educativo
           2 Primaria incompleta
           3 Primaria completa
           4 Secundaria incompleta
           5 Secundaria completa
           6 Superior no universitaria incompleta
           7 Superior no universitaria completa
           8 Superior universitaria incompleta
           9 Superior universitaria completa
          10 No especificado

*/


recode r2 (1/2=1 "Sin nivel") (3/4=2 "Primaria") (5/6 8=3 "Secundaria") (7=4 "Superior no universitaria") (9=5 "Superior universitaria"), g(alcanzado)
recode alcanzado (1/3=1 "educacion basica") (4/5=2 "superior"), gen(alcanzado2)


recode r2r_a (1/2=1 "Primaria 1/") (3=2 "Secundaria") (4/5=3 "Superior") (6=4 "No especificado"), gen(r2r_1)
label var r2r_1 "Nivel educativo alcanzado"

recode r2r_a (1/2=1 "Primaria 1/") (3=2 "Secundaria") (4=3 "Superior no universitario") (5=4 "Superior universitario") (6=5 "No especificado"), gen(r2r_2)

label var r2r_2 "Nivel educativo alcanzado"

recode p301a (1/5=1 "Sin secundaria") (6=2 "Secundaria completa completa") ///
(7 9=3 "Superior incompleta") (8 10 11=4 "Superior completa") (else=5 "Resto"), gen(gestion)
label var gestion "Nivel educativo"


recode p301a (1/5=1 "Sin secundaria") (6=2 "Secundaria completa completa") ///
(9=3 "Superior incompleta") (10=4 "Superior completa") (else=5 "Resto"), gen(gestion1)
label var gestion1 "Nivel educativo"


recode r2 (1/4=1 "Sin secundaria completa") (5=2  "Secundaria completa") (6 8=3 "Superior incompleta") (7 9=4 "Superior completa"), gen(r2a)

