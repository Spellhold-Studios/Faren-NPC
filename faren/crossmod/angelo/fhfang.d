//Conflict 1

CHAIN IF WEIGHT #-1 ~Global("FHFAngConflict1","GLOBAL",1)~ THEN FHFRNJ FHFAngeloConf1
@0
DO ~SetGlobal("FHFAngConflict1","GLOBAL",2)~
== ADANGELJ @1
== FHFRNJ @2
= @3
== ADANGELJ @4
== FHFRNJ @5
== ADANGELJ @6
== FHFRNJ @7
== ADANGELJ @8
= @9
EXIT

//Conflict 2

CHAIN IF WEIGHT #-1 ~Global("FHFAngConflict2","GLOBAL",1)~ THEN ADANGELJ FHFAngeloConf2
@10
DO ~SetGlobal("FHFAngConflict2","GLOBAL",2)~
== FHFRNJ @11
== ADANGELJ @12
== FHFRNJ @13
== ADANGELJ @14
== FHFRNJ @15
== ADANGELJ @16
END
++ @17 DO ~SetGlobal("FHFarenRomanceActive","GLOBAL",3) SetGlobal("FHFarenFriend","GLOBAL",1)~ + FHFAngeloConf2_farfriend
++ @18 DO ~SetGlobal("FHFarenRomanceActive","GLOBAL",3)~ + FHFAngeloConf2_farfriend
++ @19 DO ~SetGlobal("ADAngeloRomanceActive","GLOBAL",3)~ EXTERN FHFRNJ FHFAngeloConf2_angfriend

CHAIN ADANGELJ FHFAngeloConf2_farfriend
@20
== FHFRNJ @21
== ADANGELJ @22
EXIT

CHAIN FHFRNJ FHFAngeloConf2_angfriend
@23
== ADANGELJ @24
EXIT

//Banters

CHAIN IF ~InParty("FHFRN")
See("FHFRN")
!StateCheck("FHFRN",CD_STATE_NOTVALID)
!StateCheck(Myself,CD_STATE_NOTVALID)
Global("FHFAng1","GLOBAL",0)~ THEN BADANGEL FHFAng1
@25
DO ~SetGlobal("FHFAng1","GLOBAL",1)~
== BFHFRN @26
== BADANGEL @27
EXIT

CHAIN IF ~InParty("FHFRN")
See("FHFRN")
!StateCheck("FHFRN",CD_STATE_NOTVALID)
!StateCheck(Myself,CD_STATE_NOTVALID)
Global("FHFAng2","GLOBAL",0)~ THEN BADANGEL FHFAng2
@28
DO ~SetGlobal("FHFAng2","GLOBAL",1)~
== BFHFRN @29
== BADANGEL @30
== BFHFRN @31
= @32
== BADANGEL @33
EXIT

CHAIN IF ~InParty("FHFRN")
See("FHFRN")
!StateCheck("FHFRN",CD_STATE_NOTVALID)
!StateCheck(Myself,CD_STATE_NOTVALID)
AreaType(CITY)
Global("FHFAng3","GLOBAL",0)~ THEN BADANGEL FHFAng3
@34
DO ~SetGlobal("FHFAng3","GLOBAL",1)~
== BFHFRN @35
== BADANGEL @36
== BFHFRN @37
== BADANGEL @38
EXIT
