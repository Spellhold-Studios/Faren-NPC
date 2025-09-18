//Greeting
//Fate spirit dialogue

BEGIN FHF25

//Greeting - romance

IF ~Global("FHFarenSummoned","GLOBAL",1) Global("FHFarenRomanceActive","GLOBAL",2)~ FHFGreetR1_1
SAY @0
++ @1 DO ~SetGlobal("FHFarenSummoned","GLOBAL",2)~ + FHFGreetR1_2
++ @2 DO ~SetGlobal("FHFarenSummoned","GLOBAL",2)~ + FHFGreetR1_3
++ @3 DO ~SetGlobal("FHFarenSummoned","GLOBAL",2)~ + FHFGreetR1_4
END

IF ~~ FHFGreetR1_2
SAY @4
++ @5 + FHFGreetR1_5
++ @6 + FHFGreetR1_6
END

IF ~~ FHFGreetR1_3
SAY @7
++ @8 + FHFGreetR1_5
++ @6 + FHFGreetR1_6
END

IF ~~ FHFGreetR1_4
SAY @9
=
@10
++ @11 + FHFGreetR1_5
++ @6 + FHFGreetR1_6
END

IF ~~ FHFGreetR1_5
SAY @12
IF ~~ DO ~JoinParty()~ EXIT
END

IF ~~ FHFGreetR1_6
SAY @13
IF ~~ DO ~MoveToPointNoInterrupt([1690.1664]) Face(0)~ EXIT
END

//Greeting - no romance

IF ~Global("FHFarenSummoned","GLOBAL",1) !Global("FHFarenRomanceActive","GLOBAL",2)~ FHFGreet_1
SAY @14
=
@15
++ @16 DO ~SetGlobal("FHFarenSummoned","GLOBAL",2)~ + FHFGreet_2
++ @17 DO ~SetGlobal("FHFarenSummoned","GLOBAL",2)~ + FHFGreet_3
++ @18 DO ~SetGlobal("FHFarenSummoned","GLOBAL",2)~ + FHFGreet_4
END

IF ~~ FHFGreet_2
SAY @19
IF ~~ DO ~JoinParty()~ EXIT
END

IF ~~ FHFGreet_3
SAY @20
++ @21 + FHFGreet_2
++ @22 + FHFGreet_5
END

IF ~~ FHFGreet_4
SAY @23
IF ~~ DO ~JoinParty()~ EXIT
END

IF ~~ FHFGreet_5
SAY @24
IF ~~ DO ~MoveToPointNoInterrupt([1690.1664]) Face(0)~ EXIT
END

IF ~Global("FHFarenSummoned","GLOBAL",2)~ FHFSummoned2
SAY @25
++ @26 DO ~JoinParty()~ EXIT
++ @27 + FHFSummoned2_wait
END

IF ~~ FHFSummoned2_wait
SAY @28
IF ~~ DO ~MoveToPointNoInterrupt([1690.1664]) Face(0)~ EXIT
END

EXTEND_TOP FATESP 6
+ ~!Dead("FHFRN") !InMyArea("FHFRN") Global("FHFarenSummoned","GLOBAL",0)~ + @29
DO ~SetGlobal("FHFarenFriend","GLOBAL",1)
CreateVisualEffect("SPPORTAL",[1999.1228])
Wait(2)
CreateCreature("fhfrn25",[1999.1228],0)
SetGlobal("FHFarenSummoned","GLOBAL",1)~ GOTO 8

+ ~!Dead("FHFRN") !InMyArea("FHFRN")
Global("FHFarenSummoned","GLOBAL",0)
!Global("AerieRomanceActive","GLOBAL",2)
!Global("AnomenRomanceActive","GLOBAL",2)
!Global("JaheiraRomanceActive","GLOBAL",2)
!Global("ViconiaRomanceActive","GLOBAL",2)
!Global("DornRomanceActive","GLOBAL",2)
!Global("HexxatRomanceActive","GLOBAL",2)
!Global("NeeraRomanceActive","GLOBAL",2)
!Global("RasaadRomanceActive","GLOBAL",2)~ + @30
DO ~SetGlobal("FHFarenRomanceActive","GLOBAL",2)
CreateVisualEffect("SPPORTAL",[1999.1228])
Wait(2)
CreateCreature("fhfrn25",[1999.1228],0)
SetGlobal("FHFarenSummoned","GLOBAL",1)~ GOTO 8
END
