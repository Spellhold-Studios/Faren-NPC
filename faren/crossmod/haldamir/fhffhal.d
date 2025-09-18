//Interparty banters

CHAIN IF ~InParty("B!HALDAMIR")
See("B!HALDAMIR")
!StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)
!StateCheck(Myself, CD_STATE_NOTVALID)
Global("FHFHaldamir1","GLOBAL",0)~ THEN BFHFRN FHFHaldamir1
~Nice <DAYNIGHT>, isn't it?~
DO ~SetGlobal("FHFHaldamir1","GLOBAL",1)~
== ~BB!HAL~ ~As good as any.~
== BFHFRN ~Good to be on the road.~
== ~BB!HAL~ ~Yes.~
== BFHFRN ~You reckon the weather'll pick up tomorrow?~
== ~BB!HAL~ ~Perhaps.~
== BFHFRN ~<DAYNIGHT>s like this, reminds me of that time with the porcupines.~
== ~BB!HAL~ ~Indeed-- what?~
== BFHFRN ~Yep. Damn porcupines.~
EXIT

CHAIN IF ~InParty("FHFRN")
See("FHFRN")
!StateCheck("FHFRN",CD_STATE_NOTVALID)
!StateCheck(Myself, CD_STATE_NOTVALID)
Global("FHFHaldamir2","GLOBAL",0)~ THEN~BB!HAL~FHFHaldamir2
~Your form is lazy. Keep better focused, and it will save your life.~
DO ~SetGlobal("FHFHaldamir2","GLOBAL",1)~
== BFHFRN ~Tell me about it. I didn't keep up with my training so well, so I end up distracted all the time. It's a pain.~
== ~BB!HAL~ ~It will be more than that when the killing strike comes. Lack of paying attention is a human failing. I have often observed it.~
== BFHFRN ~Guess I'll have to hope <CHARNAME>'s on good terms with the priests. Won't cost too much to raise me, that way.~
EXIT

CHAIN IF ~InParty("FHFRN")
See("FHFRN")
!StateCheck("FHFRN",CD_STATE_NOTVALID)
!StateCheck(Myself, CD_STATE_NOTVALID)
Global("FHFHaldamir3","GLOBAL",0)~ THEN~BB!HAL~FHFHaldamir3
~I do not know the rules for this card game of yours, so leave me be.~
DO ~SetGlobal("FHFHaldamir3","GLOBAL",1)~
== BFHFRN ~Oh, come on -- next time we make camp. Been having trouble sleeping lately.~
== BFHFRN IF ~InParty("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN ~Plus, Yoshimo's going to join. He's a fun guy, right?~
== ~BB!HAL~ IF ~InParty("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN ~Then I shall certainly not join you. He cheats outrageously.~
== ~BB!HAL~ ~If you have trouble sleeping, I recommend a night of carousing. That should set you right.~
== BFHFRN ~You know, that's not such a bad idea. You want to join me?~
== ~BB!HAL~ ~No. You should keep sharp and aware of your surroundings, especially when far from home.~
EXIT
