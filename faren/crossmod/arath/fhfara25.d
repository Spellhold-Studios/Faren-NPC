//Arath ToB

CHAIN
IF ~CombatCounter(0)
!Detect([ENEMY])
InParty(Myself)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty("Arath")
!StateCheck("Arath",CD_STATE_NOTVALID)
Global("FHFArath25","GLOBAL",0)~ THEN BLK#AR25 FHFArath25
~Hmmm...so if we use a quarter of that...and a teaspoon of this...~
DO ~SetGlobal("FHFArath25","GLOBAL",1)~
== BFHF25 ~That looks way too complicated for my liking. What are you scribbling?~
== BLK#AR25 ~Oh, it's not all that complicated - just working out a few meals. The way things are, it's so hard to get ingredients that you need to plan ahead.~
== BFHF25 ~Yeah, the shops are practically deserted and you don't exactly want to go poking around for fruit in the Forest of Mir. Never know what you might find.~
== BLK#AR25 ~So I'm getting creative. Luckily I've still got some decent Athkatlan spices.~
== BFHF25 ~Want an assistant? I'm always good for taste testing.~
== BLK#AR25 ~Hmmm, all right. I've never had an assistant before, it'll make me feel important!~
EXIT



