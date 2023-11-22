EXTEND_BOTTOM WALL1 0
	IF ~Global("pxl2concno","LOCALS",0)
		OR (6)
		HasItemEquiped("pxl2conc",Player1)
		HasItemEquiped("pxl2conc",Player2)
		HasItemEquiped("pxl2conc",Player3)
		HasItemEquiped("pxl2conc",Player4)
		HasItemEquiped("pxl2conc",Player5)
		HasItemEquiped("pxl2conc",Player6)
		PartyGoldGT(49999)~ THEN GOTO pxl2concvu
END

APPEND WALL1
	IF ~~ THEN pxl2concvu SAY @12031
		IF ~~ THEN REPLY @12032 GOTO pxl2concok
		IF ~~ THEN REPLY @12033 DO ~SetGlobal("pxl2concno","LOCALS",1)~ GOTO pxl2concno
	END

	IF ~~ THEN pxl2concno SAY @12034
		IF ~~ THEN EXIT
	END

	IF ~~ THEN pxl2concok SAY @12035
		IF ~~ THEN REPLY @12036 DO ~SetGlobal("pxl2concno","LOCALS",1)~ EXIT
		IF ~~ THEN REPLY @12037 DO
			~SetGlobal("pxl2concno","LOCALS",1)
			TakePartyGold(50000)	DestroyGold(50000)
			GiveItemCreate("pxl2conm",LastTalkedToBy(),1,1,1)~
			GOTO pxl2concdone
	END

	IF ~~ THEN pxl2concdone SAY @12038
		IF ~~ THEN EXIT
	END
END