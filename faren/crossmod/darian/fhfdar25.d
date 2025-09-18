//Darian ToB

CHAIN
IF ~InParty("T1Dar")
See("T1Dar")
!StateCheck("T1Dar",CD_STATE_NOTVALID)
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFDarian25","GLOBAL",0)~ THEN BFHF25 FHFDarian25
~You’ll go back to the Talons, then, when it’s all said and done?~
DO ~SetGlobal("FHFDarian25","GLOBAL",1)~
== BT1DAR25 ~I am still in the Talons. That, at least, never changed.~
== BFHF25 ~You have, though, a bit. Though I couldn’t say you’ve loosened up - I don’t know if that’ll ever happen.~
== BT1DAR25 ~Hmmm. Perhaps not. But perhaps there is some comfort to knowing who you are.~
EXIT