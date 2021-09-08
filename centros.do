

 /*Generando la base 
cd "$recode"
import excel "Codigo de centros educativos superior", sheet("centros") firstrow cellrange(a1) clear
rename D cod_corto
label variable cod_corto "centro educativo"
label variable Centroeducativo "centro educativo"
rename _all, lower

save centros, replace

*/

cd "$recode"
capture drop _merge
merge  m:m p301b1 using "centros.dta"

drop if _merge==2 // Elimina las carreras que no se encuentran en la base.
labmask cod_corto, values( entidad )
labmask codigo, values(centroeducativo)
