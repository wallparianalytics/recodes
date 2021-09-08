
rename _all, lower

*recodificamos los departamentos
gen dpto=rdpto if rdpto!=7
replace dpto=15 if rdpto==7
la val dpto rDpto

*** Para ingresos : Remuneración Mínima Vital (RMV 2012)==S/750 ; 1,5*RMV=1125 ; 3*RMV=2250 ***
gen r6r=0 if r6<1125
replace r6r=50 if (r6<=2250 & r6>=1125)
replace r6r=100 if r6>2250

***Protección social***
recode rsalud (1/9=1 "Si esta afiliado") (10=0 "No esta afiliado"),g(salud)
recode rpension (1/6=1 "Si esta afiliado") (7=0 "No esta afiliado"),g(pension)

gen sal_pen= salud+pension
label define sal_pen5 0 "Sin beneficios" 1 "Algún beneficio" 2 "Ambos beneficios"
label values sal_pen sal_pen5

gen protex=0 if sal_pen==0
replace protex=50 if sal_pen==1
replace protex=100 if sal_pen==2

*** Para modalidad contractual ***
recode p511a (1 2=3 "indefinido y plazo fijo") (7=1 "Sin contrato") (3 4 5 6 8=2 "otros"), gen(p511a1)
gen p511a2=0 if p511a1==1
replace p511a2=50 if p511a1==2
replace p511a2=100 if p511a1==3

*** Para jornada laboral ***
gen r11hh=0 if r11>48
replace r11hh=100 if r11<=48

***Cálculo ICE***
gen ice=0.4*r6r + 0.25*p511a2 + 0.25*protex + 0.1*r11hh if r8r==2 | r8r==3 | r8r==6  //Asalariado y Trabajadoras del hogar
replace ice=0.5*r6r + 0.35*protex + 0.15*r11hh if r8r==1 | r8r==1 | r8r==4 | r8r==7 //Empelador, Independiente y Otros

*Calculamos el ICE para jovenes y adultos por departamentos y a nivel nacional
preserve
collapse (mean) ice if r6!=. & r8r!=5  [iw=fac500a]
gen year=2014
gen dpto=26
save "$rutasave\Insumo\peru_2014.dta",replace
restore

*Colapsamos la base
collapse (mean) ice if r6!=. & r8r!=5 [iw=fac500a], by(dpto)
gen year=2014

*Fusionamos la base con perú
append using "$rutasave\Insumo\peru_2014.dta"
la def rDpto 26 "Perú", add 
la val dpto rDpto

*Guardamos la base de datos
erase "$rutasave\Insumo\peru_2014.dta"
saveold "$rutasave\Insumo\ice_2014.dta",replace
