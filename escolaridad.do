				gen edu=.	
				replace edu=0 if p301a==1
				replace edu=1 if p301a==2
				replace edu=4 if p301a==3
				replace edu=7 if p301a==4
				replace edu=9.5 if p301a==5
				replace edu=12 if p301a==6
				replace edu=13.5 if p301a==7
				replace edu=15 if p301a==8
				replace edu=14.5 if p301a==9
				replace edu=17 if p301a==10
				replace edu=20 if p301a==11
				label variable edu "Años de escolaridad"
				
				gener educa=0   if (p301a==1 | p301a==2)
				replace educa=0 if (p301a==3 & p301b==0)
				replace educa=1 if (p301a==3 & p301b==1)
				replace educa=2 if (p301a==3 & p301b==2)
				replace educa=3 if (p301a==3 & p301b==3)
				replace educa=4 if (p301a==3 & p301b==4)
				replace educa=5 if (p301a==3 & p301b==5)
				replace educa=6 if (p301a==4 & p301b==5)
				replace educa=6 if (p301a==4 & p301b==6)
				replace educa=7  if (p301a==5 & p301b==1)
				replace educa=8  if (p301a==5 & p301b==2)
				replace educa=9  if (p301a==5 & p301b==3)
				replace educa=10 if (p301a==5 & p301b==4)
				replace educa=11 if (p301a==5 & p301b==5)
				replace educa=11 if (p301a==6 & p301b==5)
				replace educa=11 if (p301a==6 & p301b==6)
				replace educa=12 if (p301a==7 & p301b==1)
				replace educa=13 if (p301a==7 & p301b==2)
				replace educa=14 if (p301a==7 & p301b==3)
				replace educa=15 if (p301a==7 & p301b==4)
				replace educa=14 if (p301a==8 & p301b==3)
				replace educa=15 if (p301a==8 & p301b==4)
				replace educa=16 if (p301a==8 & p301b==5)
				replace educa=12 if (p301a==9 & p301b==1)
				replace educa=13 if (p301a==9 & p301b==2)
				replace educa=14 if (p301a==9 & p301b==3)
				replace educa=15 if (p301a==9 & p301b==4)
				replace educa=16 if (p301a==9 & p301b==5)
				replace educa=17 if (p301a==9 & p301b==6)
				replace educa=16 if (p301a==10 & p301b==4)
				replace educa=17 if (p301a==10 & p301b==5)
				replace educa=18 if (p301a==10 & p301b==6)
				replace educa=19 if (p301a==10 & p301b==7)
				replace educa=17 if (p301a==11 & p301b==1)
				replace educa=18 if (p301a==11 & p301b==2)
				replace educa=1  if (p301a==3 & p301c==1)
				replace educa=2  if (p301a==3 & p301c==2)
				replace educa=3  if (p301a==3 & p301c==3)
				replace educa=4  if (p301a==3 & p301c==4)
				replace educa=5  if (p301a==3 & p301c==5)
				replace educa=6  if (p301a==4 & p301c==5)
				replace educa=6  if (p301a==4 & p301c==6)
				label variable educa "Años de escolaridad"
