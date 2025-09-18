//Nathaniel banter, ToB

CHAIN IF ~InParty("Nath")
See("Nath")
!StateCheck("Nath",CD_STATE_NOTVALID)
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFNathtob","GLOBAL",0)~ THEN BFHF25 FHFNathtob
@0
DO ~SetGlobal("FHFNathtob","GLOBAL",1)~
== BFHN25 @1
== BFHF25 @2
== BFHN25 @3
== BFHF25 @4
== BFHN25 @5
== BFHF25 @6
== BFHN25 @7
EXIT
