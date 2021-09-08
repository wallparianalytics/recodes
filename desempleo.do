
**********
** 2013 **

*Definimos el diseño muestral
svyset CONGLOME [pweight= FAC500A], strata(ESTRATO) vce(linearized) singleunit(missing)

//Incluimos el Desempleo oculto
gen r3r=r3
replace  r3r=4 if p545==2 & (p546>=3 & p546<=8) & p547==1 & p548==1 & (p549==1 | p549==2 | p549==4 | p549==7 | p549==8)

lab def r3r 1 "Ocupado" 2 "Desocupado" 3 "Inactivo pleno" 4 "Desempleo oculto"
lab val r3r r3r
lab var r3r "Clase de desempleo"

