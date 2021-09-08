


capture { 
	gen r5=. if r3==1
	replace r5=1 if (p506>=111 & p506<=113) | (p506>=121 & p506<=122) | p506==130 | p506==140 | p506==150 | p506==200 | p506==500 
	replace r5=2 if p506==1010 | p506==1020 | p506==1030 | p506==1110 | p506==1120 | p506==1200 | p506==1310 | p506==1320 | p506==1410 | p506==1421 | p506==1422 | p506==1429
	replace r5=3 if (p506>=1511 & p506<=1515) | p506==1520 | (p506>=1531 & p506<=1533) | (p506>=1541 & p506<=1544) | p506==1549 | (p506>=1551 & p506<=1554) | ///
		p506==1600 | p506==1711 | p506==1712 | (p506>=1721 &  p506<=1723) | p506==1729 | p506==1730 | p506==1810 | p506==1820 | p506==1920 | p506==2029  | p506==2109 | ///
		p506==2211 | p506==2212 | p506==2219 | p506==2221 | p506==2222 | p506==2520 | p506==3312 | p506==3313 | p506==3320 | p506==3330 | p506==3610 | (p506>=3691 & p506<=3694) | p506==3699
	replace r5=4 if p506==1911 | p506==1912 | p506==2010 | (p506>=2021 & p506<=2023) | p506==2101 | p506==2102 | p506==2213 | p506==2310 | p506==2320 | p506==2330 | ///
	   (p506>=2411 & p506<=2413) | (p506>=2421 & p506<=2424) | p506==2429 | p506==2430 | p506==2511 | p506==2519 | p506==2610 | (p506>=2691 & p506<=2696) |  ///
	   p506==2699 | p506==2710 | p506==2720 | p506==2731 | p506==2732 | (p506>=2811 & p506<=2813) | (p506>=2891 & p506<=2893) | p506==2899 | (p506>=2911 & p506<=2915) ///
	   | p506==2919 | (p506>=2921 & p506<=2927) | p506==2929 | p506==2930 | p506==2999 | p506==3000 | p506==3110 | p506==3120 | p506==3130 | p506==3140 | p506==3150 |  ///
	   p506==3190 | p506==3210 | p506==3220 | p506==3230 | p506==3311 | p506==3410 | p506==3420 | p506==3430 | p506==3511 | p506==3512 | p506==3520 | p506==3530 | p506==3591 ///
	   | p506==3592 | p506==3599 | p506==3710 | p506==3720 | p506==7250
	replace r5=5 if p506==4510 | p506==4520 | p506==4530 | p506==4540 | p506==4550
	replace r5=6 if p506==2230 | p506==5010 | p506==5030 | p506==5040 | p506==5050 | p506==5110 | p506==5121 | p506==5122 | p506==5131 | p506==5139 | (p506>=5141 & p506<=5143) | p506==5149 | ///
	   p506==5150 | p506==5190 | p506==5211 | p506==5219 | p506==5220 | (p506>=5231 & p506<=5234) | p506==5239 | p506==5240 | p506==5251 | p506==5252 | p506==5259 | p506==5270 | p506==7130
	replace r5=7 if  p506==4010 | p506==4020 | p506==4030 | p506==4100 | p506==6010 | (p506>=6021 & p506<=6023) | p506==6030 | p506==6110 | p506==6120 | p506==6210 | p506==6220 | (p506>=6301 & p506<=6304) ///
		| p506==6309 | p506==6411 | p506==6412 | p506==6420 | p506==6511 | p506==6519 | p506==6591 | p506==6592 | p506==6599 | (p506>=6601 & p506<=6603) | p506==6711 | p506==6712 | p506==6719 | p506==6720 | ///
		p506==7010 | p506==7020 | (p506>=7111 & p506<=7113) | (p506>=7121 & p506<=7123) | p506==7129 | p506==7210 | p506==7220 | p506==7230 | p506==7240 | p506==7290 | p506==7310 | p506==7320 |  ///
		(p506>=7411 & p506<=7414) | p506==7421 | p506==7422 | p506==7430 | (p506>=7491 & p506<=7493) | p506==7495 | p506==7499 | (p506>=7511 & p506<=7514) | (p506>=7521 & p506<=7523) | ///
		p506==7530 | p506==8010 | p506==8021 | p506==8022 | p506==8030 | p506==8090 | p506==8511 | p506==8512 | p506==8519 | p506==8520 | p506==8531 | p506==8532 | p506==9000 | p506==9111 | p506==9112 | ///
		p506==9120 | p506==9191 | p506==9192 | p506==9199 | (p506>=9211 & p506<=9214) | p506==9219 | p506==9220 | (p506>=9231 & p506<=9233) | p506==9241 | p506==9249 | p506==9900
	replace r5=8 if p506==5020 | p506==5260 | p506==5510 | p506==5520 | p506==7494 | (p506>=9301 & p506<=9303) | p506==9309
	replace r5=9 if p506==9500
	replace r5=10 if p506==.

	lab def r5 1 "Agricultura, ganadería, pesca y silvicultura" 2 "Minería" 3 "Industria de bienes de consumo" 4 "Industria de bienes intermedios y de capital" ///
	  5 "Construcción" 6 "Comercio" 7 "Servicios no personales" 8 "Servicios personales" 9 "Hogares" 10 "No especificado"
	lab value r5 r5
	label variable r5 "Rama de actividad"
}
* Es necesario filtrar para los TFNR que trabajen menos de 15 horas por ello solo creamos los ocupados
 {    
		  /*1 agric gana pesca (extractiva)
           2 minería  (extractiva)
           3 ind bien consumo
           4 ind bien interme
           5 ind bien capital
           6 elec, gas y agua servicios
           7 construcción servicios
           8 comercio x mayor servicios
           9 comercio x menor servicios
          10 restau y hoteles servicios
          11 tran almac comun servicios
          12 servi a empresas  servicios
 
          17 no ocupado*/ 
		  }
  
 
 
 
recode r5 (1=1 "Agricultura, ganadería caza y silvicultura") ///
(2=2 "Minería") ///
(3/5=3 "Manufactura") ///
(6=4 "Electricidad, gas y agua") ///
(7=5 "Construcción") ///
(8/9=6 "Comercio") ///
(11=7 "Transportes y Comunicaciones") ///
(10=8 "Restaurantes y Hoteles") ///
(12=9 "Servicios prestados a empresas") ///
(13/15=10 "Otros Servicios"), ///
gen(r5_10)

recode r5 (1=1 "Agricultura, ganadería caza y silvicultura") ///
(2=2 "Minería") ///
(3/5=3 "Manufactura") ///
(6=4 "Electricidad, gas y agua") ///
(7=5 "Construcción") ///
(8/9=6 "Comercio") ///
(11=7 "Transportes y Comunicaciones") ///
(10=8 "Restaurantes y Hoteles") ///
(12/15=9 "Servicios"), ///
gen(r5_9)

recode r5 (1 2=1 "Extractiva 1/") ///
(3/4=2 "Industria Manufacturera 2/") ///
(7=3 "Construcción") ///
(8/9=4 "Comercio") ///
(6 11 12 13=5 "Servicios no personales 4/") ///
(10 14=6 "Servicios personales 5/") ///
(15=7 "Hogares 6/"), ///
gen(r5_7)


recode r5r4mtpe2 (1 2=1 "Extractiva 1/") ///
(3/4=2 "Industria") ///
(5=3 "Construcción") ///
(6=4 "Comercio") ///
(7/8 9=5 "Servicios 2/" ) ///
(11=6 "No ocupados"), ///
gen(r5_5)


recode r5 (1/2=1 "Extractiva 1/") ///
(3/5=2 "Industria") ///
(6/15=3 "Servicios 2/") ///
(17=4 "No ocupados") ///
(16=5 "No especificado"), ///
gen(r5_3)

label variable r5_10 "Rama de actividad"
label variable r5_9 "Rama de actividad"
label variable r5_7 "Rama de actividad"
label variable r5_5 "Rama de actividad"
label variable r5_3 "Rama de actividad"

