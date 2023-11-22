BEGIN pxl2ramp

IF ~RandomNum(5,1)~ THEN BEGIN ramp1 SAY @30301
	IF ~~ THEN REPLY @303017 DO ~StartStore("pxl2rapa",LastTalkedToBy())~ EXIT
	IF ~~ THEN REPLY @303018 EXIT
END

IF ~RandomNum(5,2)~ THEN BEGIN ramp2 SAY @30302
	IF ~~ THEN REPLY @303017 DO ~StartStore("pxl2rapa",LastTalkedToBy())~ EXIT
	IF ~~ THEN REPLY @303018 EXIT
END

IF ~RandomNum(5,3)~ THEN BEGIN ramp3 SAY @30303
	IF ~~ THEN REPLY @303017 DO ~StartStore("pxl2rapa",LastTalkedToBy())~ EXIT
	IF ~~ THEN REPLY @303018 EXIT
END

IF ~RandomNum(5,4)~ THEN BEGIN ramp4 SAY @30304
	IF ~~ THEN REPLY @303017 DO ~StartStore("pxl2rapa",LastTalkedToBy())~ EXIT
	IF ~~ THEN REPLY @303018 EXIT
END

IF ~RandomNum(5,5)~ THEN BEGIN ramp5 SAY @30305
	IF ~~ THEN REPLY @303017 DO ~StartStore("pxl2rapa",LastTalkedToBy())~ EXIT
	IF ~~ THEN REPLY @303018 EXIT
END