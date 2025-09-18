//CONTENTS
//Vampire dialogue
//Kickout dialogue
//Rejoining dialogue
//Leaving if unhappy

BEGIN FHFRNP

//Vampire dialogue

IF ~Global("FHFarenVampire","GLOBAL",5)~ FHFVamp
SAY @0
= @1
++ @2 DO ~IncrementGlobal("FHFarenLike","GLOBAL",1) SetGlobal("FHFarenVampire","GLOBAL",6) EraseJournalEntry(32084) EraseJournalEntry(32085) EraseJournalEntry(16351) EraseJournalEntry(15710) EraseJournalEntry(6589) EraseJournalEntry(@3001)
EraseJournalEntry(@3002)~
SOLVED_JOURNAL @5 + FHFVamp_better
++ @6 DO ~SetGlobal("FHFarenVampire","GLOBAL",6) SetGlobal("FHFarenVampire","GLOBAL",6) EraseJournalEntry(32084) EraseJournalEntry(32085) EraseJournalEntry(16351) EraseJournalEntry(15710) EraseJournalEntry(6589) EraseJournalEntry(@3001)
EraseJournalEntry(@3002)~
SOLVED_JOURNAL @5 + FHFVamp_missed
++ @7 DO ~SetGlobal("FHFarenVampire","GLOBAL",6) SetGlobal("FHFarenVampire","GLOBAL",6) EraseJournalEntry(32084) EraseJournalEntry(32085) EraseJournalEntry(16351) EraseJournalEntry(15710) EraseJournalEntry(6589) EraseJournalEntry(@3001)
EraseJournalEntry(@3002)~
SOLVED_JOURNAL @5 + FHFVamp_pain
END

IF ~~ FHFVamp_better
SAY @8
IF ~~ THEN + FHFVamp_place
END

IF ~~ FHFVamp_missed
SAY @9
IF ~~ THEN + FHFVamp_place
END

IF ~~ FHFVamp_pain
SAY @10
IF ~~ DO ~SetGlobal("FHFarenRomanceActive","GLOBAL",3) EscapeArea()~ EXIT
END

IF ~~ FHFVamp_place
SAY @11
IF ~~ EXIT
END

//Kickout dialogue

IF ~!InParty("FHFRN") !Global("FHFarenKicked","GLOBAL",1)~ FHF_leaving
SAY @12
+ ~!AreaCheck("AR0602")
!AreaCheck("AR0603")
!AreaCheck("AR0410")
!AreaCheck("AR0411")
!AreaCheck("AR0412")
!AreaCheck("AR0413")
!AreaCheck("AR0414")
!AreaCheck("AR1512")
!AreaCheck("AR1513")
!AreaCheck("AR1514")
!AreaCheck("AR1515")
!AreaCheck("AR1516")
!AreaCheck("AR1501")
!AreaCheck("AR1502")
!AreaCheck("AR1503")
!AreaCheck("AR1504")
!AreaCheck("AR1505")
!AreaCheck("AR1506")
!AreaCheck("AR1507")
!AreaCheck("AR1508")
!AreaCheck("AR1509")
!AreaCheck("AR1510")
!AreaCheck("AR1511")
!AreaCheck("AR2100")
!AreaCheck("AR2101")
!AreaCheck("AR2102")
!AreaCheck("AR2200")
!AreaCheck("AR2202")
!AreaCheck("AR2203")
!AreaCheck("AR2204")
!AreaCheck("AR2205")
!AreaCheck("AR2206")
!AreaCheck("AR2207")
!AreaCheck("AR2208")
!AreaCheck("AR2209")
!AreaCheck("AR2210")
!AreaCheck("AR2300")
!AreaCheck("AR2400")
!AreaCheck("AR2401")
!AreaCheck("AR2402")
!AreaCheck("AR2900")
!AreaCheck("AR2901")
!AreaCheck("AR2902")
!AreaCheck("AR2903")
!AreaCheck("AR2904")
!AreaCheck("AR2905")
!AreaCheck("AR2906")~ + @13 + FHF_inn
++ @14 + FHF_wait
++ @15 + FHF_stay
END

IF ~~ FHF_inn
SAY @16
IF ~~ DO ~SetGlobal("FHFarenKicked","GLOBAL",1) EscapeAreaMove("AR2010",780,539,5)~
EXIT
END

IF ~~ FHF_wait
SAY @17
IF ~~ DO ~SetGlobal("FHFarenKicked","GLOBAL",1)~
EXIT
END

IF ~~ FHF_stay
SAY @18
IF ~~ DO ~JoinParty()~
EXIT
END

//Rejoining dialogue

IF ~Global("FHFarenKicked","GLOBAL",1)~ FHF_hello
SAY @19
++ @20 + FHF_rejoin
++ @21 + FHF_way
END

IF ~~ FHF_rejoin
SAY @22
IF ~~ DO ~SetGlobal("FHFarenKicked","GLOBAL",0) JoinParty()~
EXIT
END

IF ~~ FHF_way
SAY @23
IF ~~ EXIT
END

//Leaving if unhappy

IF ~!Global("FHFarenKicked","GLOBAL",1)
HappinessLT(Myself,-290)~ FHF_unhappy
SAY @24
IF ~~ DO ~SetGlobal("FHFarenLeaveUnhappy","GLOBAL",1) EscapeArea()~
EXIT
END
