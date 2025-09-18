//Enhanced Edition Content

// Dorn SoA

CHAIN
IF ~InParty("FHFRN")
See("FHFRN")
!StateCheck("Dorn",CD_STATE_NOTVALID)
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFDorn1","GLOBAL",0)~ THEN BDORN FHFDorn1
~You are a man of small ambition, Faren.~
DO ~SetGlobal("FHFDorn1","GLOBAL",1)~
== BFHFRN ~I know, I know. My teachers used to tell me that all the time. Never thought I'd hear it from a Blackguard, though.~
== BDORN IF ~GlobalGT("FHFHalFaren","GLOBAL",0)~ THEN ~Your former dealings with Halmar show you have some backbone, however. There is something within you that hungers for violence and blood. It is plain to see.~
== BDORN IF ~Global("FHFHalFaren","GLOBAL",0)~ THEN ~You may have fooled others with your show of haplessness, but there is something within you that hungers for violence and blood. It is plain to see.~
== BFHFRN ~I...no. No, that's not how it is. I did that stuff because they were telling me to, it wasn't--~
== BDORN ~You have further to go than I thought. Choosing not to see the truth is mere weakness.~
EXIT

CHAIN
IF ~InParty("FHFRN")
See("FHFRN")
!StateCheck("Dorn",CD_STATE_NOTVALID)
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFDorn2","GLOBAL",0)~ THEN BDORN FHFDorn2
~You have been watching me again.~
DO ~SetGlobal("FHFDorn2","GLOBAL",1)~
== BFHFRN IF ~!Global("FHFarenRomanceActive","GLOBAL",2)~ THEN ~Can't fault a guy for looking, can you?~
== BDORN IF ~!Global("FHFarenRomanceActive","GLOBAL",2)~ THEN ~Turn your gaze elsewhere. I have no desire for one such as you.~
== BFHFRN IF ~Global("FHFarenRomanceActive","GLOBAL",2)~ THEN ~Don't flatter yourself, Dorn, I've got what I want right here with <CHARNAME>.~
== BDORN IF ~Global("FHFarenRomanceActive","GLOBAL",2)~ THEN ~Then turn your gaze to <PRO_HIMHER>, if you need such distraction. I have no desire for one such as you.~
EXIT

CHAIN
IF ~InParty("Dorn")
See("Dorn")
!StateCheck("Dorn",CD_STATE_NOTVALID)
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFDorn3","GLOBAL",0)~ THEN BFHFRN FHFDorn3
~...so then we had to run off in the middle of the night. But the guard was an elf, so she saw us leaving. Good shot with a bow, too.~
DO ~SetGlobal("FHFDorn3","GLOBAL",1)~
== BDORN ~And that's where you picked up the scar?~
== BFHFRN ~Yep. Still aches a bit in the winter, but it looks kind of heroic.~
== BDORN ~No. It looks like you and your cowardly group ran from danger, and so suffered injury. If you had stood and slaughtered them, you would have sustained fewer wounds and grown in renown.~
== BFHFRN ~You don't really get the idea of going undercover, do you?~
== BDORN ~Of course I understand the concept. It is simply an ineffective strategy.~
EXIT

//Dorn romance conflict
CHAIN
IF WEIGHT #-1 ~InParty("FHFRN")
See("FHFRN")
!StateCheck("Dorn",CD_STATE_NOTVALID)
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFDornconflict","GLOBAL",2)~ THEN DORNJ FHFDornConflict
~Enough. You may desire <PRO_HIMHER>, thief, but <PRO_HESHE> will be mine.~
DO ~SetGlobal("FHFDornconflict","GLOBAL",3)~
== FHFRNJ ~Isn't that <PRO_HISHER> decision? Since when do you tell <PRO_HIMHER> what to do?~
== DORNJ ~I am not telling <PRO_HIMHER>. I am telling you. Stay away.~
== FHFRNJ ~You know what? I'm not doing anything until <PRO_HESHE> tells me otherwise.~
END
++ ~Enough! It's my decision, and Faren is who I am interested in.~ DO ~SetGlobal("FHFDornconflict","GLOBAL",3) SetGlobal("DornRomanceActive","GLOBAL",3)~ + FHFDornConflict_enddorn
+ ~Global("FHFarenRomanceActive","GLOBAL",1)~ + ~Stay out of this, Faren. And, Dorn, you know I care for you.~ DO ~SetGlobal("FHFDornconflict","GLOBAL",3) SetGlobal("FHFarenRomanceActive","GLOBAL",3) SetGlobal("FHFarenFriend","GLOBAL",1)~ + FHFDornConflict_endfaren
+ ~Global("FHFarenRomanceActive","GLOBAL",2)~ + ~Stay out of this, Faren. And, Dorn, you know I care for you.~ DO ~SetGlobal("FHFDornconflict","GLOBAL",3) SetGlobal("FHFarenRomanceActive","GLOBAL",3)~ + FHFDornConflict_endfaren

CHAIN DORNJ FHFDornConflict_enddorn
~Bah! You will regret throwing in your lot with this weakling.~
== FHFRNJ ~Thanks for sticking up for me. You don't have to, but it's nice all the same.~
EXIT

CHAIN DORNJ FHFDornConflict_endfaren
~As it should be.~
== FHFRNJ IF ~Global("FHFarenRomanceActive","GLOBAL",1)~ THEN ~But I--~
== FHFRNJ IF ~Global("FHFarenRomanceActive","GLOBAL",1)~ THEN ~Oh, never mind. You're welcome to each other.~
== FHFRNJ IF ~Global("FHFarenRomanceActive","GLOBAL",2)~ THEN ~What? But we...you said...~
== FHFRNJ IF ~Global("FHFarenRomanceActive","GLOBAL",2)~ THEN ~Ugh. Never mind. I'd rather have some space, thanks.~
EXIT

//Dorn ToB

CHAIN
IF ~InParty("FHFRN")
See("FHFRN")
!StateCheck("Dorn",CD_STATE_NOTVALID)
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFDorn25","GLOBAL",0)~ THEN BDORN25 FHFDorn25
~The poison racked his body for days. He raved at the end, and begged me to spare his life.~
= ~I slit his throat. Poison is no way for a warrior to die.~
= ~You look thoughtful, thief. What is on your mind?~
DO ~SetGlobal("FHFDorn25","GLOBAL",1)~
== BFHF25 ~What...kind of poison was it? Sounds useful. Not to use on you, or your friends, of course! Just, it's always good to get more recipes.~
EXIT

//Hexxat SoA

CHAIN
IF ~InParty("FHFRN")
See("FHFRN")
!StateCheck("FHFRN",CD_STATE_NOTVALID)
!StateCheck("Hexxat",CD_STATE_NOTVALID)
Global("FHFHexxat1","GLOBAL",0)~ THEN BHEXXAT FHFHexxat1
~You look a little tired, Faren. I hope you are getting enough rest.~
DO ~SetGlobal("FHFHexxat1","GLOBAL",1)~
== BFHFRN ~Hmmm? Oh, yeah, I'm fine. Just a headache, is all. Had a weird night's sleep.~
= ~Wait - did I see you? Or someone that looked like you? I can't remember...~
== BHEXXAT ~You have the strangest dreams. What was the one you told me about, with the group of adventurers swinging through the trees?~
== BFHFRN ~Ha, yes!~
== BHEXXAT ~Well, do take care of yourself anyway. We wouldn't want you to keel over.~
EXIT

CHAIN
IF ~InParty("FHFRN")
See("FHFRN")
!StateCheck("FHFRN",CD_STATE_NOTVALID)
!StateCheck("Hexxat",CD_STATE_NOTVALID)
Global("FHFHexxat2","GLOBAL",0)~ THEN BHEXXAT FHFHexxat2
~Have you ever had your palm read, Faren?~
DO ~SetGlobal("FHFHexxat2","GLOBAL",1)~
== BFHFRN ~Yeah, there's a woman in Trademeet who does it, but it's mostly stuff anyone could tell you.~
== BHEXXAT ~Would you like me to read yours? Here, let me take your hand--~
= ~Hmmm.~
== BFHFRN ~What, is it something bad?~
== BHEXXAT ~The lines are deeply carved...few faint ones, I see. There is little to be read here, I fear.~
== BFHFRN ~Your hand's...very cold.~
== BHEXXAT ~I have not fed in some time. You ought to stand away.~
EXIT

CHAIN
IF ~InParty("Hexxat")
See("Hexxat")
!StateCheck("FHFRN",CD_STATE_NOTVALID)
!StateCheck("Hexxat",CD_STATE_NOTVALID)
Global("FHFHexxat3","GLOBAL",0)
GlobalGT("FHFPostSeth","GLOBAL",1)~ THEN BFHFRN FHFHexxat3
~I'm glad you're around - in the world, I mean, and not all messed up.~
DO ~SetGlobal("FHFHexxat3","GLOBAL",1)~
== BHEXXAT ~A fine compliment, I'm sure.~
== BFHFRN ~I didn't mean it like that! Just, seeing Seth with those - those things, it's been on my mind. Do you remember what it was like before you got your mind back?~
== BHEXXAT ~It was dark, and grey, and cold. You would not want to see a vampire without sense, I think.~
== BFHFRN ~Could you talk? Or was it like the way Araden just made those - noises?~
== BHEXXAT ~I would prefer not to dwell on it.~
== BFHFRN ~But--~
== BHEXXAT ~Enough. Let us speak of other things.~
EXIT

//Hexxat romance conflict

CHAIN IF WEIGHT #-1 ~Global("FHFHexxatconflict","GLOBAL",2)~ THEN FHFRNJ FHFHexxatConflict
~So. Sooo. I've got a bit of a delicate question to ask, but there isn't really a delicate way of asking it...~
= ~Are you into dead people? Because you've been spending a lot of time with Hexxat.~
== FHFRNJ IF ~Global("FHFarenRomanceActive","GLOBAL",1)~ THEN ~And I thought maybe there's something I should know? Because I don't think I want to get in the middle of that.~
== FHFRNJ IF ~Global("FHFarenRomanceActive","GLOBAL",2)~ THEN ~And I thought maybe there's something I should know?~
END
++ ~Hexxat and I are only companions - I'm interested in you, not her.~ DO ~SetGlobal("FHFHexxatconflict","GLOBAL",3) SetGlobal("HexxatRomanceActive","GLOBAL",3)~ + FHFHexxatConflict_endhexxat
+ ~Global("FHFarenRomanceActive","GLOBAL",1)~ + ~It's true, Faren. Hexxat and I have been growing close lately.~ DO ~SetGlobal("FHFHexxatconflict","GLOBAL",3) SetGlobal("FHFarenRomanceActive","GLOBAL",3) SetGlobal("FHFarenFriend","GLOBAL",1)~ + FHFHexxatConflict_endfaren
+ ~Global("FHFarenRomanceActive","GLOBAL",2)~ + ~It's true, Faren. Hexxat and I have been growing close lately.~ DO ~SetGlobal("FHFHexxatconflict","GLOBAL",3) SetGlobal("FHFarenRomanceActive","GLOBAL",3)~ + FHFHexxatConflict_endfaren

CHAIN FHFRNJ FHFHexxatConflict_endhexxat
~Ah, okay. Good to know I was misreading things.~
EXIT

CHAIN FHFRNJ FHFHexxatConflict_endfaren
~Ah...okay.~
== FHFRNJ IF ~Global("FHFarenRomanceActive","GLOBAL",1)~ THEN ~I guess it's good I checked!~
== FHFRNJ IF ~Global("FHFarenRomanceActive","GLOBAL",2)~ THEN ~What? But we...you said...~
== FHFRNJ IF ~Global("FHFarenRomanceActive","GLOBAL",2)~ THEN ~Ugh. Never mind. I'd rather have some space, thanks.~
EXIT

//Hexxat ToB

CHAIN
IF ~InParty("Hexxat")
See("Hexxat")
!StateCheck("FHFRN",CD_STATE_NOTVALID)
!StateCheck("Hexxat",CD_STATE_NOTVALID)
Global("FHFHexxat25","GLOBAL",0)~ THEN BFHF25 FHFHexxat3
~It must've been a long time ago, that you were...you know. Up and about.~
DO ~SetGlobal("FHFHexxat25","GLOBAL",1)~
== BHEXXA25 ~Alive, you mean?~
== BFHF25 ~Well, yeah. I didn't want to be rude.~
= ~What do you think you'd have done with your life, if it all had gone different?~
== BHEXXA25 ~What would you like to hear, Faren? That I would have been an innocent woman who lived her short life and died like an ordinary person? Or that I would have found some other dubious thirst?~
= ~I would rather consider what we do now. And it would be well for you to do the same, rather than dwelling on the past.~
EXIT

//Neera SoA

CHAIN
IF ~InParty("Neera")
See("Neera")
!StateCheck("FHFRN",CD_STATE_NOTVALID)
!StateCheck("Neera",CD_STATE_NOTVALID)
Global("FHFNeera1","GLOBAL",0)~ THEN BFHFRN FHFNeera1
~Ugh, don't you hate it when people just glare at you when you're walking around?~
DO ~SetGlobal("FHFNeera1","GLOBAL",1)~
== BNEERA ~I know, right? And you're not even doing anything, just walking, minding your own business.~
== BFHFRN ~Muttering away, going "ooh, what's he going to do next?" and "ooh, he's a bad influence", but they don't even know you.~
== BNEERA ~Praying to ward off bad magic effects...~
== BFHFRN ~I'm sorry about what happened with you in the High Forest, Neera.~
== BNEERA ~And I'm sorry about what happened with you in Trademeet.~
= ~Agh, now you've got me in a bad mood!~
== BFHFRN ~Card game?~
== BNEERA ~While walking along? I'm game. But you'd better enjoy fifty-two card pickup!~
EXIT

CHAIN
IF ~InParty("FHFRN")
See("FHFRN")
!StateCheck("FHFRN",CD_STATE_NOTVALID)
!StateCheck("Neera",CD_STATE_NOTVALID)
Global("FHFNeera2","GLOBAL",0)~ THEN BNEERA FHFNeera2
~No, for the last time, I am not going to try casting a spell on you to see what happens! I've reformed - I don't want something really bad to happen. What if you turned into a squirrel?~
DO ~SetGlobal("FHFNeera2","GLOBAL",1)~
== BFHFRN ~Aw, come on. It'd be fun!~
== BNEERA ~Getting your feet rooted to the floor for half an hour would definitely be fun for me to watch, but would it be all that fun for you?~
== BFHFRN ~Okay, then, it'd be...an experience?~
== BNEERA ~No way. It'll happen anyway without me trying, what's the point of sending out an invite and putting out a sign saying "Hey, wild surge, come over for dinner!"~
== BFHFRN ~Spoilsport.~
EXIT

CHAIN
IF ~InParty("FHFRN")
See("FHFRN")
!StateCheck("Neera",CD_STATE_NOTVALID)
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFNeera3","GLOBAL",0)~ THEN BNEERA FHFNeera3
~...books, colour pencils, charcoal pencils, can't forget socks...~
DO ~SetGlobal("FHFNeera3","GLOBAL",1)~
== BFHFRN ~Hey, Neera, are you okay?~
== BNEERA ~What? Oh! Yes, I'm fine.~
== BFHFRN ~You've been poking through your stuff for the last ten minutes.~
== BNEERA ~Oh. Yeah, I guess I have. I'm...well, I'm just checking I've got everything on me. In case I need to get away fast.~
== BFHFRN ~You're planning on running away?~
== BNEERA ~No! No, no, no. Of course not!~
== BFHFRN ~Don't worry about it, it's good to be prepared. I always need to know I'm ready to go, too, if I need to be.~
EXIT

//Neera romance conflict

CHAIN IF WEIGHT #-1 ~Global("FHFNeeraconflict","GLOBAL",2)~ THEN NEERAJ FHFNeeraConflict
~Sooo, I can't help observing that our resident sneakthief seems rather taken with you.~
= ~And, I mean, he does have marvellous hair, and I wanted to check if you felt the same way. Because I really don't need drama getting in the way of things.~
END
+ ~Global("FHFarenRomanceActive","GLOBAL",1)~ + ~Faren and I are only friends - I'm much more interested in you.~ DO ~SetGlobal("FHFNeeraconflict","GLOBAL",3) SetGlobal("FHFarenRomanceActive","GLOBAL",3) SetGlobal("FHFarenFriend","GLOBAL",1)~ + FHFNeeraConflict_endfaren
+ ~Global("FHFarenRomanceActive","GLOBAL",2)~ + ~Faren and I are only friends - I'm much more interested in you.~ DO ~SetGlobal("FHFNeeraconflict","GLOBAL",3) SetGlobal("FHFarenRomanceActive","GLOBAL",3)~ + FHFNeeraConflict_endfaren
++ ~Actually, it's true. I do have feelings for Faren.~ DO ~SetGlobal("FHFNeeraconflict","GLOBAL",3) SetGlobal("NeeraRomanceActive","GLOBAL",3)~ + FHFNeeraConflict_endneera

CHAIN NEERAJ FHFNeeraConflict_endfaren
~Okay, good to know! Thanks for clearing that up, <CHARNAME>.~
EXIT

CHAIN NEERAJ FHFNeeraConflict_endneera
~Well, good luck with him. He doesn't come off as the heartbreaker type...though I guess he might do it by mistake. Still, that makes me a free woman - kind of a relief! Let's get moving.~
EXIT

//Neera ToB

CHAIN
IF ~InParty("FHFRN")
See("FHFRN")
!StateCheck("FHFRN",CD_STATE_NOTVALID)
!StateCheck("Neera",CD_STATE_NOTVALID)
Global("FHFNeera25","GLOBAL",0)~ THEN BNEERA25 FHFNeera25
~I don't get this adventuring thing, Faren. What makes you wake up one morning and go "I'd like to wander the wasteland cutting up beasties and sleeping on the ground"?~
DO ~SetGlobal("FHFNeera25","GLOBAL",1)~
== BFHF25 ~What do you mean? You do it too.~
== BNEERA25 ~Ye-es, but by necessity. Not preference. You weren't on the run when you started, you were just...~
== BFHF25 ~Lazing around feeling sorry for myself?~
== BNEERA25 ~I wasn't going to say it, but...~
== BFHF25 ~Doing all this, it's exciting. I like waking up and not knowing what's going to happen in the day. Even if it involves cutting up beasties - or especially if it does!~
== BNEERA25 ~You're a strange man, Faren. I don't know if I respect you or wonder what's going on in your head.~
== BFHF25 ~That's the nicest thing I've heard all <DAYNIGHT>!~
EXIT

I_C_T BNEERA25 14 FHFNEERA14
== FHF25J IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
~Oh man, you were just getting going! I had some really great ideas!~
END

//Rasaad SoA

CHAIN
IF ~InParty("Rasaad")
See("Rasaad")
!StateCheck("FHFRN",CD_STATE_NOTVALID)
!StateCheck("Rasaad",CD_STATE_NOTVALID)
Global("FHFRasaad1","GLOBAL",0)~ THEN BFHFRN FHFRasaad1
~...Nope. No, it's not going to happen, sorry.~
DO ~SetGlobal("FHFRasaad1","GLOBAL",1)~
== BRASAAD ~Cleanse your mind. Imagine it empty of all thought.~
== BKORGAN IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN
~Hahaha! That be easy to picture, ye empty-headed longlimb!~
== BFHFRN ~Argh! No, it's no good. I just end up thinking about stuff. What we're having for dinner, and what's happening tomorrow, and just...everything.~
== BRASAAD ~Patience is the key. Do not stop the mind from wandering, but gently pull it back without blame or remorse.~
== BFHFRN ~I don't know how you do this, I really don't.~
== BRASAAD ~Years of practice and patience. If you keep with it, it will come as second nature.~
== BFHFRN ~Hmph. I don't know about that...but you're probably right.~
EXIT

CHAIN
IF ~InParty("Rasaad")
See("Rasaad")
!StateCheck("FHFRN",CD_STATE_NOTVALID)
!StateCheck("Rasaad",CD_STATE_NOTVALID)
Global("FHFRasaad2","GLOBAL",0)~ THEN BFHFRN FHFRasaad2
~I'd love to see Calimshan one day. Got any tourist tips? Anywhere I should go in Calimport?~
DO ~SetGlobal("FHFRasaad2","GLOBAL",1)~
== BRASAAD ~I suspect my preferred locales would be different to yours, Faren. There was a particular park in which I sometimes sat, beneath the spreading branches of a banyan tree.~
== BFHFRN ~Yeah, that wouldn't be my best destination. You can get trees anywhere!~
== BRASAAD ~No doubt you would enjoy the Avenue Paradiso. Let me tell you of some of the market stalls there...~
EXIT

CHAIN
IF ~InParty("FHFRN")
See("FHFRN")
!StateCheck("FHFRN",CD_STATE_NOTVALID)
!StateCheck("Rasaad",CD_STATE_NOTVALID)
Global("FHFRasaad3","GLOBAL",0)~ THEN BRASAAD FHFRasaad3
~I do not understand, Faren. Why do you not harbour more...more anger against the shades that killed your friends?~
DO ~SetGlobal("FHFRasaad3","GLOBAL",1)~
== BFHFRN IF ~Dead("SHADELD")~ THEN ~The Shade Lord's dead now, isn't it? So are they. Being angry at it's not going to bring them back. Or kill it again.~
== BFHFRN IF ~!Dead("SHADELD")~ THEN ~If I couldn't kill the shadows with them, I can't exactly do it by myself, can I? Being angry isn't going to bring them back.~
== BRASAAD ~But they were killed in front of you. How can you sit by and laugh the way you do, and not desire more vengeance?~
== BFHFRN IF ~Dead("SHADELD")~ THEN ~I...don't know. I don't know what more I could do.~
== BFHFRN IF ~!Dead("SHADELD")~ THEN ~I...don't know. I ran away from it, and it just got me in more trouble.~
== BFHFRN ~I guess they wouldn't want me sitting around being angry on their account. It gets...tiring.~
== BRASAAD ~...Yes. Yes, it does.~
EXIT

//Rasaad romance conflict

CHAIN IF WEIGHT #-1 ~Global("FHFRasaadconflict","GLOBAL",2)~ THEN RASAADJ FHFRasaadConflict
~I wonder, <CHARNAME> - might I have a word?~
= ~I have noticed Faren treating you with some affection lately. He is a...forward sort of man, so I thought I ought to ask you privately - do you have feelings for him?~
END
+ ~Global("FHFarenRomanceActive","GLOBAL",1)~ + ~Faren and I are only friends - I'm much more interested in you.~ DO ~SetGlobal("FHFRasaadconflict","GLOBAL",3) SetGlobal("FHFarenRomanceActive","GLOBAL",3) SetGlobal("FHFarenFriend","GLOBAL",1)~ + FHFRasaadConflict_endfaren
+ ~Global("FHFarenRomanceActive","GLOBAL",2)~ + ~Faren and I are only friends - I'm much more interested in you.~ DO ~SetGlobal("FHFRasaadconflict","GLOBAL",3) SetGlobal("FHFarenRomanceActive","GLOBAL",3)~ + FHFRasaadConflict_endfaren
++ ~Actually, it's true. I do have feelings for Faren.~ DO ~SetGlobal("FHFRasaadconflict","GLOBAL",3) SetGlobal("RasaadRomanceActive","GLOBAL",3)~ + FHFRasaadConflict_endrasaad

CHAIN RASAADJ FHFRasaadConflict_endfaren
~Thank you for your honesty, <CHARNAME>. I appreciate it.~
EXIT

CHAIN RASAADJ FHFRasaadConflict_endrasaad
~I...very well, I will trouble you no more on this. Thank you for your honesty.~
EXIT

//Rasaad ToB

CHAIN
IF ~InParty("Rasaad")
See("Rasaad")
!StateCheck("Rasaad",CD_STATE_NOTVALID)
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFRasaad25","GLOBAL",0)~ THEN BFHF25 FHFRasaad25
~Serious again, Rasaad? How are you doing?~
DO ~SetGlobal("FHFRasaad25","GLOBAL",1)~
== BRASAA25 ~I apologise if my manner is unfriendly. There is a great deal on my mind.~
== BFHF25 ~Yeah, I know the feeling. I was kind of hoping to have a distraction.~
= ~Hey, where did you get your tattoos done? Maybe I could get something...~
== BRASAA25 ~(sigh)~
EXIT
