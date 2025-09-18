 //Branwen ToB
 
CHAIN
IF ~InParty("FHFRN")
See("FHFRN")
!StateCheck("O#Bran",CD_STATE_NOTVALID)
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFBranwen25","GLOBAL",0)~ THEN O#BBRA25 FHFBran25
~Do you think we shall all remain together once we are done with all this?~
DO ~SetGlobal("FHFBranwen25","GLOBAL",1)~
== BFHF25 IF ~Global("FHFarenRomanceActive","GLOBAL",2)~ THEN ~If <CHARNAME> keeps putting up with me, then yeah, I'd like that.~
== BFHF25 IF ~!Global("FHFarenRomanceActive","GLOBAL",2)~ THEN ~I think I'd like that. It's been good having people around again.~
== O#BBRA25 ~Excellent! We shall continue our battles to make more legends to ring throughout the ages!~
= ~What, you don't look so pleased about that?~
== BFHF25 ~No, no, I am. It's just my shoulders ache, and we've been going so long. Do you ever...feel you'd like to rest?~
== O#BBRA25 ~Ah, now you sound tired! Come, walk with me and I shall cheer you with tales of <CHARNAME> in the Sword Coast. There are plenty of embarrassing ones...~
EXIT
