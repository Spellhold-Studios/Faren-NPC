//Coran SoA

CHAIN
IF ~InParty("FHFRN")
See("FHFRN")
!StateCheck("O#Coran",CD_STATE_NOTVALID)
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFCoran1","GLOBAL",0)
OR(2)
Global("FHFarenRomanceActive","GLOBAL",1)
Global("FHFarenRomanceActive","GLOBAL",2)~ THEN BO#CORAN FHFCoran1
~Ah, love and life. What more could you want?~
DO ~SetGlobal("FHFCoran1","GLOBAL",1)~
== BFHFRN ~Sounds good to me, but what's brought this on?~
== BO#CORAN ~Simply that your gaze turns to <CHARNAME> whenever we stop. And when we're walking. And when <PRO_HESHE> does anything at all. It's rather sweet.~
== BO#CORAN IF ~Gender(Player1,FEMALE)~ THEN ~I remember she and I used to share confidences on the road, talks beneath the moonlight, a brush of a hand on an arm...~
== BO#CORAN IF ~Gender(Player1,MALE)~ THEN ~I remember the hearts he used to break on the road. Why, if I was to tell you a tenth of the stories, it would make your hair stand on end...~
== BFHFRN ~Are you trying to make me jealous? Because it's not working.~
== BO#CORAN ~Your scowl says otherwise, my dear Faren.~
= ~Ah, but we must not be enemies! Come, let me tell you a tale of <CHARNAME> and a delightfully seedy inn...~
EXIT

CHAIN
IF ~InParty("O#Coran")
See("O#Coran")
!StateCheck("O#Coran",CD_STATE_NOTVALID)
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFCoran2","GLOBAL",0)~ THEN BFHFRN FHFCoran2
~I could swear I know that tune you were humming, Coran. I think my father used to sing it, but I don't remember the words.~
DO ~SetGlobal("FHFCoran2","GLOBAL",1)~
== BO#CORAN ~I heard it some years back, from a very pleasant lady of negotiable virtue I was acquainted with - ah, the memories!~
== BFHFRN ~Oh.~
== BO#CORAN ~She was a marvellous woman. She had the most wonderful--~
== BFHFRN ~Please, stop ruining my childhood.~
== BO#CORAN ~I mean nothing by it, never fear!~
== BFHFRN ~Ah, damn it, how come you never get pinned down to anything?~
== BO#CORAN ~Long, long years of practice.~
EXIT

CHAIN
IF ~InParty("O#Coran")
See("O#Coran")
!StateCheck("O#Coran",CD_STATE_NOTVALID)
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFCoran3","GLOBAL",0)~ THEN BFHFRN FHFCoran3
~...and she said her husband wouldn't mind, but I thought it'd be better to get out while I could.~
DO ~SetGlobal("FHFCoran3","GLOBAL",1)~
== BO#CORAN ~You should have remained! There's little better than such a marital arrangement...except a good marital drama. Just think, you could have practised your skill at jumping out of windows!~
== BFHFRN ~Her house was very tall, I don't think it would've gone so well.~
== BO#CORAN ~Ah, that is a pity indeed.~
EXIT
