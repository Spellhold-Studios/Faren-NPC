//Conflict 1

CHAIN IF WEIGHT #-1 ~Global("FHFAmberConflict","GLOBAL",1)~ THEN M#AMBERN FHFAmberConf
@0
DO ~SetGlobal("FHFAmberConflict","GLOBAL",2)~
END
++ @1 DO ~SetGlobal("M#AmberRomanceActive","GLOBAL",3)~ + FHFAmberConf_fond
++ @2 DO ~SetGlobal("FHFarenRomanceActive","GLOBAL",3) SetGlobal("FHFarenFriend","GLOBAL",1)~ + FHFAmberConf_interest
++ @3 DO ~SetGlobal("FHFarenRomanceActive","GLOBAL",3)~ + FHFAmberConf_interest

CHAIN M#AMBERN FHFAmberConf_fond
@4
= @5
DO ~SetGlobal("M#AmberRomanceActive","GLOBAL",3)
SetDialogue("m#amberj")
SetGlobal("M#EndMusic","GLOBAL",1)~
EXIT

CHAIN M#AMBERN FHFAmberConf_interest
@6
= @7
DO ~SetGlobal("M#AmberRomanceActive","GLOBAL",3)
SetDialogue("m#amberj")
SetGlobal("M#EndMusic","GLOBAL",1)~
EXIT

//Banters

CHAIN IF ~InParty("FHFRN")
See("FHFRN")
!StateCheck("FHFRN",CD_STATE_NOTVALID)
!StateCheck(Myself,CD_STATE_NOTVALID)
Global("FHFAmberTalk1","GLOBAL",0)
OR(2)
AreaCheck("AR0300")
AreaCheck("AR1600")~ THEN BM#AMBER FHFAmber1
@8
DO ~SetGlobal("FHFAmberTalk1","GLOBAL",1)~
== BFHFRN @9
== BM#AMBER @10
== BFHFRN @11
== BM#AMBER @12
== BFHFRN @13
EXIT

CHAIN IF ~InParty("FHFRN")
See("FHFRN")
!StateCheck("FHFRN",CD_STATE_NOTVALID)
!StateCheck(Myself, CD_STATE_NOTVALID)
Global("FHFAmberTalk2","GLOBAL",0)
AreaType(OUTDOOR)~ THEN BM#AMBER FHFAmber2
@14
DO ~SetGlobal("FHFAmberTalk2","GLOBAL",1)~
== BFHFRN @15
== BFHFRN IF ~TimeOfDay(DAY)~ THEN @16
== BFHFRN IF ~TimeOfDay(NIGHT)~ THEN @17
== BM#AMBER @18
EXIT

CHAIN IF ~InParty("M#Amber")
See("M#Amber")
!StateCheck("M#Amber",CD_STATE_NOTVALID)
!StateCheck(Myself,CD_STATE_NOTVALID)
Global("FHFAmberTalk3","GLOBAL",0)~ THEN BFHFRN FHFAmber3
@19
DO ~SetGlobal("FHFAmberTalk3","GLOBAL",1)~
== BM#AMBER @20
== BFHFRN @21
== BM#AMBER @22
== BFHFRN @23
== BM#AMBER @24
EXIT
