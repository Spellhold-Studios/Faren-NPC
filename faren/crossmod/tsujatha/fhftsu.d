//Conflict 1

CHAIN IF WEIGHT #-1 ~Global("FHFTsuConflict1","GLOBAL",1)~ THEN TSUJATJ FHFTsuConf1
@0
DO ~SetGlobal("FHFTsuConflict1","GLOBAL",2)~
== FHFRNJ @1
== TSUJATJ @2
EXIT

//Conflict 2

CHAIN IF WEIGHT #-1 ~Global("FHFTsuConflict2","GLOBAL",1)~ THEN TSUJATJ FHFTsuConf2
@3
DO ~SetGlobal("FHFTsuConflict2","GLOBAL",2)~
== FHFRNJ @4
== TSUJATJ @5
= @6
= @7
== FHFRNJ @8
END
++ @9 DO ~SetGlobal("FHFarenRomanceActive","GLOBAL",3)~ EXTERN FHFRNJ FHFTsuConf2_farfriend
++ @10 DO ~SetGlobal("FHFarenRomanceActive","GLOBAL",3) SetGlobal("FHFarenFriend","GLOBAL",1)~ EXTERN FHFRNJ FHFTsuConf2_farfriend
++ @11 DO ~SetGlobal("TsujathaRomanceActive","GLOBAL",3)~ + FHFTsuConf2_tsufriend

CHAIN FHFRNJ FHFTsuConf2_farfriend
@12
== TSUJATJ @13
= @14
EXIT

CHAIN TSUJATJ FHFTsuConf2_tsufriend
@15
= @16
EXIT

//SoA Banters

CHAIN
IF ~InParty("FHFRN")
See("FHFRN")
!StateCheck("Tsujath",CD_STATE_NOTVALID)
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFTsujath1","GLOBAL",0)~ THEN BTSUJAT FHFTsujath1
~Your mode of speech is most puzzling, Faren.~
DO ~SetGlobal("FHFTsujath1","GLOBAL",1)~
== BFHFRN ~Oh? What is it, my accent?~
== BTSUJAT ~No. The way you talk of yourself and your abilities. It speaks of uncertainty and discomfort with oneself, and yet you smile.~
= ~I do not understand it. Why should you smile when speaking of your own weaknesses?~
== BFHFRN ~I guess it's just how I talk. Never really thought about it, but then I'm not a linguist, so...~
== BTSUJAT ~You are doing it again.~
== BFHFRN ~Oh, now I'm going to be thinking about it all <DAYNIGHT>!~
EXIT

CHAIN
IF ~InParty("FHFRN")
See("FHFRN")
!StateCheck("Tsujath",CD_STATE_NOTVALID)
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFTsujath2","GLOBAL",0)~ THEN BTSUJAT FHFTsujath2
~You are quiet, Faren. It is most unusual.~
DO ~SetGlobal("FHFTsujath2","GLOBAL",1)~
== BFHFRN ~And welcome, right? Hey, no need to sugarcoat it.~
== BTSUJAT ~Something troubles you.~
== BFHFRN ~Just looking over a letter Jessalyn sent me. Don't have a lot left of her and Araden, after the shadows took them.~
== BTSUJAT ~At least you have something to remember them by. Not all would be so fortunate.~
== BFHFRN ~Yeah, thank you for the reminder. I feel really fortunate now.~
= ~'Scuse me. I think I'm going to go be quiet somewhere else.~
EXIT

CHAIN
IF ~InParty("Tsujath")
See("Tsujath")
!StateCheck("Tsujath",CD_STATE_NOTVALID)
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFTsujath3","GLOBAL",0)~ THEN BFHFRN FHFTsujath3
~Aha, twenty seconds! That's got to be a record!~
DO ~SetGlobal("FHFTsujath3","GLOBAL",1)~
== BTSUJAT ~You're practising lockpicking?~
== BFHFRN ~Yeah, I need to keep in practice. And it's something to do, when we're on the road.~
== BTSUJAT ~How did you come to learn? It seems odd for a member of the militia to turn to criminal activities.~
== BFHFRN ~More common than you'd think, actually, but that's another story. No, after I left I headed over to Athkatla to seek my fortune and all that.~
= ~And there were some friendly folks who I got in with. They taught me, I was quick, it went from there.~
== BTSUJAT ~So you had no plan, no decisive force behind it.~
== BFHFRN ~...you could say that. If you were feeling obnoxious.~
== BTSUJAT ~Ah. I understand perfectly.~
EXIT
