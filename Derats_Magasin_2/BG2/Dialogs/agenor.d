BEGIN ~Agenor~

IF ~Global("pxl2quest1","GLOBAL",3)~ THEN BEGIN Elfe SAY @1049
	IF ~~ THEN REPLY @1052 DO ~SetGlobal("pxl2quest1","GLOBAL",4)~ GOTO Recompense
	IF ~~ THEN REPLY @1050 DO ~SetGlobal("pxl2quest1","GLOBAL",4)~ GOTO Recompense
END

IF ~!Global("Px_agenor","GLOBAL",12)~ THEN BEGIN Interplan SAY @101
	IF ~~ THEN REPLY @102 DO ~StartStore("pxageno2",LastTalkedToBy())~ EXIT
	IF ~Global("agenochaud","LOCALS",0)~ THEN REPLY @103 GOTO Chaudron
	IF ~~ THEN REPLY @1010 GOTO FaitQueRegarder
	IF ~Global("pxl2quest1","GLOBAL",1)~ THEN REPLY @1012 GOTO Debutquete
	IF ~Global("pxl2quest1","GLOBAL",1)~ THEN REPLY @1046 GOTO Debutquete
	IF ~Global("pxl2quest1","GLOBAL",2) PartyHasItem("pxl2elf2")~ THEN REPLY @1047 GOTO Potion
	IF ~Global("pxl2quest1","GLOBAL",2) PartyHasItem("pxl2elf1")~ THEN REPLY @1048 GOTO Parchemin
END

IF ~Global("Px_agenor","GLOBAL",12)~ THEN BEGIN Interplan SAY @101
	IF ~~ THEN REPLY @102 DO ~StartStore("pxagenor",LastTalkedToBy())~ EXIT
	IF ~~ THEN REPLY @1010 GOTO FaitQueRegarder
END

IF ~~ THEN BEGIN Chaudron SAY @104
	IF ~~ THEN DO ~SetGlobal("agenochaud","LOCALS",1)~ REPLY @105 GOTO Recettes
	IF ~~ THEN DO ~SetGlobal("agenochaud","LOCALS",1)~ REPLY @108 DO ~StartStore("pxageno2",LastTalkedToBy())~ EXIT
	IF ~~ THEN DO ~SetGlobal("agenochaud","LOCALS",1)~ REPLY @107 GOTO FaitQueRegarder
END

IF ~~ THEN BEGIN FaitQueRegarder SAY @1011
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Recettes SAY @106
	IF ~~ THEN REPLY @109 EXIT
END

IF ~~ THEN BEGIN Debutquete SAY @1013
	IF ~ReputationGT([PC],14)~ THEN REPLY @1014 GOTO croispasok
	IF ~ReputationLT([PC],15)~ THEN REPLY @1014 GOTO croispasno
END

IF ~~ THEN BEGIN croispasno SAY @1015
	IF ~~ THEN REPLY @1016 EXIT
END

IF ~~ THEN BEGIN croispasok SAY @1017
	IF ~~ THEN REPLY @1018 GOTO Raconter
	IF ~~ THEN REPLY @1019 GOTO Pasraconter
END

IF ~~ THEN BEGIN Pasraconter SAY @1020
	IF ~~ THEN REPLY @1021 EXIT
	IF ~~ THEN REPLY @1054 GOTO Raconter
END

IF ~~ THEN BEGIN Raconter SAY @1022 = @1024 = @1025 = @1026 = @1027
	IF ~~ THEN REPLY @1028 GOTO Comprendpas
	IF ~~ THEN REPLY @1029 GOTO Proposition1
	IF ~~ THEN REPLY @1030 GOTO Argent
	IF ~~ THEN REPLY @1036 EXIT
END

IF ~~ THEN BEGIN Argent SAY @1037
	IF ~~ THEN REPLY @1038 GOTO Proposition2
	IF ~~ THEN REPLY @1039 GOTO Menace
END

IF ~~ THEN BEGIN Menace SAY @1040
	IF ~~ THEN DO
	~ActionOverride(Player1,LeaveAreaLUA("AR0700","",[3734.414],11))
    ActionOverride(Player2,LeaveAreaLUA("AR0700","",[3708.390],11))
    ActionOverride(Player3,LeaveAreaLUA("AR0700","",[3786.389],11))
    ActionOverride(Player4,LeaveAreaLUA("AR0700","",[3746.353],11))
    ActionOverride(Player5,LeaveAreaLUA("AR0700","",[3822.373],11))
    ActionOverride(Player6,LeaveAreaLUA("AR0700","",[3786.351],11))~
	EXIT
END

IF ~~ THEN BEGIN Comprendpas SAY @1031
	IF ~~ THEN REPLY #4398 GOTO Oui
	IF ~~ THEN REPLY #4399 GOTO Non
END

IF ~~ THEN BEGIN Oui SAY @1032
	IF ~~ THEN REPLY @1034 GOTO Proposition2
	IF ~~ THEN REPLY @1035 EXIT
END

IF ~~ THEN BEGIN Non SAY @1033
	IF ~~ THEN REPLY @1034 GOTO Proposition2
	IF ~~ THEN REPLY @1035 EXIT
END

IF ~~ THEN BEGIN Proposition1 SAY @1041
	IF ~~ THEN REPLY @1043 EXIT
	IF ~~ THEN REPLY @1044 GOTO Offre
END

IF ~~ THEN BEGIN Proposition2 SAY @1042
	IF ~~ THEN REPLY @1043 DO ~AddJournalEntry(@61,QUEST) SetGlobal("pxl2quest1","GLOBAL",2)~ EXIT
	IF ~~ THEN REPLY @1044 GOTO Offre
END

IF ~~ THEN BEGIN Offre SAY @1045
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Potion SAY @1055 
	IF ~~ THEN DO
	~TakePartyItemNum("pxl2elf2",1)
	UseItem("pxl2elf2",Myself)
	SetGlobal("pxl2quest1","GLOBAL",3)
	DisplayStringHead(Myself,16233)
	Wait(1)
	AddJournalEntry(@63,QUEST)~ EXIT
END

IF ~~ THEN BEGIN Parchemin SAY @1051
	IF ~~ THEN DO
	~TakePartyItemNum("pxl2elf1",1)
	UseItem("pxl2elf1",Myself)
	SetGlobal("pxl2quest1","GLOBAL",3)
	Wait(1)
	AddJournalEntry(@63,QUEST)~ EXIT
END

IF ~Race(Myself,ELF)~ THEN BEGIN Recompense SAY @1053
	IF ~~ THEN DO
	~AddJournalEntry(@64,QUEST)
	AddXPObject(Player1,10000)
	AddXPObject(Player2,10000)
	AddXPObject(Player3,10000)
	AddXPObject(Player4,10000)
	AddXPObject(Player5,10000)
	AddXPObject(Player6,10000)
	GivePartyGold(20000)
	GiveItemCreate("pxl2qpow",Player1,1,1,0)
	SetGlobal("pxl2quest1D","GLOBAL",1)
	SetGlobal("pxl2chaudron","GLOBAL",1)~ EXIT
END