//Tashia SoA

CHAIN
IF ~InParty("Tashia")
See("Tashia")
!StateCheck("Tashia",CD_STATE_NOTVALID)
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFTashia1","GLOBAL",0)~ THEN BFHFRN FHFTashia1
~Sorry for spilling your drink in Vyatri's, Tashia. Things got kind of heated back there.~
DO ~SetGlobal("FHFTashia1","GLOBAL",1)~
== BTASHIA ~Oh, that's okay. I'll just have to take compensation someday.~
== BFHFRN ~Oh?~
== BTASHIA ~Repayment of goods lost. With interest!~
EXIT

CHAIN
IF ~InParty("Tashia")
See("Tashia")
!StateCheck("Tashia",CD_STATE_NOTVALID)
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFTashia2","GLOBAL",0)~ THEN BFHFRN FHFTashia2
~Hey, look at this. Now you see the coin...and now you don't!~
DO ~SetGlobal("FHFTashia2","GLOBAL",1)~
== BTASHIA ~It always makes me wonder why people do sleight-of-hand tricks like that, when we've got magic to do it for us. Do we really need it? What's the purpose of spending so much time learning?~
== BFHFRN ~Well, not everyone's smart enough to remember all those spells, are they?~
= ~Not impressed, then?~
== BTASHIA ~It's not that...it just makes me think.~
= ~And I appreciate having something else to think about. I was feeling a bit preoccupied.~
== BFHFRN ~Thought you were. Always ready for distraction duty, when it's needed.~
EXIT

CHAIN
IF ~InParty("FHFRN")
See("FHFRN")
!StateCheck("Tashia",CD_STATE_NOTVALID)
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFTashia3","GLOBAL",0)~ THEN BTASHIA FHFTashia3
~Hypothetical question. If you were a wizard or sorcerer, what spell would you want to cast the most?~
DO ~SetGlobal("FHFTashia3","GLOBAL",1)~
== BFHFRN ~You know what, I think I'd want to cast druidic magic, talk to animals, that kind of thing. It'd be fun!~
== BCERND IF ~InParty("Cernd") InMyArea("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN ~(sigh)~
== BJAHEIR IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN ~Natural magic is not "fun". It is a tool to preserve the natural order.~
== BFHFRN ~Is that cheating?~
== BTASHIA ~Not at all, just a different way of answering the question. Interesting, Mr Blacknall. Thank you.~
EXIT

//Romance conflict

CHAIN IF WEIGHT #-1 ~Global("FHFTashiaconflict","GLOBAL",2)~ THEN FHFRNJ FHFTashiaConflict
~So, uh. Tashia, right? I can't help noticing you've been talking with her a lot lately.~
== FHFRNJ IF ~Global("FHFarenRomanceActive","GLOBAL",1)~ THEN ~And I thought I should ask whether you're interested in her, you know, so I'm not barking up the wrong tree.~
== FHFRNJ IF ~Global("FHFarenRomanceActive","GLOBAL",2)~ THEN ~And I was wondering if maybe there's something I should know?~
END
++ ~Tashia and I are only companions - I'm interested in you, not her.~ DO ~SetGlobal("FHFTashiaconflict","GLOBAL",3) SetGlobal("TashiaRomanceActive","GLOBAL",3)~ + FHFTashiaConflict_endtashia
+ ~Global("FHFarenRomanceActive","GLOBAL",1)~ + ~It's true, Faren. Tashia and I have been growing close lately.~ DO ~SetGlobal("FHFTashiaconflict","GLOBAL",3) SetGlobal("FHFarenRomanceActive","GLOBAL",3) SetGlobal("FHFarenFriend","GLOBAL",1)~ + FHFTashiaConflict_endfaren
+ ~Global("FHFarenRomanceActive","GLOBAL",2)~ + ~It's true, Faren. Tashia and I have been growing close lately.~ DO ~SetGlobal("FHFTashiaconflict","GLOBAL",3) SetGlobal("FHFarenRomanceActive","GLOBAL",3)~ + FHFTashiaConflict_endfaren

CHAIN FHFRNJ FHFTashiaConflict_endtashia
~Ah, okay. Good to know I was misreading things.~
EXIT

CHAIN FHFRNJ FHFTashiaConflict_endfaren
~Ah...okay.~
== FHFRNJ IF ~Global("FHFarenRomanceActive","GLOBAL",1)~ THEN ~I guess it's good I checked!~
== FHFRNJ IF ~Global("FHFarenRomanceActive","GLOBAL",2)~ THEN ~What? But we...you said...~
== FHFRNJ IF ~Global("FHFarenRomanceActive","GLOBAL",2)~ THEN ~Ugh. Never mind. I'd rather have some space, thanks.~
EXIT
