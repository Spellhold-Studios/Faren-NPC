//Romance conflict

CHAIN IF WEIGHT #-1 ~Global("FHFSarahConflict","GLOBAL",1)~ THEN FHFRNJ FHFSarahConf1
@0
= @1
DO ~SetGlobal("FHFSarahConflict","GLOBAL",2)~
END
++ @2 DO ~SetGlobal("SarahRomanceActive","GLOBAL",3)~ + FHFSarahConf1_sarfriend
++ @3 DO ~SetGlobal("FHFarenRomanceActive","GLOBAL",3) SetGlobal("FHFarenFriend","GLOBAL",1) SetGlobal("FHFLGBWoman","GLOBAL",1)~ + FHFSarahConf1_farfriend
++ @4 DO ~SetGlobal("FHFarenRomanceActive","GLOBAL",3) SetGlobal("FHFarenFriend","GLOBAL",1) SetGlobal("FHFLGBWoman","GLOBAL",1)~ + FHFSarahConf1_farfriend

CHAIN FHFRNJ FHFSarahConf1_sarfriend
@5
EXIT

CHAIN FHFRNJ FHFSarahConf1_farfriend
@6
EXIT

//Banters

CHAIN
IF ~CombatCounter(0)
!Detect([ENEMY])
InParty(Myself)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty("K#Sarah")
See("K#Sarah")
!StateCheck("K#Sarah",CD_STATE_NOTVALID)
Global("FHFSarah1","GLOBAL",0)
AreaType(OUTDOOR)
TimeOfDay(NIGHT)~ THEN BFHFRN FHFSarah1
@7
= @8
DO ~SetGlobal("FHFSarah1","GLOBAL",1)~
== K#SARAHB @9
== BFHFRN @10
== K#SARAHB @11
== BFHFRN @12
EXIT

CHAIN
IF ~CombatCounter(0)
!Detect([ENEMY])
InParty(Myself)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty("K#Sarah")
See("K#Sarah")
!StateCheck("K#Sarah",CD_STATE_NOTVALID)
Global("FHFSarah2","GLOBAL",0)~ THEN BFHFRN FHFSarah2
@13
DO ~SetGlobal("FHFSarah2","GLOBAL",1)~
== K#SARAHB @14
== BFHFRN @15
= @16
EXIT

CHAIN
IF ~CombatCounter(0)
!Detect([ENEMY])
InParty(Myself)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty("FHFRN")
See("FHFRN")
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFSarah3","GLOBAL",0)~ THEN K#SARAHB FHFSarah3
@17
DO ~SetGlobal("FHFSarah3","GLOBAL",1)~
== BFHFRN @18
== K#SARAHB @19
== BFHFRN @20
== K#SARAHB @21
== BFHFRN @22
== K#SARAHB @23
EXIT
