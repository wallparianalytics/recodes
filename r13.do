


/*

Valid   1 Desempleo cesante      |       1479       2,56       2,56       2,56
        2 Desempleo aspirante    |        284       0,49       0,49       3,05
        3 Subempleo por horas    |       3079       5,33       5,33       8,38
        4 Subempleo por ingresos |      21236      36,75      36,75      45,13
        5 Empleo adecuado        |      15843      27,42      27,42      72,55
        7 Inactivo               |      15862      27,45      27,45     100,00
        Total                    |      57783     100,00     100,00           
------------------------------------------------------------------------------

*/


recode r13 (1/2=1 "Desempleo") (3/4=2 "Subempleo") (5=3 "Empleo adecuado") (7=4 "Inactivo") (6=5 "No especificado"), g(r13_1)
