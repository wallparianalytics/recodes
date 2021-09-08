
/*
           1 prof, tec y afin *
           2 ger. adm y funci *
           3 empleados oficin *
           4 vendedores *
           5 agric gana pesca *
           6 mineros y canter * 
           7 artesan y operar
           8 obr, jornal y ne *
           9 conductores *
          10 trab. servicios *
          11 trab. del hogar *
          13 n.d.
          14 no ocupado
*/


 recode r4 (1 2=1 "Profesional, técnico, gerente, administrador y funcionario") (3=2 "Empleado de oficina")(4=3 "Vendedor") (5 6=4 "Agricultor, ganadero, pescador, minero y cantero")(10 11=7 "Trabajador de los servicios y del hogar")(else=8 "Otros" /*  Artesano y operario; Obreros jornaleros; y conductores*/), gen(r4_1)
 label variable r4_1 "Grupo ocupacional"
