BEGIN pxl2iwd

IF ~Global("Interiwd","GLOBAL",0)~ THEN BEGIN Interplaniwd1	SAY @1
	IF ~~ THEN REPLY @2 DO ~SetGlobal("Interiwd","GLOBAL",1)~ GOTO Presentation
	IF ~~ THEN REPLY @3 DO ~SetGlobal("Interiwd","GLOBAL",1)~ GOTO Presentation
END

IF ~~ THEN BEGIN Presentation	SAY @4 = @5
	IF ~~ THEN REPLY @6 GOTO Abuser
	IF ~~ THEN REPLY @8 GOTO Choixmagasin
	IF ~~ THEN REPLY @9 EXIT
END

IF ~~ THEN BEGIN Abuser	SAY @7
	IF ~~ THEN REPLY @8 GOTO Choixmagasin
	IF ~~ THEN REPLY @9 EXIT
END

IF ~~ THEN BEGIN Choixmagasin SAY @10
	IF ~~ THEN REPLY @16 DO ~StartStore("pxagenoa",LastTalkedToBy())~ EXIT
	IF ~~ THEN REPLY @17 DO ~StartStore("pxagenob",LastTalkedToBy())~ EXIT
	IF ~~ THEN REPLY @18 DO ~StartStore("pxagenoc",LastTalkedToBy())~ EXIT
END

IF ~Global("Interiwd","GLOBAL",1)~ THEN BEGIN Interplaniwd2	SAY @14
	IF ~~ THEN REPLY @11 DO ~StartStore("pxagenoa",LastTalkedToBy())~ EXIT
	IF ~~ THEN REPLY @19 DO ~StartStore("pxagenob",LastTalkedToBy())~ EXIT
	IF ~~ THEN REPLY @20 DO ~StartStore("pxagenoc",LastTalkedToBy())~ EXIT
	IF ~~ THEN REPLY @15 GOTO Trompe
END

IF ~~ THEN BEGIN Trompe	SAY @13
	IF ~~ THEN EXIT
END		


