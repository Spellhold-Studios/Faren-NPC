//Tiax SoA

CHAIN
IF ~InParty("FHFRN")
See("FHFRN")
!StateCheck("O#Tiax",CD_STATE_NOTVALID)
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFTiax1","GLOBAL",0)~ THEN BO#TIAX FHFTiax1
~Here, thief! Thief! Tiax would have words with you!~
DO ~SetGlobal("FHFTiax1","GLOBAL",1)~
== BFHFRN ~You're talking to me?~
== BO#TIAX ~Yes! Who else would the Great Tiax speak to?~
== BNALIA IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN ~I suppose I should be grateful he's not referring to me.~
== IMOEN2J IF ~InParty("Imoen2") InMyArea("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN ~Aww, you're not calling me? You always used to yell that at me, back in Baldur's Gate.~
== BJAN IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN ~Hmmm? Me? Is it that time again, already?~
== BO#TIAX ~Walk ahead, so that the glorious form of Tiax is not damaged by the traps your clumsy feet set off!~
== BFHFRN ~Hey, I bet I could disarm any trap you could.~
== BO#TIAX ~Impudence! Walk ahead! Ahead! Tiax does not require your presence any longer!~
EXIT

CHAIN
IF ~InParty("O#Tiax")
See("O#Tiax")
!StateCheck("O#Tiax",CD_STATE_NOTVALID)
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFTiax2","GLOBAL",0)~ THEN BFHFRN FHFTiax2
~I'm probably going to regret asking this, but how do you get the energy to stay so...Tiax-ish? I feel exhausted just looking at you sometimes.~
DO ~SetGlobal("FHFTiax2","GLOBAL",1)~
== BO#TIAX ~The Great Tiax has transcended physical concerns! Cyric grants him the might to proclaim the glory of him and of Tiax, all through the day and all through the night!~
== BFHFRN ~No, that can't be it. What is it, sugar? Coffee? Some kind of leaf?~
== BO#TIAX ~Also, Tiax has mastered the art of sleeping while walking, at will!~
== BFHFRN ~Now, that I do not believe.~
== BO#TIAX ~Zzzz...~
== BFHFRN ~Are you...you really are, aren't you? I guess I should just leave him to it?~
== BO#TIAX ~Tee-hee-hee! Tiax is a master of wit and deception!~
EXIT

CHAIN
IF ~InParty("O#Tiax")
See("O#Tiax")
!StateCheck("O#Tiax",CD_STATE_NOTVALID)
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFTiax3","GLOBAL",0)~ THEN BFHFRN FHFTiax3
~Hey, hey, hey, what are you doing? That's my backpack!~
DO ~SetGlobal("FHFTiax3","GLOBAL",1)~
== BO#TIAX ~The Great Tiax requires sustenance! All that is in this backpack is lint and rubbish.~
== BFHFRN ~Stop waving that around, it was a gift from my teacher!~
== BO#TIAX ~When Tiax rules, all gifts will belong to him, and all the food, too! Tiax demands a meal!~
== BFHFRN ~Okay. Just give me the pack, and I'll see what I can do.~
== BO#TIAX ~All shall bow to Tiax! You shall be rewarded for your service.~
= ~As long as the meal is good. Otherwise, Tiax' wrath shall be mighty!~
EXIT
