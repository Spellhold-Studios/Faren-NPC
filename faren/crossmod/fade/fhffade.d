//Romance conflict

CHAIN IF WEIGHT #-1 ~Global("FHFFadeConflict1","GLOBAL",1)~ THEN FHFRNJ FHFFadeConf1
@0
= @1
DO ~SetGlobal("FHFFadeConflict","GLOBAL",2)~
END
++ @2 DO ~SetGlobal("E3FadeRomanceActive","GLOBAL",3)~ + FHFFadeConf1_fadefriend
++ @3 DO ~SetGlobal("FHFarenRomanceActive","GLOBAL",3) SetGlobal("FHFarenFriend","GLOBAL",1)~ + FHFFadeConf1_farfriend

CHAIN FHFRNJ FHFFadeConf1_fadefriend
@4
EXIT

CHAIN FHFRNJ FHFFadeConf1_farfriend
@5
EXIT


//Banters

CHAIN IF ~InParty("BE3FADE")
See("BE3FADE")
!StateCheck("BE3FADE",CD_STATE_NOTVALID)
!StateCheck(Myself,CD_STATE_NOTVALID)
Global("FHFFade1","GLOBAL",0)~ THEN BFHFRN FHFFade1
@6
DO ~SetGlobal("FHFFade1","GLOBAL",1)~
== BE3FADE @7
= @8
= @9
== BFHFRN @10
== BE3FADE @11
EXIT

CHAIN IF ~InParty("E3FADE")
See("E3FADE")
!StateCheck("E3FADE",CD_STATE_NOTVALID)
!StateCheck(Myself,CD_STATE_NOTVALID)
Global("FHFFade2","GLOBAL",0)~ THEN BFHFRN FHFFade2
@12
= @13
DO ~SetGlobal("FHFFade2","GLOBAL",1)~
== BE3FADE @14
== BFHFRN @15
EXIT

CHAIN IF ~InParty("FHFRN")
See("FHFRN")
!StateCheck("FHFRN",CD_STATE_NOTVALID)
!StateCheck(Myself,CD_STATE_NOTVALID)
Global("FHFFade3","GLOBAL",0)~ THEN BE3FADE FHFFade3
@16
DO ~SetGlobal("FHFFade3","GLOBAL",1)~
== BFHFRN @17
== BE3FADE @18
== BFHFRN @19
== BE3FADE @20
EXIT
