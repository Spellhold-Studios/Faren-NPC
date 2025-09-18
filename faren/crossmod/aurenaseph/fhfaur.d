//Auren-Faren banters

CHAIN IF ~InParty("FHFRN")
See("FHFRN")
!StateCheck("FHFRN",CD_STATE_NOTVALID)
!StateCheck(Myself, CD_STATE_NOTVALID)
Global("FHFAur1","GLOBAL",0)~ THEN K#AurenB FHFAur1
@0
DO ~SetGlobal("FHFAur1","GLOBAL",1)~
== BFHFRN @1
== K#AurenB @2
== BFHFRN @3
EXIT

CHAIN IF ~InParty("FHFRN")
See("FHFRN")
!StateCheck("FHFRN",CD_STATE_NOTVALID)
!StateCheck(Myself, CD_STATE_NOTVALID)
Global("FHFAur2","GLOBAL",0)~ THEN K#AurenB FHFAur2
@4
DO ~SetGlobal("FHFAur2","GLOBAL",1)~
== BFHFRN @5
== K#AurenB @6
== BFHFRN @7
== K#AurenB @8
== BFHFRN @9
EXIT

CHAIN IF ~InParty("FHFRN")
See("FHFRN")
!StateCheck("FHFRN",CD_STATE_NOTVALID)
!StateCheck(Myself, CD_STATE_NOTVALID)
GlobalGT("FHFHalmar","GLOBAL",1)
Global("FHFAur3","GLOBAL",0)~ THEN K#AurenB FHFAur3
@10
DO ~SetGlobal("FHFAur3","GLOBAL",1)~
== BFHFRN @11
== K#AurenB @12
== BFHFRN @13
= @14
== K#AurenB @15
== BFHFRN @16
= @17
== K#AurenB @18
EXIT
