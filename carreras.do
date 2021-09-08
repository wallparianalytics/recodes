 *Generando la base 
rename _all, lower
cd "F:\IBMAS\DISEL\BASES\PRIMITIVAS\ENAHO\recodes"
/*cd "$recode"
import excel "Base de carreras", sheet("6 digitos") firstrow cellrange(a1) clear
save carreras, replace

*/

cd "$recode"
capture drop _merge
merge  m:m p301a1 using "carreras.dta"
drop if _merge==2 // Elimina las carreras que no se encuentran en la base.
capture drop _merge

destring id_Carreras*, replace
capture labmask id_Carreras1, values(Carreras1)
capture labmask id_Carreras2, values(Carreras2)
capture labmask id_Carreras3, values(Carreras3)
capture labmask id_Carreras6, values(Carreras)


