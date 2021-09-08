{/*****************TIPO DE CONTRANTO
           1 contrato indefinido
           2 contrato a plazo fijo
           3 esta en periodo de prueba
           4 convenios de formacion laboral juvenil
           5 contrato de aprendizaje
           6 contrato por locación de servicios, servicios no personales
           7 sin contrato
           8 otro
******************/  
}
recode p511a (1/6=1 "Con contrato") (7=2 "Sin contrato") (8=3 "Otro"), g(contrato)
recode p511a (1=1 "Contrato Indefinido") (2=2 "Contrato Plazo fijo") (3/6=3 "Otro tipode contrato") (7=4 "Sin Contrato")(8=5 "Otro"), g(contratos) 
