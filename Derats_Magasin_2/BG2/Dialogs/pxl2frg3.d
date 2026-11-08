EXTEND_BOTTOM WMART2 0
	IF ~Global("pxl2dentno","LOCALS",0)
		OR (6)
		HasItemEquiped("pxl2dent",Player1)
		HasItemEquiped("pxl2dent",Player2)
		HasItemEquiped("pxl2dent",Player3)
		HasItemEquiped("pxl2dent",Player4)
		HasItemEquiped("pxl2dent",Player5)
		HasItemEquiped("pxl2dent",Player6)
		PartyGoldGT(14999)~ THEN GOTO pxl2dentvu
END

APPEND WMART2
	IF ~~ THEN pxl2dentvu SAY @12021
		IF ~~ THEN REPLY @12027 GOTO pxl2dentok
		IF ~~ THEN REPLY @12023 GOTO pxl2dentdoute
	END

	IF ~~ THEN pxl2dentdoute SAY @12024
		IF ~~ THEN REPLY @12025 GOTO pxl2dentok
		IF ~~ THEN REPLY @12026 DO ~SetGlobal("pxl2dentno","LOCALS",1)~ EXIT
	END

	IF ~~ THEN pxl2dentok SAY @12028
		IF ~~ THEN REPLY @12029 DO
			~TakePartyItemNum("pxl2dent",1)	DestroyItem("pxl2dent")
			SetGlobal("pxl2dentno","LOCALS",1)
			TakePartyGold(15000)
			DestroyGold(15000)
			GiveItemCreate("pxl2det2",LastTalkedToBy(),1,1,1)~
			EXIT
		IF ~~ THEN REPLY @120210 DO ~SetGlobal("pxl2dentno","LOCALS",1)~ EXIT
	END
END