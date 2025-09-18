//Isra SoA

CHAIN
IF ~InParty("rh#isra2")
See("rh#isra2")
!StateCheck("rh#isra2",CD_STATE_NOTVALID)
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFIsra1","GLOBAL",0)
CheckStatGT("rh#isra2",5,FATIGUE)~ THEN BFHFRN FHFIsra1
~Was that a yawn, Isra? You all right? We could probably stop, if you wanted.~
DO ~SetGlobal("FHFIsra1","GLOBAL",1)~
== BRH#ISR ~Ah - no, thank you, I am quite well. I have a few more hours left at least - I will not falter for some time.~
== BFHFRN ~I always wondered how the Ruby Rose knights coped with the vigil. Tough enough being on night watch duty, let alone having nothing to look at.~
== BRH#ISR ~With patience, and an active mind. I cannot recall all my thoughts at the time, but they did wander a great deal.~
= ~Besides, the vigil is only the start of the journey of being a Paladin. If we were not tested, how would we understand we were worthy?~
== BFHFRN ~...I doubt I could even get past that part.~
== BRH#ISR ~Staying awake, or knowing you are worthy?~
== BFHFRN ~Uh, I'll pass on answering that one.~
EXIT

CHAIN
IF ~InParty("rh#isra2")
See("rh#isra2")
!StateCheck("rh#isra2",CD_STATE_NOTVALID)
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFIsra2","GLOBAL",0)~ THEN BFHFRN FHFIsra2
~Ooh, I think I see a spot of dust on your armour...~
DO ~SetGlobal("FHFIsra2","GLOBAL",1)~
== BRH#ISR ~You cannot fool me, Faren. I cleaned it only yesterday!~
== BFHFRN ~Damn, here was I hoping I could get you to look. One day, Lady Ghadir, one day...~
EXIT

CHAIN
IF ~InParty("FHFRN")
See("FHFRN")
!StateCheck("rh#isra2",CD_STATE_NOTVALID)
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFIsra3","GLOBAL",0)~ THEN BRH#ISR FHFIsra3
~My thanks, Faren. That worked marvellously.~
DO ~SetGlobal("FHFIsra3","GLOBAL",1)~
== BFHFRN ~Oh, that's okay. I don't usually bother with hair oil except special occasions, and how many of those do we get these days?~
== BRH#ISR ~Would that we had a full afternoon to wander Waukeen's Promenade. I'm not stranger to perfumes and salves, but Athkatla ever surprises me with something new.~
== BFHFRN ~Oil from coconuts, that's the best. This isn't as good, you have to spend a fortune to get hold of it, but you should give that a go.~
== BRH#ISR ~That sounds most pleasant. I shall indeed, when I have the chance.~
EXIT

//Romance conflict

CHAIN IF WEIGHT #-1 ~Global("FHFIsraconflict","GLOBAL",2)~ THEN RH#ISRJ FHFIsraconflict
~<CHARNAME>, if I might have a brief word, in private?~
END
++ ~Of course, Isra. What is it?~ DO ~SetGlobal("FHFIsraconflict","GLOBAL",3)~ + FHFIsraconflict_faren
++ ~This sounds somewhat ominous.~ DO ~SetGlobal("FHFIsraconflict","GLOBAL",3)~ + FHFIsraconflict_faren
++ ~Whatever it is, I don't want to hear it.~ DO ~SetGlobal("FHFIsraconflict","GLOBAL",3)~ + FHFIsraconflict_exit

APPEND RH#ISRJ

IF ~~ FHFIsraconflict_faren
SAY ~I would speak of Faren, my <PRO_LADYLORD>. It is hardly a secret that he has no small interest in you, and I would ask... Please, make sure that your heart is safe.~
= ~I cast no judgement on what you would wish to do together, but I cannot see that he wishes for anything serious between you. 'Tis a sorry thing for someone to fall for one who does not truly care for them.~
++ ~You're not just saying this because you don't like him, I hope.~ + FHFIsraconflict_petty
++ ~If you think it's a problem, I'll tell him to stop bothering me.~ + FHFIsraconflict_tell
++ ~It doesn't need to be a concern. We're taking each moment as it comes.~ + FHFIsraconflict_tell
END

IF ~~ FHFIsraconflict_exit
SAY ~So I see.~
IF ~~ DO ~IncrementGlobal("rh#IsraOffense","GLOBAL",1)~ EXIT
END

IF ~~ FHFIsraconflict_petty
SAY ~No... no, I hope that I would not be so petty.~
IF ~~ + FHFIsraconflict_tell
END

IF ~~ FHFIsraconflict_tell
SAY ~I will not tell you what to do, and I shan't say that any romance between you is doomed to failure, but be careful, <CHARNAME>. Please.~
++ ~I have feelings for Faren, and I would prefer if you did not comment upon them.~ DO ~SetGlobal("rh#IsraRomanceActive","GLOBAL",3)~ + FHFIsraconflict_israend
+ ~Global("FHFarenRomanceActive","GLOBAL",1)~ + ~You don't need to worry yourself. I think of Faren as a companion, nothing more.~ DO ~SetGlobal("FHFarenRomanceActive","GLOBAL",3) SetGlobal("FHFarenFriend","GLOBAL",1)~ + FHFIsraconflict_farenend
+ ~Global("FHFarenRomanceActive","GLOBAL",2)~ + ~You don't need to worry yourself. I think of Faren as a companion, nothing more.~ DO ~SetGlobal("FHFarenRomanceActive","GLOBAL",3)~ + FHFIsraconflict_farenend
END

IF ~~ FHFIsraconflict_israend
SAY ~(sigh) I understand.~
IF ~~ EXIT
END

IF ~~ FHFIsraconflict_farenend
SAY ~I cannot say I am not relieved, <CHARNAME>. I hope that he is not overly disappointed by this, but 'tis kinder to your own heart and his if neither of you truly feel for the other.~
IF ~~ EXIT
END

END
