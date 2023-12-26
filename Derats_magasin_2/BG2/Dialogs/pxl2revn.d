BEGIN ~pxl2revn~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN Rencontre SAY @1401
IF ~~ THEN REPLY @1402 GOTO Baton
IF ~~ THEN REPLY @1403 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN Baton SAY @1404
IF ~~ THEN REPLY @1405 GOTO Explication
IF ~~ THEN REPLY @1406 GOTO Explication
IF ~~ THEN REPLY @1407 GOTO Explication
END

IF ~~ THEN BEGIN Explication SAY @1408
IF ~~ THEN REPLY @1409 GOTO Altruisme
IF ~~ THEN REPLY @14010 GOTO Proposition
IF ~~ THEN REPLY @14011 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN Altruisme SAY @14012
IF ~~ THEN DO ~TakePartyItem("pxl2vrid") DestroyItem("pxl2vrid")
	DisplayStringHead(Myself,@14013)
	DisplayStringNoName(Myself,@14013)
	AddexperienceParty(30000)
	Wait (2)
	Kill(Myself)~
	EXIT
END

IF ~~ THEN BEGIN Proposition SAY @14014
IF ~~ THEN REPLY @14015 GOTO Pouvoirs
IF ~~ THEN REPLY @14016 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN Pouvoirs SAY @14012
IF ~~ THEN DO ~TakePartyItem("pxl2vrid") DestroyItem("pxl2vrid")
	ReallyForceSpellRES("pxl2rvnd",LastTalkedToBy(Myself))
	AddXPObject(LastTalkedToBy(Myself),5000)
	DisplayStringHead(Myself,@14017)
	DisplayStringNoName(Myself,@14017)
	Wait(2)
	Kill(Myself)~
	EXIT
END