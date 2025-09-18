//Tashia ToB

CHAIN
IF ~AreaType(OUTDOOR)
InParty("FHFRN")
See("FHFRN")
!StateCheck("Tashia",CD_STATE_NOTVALID)
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFTashia25","GLOBAL",0)~ THEN BTASHI25 FHFTashia25
~Pfeh! Ugh, flies everywhere! Why did we have to come this far south?~
DO ~SetGlobal("FHFTashia25","GLOBAL",1)~
== BFHF25 ~You okay there, Tashia? You're looking a bit overheated.~
== BTASHI25 ~The Ten Towns freezes you to the bone, but at least you don't have all this...wildlife getting in your face. It's just so hot all the time!~
== BFHF25 ~You ever travel in the jungle?~
= ~Think of this heat, but water hanging in the air constantly, sticking to your skin and your hair, midges everywhere and the water sticks in your throat when you breathe in.~
== BTASHI25 ~Well, after that ringing endorsement I don't care to.~
== BFHF25 ~Feel any better?~
== BTASHI25 ~A bit. But I have to get myself a hat or something next time we see a merchant...~
EXIT
