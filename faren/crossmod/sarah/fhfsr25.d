CHAIN
IF ~CombatCounter(0)
!Detect([ENEMY])
InParty(Myself)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty("FHFRN")
See("FHFRN")
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFSarah25","GLOBAL",0)~ THEN K#SAR25B FHFSarah25
@0
DO ~SetGlobal("FHFSarah25","GLOBAL",1)~
== BFHF25 @1
== K#SAR25B @2
== BFHF25 @3
== K#SAR25B @4
EXIT