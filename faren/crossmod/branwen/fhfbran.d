//SoA Banters

CHAIN
IF ~InParty("FHFRN")
See("FHFRN")
!StateCheck("O#Bran",CD_STATE_NOTVALID)
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFBranwen1","GLOBAL",0)~ THEN O#BBRAN FHFBran1
~Faren! Turn out your pockets!~
DO ~SetGlobal("FHFBranwen1","GLOBAL",1)~
== BFHFRN ~I've no idea what you're talking about, Branwen, and I--~
= ~Aaah! Get your hands off me!~
== O#BBRAN ~A-ha! The last pork roll from breakfast, I had my eye on it, looked away a moment, and then it was gone. I knew you took it!~
== BFHFRN ~Hey! Give that back!~
== O#BBRAN ~Tempus wills that his warriors be strong for their <DAYNIGHT>'s labours, so it is only right that I have it.~
= ~Oh, very well, you can have half. Here. Now we shall both enjoy!~
EXIT

CHAIN
IF ~InParty("O#Bran")
See("O#Bran")
!StateCheck("O#Bran",CD_STATE_NOTVALID)
!StateCheck("FHFRN",CD_STATE_NOTVALID)
PartyRested()
Global("FHFBranwen2","GLOBAL",0)~ THEN BFHFRN FHFBran2
~Branwen, what are you doing? Do you have to be so noisy so early? Your stamping's making my ears bleed.~
DO ~SetGlobal("FHFBranwen2","GLOBAL",1)~
== O#BBRAN ~Rise and shine, one and all! 'Tis time to smite evil once again!~
== BFHFRN ~Urgh...~
EXIT

CHAIN
IF ~InParty("FHFRN")
See("FHFRN")
!StateCheck("O#Bran",CD_STATE_NOTVALID)
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFBranwen3","GLOBAL",0)~ THEN O#BBRAN FHFBran3
~Ha! Nearly got you!~
DO ~SetGlobal("FHFBranwen3","GLOBAL",1)~
== BFHFRN ~Best get lighter on your feet, Branwen, or you'll never hit me!~
== O#BBRAN ~But what if I do...this!~
== BFHFRN ~Uh!~
== O#BBRAN ~You ought to prepare yourself better for direct blows, or else you will be winded just like that. You cannot dodge everything, you know.~
== BFHFRN ~Yeah, but if I don't dodge, I can't do...this!~
== O#BBRAN ~Ooof! Let me at you!~
EXIT

//Romance conflict

CHAIN IF WEIGHT #-1 ~Global("FHFBranwenconflict","GLOBAL",2)~ THEN FHFRNJ FHFBranConflict
~Branwen's pretty full on, isn't she? And definitely interested in you, from what I've seen - she's not exactly subtle.~
= ~Not that I'm complaining, I'm not the most, uh, discreet of people myself, and if she was into me I'd...~
= ~Anyway. Point is, are you interested in her back? Am I barking up the wrong tree with you?~
END
++ ~Branwen and I are travelling companions only - I'm interested in you, not her.~ DO ~SetGlobal("FHFBranwenconflict","GLOBAL",3) SetGlobal("O#BranRomanceActive","GLOBAL",3)~ + FHFBranConflict_endbran
+ ~Global("FHFarenRomanceActive","GLOBAL",1)~ + ~It's true, Faren. Branwen and I have been growing close lately.~ DO ~SetGlobal("FHFBranwenconflict","GLOBAL",3) SetGlobal("FHFarenRomanceActive","GLOBAL",3) SetGlobal("FHFarenFriend","GLOBAL",1)~ + FHFBranConflict_endfaren
+ ~Global("FHFarenRomanceActive","GLOBAL",2)~ + ~It's true, Faren. Branwen and I have been growing close lately.~ DO ~SetGlobal("FHFBranwenconflict","GLOBAL",3) SetGlobal("FHFarenRomanceActive","GLOBAL",3)~ + FHFBranConflict_endfaren2

CHAIN FHFRNJ FHFBranConflict_endbran
~Really? I mean, great! Thanks for letting me know, <CHARNAME>. I appreciate it.~
EXIT

CHAIN FHFRNJ FHFBranConflict_endfaren
~Yeah, I figured. Well. I can't blame you - she's an impressive woman. Thanks for letting me know, <CHARNAME>.~
EXIT

CHAIN FHFRNJ FHFBranConflict_endfaren2
~Really? But we--~
= ~Ugh. Never mind. I just need a bit of space.~
EXIT