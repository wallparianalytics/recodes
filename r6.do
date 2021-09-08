



capture foreach a in i524a1 d529t i530a d536 i538a1 d540t i541a d543 d544t {

replace `a'=0 if `a'==.
replace `a'=0 if `a'==999999



}
capture gen r6 = (i524a1 +d529t +i530a +d536 +i538a1 +d540t +i541a +d543 + d544t)/12




recode r6 ///
(0=0 "Sin ingresos") ///
(1/749.49=1 "Menos de 750 (<RMV)") ///
(749.50/1499.49=2 "de 750 a 1499 (RMV [1,2>)") ///
(1499.50/2249.49=3 "de 1500 a 2249 (RMV [2,3>)") ///
(2249.50/2999.49=4 "de 2250 a 2999 (RMV [3,4>)") ///
(2999.50/max=5 "Más de 3000 (RMV [4,max>)"), ///
gen(r7_6)

label variable r7_6 "Rango de ingresos mensuales"


recode r6 ///
(0=0 "Sin ingresos") ///
(1/749.49=1 "Menos de 750 (<RMV)") ///
(749.50/750.49=2 " 750 (1 RMV)") ///
(750.50/1499.49=3 "de 751 a 1499 (RMV <1,2>)") ///
(1499.50/2249.49=4 "de 1500 a 2249 (RMV [2,3>)") ///
(2249.50/2999.49=5 "de 2250 a 2999 (RMV [3,4>)") ///
(2999.50/max=6 "Más de 3000 (RMV [4,max>)"), ///
gen(r7_7)

label variable r7_7 "Rango de ingresos mensuales"


recode r6 ///
(0=0 "Sin ingresos") ///
(1/749.49=1 "Menos de 750 (<RMV)") ///
(749.50/1499.49=2 "de 750 a 1499 (RMV [1,2>)") ///
(1499.50/2249.49=3 "de 1500 a 2249 (RMV [2,3>)") ///
(2249.50/max=4 "Más de 2250 (RMV [3,max>)"), ///
gen(r7_5)

label variable r7_5 "Rango de ingresos mensuales"


recode r6 ///
(0=0 "Sin ingresos") ///
(1/599.49=1 "Menos de 600") ///
(599.50/749.49=2 "600 a < 750") ///
(749.50/750.49=3 "750") ///
(750.50/849.5=4 "> 750 a < 850") ///
(749.50/max=5 "850 a más"), ///
gen(r7_8)

label variable r7_8 "Rango de ingresos mensuales"





















