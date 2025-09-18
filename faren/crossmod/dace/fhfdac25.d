//Dace ToB Banters

I_C_T BT#DAC25 131 FHFDaceFeast
== FHF25J IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
~Oh, that's making me hungry just hearing about it!~
END

CHAIN
IF ~InParty("FHFRN")
See("FHFRN")
!StateCheck("T#Dace",CD_STATE_NOTVALID)
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFDace25","GLOBAL",0)~ THEN BT#DAC25 FHFDace25
~When are you plannin' on pullin' that stick out of your ass and comin' back to the shady side of the law, Farry?~
DO ~SetGlobal("FHFDace25","GLOBAL",1)~
== BFHF25 ~Hey, I never said I left it. Not like we're exactly lawkeepers now, is it?~
== BT#DAC25 IF ~Alignment(Player1,MASK_LAWFUL)~ THEN ~True, yeah, even our <CHARNAME>'s not all that averse to bendin' the rules a tiny bit, even if <PRO_HESHE> don't care to admit it all that often.~
== BT#DAC25 IF ~!Alignment(Player1,MASK_LAWFUL)~ THEN ~True, yeah, and ain't it the case that we follow our glorious <CHARNAME>'s lead, right?~
= ~But I'm talkin' about you, sugar. Not just you bein' a stalwart follower of the world's favourite - or maybe that should be least favourite - Bhaalspawn. I can't help givin' some ponderin' to what you'll get up to once all this tomfoolery's done with.~
== BFHF25 ~Not to people like Halmar, I know that. I want to be my own person. But I couldn't be militia again, can you see me in all that shiny armour? It makes my teeth itch just thinking about it.~
EXIT

