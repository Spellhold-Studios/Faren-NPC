//Dace SoA Banters

CHAIN
IF ~InParty("FHFRN")
See("FHFRN")
!StateCheck("T#Dace",CD_STATE_NOTVALID)
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFDace1","GLOBAL",0)~ THEN BT#DACE FHFDace1
~With a radish.~
= ~You're lookin' all aflutter, Farry. Need a glass of water, or a liedown to rest your nerves?~
DO ~SetGlobal("FHFDace1","GLOBAL",1)~
== BFHFRN ~...Remind me never to get into a grossout contest with you ever, ever again.~
EXIT

CHAIN
IF ~InParty("FHFRN")
See("FHFRN")
!StateCheck("T#Dace",CD_STATE_NOTVALID)
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFDace2","GLOBAL",0)~ THEN BT#DACE FHFDace2
~I'm just sayin', Farry, if someone's knife was to unfortunately slice through the air in the thick of a fight, then somethin' might happen. And the somethin' that happens might just happen to that hair of yours.~
DO ~SetGlobal("FHFDace2","GLOBAL",1)~
== BFHFRN ~So what you're saying is "nice hair, it'd be a shame if something was to happen to it"?~
== BT#DACE ~That's about the long and short of it, if you'll pardon the sayin'.~
== BFHFRN ~I've been an enforcer, Linton. I know how it works. First it's the hair, then it's the shoes, and next thing you know you've got broken windows and the rats are swarming in.~
== BT#DACE ~Now that's just that mind of yours workin' away to places that were mightily unintended. You could not say, hand on heart, that I wasn't simply thinkin' of your own comfort and convenience.~
= ~And that you're really, really badly in need a haircut.~
== BFHFRN ~Maybe. But I think I'll go to a professional, not to you.~
== BT#DACE ~And that's all I was lookin' for. My oh my, sweetheart, but you're a suspicious sort!~
EXIT

CHAIN
IF ~InParty("T#Dace")
See("T#Dace")
!StateCheck("T#Dace",CD_STATE_NOTVALID)
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFDace3","GLOBAL",0)~ THEN BFHFRN FHFDace3
~I used to want to be a bounty hunter - how'd you get into it? I assume it pays decently.~
DO ~SetGlobal("FHFDace3","GLOBAL",1)~
== BT#DACE ~Oh, honey, you don't want to get yourself into this job, trust me.~
== BFHFRN ~How come? You've done well enough at it, right?~
== BT#DACE ~Yeah, of course I've done well enough, but that's 'cause I know the ropes. I've got the temperament. You...not so much, Farry, I'm afraid to say.~
== BFHFRN ~What kind of temperament?~
== BT#DACE ~You gotta be patient. You gotta be willin' to wait out your target on the outskirts of town, shiverin' in the cold and rain and not sleepin' in case they decide they need to up and leave at short notice. You gotta do what you need to do, dead or alive. Sure, you could do alive, but dead? I know you'd get a bit of a faintin' fit over that.~
= ~Aww, now don't look all disappointed. You've got plenty goin' on with <CHARNAME> and <PRO_HISHER> merry band, that'll keep you in trouble and coin for a damn long while.~
EXIT

