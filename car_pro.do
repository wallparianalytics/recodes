
cd "F:\IBMAS\DISEL\BASES\PRIMITIVAS\ENAHO\recodes"


cd "$recodes"

/* sintaxis util desde el 2007 - 2013 */

/* import excel car_pro.xls, sheet("base") cellrange(i5:m1218) firstrow clear
rename _all, lower
capture rename id_cl p301a1 
destring p301a1, replace

save car_pro.dta, replace */

cd "F:\IBMAS\DISEL\BASES\PRIMITIVAS\ENAHO\recodes"

capture drop _merge
merge m:m p301a1 using car_pro.dta
destring id_cc, replace
capture labmask id_cc, val(n_cc)

drop if _merge==2





