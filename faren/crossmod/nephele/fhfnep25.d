//Nephele ToB

CHAIN
IF ~InParty("FHFRN")
See("FHFRN")
!StateCheck("Nephele",CD_STATE_NOTVALID)
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFNephToB","GLOBAL",0)~ THEN BLK#NE25 FHFNephToB
~You stand taller these days, Faren. It rather suits you. I did hate to see you slouch.~
DO ~SetGlobal("FHFNephToB","GLOBAL",1)~
== BFHF25 ~I didn't realise I slouched. You should've said something!~
== BLK#NE25 ~I did, many times. Do you not remember?~
== BFHF25 ~Oh. I, uh. Must have not been listening.~
== BLK#NE25 ~Hmph!~
EXIT