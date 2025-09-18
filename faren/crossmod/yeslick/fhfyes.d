//Yeslick SoA

CHAIN
IF ~InParty("FHFRN")
See("FHFRN")
!StateCheck("lk#yeslk",CD_STATE_NOTVALID)
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFYeslick1","GLOBAL",0)~ THEN BLK#YES FHFYeslick1
~Ye're lookin' a mite peaked, lad. Sleep well?~
DO ~SetGlobal("FHFYeslick1","GLOBAL",1)~
== BFHFRN ~Uh...yeah. Yeah, I slept fine. No worries.~
== BLK#YES ~I cannae say that's the most convincin' thing I've ever heard ye say, but far be it from me ta pry.~
== BFHFRN ~No, no, it's not prying. It's just...do you ever get where you just think of things over and over, and you can't get away from it?~
== BLK#YES ~Ye don't get ta my age without takin' on a few regrets here and there. Anytime ye're stuck in that well, ye can speak with me, should ye wish it.~
EXIT

CHAIN
IF ~InParty("FHFRN")
See("FHFRN")
!StateCheck("lk#yeslk",CD_STATE_NOTVALID)
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFYeslick2","GLOBAL",0)~ THEN BLK#YES FHFYeslick2
~By Clangeddin's twin battleaxes, how do ye have room for all that food? I swear ye've had three breakfasts already!~
DO ~SetGlobal("FHFYeslick2","GLOBAL",1)~
== BFHFRN ~Making up for lost time. The food in the Trademeet prison was terrible, and I think Cooper spat in my stew.~
== BLK#YES ~At least ye had food given ye. In the Cloakwood Mine we had nary but an unwary rat every couple o' days.~
== BFHFRN ~I'm amazed you even got through it. I know I complain a lot, but Coprith was a good guy - he wouldn't have let me starve like that.~
== BLK#YES ~Day by day, lad. We got through it day by day. 'Tis all ye can do, in one o' those bad situations.~
EXIT

CHAIN
IF ~InParty("lk#yeslk")
See("lk#yeslk")
!StateCheck("lk#yeslk",CD_STATE_NOTVALID)
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFYeslick3","GLOBAL",0)~ THEN BFHFRN FHFYeslick3
~...so the garden wall's just crumbling at the edge, and I have no idea what to do with it. My mother built it when I was really little, and I don't want to ruin it.~
DO ~SetGlobal("FHFYeslick3","GLOBAL",1)~
== BLK#YES ~Hmmmm, sounds like ye have a bit o' damp on yer hands. When we catch a breather in Trademeet, I'll have a look for ye. Sort it out in no time.~
== BFHFRN ~Thanks, Yeslick. I really appreciate it.~
EXIT
