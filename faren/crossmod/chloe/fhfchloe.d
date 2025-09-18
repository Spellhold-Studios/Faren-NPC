//Conflict 1

CHAIN IF WEIGHT #-1 ~Global("FHFChloeConflict1","GLOBAL",1)~ THEN RCHLOEJ FHFChloeConf1
@0
DO ~SetGlobal("FHFChloeConflict1","GLOBAL",2)~
== FHFRNJ @1
== RCHLOEJ @2
EXIT

//Conflict 2

CHAIN IF WEIGHT #-1 ~Global("FHFChloeConflict2","GLOBAL",1)~ THEN RCHLOEJ FHFChloeConf2
@3
DO ~SetGlobal("FHFChloeConflict2","GLOBAL",2)~
== FHFRNJ @4
== RCHLOEJ @5
= @6
== FHFRNJ @7
== RCHLOEJ @8
END
++ @9 DO ~SetGlobal("FHFarenRomanceActive","GLOBAL",3) SetGlobal("FHFarenFriend","GLOBAL",1)~ EXTERN FHFRNJ FHFChloeConf2_farfriend
++ @10 DO ~SetGlobal("FHFarenRomanceActive","GLOBAL",3)~ EXTERN FHFRNJ FHFChloeConf2_farfriend
++ @11 DO ~SetGlobal("ChloeRomanceActiveCR","GLOBAL",3)~ + FHFChloeConf2_chloefriend

CHAIN FHFRNJ FHFChloeConf2_farfriend
@12
== RCHLOEJ @13
EXIT

CHAIN RCHLOEJ FHFChloeConf2_chloefriend
@14
== FHFRNJ @15
EXIT


//Banters

CHAIN IF ~InParty("FHFRN")
InMyArea("FHFRN")
!StateCheck("FHFRN",CD_STATE_NOTVALID)
!StateCheck(Myself,CD_STATE_NOTVALID)
AreaType(CITY)
AreaType(OUTDOOR)
Global("FHFChloe1","GLOBAL",0)~ THEN RCHLOEJ FHFChloe1
@16
DO ~SetGlobal("FHFChloe1","GLOBAL",1)~
== BFHFRN @17
== RCHLOEJ @18
== BFHFRN IF ~!Global("FHFarenRomanceActive","GLOBAL",2)~ THEN @19
== RCHLOEJ IF ~!Global("FHFarenRomanceActive","GLOBAL",2)~ THEN @20
== BFHFRN IF ~!Global("FHFarenRomanceActive","GLOBAL",2)~ THEN @21
== RCHLOEJ IF ~!Global("FHFarenRomanceActive","GLOBAL",2)~ THEN @22
== BFHFRN IF ~Global("FHFarenRomanceActive","GLOBAL",2)~ THEN @23
== RCHLOEJ IF ~Global("FHFarenRomanceActive","GLOBAL",2)~ THEN @24
EXIT

CHAIN IF ~InParty("FHFRN")
InMyArea("FHFRN")
!StateCheck("FHFRN",CD_STATE_NOTVALID)
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFChloe2","GLOBAL",0)~ THEN RCHLOEJ FHFChloe2
@25
DO ~SetGlobal("FHFChloe2","GLOBAL",1)~
== BFHFRN @26
== RCHLOEJ @27
== BFHFRN @28
== RCHLOEJ @29
EXIT

CHAIN IF ~InParty("FHFRN")
InMyArea("FHFRN")
!StateCheck("FHFRN",CD_STATE_NOTVALID)
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFChloe3","GLOBAL",0)~ THEN RCHLOEJ FHFChloe3
@30
DO ~SetGlobal("FHFChloe3","GLOBAL",1)~
== BFHFRN @31
== RCHLOEJ @32
EXIT
