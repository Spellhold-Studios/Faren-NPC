//Tsujatha ToB

CHAIN
IF ~InParty("FHFRN")
See("FHFRN")
!StateCheck("Tsujath",CD_STATE_NOTVALID)
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFTsujath25","GLOBAL",0)~ THEN BTSUJA25 FHFTsujath25
~Shall you return to your home in Trademeet, after this war is done?~
DO ~SetGlobal("FHFTsujath25","GLOBAL",1)~
== BFHF25 ~Maybe. Probably. My house is where I grew up, after all - it'd feel weird not having it to go back to, at least.~
== BTSUJA25 ~I warn you that you can never truly belong, when you return after such vast events as these. It is no longer home.~
== BFHF25 ~Well. Huh. Hopefully it'll be different for me.~
== BTSUJA25 ~Do not fool yourself that you will be the same person you were when you left. All is fleeting. All is changed.~
EXIT
