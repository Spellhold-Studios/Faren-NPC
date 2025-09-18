//Tiax ToB

CHAIN
IF ~InParty("O#Tiax")
See("O#Tiax")
!StateCheck("O#Tiax",CD_STATE_NOTVALID)
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFTiax25","GLOBAL",0)~ THEN BFHF25 FHFTiax25
~I had a thought, Tiax. Isn't it weird how <CHARNAME> could end up ruling more than you, in the end?~
DO ~SetGlobal("FHFTiax25","GLOBAL",1)~
== BO#TIA25 ~What?!~
== BFHF25 ~It's true. I mean, <PRO_HESHE> could basically become the new <PRO_LADYLORD> of Murder, rampage around and destroy everything, and where would you be?~
== BO#TIA25 ~Cyric allows nothing of the sort to take place! Woe betide <CHARNAME> or anybody else who stands in his way! Tiax will rule all!~
== BFHF25 ~But--~
== BO#TIA25 ~ALL.~
EXIT
