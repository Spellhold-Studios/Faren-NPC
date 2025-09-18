//ToB banters

CHAIN IF ~InParty("FHFRN")
See("FHFRN")
!StateCheck("FHFRN",CD_STATE_NOTVALID)
!StateCheck(Myself,CD_STATE_NOTVALID)
!Global("FHFarenRomanceActive","GLOBAL",2)
Global("FHFYas25","GLOBAL",0)~ THEN BYASRA25 FHFYas25
@0
DO ~SetGlobal("FHFYas25","GLOBAL",1)~
== BFHF25 @1
== BYASRA25 @2
EXIT

CHAIN IF ~InParty("FHFRN")
See("FHFRN")
!StateCheck("FHFRN",CD_STATE_NOTVALID)
!StateCheck(Myself,CD_STATE_NOTVALID)
Global("FHFarenRomanceActive","GLOBAL",2)
Global("FHFYas25b","GLOBAL",0)~ THEN BYASRA25 FHFYas25b
@3
DO ~SetGlobal("FHFYas25b","GLOBAL",1)~
== BFHF25 @4
== BYASRA25 @5
EXIT

