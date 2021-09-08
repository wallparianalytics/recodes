

recode rsalud (1/9=1 "Afiliado") (10=2 "No afiliado"), gen(salud)
label variable salud "Afiliación a seguro de salud"
