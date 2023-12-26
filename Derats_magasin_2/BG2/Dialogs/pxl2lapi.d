BEGIN ~Pxl2lapi~

IF ~Global("pxl2quest1","GLOBAL",1)~ THEN BEGIN bonjour SAY @1000
	IF ~~ THEN REPLY @10013 GOTO vraib
END

IF ~Global("pxl2quest1","GLOBAL",0)~ THEN BEGIN bonjour SAY @1000
	IF ~~ THEN REPLY @1001 GOTO familier
	IF ~~ THEN REPLY @1002 GOTO lapine
END

IF ~~ THEN BEGIN familier SAY @1003
	IF ~~ THEN REPLY @1004 GOTO agenor
	IF ~~ THEN REPLY @1008 GOTO robe
	IF ~~ THEN REPLY @10016 GOTO nom
END

IF ~~ THEN BEGIN agenor SAY @1005
	IF ~~ THEN REPLY @1006 GOTO nain
END

IF ~~ THEN BEGIN nain SAY @1007
	IF ~~ THEN DO ~SetGlobal("pxl2quest1","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN lapine SAY @1015
	IF ~~ THEN REPLY @1004 GOTO agenor
	IF ~~ THEN REPLY @1008 GOTO robe
	IF ~~ THEN REPLY @10016 GOTO nom
END

IF ~~ THEN BEGIN robe SAY @1009
	IF ~~ THEN REPLY #13912 GOTO faits
	IF ~~ THEN REPLY @10011 GOTO faits
END

IF ~~ THEN BEGIN faits SAY @1012
	IF ~~ THEN DO ~SetGlobal("pxl2quest1","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN vraib SAY @10014
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN nom SAY @1017
	IF ~~ THEN REPLY @10018 GOTO alors
END

IF ~~ THEN BEGIN alors SAY @1019
	IF ~~ THEN DO ~SetGlobal("pxl2quest1","GLOBAL",1)~ EXIT
END
