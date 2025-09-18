CHAIN
IF ~CombatCounter(0)
!Detect([ENEMY])
InParty(Myself)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty("Saerileth")
See("Saerileth")
!StateCheck("Saerileth",CD_STATE_NOTVALID)
Global("FHFSaer25","GLOBAL",0)~ THEN BFHF25 FHFSaer25
@0
DO ~SetGlobal("FHFSaer25","GLOBAL",1)~
== BSAERI25 @1
== BFHF25 @2
== BSAERI25 @3
== BFHF25 @4
== BSAERI25 @5
EXIT
