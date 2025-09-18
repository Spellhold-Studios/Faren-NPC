//Darian SoA Banters

CHAIN
IF ~InParty("T1Dar")
See("T1Dar")
!StateCheck("T1Dar",CD_STATE_NOTVALID)
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFDarian1","GLOBAL",0)~ THEN BFHFRN FHFDarian1
~You okay, Darian? You've been glaring all <DAYNIGHT>.~
= ~Or, uh, maybe that's your normal expression. Didn't mean to cause offence.~
DO ~SetGlobal("FHFDarian1","GLOBAL",1)~
== BT1DAR ~I wonder what <CHARNAME>'s Gorion would think of <PRO_HIMHER> travelling with one who has been in prison. Do you think your influence is a good one?~
== BFHFRN IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN ~No worse than a Shadow Thieving Red Wizard, that's for sure. But really, me? Influence? That's a joke.~
== BFHFRN ~Really, me? Influence? That's a joke.~
== BT1DAR ~I don't think it is. You have more power than you suggest.~
== BFHFRN ~If you say so.~
EXIT

CHAIN
IF ~InParty("T1Dar")
See("T1Dar")
!StateCheck("T1Dar",CD_STATE_NOTVALID)
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFDarian2","GLOBAL",0)~ THEN BFHFRN FHFDarian2
~I'd love to be able to fly. I met someone once who said she could make these flying machines where you could get in the air without magic...but then it did involve spearing yourself with insect mandibles, so I passed on the offer.~
DO ~SetGlobal("FHFDarian2","GLOBAL",1)~
== BT1DAR ~Magic or machinery, it can never be as real as it being part of you. The air buoying you aloft, feeling the air currents drift - for the Avariel it is all instinct, and all natural. It is something impossible to fully describe to you earthbound peoples.~
== BAERIE IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN ~Oh, it feels so wonderful that I can hardly bear to hear about it...~
== BFHFRN ~What's the best thing you've seen from the sky? Can you see a lot, when it's so far away?~
== BT1DAR ~The distant blue haze of a mountain amongst the clouds is quiet, and dramatic, and vast. But there are so many sights that you couldn't hope to document them all.~
EXIT

CHAIN
IF ~InParty("FHFRN")
See("FHFRN")
!StateCheck("T1Dar",CD_STATE_NOTVALID)
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFDarian3","GLOBAL",0)~ THEN BT1DAR FHFDarian3
~Stop your yawning, Faren. No doubt we have many hours to go before rest. We must remain alert in case of danger.~
DO ~SetGlobal("FHFDarian3","GLOBAL",1)~
== BFHFRN ~Sure, sir, yes sir, whatever.~
= ~Waukeen, it's as bad as being in the militia again.~
EXIT