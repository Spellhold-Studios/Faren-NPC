CHAIN
IF ~InParty("J#Kelsey")
See("J#Kelsey")
!StateCheck("J#Kelsey",CD_STATE_NOTVALID)
Global("FHFKels25","GLOBAL",0)~ THEN BFHF25 FHFKels25
@0
DO ~SetGlobal("FHFKels25","GLOBAL",1)~
== BJ#KLS25 @1
== BFHF25 @2
== BJ#KLS25 @3
== BFHF25 @4
== BJ#KLS25 @5
== BFHF25 @6
== BJ#KLS25 @7
== BFHF25 @8
EXIT
