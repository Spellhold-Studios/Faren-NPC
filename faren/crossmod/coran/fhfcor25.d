//Tiax ToB

CHAIN
IF ~InParty("FHFRN")
See("FHFRN")
!StateCheck("O#Coran",CD_STATE_NOTVALID)
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFCoran25","GLOBAL",0)~ THEN BO#COR25 FHFCoran25
~I can't believe you beat me at cards! You weren't nearly as drunk as you were acting.~
DO ~SetGlobal("FHFCoran25","GLOBAL",1)~
== BFHF25 ~Heh, I'm not as stupid as I look. You want your rings back?~
== BO#COR25 ~My thanks. Now, I'm gearing myself up for the next round. Best of three. A bottle of brandy between us, and may the best man win?~
== BFHF25 ~You're on.~
EXIT
