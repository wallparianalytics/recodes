
import excel "D:\IBMAS\DISEL\BASES\PRIMITIVAS\ENAHO\recodes\Rama de actividad.xlsx", sheet("base") firstrow clear
duplicates drop p506r4, force
cd "D:\IBMAS\DISEL\BASES\PRIMITIVAS\ENAHO\recodes"
save rama.dta, replace
