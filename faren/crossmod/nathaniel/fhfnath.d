//Romance conflict

//Conflict talk #1

CHAIN IF WEIGHT #-1 ~Global("FHFNathConflict1","GLOBAL",1)~ THEN FHFRNJ FHFNConf1
@0
DO ~SetGlobal("FHFNathConflict1","GLOBAL",2)~
== FHNATJ @1
== FHFRNJ @2
== FHNATJ @3
== FHFRNJ @4
== FHNATJ @5
          = @6
EXIT

//Conflict talk #2

CHAIN IF WEIGHT #-1 ~Global("FHFNathConflict2","GLOBAL",1)~ THEN FHFRNJ FHFNConf2
@7
== FHNATJ @8
== FHFRNJ @9
END
++ @10 DO ~SetGlobal("FHFNathConflict2","GLOBAL",2)~ + FHFNConf2_talk
++ @11 DO ~SetGlobal("FHFNathConflict2","GLOBAL",2) SetGlobal("FHFarenRomanceActive","GLOBAL",3)~ EXTERN FHNATJ FHFNConf2_farfriend
++ @12 DO ~SetGlobal("FHFNathConflict2","GLOBAL",2) SetGlobal("NathRomanceActive","GLOBAL",3)~ EXTERN FHNATJ FHFNConf2_nathfriend

CHAIN FHFRNJ FHFNConf2_talk
@13
== FHNATJ @14
== FHFRNJ @15
END
++ @16 DO ~SetGlobal("FHFarenRomanceActive","GLOBAL",3)~ EXTERN FHNATJ FHFNConf2_farfriend
++ @17 DO ~SetGlobal("FHFarenRomanceActive","GLOBAL",3) SetGlobal("FHFarenFriend","GLOBAL",1)~ EXTERN FHNATJ FHFNConf2_farfriend
++ @12 DO ~SetGlobal("NathRomanceActive","GLOBAL",3)~ EXTERN FHNATJ FHFNConf2_nathfriend

CHAIN FHNATJ FHFNConf2_farfriend
@18
== FHFRNJ @19
= @20
EXIT

CHAIN FHNATJ FHFNConf2_nathfriend
@21
== FHFRNJ @22
EXIT

//Banters

CHAIN IF ~InParty("FHFRN")
See("FHFRN")
!StateCheck("FHFRN",CD_STATE_NOTVALID)
!StateCheck(Myself,CD_STATE_NOTVALID)
Global("FHFNathTalk","GLOBAL",0)~ THEN BFHNAT FHFNath1
@23
DO ~SetGlobal("FHFNathTalk","GLOBAL",1)~
== BFHFRN @24
          = @25
== BFHNAT @26
== BFHFRN @27
== BFHNAT @28
== BFHFRN @29
== BFHNAT @30
EXIT

CHAIN IF ~InParty("FHFRN")
See("FHFRN")
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFNath1","GLOBAL",1)
!StateCheck(Myself,CD_STATE_NOTVALID)
!Global("FHFarenRomanceActive","GLOBAL",2)
Global("FHFNath2","GLOBAL",0)~ THEN BFHNAT FHFNath2
@31
DO ~SetGlobal("FHFNath2","GLOBAL",1)~
== BFHFRN @32
= @33
== BFHNAT @34
== BFHFRN @35
== BFHNAT @36
== BFHFRN @37
EXIT

CHAIN IF ~InParty("FHFRN")
See("FHFRN")
!StateCheck("FHFRN",CD_STATE_NOTVALID)
!StateCheck(Myself,CD_STATE_NOTVALID)
Global("FHFNath3","GLOBAL",0)~ THEN BFHNAT FHFNath2
@38
DO ~SetGlobal("FHFNath3","GLOBAL",1)~
== BFHFRN @39
== BFHNAT @40
== BFHFRN @41
== BFHNAT @42
== BFHFRN @43
== BFHNAT @44
== BFHFRN @45
== BFHNAT @46
          = @47
EXIT


