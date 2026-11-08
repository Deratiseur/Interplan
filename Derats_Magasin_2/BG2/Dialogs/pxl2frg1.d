EXTEND_BOTTOM UDDROW23 0
	IF ~Global("pxl2btoino","LOCALS",0)
		OR (6)
		HasItemEquiped("pxl2btoi",Player1)
		HasItemEquiped("pxl2btoi",Player2)
		HasItemEquiped("pxl2btoi",Player3)
		HasItemEquiped("pxl2btoi",Player4)
		HasItemEquiped("pxl2btoi",Player5)
		HasItemEquiped("pxl2btoi",Player6)
		PartyGoldGT(9999)~ THEN GOTO PXL2BTOIL
END

APPEND UDDROW23
	IF ~~ THEN BEGIN PXL2BTOIL SAY @12011
		IF ~~ THEN REPLY @12027 DO
			~TakePartyItemNum("pxl2btoi",1)	DestroyItem("pxl2btoi")
			TakePartyGold(10000)	DestroyGold(10000)
			CreateVisualEffectObject("spcrtwpn",Myself)
			GiveItemCreate("pxl2bto2",LastTalkedToBy(),1,1,1)~
			EXIT
		IF ~~ THEN REPLY #72423 DO ~SetGlobal("pxl2btoino","LOCALS",1)~ GOTO 3
	END
END