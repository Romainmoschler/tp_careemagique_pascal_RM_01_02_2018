program carremaj ;

uses crt ;

const 	TMAX = 5;
		TMIN = 1;

var		nb,mid,x,y,i,j:INTEGER ;
		tab:ARRAY[TMIN..TMAX,TMIN..TMAX] OF INTEGER ;
		verif,move:BOOLEAN;

BEGIN
	
	clrscr;
    verif:= false;
    move:= true;
    mid:= (TMAX+1);
    mid:= (mid div 2);
    x:=(mid) ;
    y:= (mid-1) ;
    nb:= (1) ;
	   FOR i:=1 TO TMAX DO
    BEGIN
        FOR j:=1 TO TMAX DO
        BEGIN
            tab[i,j]:= 0;
        END;
    END;
    WHILE (verif <> true) DO
    BEGIN
	   clrscr;
        verif:= true;
                IF (tab[x,y] = 0) THEN
        BEGIN
            tab[x,y]:= nb;
            nb:= nb+1;
            move:= true;
        END
        ELSE
        BEGIN
            move:= false;
        END;
        IF (move = true) THEN
        BEGIN
            x:= x+1;
        END
        ELSE
        BEGIN
            x:= x-1;
        END;
        IF (x < TMIN) THEN
        BEGIN
            x:=TMAX;
        END;
        IF (x > TMAX) THEN
        BEGIN
            x:= TMIN;
        END;

        y:= y-1 ;
        IF (y < TMIN) THEN
        BEGIN
            y:=TMAX;
        END;
        IF (y > TMAX) THEN
        BEGIN
            y:= TMIN;
        END;
	    FOR i:=1 TO TMAX DO
        BEGIN
            FOR j:=1 TO TMAX DO
            BEGIN
                IF tab[i,j] = 0 THEN
                BEGIN
                    verif:= false ;
                END;

                IF tab[j,i] < 10 THEN
                BEGIN
                    write('| ');
                    write(tab[j,i]);
                END
                ELSE
                BEGIN
                    write('|');
                    write(tab[j,i]);
                END;

            END;
        writeln();
        END;
    END;
    READLN ();
END.

{ALGORITHME carremaj
//BUT: Faire un carre magique
//ENTREE: ?
//SORTIE: tableau du carré magique

const     TMAX = 5
        TMIN = 1

var        nb,mid,x,y:ENTIER
        tab:tableau[TMIN..TMAX,TMIN..TMAX] : ENTIER
        verif,move:BOOLEEN

DEBUT
PROCEDURE initall()
DEBUT
   verif<- false
    move<- true
    nb<- (1)
    mid <- ((TMAX+1)div2)
    x <- mid
    y <- mid -1
FIN
PROCEDURE INIT()
var 	i,j: ENTIER
DEBUT
    POUR i<-1 A TMAX FAIRE
    DEBUT
        POUR j<-1 A TMAX FAIRE
        DEBUT
            tab[i,j]<- 0
        FINPOUR
    FINPOUR
FIN
	PROCEDURE UPDATE()
	DEBUT
    	TANTQUE (verif <> true) FAIRE
    	DEBUT
        	//EFFACER ECRAN (clrscr; en pascal)
        	verif<- true
        	SI (tab[x,y] = 0) ALORS
        	DEBUT
        	    tab[x,y]<- nb
        	    nb<- nb+1
        	    move<- true
        	SINON
        	DEBUT
        	    move<- false
        	FINSI
        	SI (move = true) ALORS
        	DEBUT
        	    x<- x+1
        	SINON
        	DEBUT
        	    x<- x-1
        	FINSI
        	SI (x < TMIN) ALORS
        	DEBUT
        	    x<-TMAX
        	FINSI
        	SI (x > TMAX) ALORS
        	DEBUT
        	    x<- TMIN
        	FINSI
	
	        y<- y-1
	        SI (y < TMIN) ALORS
	        DEBUT
    	        y<-TMAX
        	FINSI
        	SI (y > TMAX) ALORS
        	DEBUT
            	y<- TMIN
        	FINSI
	
   			POUR i<-1 A TMAX FAIRE
   	    	 DEBUT
            POUR j<-1 A TMAX FAIRE
        	    DEBUT
                	SI tab[i,j] = 0 ALORS
        	    	DEBUT
                    	verif<- false
                	FINSI

            	  	SI tab[j,i] < 10 ALORS
                	DEBUT
                    	ECRIRE('| ')
                    	ECRIRE(tab[j,i])
                	SINON
                	DEBUT
                    	ECRIRE('|')
                    	ECRIRE(tab[j,i])
                	FINSI

            FINPOUR
        	ECRIRE()
        FINPOUR
    FINTANTQUE
    LIRE
FIN

DEBUT
	initall()

	INIT

	UPDATE()
FIN
}
