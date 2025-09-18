//Nephele SoA

CHAIN
IF ~InParty("Nephele")
See("Nephele")
!StateCheck("Nephele",CD_STATE_NOTVALID)
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFNeph1","GLOBAL",0)~ THEN BFHFRN FHFNeph1
~Ah! Don't surprise me like that, I could've elbowed you in the face!~
DO ~SetGlobal("FHFNeph1","GLOBAL",1)~
== BLK#NEP ~Don't fuss, dear, I'm quite fast enough to avoid your elbows.~
= ~I was only trying to fix your hair. It's coming out of that braid, and what if it was to get in your face during battle?~
== BFHFRN ~You don't need to do that, Nephele. I'm okay.~
== BLK#NEP ~I don't have to, but it's my duty to make sure everyone in the group is in top condition. And that includes messy hair.~
EXIT

CHAIN
IF ~InParty("Nephele")
See("Nephele")
!StateCheck("Nephele",CD_STATE_NOTVALID)
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFNeph2","GLOBAL",0)~ THEN BFHFRN FHFNeph2
~But you must have a favourite, in your heart of hearts.~
DO ~SetGlobal("FHFNeph2","GLOBAL",2)~
== BLK#NEP ~What a suggestion! Of course I don't have favourites amongst my children and grandchildren.~
= ~I love them all, and their quirks and foibles with it.~
== BFHFRN ~All right, then, who was the cutest as a baby?~
== BLK#NEP ~Faren!~
== BFHFRN ~Okay, okay, sorry. You're made of stronger stuff than me. I don't think I'd be able to avoid playing favourites.~
== BLK#NEP ~You'd have to settle down with some nice person before you got anywhere near that stage, dear.~
== BFHFRN IF ~!Global("FHFarenRomanceActive","GLOBAL",1) !Global("FHFarenRomanceActive","GLOBAL",2)~ THEN ~Yeah, no. I don't think that's happening anytime soon.~
== BFHFRN IF ~Global("FHFarenRomanceActive","GLOBAL",1)~ THEN ~Sssh, don't say that. <CHARNAME>'s listening!~
== BFHFRN IF ~Global("FHFarenRomanceActive","GLOBAL",2)~ THEN ~Yeah... I guess I would.~
== BLK#NEP ~Oh, don't look so glum! You never know where life might take you.~
= ~Let me tell you about Elliot when he was little, that'll cheer you right up!~
EXIT

CHAIN
IF ~InParty("FHFRN")
See("FHFRN")
!StateCheck("Nephele",CD_STATE_NOTVALID)
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFNeph3","GLOBAL",0)~ THEN BLK#NEP FHFNeph3
~No, dear, I don't think they'd be ashamed of you. They'd know you made the best of things as you saw fit at the time.~
DO ~SetGlobal("FHFNeph3","GLOBAL",0)~
== BFHFRN ~...Yeah. Yeah, you're probably right.~
== BLK#NEP ~When you're a parent, you know your children make mistakes, and sometimes you have to let them do it, so they'll learn.~
== BFHFRN ~Hey, but you always tell us off when we're doing something we don't like!~
== BLK#NEP ~That philosophy doesn't mean I have to keep my mouth shut if I see someone throwing their life away.~
== BFHFRN ~Yeah, you definitely couldn't do that...~
== BLK#NEP ~What was that, dear?~
== BFHFRN ~...nothing.~
= ~Thanks for the pep talk. I mean that.~
EXIT