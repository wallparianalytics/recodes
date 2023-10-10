/* Solo se esta especificando a la actividad agropecuaria */
gen agropecuario=0
replace agropecuario=1 if p506==111 | p506==112 | p506==113 | p506==121 | p506==122 | p506==130 | p506==140 | p506==1511 | p506==1513 | p506==1514 | p506==1520 | p506==1531 | p506==1532 | p506==1533 | p506==1541 | p506==1542 | p506==1543 | p506==1544 | p506==1549 | p506==1551 | p506==1552 | p506==1553 | p506==1554
label variable agropecuario "Actividad agropecuaria"
