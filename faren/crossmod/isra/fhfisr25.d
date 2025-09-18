//Isra ToB

CHAIN
IF ~InParty("FHFRN")
See("FHFRN")
!StateCheck("rh#isra2",CD_STATE_NOTVALID)
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFIsra25","GLOBAL",0)~ THEN BRH#IS25 FHFIsra25
~You are frowning, Faren. 'Tis not a natural expression for you, I think.~
DO ~SetGlobal("FHFIsra25","GLOBAL",1)~
== BFHF25 ~Was I? Oh. Didn't realise.~
== BRH#IS25 ~Sometimes we do not. But it would be a pity indeed for sorrow to creep in unnoticed.~
== BFHF25 ~You're right. Yeah.~
= ~Hey, but how are you doing? You look a bit tired. Anyone checking up on you to see if you're frowning?~
== BRH#IS25 IF ~Global("RH#IsraRomanceActive","GLOBAL",2)~ THEN ~I have <PRO_LADYLORD> <CHARNAME> to keep an eye, and <PRO_HESHE> is a most attentive partner. But there are others who need assistance more than I.~
== BRH#IS25 IF ~!Global("RH#IsraRomanceActive","GLOBAL",2)~ THEN ~I am in little need of such a thing - there are others who need assistance more than I.~
== BFHF25 ~Well, if you're looking out for me, I can look out for you.~
== BRH#IS25 ~Then that is most appreciated. My thanks.~
EXIT

