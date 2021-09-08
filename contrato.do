

/* Privado */
recode p511a (5 6 7=1 "Sin contrato") (1/4  8=2 "Con contrato") , gen(contrato)
/*
1	Contrato indefinido
2	Contrato a plazo fijo
3	Esta en periodo de prueba
4	Convenios de formacion Lab. Juvenil/Pract Pre-Profesionales
5	Contrato por locación de servicios (Honor. Prof, RUC), SNP?
6	Régimen especial de contratación administrativa (CAS)
7	Sin contrato
8	Otro
*/
					
label variable contrato "Condición laboral"	


/* Público */
recode p511a (5 7=1 "Sin contrato") (1/4 6 8=2 "Con contrato") , gen(contrato1)
/*
1	Contrato indefinido
2	Contrato a plazo fijo
3	Esta en periodo de prueba
4	Convenios de formacion Lab. Juvenil/Pract Pre-Profesionales
5	Contrato por locación de servicios (Honor. Prof, RUC), SNP?
6	Régimen especial de contratación administrativa (CAS)
7	Sin contrato
8	Otro
*/
					
label variable contrato1 "Condición laboral"	


	
recode p511a (7=1 "Sin contrato") (1/5 6 8=2 "Con contrato") , gen(contrato2)
/*
1	Contrato indefinido
2	Contrato a plazo fijo
3	Esta en periodo de prueba
4	Convenios de formacion Lab. Juvenil/Pract Pre-Profesionales
5	Contrato por locación de servicios (Honor. Prof, RUC), SNP?
6	Régimen especial de contratación administrativa (CAS)
7	Sin contrato
8	Otro
*/
					
label variable contrato2 "Condición laboral"	
