*adulto_2
*joven_1

capture {
	recode  p208a (14=1 "De 14 años") ///
	(15/29=2 "De 15 a 29 años (Jóvenes)") ///
	(30/65=3 "De 30 a 65 años (Adultos)") ///
	(else=4 "De 66 a más años"), ///
	g(edad_4) 
	label variable edad_4 "Grupos de edad"
}
capture {
	recode  p208a (14/17=1 "De 14 a 17 años") ///
	(18/24=2 "De 18 a 24 años") ///
	(25/29=3 "De 25 a 29 años") ///
	(30/65=4 "De 30 a 65 años (Adultos)") ///
	(else=5 "De 66 a más años"), ///
	g(edad_5) 
	label variable edad_5 "Grupos de edad"
}
capture {
	recode  p208a (14=1 "De 14 años") ///
	(15/29=2 "De 15 a 29 años (Jóvenes)") ///
	(30/44=3 "De 30 a 44 años") ///
	(45/65=4 "De 45 a 65 años") ///
	(else=5 "De 66 a más años"), ///
	g(edad_52) 
	label variable edad_52 "Grupos de edad"
}
capture {
	recode  p208a (14=1 "De 14 años") ///
	(15/17=2 "De 15 a 17 años") ///
	(18/24=3 "De 18 a 24 años") ///
	(25/26=4 "De 25 a 26 años") ///
	(27/29=5 "De 27 a 29 años") ///
	(30/65=6 "De 30 a 65 años (Adultos)") ///
	(else=7 "De 66 a más años"), ///
	g(edad_7) 
	label variable edad_7 "Grupos de edad"
}
capture {
	recode  p208a ///
	(14=0 "De 14 años") ///
	(15/24=1 "De 15 a 24 años") ///
	(25/29=2 "De 25 a 29 años") ///
	(30/65=3 "De 30 a 65 años (Adultos)") ///
	(else=4 "De 66 a más años"), ////
	g(edad_41) 
	label variable edad_41 "Grupos de edad"
}
capture {
	recode  p208a ///
	(14=0 "De 14 años") ///
	(15/29=1 "De 15 a 29 años (Jovenes)" ) ///
	(else=2 "De 30 a más años (Adultos)"), ////
	g(edad_3) 
	label variable edad_3 "Grupos de edad"
}
capture {
	recode  p208a (14=1 "De 14 años") ///
	(15/19=2 "De 15 a 19 años ") ///
	(20/24=3 "De 20 a 24 años ") ///
	(25/29=4 "De 25 a 29 años ") ///
	(30/44=5 "De 30 a 44 años") ///
	(45/65=6 "De 45 a 65 años") ///
	(else=7 "De 66 a más años"), ///
	g(edad_71) 
	label variable edad_71 "Grupos de edad"
}
capture {
	recode  p208a (14=1 "De 14 años") ///
	(15/19=2 "De 15 a 19 años ") ///
	(20/24=3 "De 20 a 24 años ") ///
	(25/29=4 "De 25 a 29 años ") ///
	(30/65=5 "De 30 a 65 años") ///
	(else=6 "De 66 a más años"), ///
	g(edad_6) 
	label variable edad_6 "Grupos de edad"
}

capture {
	recode  p208a (14=1 "De 14 años") ///
	(15/17=2 "De 15 a 17 años ") ///
	(18/24=3 "De 18 a 24 años ") ///
	(25/29=4 "De 25 a 29 años ") ///
	(30/59=5 "De 30 a 59 años") ///
	(else=6 "De 60 a más años"), ///
	g(edad_61) 
	label variable edad_61 "Grupos de edad"
}
capture {
	recode  p208a (14=1 "De 14 años") ///
	(15/22=2 "De 15 a 22 años ") ///
	(23/29=3 "De 23 a 29 años ") ///
	(30/65=5 "De 30 a 65 años") ///
	(else=6 "De 66 a más años"), ///
	g(edad_53) 
	label variable edad_53 "Grupos de edad"
}


