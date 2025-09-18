BEGIN FHFNA25

//Initial meeting

CHAIN IF ~Global("FHFNadiyya","GLOBAL",1)~ THEN FHFNA25 FHFNadiyyaMeet
~Sir? Sir! You dropped this? I think it's food? Or something edible, at least.~
DO ~SetGlobal("FHFNadiyya","GLOBAL",2) SetGlobalTimer("FHFNadiyyaFarenTime","GLOBAL",ONE_HOUR)~
== FHF25J ~Hmmm? Oh! I wouldn't have had a proper dinner if I'd lost that. Thank you, Miss...?~
== FHFNA25 ~Uh, it's Nadiyya. You're welcome! Maybe I'll see you around!~
== FHF25J ~Ah, what a nice kid.~
EXIT

//Talking to Nadiyya without Faren at her initial spawn point or at the Tavern

CHAIN IF ~OR(2) Global("FHFNadiyya","GLOBAL",0) Global("FHFNadiyya","GLOBAL",4) OR(3) !InParty("FHFRN") !InMyArea("FHFRN") StateCheck("FHFRN",CD_STATE_NOTVALID) RandomNum(4,1)~ THEN FHFNA25 FHFNadiyya_nofaren
~The monks used to help us. They used to guard Amkethran. *sigh*~
EXIT

CHAIN IF ~OR(2) Global("FHFNadiyya","GLOBAL",0) Global("FHFNadiyya","GLOBAL",4) OR(3) !InParty("FHFRN") !InMyArea("FHFRN") StateCheck("FHFRN",CD_STATE_NOTVALID) RandomNum(4,2)~ THEN FHFNA25 FHFNadiyya_nofaren
~How can we be going to war? Against whom? This makes no sense!~
EXIT

CHAIN IF ~OR(2) Global("FHFNadiyya","GLOBAL",0) Global("FHFNadiyya","GLOBAL",4) OR(3) !InParty("FHFRN") !InMyArea("FHFRN") StateCheck("FHFRN",CD_STATE_NOTVALID) RandomNum(4,3)~ THEN FHFNA25 FHFNadiyya_nofaren
~I'm told undead have been coming out of the graveyard cavern. The monks should do something about them!~
EXIT

CHAIN IF ~OR(2) Global("FHFNadiyya","GLOBAL",0) Global("FHFNadiyya","GLOBAL",4) OR(3) !InParty("FHFRN") !InMyArea("FHFRN") StateCheck("FHFRN",CD_STATE_NOTVALID) RandomNum(4,4)~ THEN FHFNA25 FHFNadiyya_nofaren
~More mercenaries come in every day. Like we don't have enough already.~
EXIT

//Meeting at the Tavern with Faren

CHAIN IF ~Global("FHFNadiyya","GLOBAL",4) InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN FHFNA25 FHFNadiyyaConfront
~H-hello? Don't mind me, I was just leaving...~
DO ~SetGlobal("FHFNadiyya","GLOBAL",5) RealSetGlobalTimer("FHFNadiyyaFollowupTime","GLOBAL",500)~
== FHF25J ~Nadiyya, right? I couldn't help noticing my ring was a little, well, absent after our meeting. Mind giving it back?~
== FHFNA25 ~I don't know what you're talking about!~
END
++ ~Don't try to fool us, girl. You know perfectly well what I'm capable of.~ + FHFNadiyyaConfront_threat
++ ~No need to worry, Nadiyya. All we need is for you to return the ring.~ + FHFNadiyyaConfront_cajole
++ ~Faren, do you want to take the lead, here?~ EXTERN FHF25J FHFNadiyyaConfront_faren

CHAIN FHFNA25 FHFNadiyyaConfront_threat
~No, no! I wasn't trying to fool anyone! I'm sorry!~
END FHFNA25 FHFNadiyyaConfront_ring

CHAIN FHFNA25 FHFNadiyyaConfront_cajole
~I'm not worrying, I just...I'm sorry!~
END FHFNA25 FHFNadiyyaConfront_ring

CHAIN FHF25J FHFNadiyyaConfront_faren
~Come on, Nadiyya. Me and my friends can make things very difficult for you if you keep playing dumb that way. You think you can play us?~
END FHFNA25 FHFNadiyyaConfront_threat

CHAIN FHFNA25 FHFNadiyyaConfront_ring
~Here! Take your stupid ring!~
== FHF25J ~Hey, no need to throw it at my face-- oh. Oh, no, don't cry, <CHARNAME>, she's crying...~
== FHFNA25 ~All I do at the Temple is wash the floor, and everyone's so miserable here, and I thought I - I could get some money together and become an adventurer! And, and travel around and see the world. I didn't think it would cause any harm, I didn't think you'd miss it!~
== FHF25J ~(sigh) Look, that's not the way to go about it. You need to--~
= ~Oh, by the gods. Since when do I give advice? Since when do I know what to say?~
END
++ ~Looks like you need to step up and give her some advice, Faren.~ EXTERN FHF25J FHFNadiyyaConfront_advicefaren
++ ~If you're cared for by the Temple, I need to tell them about this incident.~ DO ~SetGlobal("FHFNadTemple","GLOBAL",1)~ + FHFNadiyyaConfront_temple
++ ~You have to become a more competent thief. What if Faren had attacked you?~ + FHFNadiyyaConfront_thief
++ ~Just stick it out here in Amkethran. You need to help your fellow villagers.~ + FHFNadiyyaConfront_settle

CHAIN FHF25J FHFNadiyyaConfront_advicefaren
~What? Uh, okay... Well. For starters, don't pickpocket someone travelling with a Bhaalspawn. Assess the risk.~
= ~And maybe wait a little while. You don't have to rush out right now, just bide your time.~
== FHFNA25 ~I...I guess I could work for the Temple some more and get more money together...~
== FHF25J ~That's the spirit! And adventuring is great, but you need friends for it.~
= ~You got any friends?~
== FHFNA25 ~Y-yes...?~
== FHF25J ~Keep them close. And...make sure they know how you feel about them.~
== FHF25J IF ~PartyGoldGT(100)~ THEN ~Here, we've got some spare cash - take it.~
== FHFNA25 ~*sniff* Th-thank you...~
END FHF25J FHFNadiyyaConfront_look

CHAIN FHFNA25 FHFNadiyyaConfront_temple
~Oh, no! Please don't! Chyil will be so disappointed, he does this awful sad look and I feel like I'm going to fall into the ground.~
== FHF25J ~It's called facing up to what you did, kid. It won't be so bad. Waukeen was a merciful goddess, I'm sure the priests can't be that bad. They weren't in Trademeet, anyway.~
== FHFNA25 ~Fine...fine...~
DO ~MoveToObjectNoInterrupt("Tran5500")
MoveBetweenAreas("AR5503",[322.240],2)~
EXIT

CHAIN FHFNA25 FHFNadiyyaConfront_thief
~I didn't think of that...~
== FHF25J IF ~Class(Player1,THIEF_ALL)~ THEN ~Clearly. Come on, me and <CHARNAME> can teach you a few tricks. Okay?~
== FHF25J IF ~!Class(Player1,THIEF_ALL)~ THEN ~No offence, <CHARNAME>, but you're not really the best person to lecture folks on thievery. Come on, Nadiyya, I can teach you a few tricks - it'll help you stop getting caught, at least. Okay?~
DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("fhfct251")~
EXIT

CHAIN FHFNA25 FHFNadiyyaConfront_settle
~But - but there's all these horrible soldiers everywhere, and the monks just go ordering everyone around, and everything's just - just--~
== FHF25J ~Hey, don't cry. It's okay. You got any friends here?~
== FHFNA25 ~Y-yes...?~
== FHF25J ~Maybe talk to them about it. A few years, and you'll be ready to go out and about, and things'll be safer.~
== FHFNA25 ~I suppose...~
END FHF25J FHFNadiyyaConfront_look

CHAIN FHF25J FHFNadiyyaConfront_look
~Just look after yourself, kid.~
DO ~SetGlobal("FHFNadSettle","GLOBAL",1)~
EXIT

//Post Encounter

CHAIN IF ~Global("FHFNadiyya","GLOBAL",5) Global("FHFNadThieving","GLOBAL",2)~ THEN FHFNA25 FHFNadPostThieving
~Thanks for the help! I bet I'm going to be the best thief in the whole town!~
EXIT

CHAIN IF ~Global("FHFNadiyya","GLOBAL",5) Global("FHFNadSettle","GLOBAL",1)~ THEN FHFNA25 FHFNadPostSettle
~I...I hope it doesn't get too bad, here. But I'll stick it out.~
EXIT

CHAIN IF ~Global("FHFNadiyya","GLOBAL",5) Global("FHFNadTemple","GLOBAL",3)~ THEN FHFNA25 FHFNadPostTemple
~This is the worst <DAYNIGHT> of my whole life...~
EXIT

//Zakee Rafeha questioning

EXTEND_BOTTOM AMBAR01 3
+ ~Global("FHFNadiyyaReact","GLOBAL",2) GlobalLT("FHFNadiyya","GLOBAL",4)~ + ~Have you seen a young woman called Nadiyya around?~ + AMBAR01_Nadiyya
+ ~Global("FHFNadiyya","GLOBAL",4)~ + ~Have you seen a young woman called Nadiyya around? Chiyil said she might be here.~ + AMBAR01_Nadiyya2
END

EXTEND_BOTTOM AMBAR01 21
+ ~Global("FHFNadiyyaReact","GLOBAL",2) GlobalLT("FHFNadiyya","GLOBAL",4)~ + ~Have you seen a young woman called Nadiyya around?~ + AMBAR01_Nadiyya
+ ~Global("FHFNadiyya","GLOBAL",4)~ + ~Have you seen a young woman called Nadiyya around? Chiyil said she might be here.~ + AMBAR01_Nadiyya2
END

APPEND AMBAR01

IF ~~ AMBAR01_Nadiyya
SAY ~Oh, her? She's a troublemaker, that one. She's one of the sisters at the Temple of Waukeen, but I couldn't say she's much of a decent priest. And with the Temple having so much trouble lately, too. Hmph!~
IF ~~ + 21
END

IF ~~ AMBAR01_Nadiyya2
SAY ~Ah, certainly! She's just over there, beside the door.~
IF ~~ + 21
END

END

//Chyil questioning

EXTEND_BOTTOM AMCLER02 0
+ ~Global("FHFNadiyyaReact","GLOBAL",2) GlobalLT("FHFNadiyya","GLOBAL",4)~ + ~Have you seen a young woman called Nadiyya around?~ DO ~SetGlobal("FHFNadiyya","GLOBAL",4)~ + AMCLER02_Nadiyya
END

EXTEND_BOTTOM AMCLER02 3
+ ~Global("FHFNadiyyaReact","GLOBAL",2) GlobalLT("FHFNadiyya","GLOBAL",4)~ + ~Have you seen a young woman called Nadiyya around?~ DO ~SetGlobal("FHFNadiyya","GLOBAL",4)~ + AMCLER02_Nadiyya
END

EXTEND_BOTTOM AMCLER02 6
+ ~Global("FHFNadiyyaReact","GLOBAL",2) GlobalLT("FHFNadiyya","GLOBAL",4)~ + ~Have you seen a young woman called Nadiyya around?~ DO ~SetGlobal("FHFNadiyya","GLOBAL",4)~ + AMCLER02_Nadiyya
END

EXTEND_BOTTOM AMCLER02 10
+ ~Global("FHFNadiyyaReact","GLOBAL",2) GlobalLT("FHFNadiyya","GLOBAL",4)~ + ~Have you seen a young woman called Nadiyya around?~ DO ~SetGlobal("FHFNadiyya","GLOBAL",4)~ + AMCLER02_Nadiyya
END

EXTEND_BOTTOM AMCLER02 15
+ ~Global("FHFNadiyyaReact","GLOBAL",2) GlobalLT("FHFNadiyya","GLOBAL",4)~ + ~Have you seen a young woman called Nadiyya around?~ DO ~SetGlobal("FHFNadiyya","GLOBAL",4)~ + AMCLER02_Nadiyya
END

CHAIN AMCLER02 AMCLER02_Nadiyya
~Ah, she is a troubled one, my <GIRLBOY>. She has been having some difficulty finding her path of late - spending her days at the inn rather than contemplation. But I am sure she will return to Waukeen's sight in time, when she settles a little. Is there something else I can help you with?~
END
COPY_TRANS AMCLER02 3
