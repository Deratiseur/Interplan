BEGIN Agenor

IF ~!Dead("gromnir")~ THEN BEGIN Interplan	SAY @1
	IF ~~ THEN REPLY @12 DO ~StartStore("pxagenor",LastTalkedToBy())~ EXIT
	IF ~~ THEN REPLY @15 GOTO FaitQueRegarder
END

IF ~~ THEN BEGIN FaitQueRegarder	SAY @2
	IF ~~ THEN EXIT
END

IF ~Dead("gromnir") Global("agenortob","LOCALS",0)~ THEN BEGIN InterplanTOB	SAY @5
	IF ~~ THEN REPLY @51 DO ~SetGlobal("agenortob","LOCALS",1) StartStore("pxageno2",LastTalkedToBy())~ EXIT
	IF ~~ THEN REPLY @52 DO ~SetGlobal("agenortob","LOCALS",1) StartStore("pxagenor",LastTalkedToBy())~ EXIT
	IF ~~ THEN REPLY @53 DO ~SetGlobal("agenortob","LOCALS",1)~ GOTO FaitQueRegarder
END

IF ~Dead("gromnir") Global("agenortob","LOCALS",1)~ THEN BEGIN InterplanTOB2	SAY @6
	IF ~~ THEN REPLY @61 DO ~StartStore("pxageno2",LastTalkedToBy())~ EXIT
	IF ~~ THEN REPLY @62 DO ~StartStore("pxagenor",LastTalkedToBy())~ EXIT
	IF ~~ THEN REPLY @63 GOTO FaitQueRegarder
END