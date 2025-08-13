BEGIN ~pxl2frg5~

IF ~Global("pxfrg5","LOCALS",1)~ THEN presentation	SAY @12054 = @12055
		IF ~~ THEN DO ~SetGlobal("pxl2frg5","LOCALS",2) TakePartyItemNum("pxl2gele",1)	DestroyItem("pxl2gele")	GiveItemCreate("pxl2gely",Player1,0,0,0) EscapeArea()~ EXIT
END
