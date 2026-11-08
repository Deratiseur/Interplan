BEGIN ~pxl2maiq~

IF ~NumTimesTalkedTo(0)~ THEN presentation	SAY @901
	IF ~~ THEN REPLY @9050 GOTO monstres
	IF ~~ THEN REPLY @909 DO ~SetGlobal("maiqmalabs","LOCALS",1)~ GOTO equipement
	IF ~~ THEN REPLY @9022 DO ~SetGlobal("maiqsort","LOCALS",1)~ GOTO sort
	IF ~~ THEN REPLY @9052 GOTO qqun
	IF ~~ THEN REPLY @903 EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN presentation2 SAY @902
	IF ~~ THEN REPLY @9050 GOTO monstres
	IF ~Global("maiqmalabs","LOCALS",1)~ THEN REPLY @9011 GOTO malabs
	IF ~~ THEN REPLY @909 DO ~SetGlobal("maiqmalabs","LOCALS",1)~ GOTO equipement
	IF ~Global("maiqsort","LOCALS",0)~ THEN DO ~SetGlobal("maiqsort","LOCALS",1) ~REPLY @9022 GOTO sort
	IF ~Global("maiqsort","LOCALS",1)~ THEN REPLY @90221 GOTO sousort
	IF ~~ THEN REPLY @9052 GOTO qqun
	IF ~~ THEN REPLY @903 EXIT
END

IF ~~ THEN monstres SAY @9051
	IF ~~ THEN REPLY @9032 DO ~SetGlobal("maiqdragon","LOCALS",1)~ GOTO dragons
	IF ~~ THEN REPLY @9034 GOTO liches
	IF ~~ THEN REPLY @9038 GOTO tyrannoeils
	IF ~~ THEN REPLY @9040 GOTO illithids
	IF ~~ THEN REPLY @9042 GOTO drows
	IF ~~ THEN REPLY @9068 GOTO trolls
	IF ~~ THEN REPLY @904  GOTO presentation2
END

IF ~~ THEN dragons SAY @9033
	IF ~~ THEN GOTO monstres
END

IF ~~ THEN liches SAY @9035
	IF ~~ THEN REPLY @9036 GOTO devenir
	IF ~~ THEN REPLY @9058 GOTO monstres
END

IF ~~ THEN devenir SAY @9037
	IF ~~ THEN GOTO presentation2
END
		
IF ~~ THEN tyrannoeils SAY @9039
	IF ~~ THEN GOTO monstres
END

IF ~~ THEN illithids SAY @9041
	IF ~~ THEN GOTO monstres
END

IF ~~ THEN drows SAY @9043
	IF ~~ THEN GOTO monstres
END

IF ~~ THEN trolls SAY @9069
	IF ~~ THEN GOTO monstres
END

IF ~~ THEN equipement SAY @9010
	IF ~~ THEN GOTO presentation2
END

IF ~~ THEN malabs SAY @9012
	IF ~~ THEN REPLY @9013 DO ~SetGlobal("maiqrune","LOCALS",1)~ GOTO rune
	IF ~Global("maiqrune","LOCALS",1)~ THEN REPLY @9015 GOTO diamant
	IF ~~ THEN REPLY @9017 DO ~SetGlobal("maiqkang","LOCALS",1)~ GOTO kangaxx
	IF ~Dead("HLDEMI") Global("maiqkang","LOCALS",1)~ THEN REPLY @9019 GOTO demi
	IF ~~ THEN REPLY @904  GOTO presentation2
END

IF ~~ THEN rune SAY @9014
	IF ~~ THEN  GOTO malabs
END

IF ~~ THEN diamant SAY @9016
	IF ~~ THEN GOTO malabs
END

IF ~~ THEN kangaxx SAY @9018
	IF ~~ THEN GOTO malabs
END

IF ~~ THEN demi SAY @9021
	IF ~~ THEN GOTO malabs
END

IF ~~ THEN sort SAY @9023
	IF ~~ THEN GOTO presentation2
END

IF ~~ THEN sousort SAY @9023
	IF ~~ THEN REPLY @9024 GOTO souhait
	IF ~~ THEN REPLY @9026 DO ~SETGlobal("maiqcerq","LOCALS",1)~ GOTO premiercer
	IF ~Global("maiqcerq","LOCALS",1) CheckStatGT(LastTalkedToBy(),15,WIS)~ THEN REPLY @9028 DO ~SETGlobal("maiqcerqsec","LOCALS",1)~ GOTO enchantement
	IF ~Global("maiqcerqsec","LOCALS",1)~ THEN REPLY @9030 GOTO secondcer
	IF ~~ THEN REPLY @904  GOTO presentation2
END

IF ~~ THEN souhait SAY @9025
	IF ~~ THEN GOTO sousort
END

IF ~~ THEN premiercer SAY @9027
	IF ~~ THEN GOTO sousort
END

IF ~~ THEN enchantement SAY @9029
	IF ~~ THEN GOTO sousort
END

IF ~~ THEN secondcer SAY @9031
	IF ~~ THEN GOTO sousort
END

IF ~~ THEN qqun SAY @9053
	IF ~~ THEN REPLY @9057 GOTO maiq2
	IF ~~ THEN REPLY @907 GOTO nain
	IF ~~ THEN REPLY @9046 GOTO irenicus
	IF ~Global("maiqdragon","LOCALS",1)~ THEN REPLY @9055 GOTO firkraag
	IF ~~ THEN REPLY @9048 GOTO bhaal
	IF ~~ THEN REPLY @9044 GOTO ao
	IF ~~ THEN REPLY @904  GOTO presentation2
END

IF ~~ THEN maiq2 SAY @906
	IF ~~ THEN GOTO qqun
END

IF ~~ THEN nain SAY @908
	IF ~~ THEN REPLY @9059 GOTO agenor
END

IF ~~ THEN agenor SAY @9054
	IF ~~ THEN GOTO qqun
END

IF ~~ THEN irenicus SAY @9047
	IF ~~ THEN GOTO qqun
END

IF ~~ THEN bhaal SAY @9049
	IF ~~ THEN GOTO qqun
END

IF ~~ THEN ao SAY @9045
	IF ~~ THEN GOTO qqun
END

IF ~~ THEN firkraag SAY @9056
	IF ~~ THEN GOTO qqun
END

