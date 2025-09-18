//Kova banters

CHAIN IF ~InParty("Kova")
See("Kova")
!StateCheck("Kova",CD_STATE_NOTVALID)
!StateCheck(Myself,CD_STATE_NOTVALID)
Global("FHFKovaTalk1","GLOBAL",0)~ THEN BFHFRN FHFKova1
~Hells, Kova! You made me jump out of my skin!~
DO ~SetGlobal("FHFKovaTalk1","GLOBAL",1)~
== Z#KOVAB ~You ought to listen more carefully to your surroundings. Anyone could sneak up and slide a knife between your ribs.~
== BFHFRN ~Hey, and you ought not to pad around like that when we're supposed to be colleagues.~
== Z#KOVAB ~This is my natural stance, Faren. If you prefer to know my location, keep your eyes open.~
EXIT

CHAIN IF ~InParty("FHFRN")
See("FHFRN")
!StateCheck("FHFRN",CD_STATE_NOTVALID)
!StateCheck(Myself,CD_STATE_NOTVALID)
Global("FHFKovaTalk2","GLOBAL",0)~ THEN Z#KOVAB FHFKova2
~I envy you the choices you were allowed.~
DO ~SetGlobal("FHFKovaTalk2","GLOBAL",1)~
== BFHFRN ~What do you mean? I slummed around for years and ended up in Vyatri's tossing back drinks and picking fights. Not exactly a heroic direction to my adventures.~
== Z#KOVAB ~Would you prefer to have become embroiled in this war between the factions of Amn?~
== BFHFRN ~Point. Guess you never know how stuff's going to end up.~
= ~So is it true the Shadow Thieves cut off your feet before they throw you in the river?~
== Z#KOVAB ~This is...perhaps not the most pleasant line of discussion. Excuse me.~
EXIT

CHAIN IF ~InParty("Kova")
See("Kova")
!StateCheck("Kova",CD_STATE_NOTVALID)
!StateCheck(Myself,CD_STATE_NOTVALID)
Global("FHFKovaTalk3","GLOBAL",0)~ THEN BFHFRN FHFKova3
~Damn it, you interrupted me!~
DO ~SetGlobal("FHFKovaTalk3","GLOBAL",1)~
== Z#KOVAB ~What? You weren't speaking, and I said nothing.~
== BFHFRN ~No, you got this weird look in your eye, and then I got lost. Was trying to work out my budget for the rest of the year - adventuring isn't exactly steady pay.~
== Z#KOVAB ~If the numbers are so large that you need extra concentration, then you're a lucky man.~
== BFHFRN ~Heh, I was terrible at mathematics in school. When I run out of fingers I'm in trouble.~
== Z#KOVAB ~I don't know about that. But I'd advise that you keep your talk of wealth to yourself. There are plenty of unfriendly ears about.~
EXIT


//Kiyone banters

CHAIN IF ~InParty("FHFRN")
See("FHFRN")
!StateCheck("FHFRN",CD_STATE_NOTVALID)
!StateCheck(Myself,CD_STATE_NOTVALID)
Global("FHFKiyoneTalk1","GLOBAL",0)~ THEN Z#KIYOB FHFKiyo1
~It seems to me that you and your companions would have been served better with care and thought, rather than recklessness. Do you regret your actions?~
DO ~SetGlobal("FHFKiyoneTalk1","GLOBAL",1)~
== BFHFRN ~There a reason you felt the need to say that, or did it just come into your head?~
== Z#KIYOB ~I mean it, Faren. I have observed that you dwell on the past a great deal, and it is not a healthy pastime.~
EXIT

CHAIN IF ~InParty("Kiyone")
See("Kiyone")
!StateCheck("Kiyone",CD_STATE_NOTVALID)
!StateCheck(Myself,CD_STATE_NOTVALID)
Global("FHFKiyoneTalk2","GLOBAL",0)~ THEN BFHFRN FHFKiyo2
~Yeah, that was a hell of a night! We sold the vases in the end - no one seemed to want them.~
DO ~SetGlobal("FHFKiyoneTalk2","GLOBAL",1)~
== Z#KIYOB ~Indeed, that seems most...~
= ~Wait a moment. Was this on the second tenday of Flamerule?~
== BFHFRN ~Yeah, yeah, I remember because we all had to carry our coats, and Jessalyn made Araden--~
== Z#KIYOB ~I shall have to check my records. As I recall, there is an investigation open regarding missing vases.~
== BFHFRN ~Did I say vases? They were more, you know, jugs. With lacquer inlay, you know the kind. You wouldn't want to put flowers in them. More ornamental, really. You wouldn't call them vases.~
== Z#KIYOB ~You did.~
== BFHFRN ~Well, you know me. Forget my head if it wasn't attached.~
== Z#KIYOB ~Hmmm. Indeed.~
EXIT

CHAIN IF ~InParty("FHFRN")
See("FHFRN")
!StateCheck("FHFRN",CD_STATE_NOTVALID)
!StateCheck(Myself,CD_STATE_NOTVALID)
Global("FHFKiyoneTalk3","GLOBAL",0)~ THEN Z#KIYOB FHFKiyo3
~It strikes me that you could do a great deal of good, with the proper motivation.~
DO ~SetGlobal("FHFKiyoneTalk3","GLOBAL",1)~
== BFHFRN ~Ah, that's the nicest thing anyone's said to me all <DAYNIGHT>! I'll have to tell it to my next employer.~
= ~We did a bunch of good, the four of us. Gave to the poor, rescued cats. Speaking of cats, did I tell you about the time when...?~
== Z#KIYOB ~And now? What of your motivation now that they are gone?~
== BFHFRN ~Why do I feel like I'm being interviewed?~
== Z#KIYOB ~(sigh) You'll have to face it one day, Faren. I hope that you will choose the righteous side when you do.~
EXIT
