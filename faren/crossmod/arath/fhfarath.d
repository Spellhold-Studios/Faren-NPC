//Arath SoA

CHAIN IF ~InParty("Arath")
See("Arath")
!StateCheck("Arath",CD_STATE_NOTVALID)
!StateCheck("FHFRN",CD_STATE_NOTVALID)
CombatCounter(0)
!Detect([ENEMY])
Global("FHFArath1","GLOBAL",0)~ THEN BFHFRN FHFArath1
~...and then it all got a bit confusing, with so many legs and everything, but you wouldn't believe this guy who used some kind of cold magic, I don't know what it was, but by Waukeen, it was impressive.~
DO ~SetGlobal("FHFArath1","GLOBAL",1)~
== BLK#ARAT ~Wait. A dark-haired man, about so tall? With a laugh that was sort of--~
== BFHFRN ~--Yeah! That's the one. You, uh, encountered him too?~
== BLK#ARAT ~Oh, my, yes.~
== BFHFRN IF ~!Global("FHFarenRomanceActive","GLOBAL",2)~ THEN ~Huh. I had no idea he was still in Athkatla. Maybe I'll have to look him up.~
== BFHFRN IF ~Global("FHFarenRomanceActive","GLOBAL",2)~ THEN ~Huh. I had no idea he was still in Athkatla. Maybe you should look him up.~
== BLK#ARAT IF ~!Global("FHFarenRomanceActive","GLOBAL",2) !Global("LK#ArathRomanceActive","GLOBAL",2)~ THEN ~Let me know if you track him down, you can't keep him all to yourself!~
== BLK#ARAT IF ~Global("LK#ArathRomanceActive","GLOBAL",2)~ THEN ~Oh, those days are behind me now. Though they were a lot of fun...~
== BLK#ARAT IF ~!Global("LK#ArathRomanceActive","GLOBAL",2)~ THEN ~Hey, maybe I will. We can't be slogging away on the road *all* the time...~
EXIT

CHAIN IF ~InParty("FHFRN")
See("FHFRN")
!StateCheck("Arath",CD_STATE_NOTVALID)
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFArath2","GLOBAL",0)
CombatCounter(0)
!Detect([ENEMY])
AreaType(CITY)
AreaType(OUTDOOR)
!AreaCheck("AR1600")
!AreaCheck("AR2000")~ THEN BLK#ARAT FHFArath2
~Ah, smell that air! What do you think we'll get up to this <DAYNIGHTALL>, Faren?~
= ~Faren? What are you looking so grumpy about?~
DO ~SetGlobal("FHFArath2","GLOBAL",1)~
== BFHFRN ~Oh, Athkatla. Just Athkatla. Puts me in a bad mood.~
== BLK#ARAT ~You're too cruel to the City of Coin. She's got an awful lot to offer, you know.~
== BFHFRN ~Believe me, I know. And a lot to take, too.~
== BLK#ARAT ~That's certainly true. Not that I was there for long, but living in a poor district definitely opens your eyes to the bad side of the place.~
== BFHFRN ~That it does.~
== BLK#ARAT ~But I can't stand you walking around looking like a wet weekend. Come on, when we get a minute I'll show you this street vendor who serves the most delicious pancakes...~
EXIT

//Romance conflict

CHAIN IF WEIGHT #-1 ~Global("FHFArathconflict","GLOBAL",2)~ THEN FHFRNJ FHFArathConflict
~So, I heard you and Arath...talking, before. I wasn't eavesdropping! He was pretty loud about it, I imagine the whole of Amn heard.~
= ~We're all grownups, and who knows what's going to happen tomorrow, and all that. But I get the impression he's getting a bit more invested than he thought. Do you think you're headed that way, too?~
END
++ ~If you overheard what he said, you know it's over between Arath and me.~ DO ~SetGlobal("FHFArathconflict","GLOBAL",3) SetGlobal("LK#ArathRomanceActive","GLOBAL",3)~ + FHFArathConflict_endarath
+ ~Global("FHFarenRomanceActive","GLOBAL",1)~ + ~Yes, I think I am - I'm starting to feel very close to Arath.~ DO ~SetGlobal("FHFArathconflict","GLOBAL",3) SetGlobal("FHFarenRomanceActive","GLOBAL",3) SetGlobal("FHFarenFriend","GLOBAL",1)~ + FHFArathConflict_endfaren1
+ ~Global("FHFarenRomanceActive","GLOBAL",2)~ + ~It's true, Faren. Arath and I have been growing close lately.~ DO ~SetGlobal("FHFArahconflict","GLOBAL",3) SetGlobal("FHFarenRomanceActive","GLOBAL",3)~ + FHFArathConflict_endfaren2

CHAIN FHFRNJ FHFArathConflict_endarath
~I see. Well, I feel sorry for him, though I can't say I'm too cut up about the whole thing. Thanks for clearing it up, <CHARNAME>.~
EXIT

CHAIN FHFRNJ FHFArathConflict_endfaren1
~I see. Well, I think I'll have to bow out from here, then, <CHARNAME> - it's getting a bit heavy for me. Thank you for letting me know.~
EXIT

CHAIN FHFRNJ FHFArathConflict_endfaren2
~I...see. But I thought we--~
= ~Ugh, never mind. I think I need some space.~
EXIT
