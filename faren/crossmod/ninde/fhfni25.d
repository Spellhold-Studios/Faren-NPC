//Banters

CHAIN
IF ~InParty("FHFRN")
See("FHFRN")
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFNinde2","GLOBAL",0)~ THEN BLK#NI25 FHFNinde25
~This simply won't do, Mr. Blacknall. Every time I look at you, you're more of a ragamuffin. What on earth did that poor tunic ever do to you?~
== BFHF25 ~You're not looking too groomed yourself, Lady Amblecrown. What's that on your robe, dog guts? Ugh, don't tell me, I don't want to know.~
== BLK#NI25 ~That's for my work, and you know it. You have absolutely no excuse. I know you like to play the scruffy charmer, but a man of your standing cannot walk around looking like a vagrant.~
== BFHF25 ~Eh, don't fuss so much. If it's not completely torn up, it's good enough for me.~
== BLK#NI25 IF ~Global("FHFarenRomanceActive","GLOBAL",2)~ THEN ~And who would fuss if I did not - your <CHARNAME>? Why, <PRO_HESHE> is hardly the most refined in appearance <PRO_HIMHER>self!~
== BLK#NI25 IF ~!Global("FHFarenRomanceActive","GLOBAL",2) !Global("PGNaliaRomanceActive","GLOBAL",2) InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN ~And who would fuss if I did not - Miss De'Arnise over there? She has a habit of casting her eye over you!~
== BNALIA25 IF ~!Global("FHFarenRomanceActive","GLOBAL",2) !Global("PGNaliaRomanceActive","GLOBAL",2) InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN ~What nonsense you talk! I have no particular interest in Faren, and I'd thank you to keep your insinuations to yourself.~
== BFHF25 ~Don't give me that look, Ninde, you're breaking my heart.~
== BLK#NI25 ~Ah, never mind. I simply wished a diversion from all this dreariness.~
== BFHF25 ~You know, you can do that without insulting people.~
== BLK#NI25 ~But where would be the entertainment in that?~
= ~(sigh) Walk with me, Faren. War, upheaval, Bhaalspawn attacking and dying left and right...it all makes me feel cold to the bone, and I would prefer to think on other things.~
EXIT
