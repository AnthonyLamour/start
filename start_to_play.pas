program start_to_play;

uses crt;

{ALGO start_to_play
//BUT savoir le nombre de personne présentent dans la salle
//ENTRER le nombre de personnes entrantes ou sortante
//SORTIE nombre max atteint ou impossible et le nombre de places disponibles

VAR

	placelibre,nb:ENTIER //nb correspond au nombre entrer
	
DEBUT

	placelibre<-250 //initialisation du nombre de place libre
	REPETER
		ECRIRE"Veuillez entrer le nombre de personne (entrant nombre + sortant nombre -) ou 0 pour quitter:"
		LIRE nb
		SI nb>0 ALORS //si nb>0 alors le nombre de place libre diminue donc placelibre-nb
			SI placelibre-nb<0 ALORS // vérification que le nombre de place libre est suffisante
				ECRIRE"Impossible trop de personnes veulent entrer"
			SINON
				placelibre<-placelibre-nb
			FINSI
		SINON
			SI nb<0 ALORS //sinon si nb<0 alors le nombre de place libre augmente donc placelibre-nb car nb est négative
				SI placelibre-nb>250 ALORS //vérification qu'il y a plus ou autant de personne qui veulent sortir
					ECRIRE"Impossible trop de personne veulent sortir"
				SINON
					placelibre<-placelibre-nb
				FINSI
			FINSI
		FINSI
		ECRIRE "Il reste "&placelibre&" place libres dans la salle"
		SI placelibre=0 ALORS
			ECRIRE "Nombre Maximum atteint"
		FINSI
	JUSQU'A nb=0

}

VAR

	placelibre,nb:integer;
	
BEGIN
	clrscr;
	placelibre:=250;
	REPEAT
		writeln('Veuillez entrer le nombre de personne (entrant nombre + sortent nombre -) et 0 pour quitter:');
		readln(nb);
		IF nb>0 THEN
			begin
				IF placelibre-nb<0 THEN
					begin
						writeln('Impossible  trop de personnes veulent entrer')
					end
				ELSE
					begin
						placelibre:=placelibre-nb;
					end;
			end
		ELSE
			begin
				IF nb<0 THEN
					begin
						IF placelibre-nb>250 THEN
							begin
								writeln('Impossible trop de personne veulent sortir');
							end
						ELSE
							begin
								placelibre:=placelibre-nb;
							end;
					end;
			end;
		writeln('Il reste ',placelibre,' place libre dans la salle.');
		IF placelibre=0 THEN
			begin
				writeln('Nombre Maximum atteint');
			end;
	UNTIL nb=0;
	
END.
