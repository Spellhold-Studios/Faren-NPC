CHAIN
IF ~InParty("O#Xan")
See("O#Xan")
!StateCheck("O#Xan",CD_STATE_NOTVALID)
Global("FHFXan25","GLOBAL",0)~ THEN BFHF25 FHFXan25
@0
DO ~SetGlobal("FHFXan25","GLOBAL",1)~
== BO#XAN25 @1
== BFHF25 @2
== BO#XAN25 @3
== BFHF25 @4
= @5
== BO#XAN25 @6
= @7
EXIT