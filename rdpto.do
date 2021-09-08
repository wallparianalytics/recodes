					
					recode rdpto ///
					(1=1 "Amazonas") ///
					(2=2 "Ancash") ///
					(3=3 "Apurímac") ///
					(4=4 "Arequipa") ///
					(5=5 "Ayacucho") ///
					(6=6 "Cajamarca") ///
					(8=8 "Cusco") ///
					(9=9 "Huancavelica") ///
					(10=10 "Huánuco") ///
					(11=11 "Ica") ///
					(12=12 "Junín") ///
					(13=13 "La Libertad") ///
					(14=14 "Lambayeque") ///
					(7 15=15 "Lima") ///
					(16=16 "Loreto") ///
					(17=17 "Madre de Dios") ///
					(18=18 "Moquegua") ///
					(19=19 "Pasco") ///
					(20=20 "Piura") ///
					(21=21 "Puno") ///
					(22=22 "San Martín") ///
					(23=23 "Tacna") ///
					(24=24 "Tumbes") ///
					(25=25 "Ucayali"), ///
					gen(rdpto2)

label variable rdpto2 "Departamento"
