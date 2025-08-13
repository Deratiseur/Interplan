EXTEND_BOTTOM BEGGAR1 0
	IF ~Global("pxl2magelno","LOCALS",0)
		OR (6)
		HasItemEquiped("pxl2aarm",Player1)
		HasItemEquiped("pxl2aarm",Player2)
		HasItemEquiped("pxl2aarm",Player3)
		HasItemEquiped("pxl2aarm",Player4)
		HasItemEquiped("pxl2aarm",Player5)
		HasItemEquiped("pxl2aarm",Player6)
		PartyGoldGT(499)~	THEN GOTO pxl2magelvu
END

APPEND BEGGAR1
	IF ~~ THEN BEGIN pxl2magelvu SAY @12039
		IF ~~ THEN REPLY @12040 GOTO pxl2magelprove
		IF ~~ THEN REPLY @12041 DO ~SetGlobal("pxl2magelno","LOCALS",1)~ EXIT
	END

	IF ~~ THEN BEGIN pxl2magelprove SAY @12042
		IF ~~ THEN REPLY @12043 GOTO pxl2magelcapa
	END
	
	IF ~~ THEN BEGIN pxl2magelcapa SAY @12044
		IF ~~ THEN REPLY @12045 DO
			~TakePartyItemNum("pxl2aarm",1)	DestroyItem("pxl2aarm")
			SetGlobal("pxl2magelno","LOCALS",1)
			TakePartyGold(500)
			DestroyGold(500)
			GiveItemCreate("pxl2aar2",LastTalkedToBy(),1,1,1)~
			GOTO pxl2magelcraft
		IF ~~ THEN REPLY @12046 DO ~SetGlobal("pxl2magelno","LOCALS",1)~ EXIT
		IF ~~ THEN REPLY @12047 DO
			~TakePartyItemNum("pxl2aarm",1)	DestroyItem("pxl2aarm")
			SetGlobal("pxl2magelno","LOCALS",1)
			TakePartyGold(500)
			DestroyGold(500)
			GiveItemCreate("pxl2aar2",LastTalkedToBy(),1,1,1)~
			GOTO pxl2magelcraft
	END

	IF ~~ THEN BEGIN pxl2magelcraft SAY @12048
		IF ~~ THEN REPLY @12049 DO~TakePartyItemNum("pxl2aar2",1)	DestroyItem("pxl2aar2")	GiveItemCreate("pxl2aar2",LastTalkedToBy(),1,1,1)~ EXIT
		IF ~~ THEN REPLY @12050 DO~TakePartyItemNum("pxl2aar2",1)	DestroyItem("pxl2aar2")	GiveItemCreate("pxl2aar2",LastTalkedToBy(),1,1,1)~	GOTO pxl2magelrembourse
		IF ~~ THEN REPLY @12051 EXIT
		IF ~~ THEN REPLY @12052 GOTO pxl2magelrembourse
	END
	
	IF ~~ THEN BEGIN pxl2magelrembourse SAY @12053
		IF ~~ THEN DO ~EscapeArea()~ EXIT
	END
END