BEGIN ~pxl2ctbd~

IF ~TimeOfDay(NIGHT)~ THEN BEGIN pc_contreb SAY @17001
	IF ~~ THEN REPLY @17002 DO ~StartStore("pxagenod",LastTalkedToBy())~ EXIT
	IF ~~ THEN REPLY @17003 EXIT
END