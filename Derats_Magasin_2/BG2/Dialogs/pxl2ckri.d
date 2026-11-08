BEGIN ~pxl2ckri~

IF ~True()~ THEN BEGIN rencontre SAY @10011
	IF ~~ THEN REPLY @10012 DO ~StartStore("pxl2ckri",LastTalkedToBy()) EscapeArea()~ EXIT
	IF ~~ THEN REPLY @10013 GOTO chuchote
END

IF ~~ THEN BEGIN chuchote SAY @10015
	IF ~~ THEN DO ~EscapeArea()~ EXIT
END