 
 
gen nini=. 
replace nini=1 if p307!=1 & r3!=1 //No estudia y no trabaja
replace nini=2 if p307==1 & r3!=1 //Estudio pero no trabaja
replace nini=3 if p307!=1 & r3==1 //No estudia pero trabaja
replace nini=4 if p307==1 & r3==1 //Estudia y trabaja
lab def nini 1 "No estudia y ni trabaja" 2 "Estudia pero no trabaja" 3 "No estudia pero trabaja" 4 "Estudia y trabaja", modify
lab value nini nini
lab var nini "Condición de estudios y trabajo" 
