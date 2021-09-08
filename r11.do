

recode r11r (1/3=1 "Menos de 48 horas") (4=2 "48 horas") (5/6=3 "Más de 48 horas"), gen(r11_3)
label variable r11_3 "Rango de horas semanales"

recode r11r (1/2=1 "Menos de 35 horas") (3=2 "De 35 a 47 horas") (4=3 "48 horas") (5/6=4 "De 49 a más horas") (8=5 "No ocupado"), gen(r11_5)
label variable r11_5 "Rango de horas semanales"
