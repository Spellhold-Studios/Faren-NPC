//Banters

CHAIN IF ~InParty("FHFRN")
See("FHFRN")
!StateCheck("FHFRN",CD_STATE_NOTVALID)
!StateCheck(Myself, CD_STATE_NOTVALID)
Global("FHFAjantis25","GLOBAL",0)~ THEN C#AJA25B FHFAjantis25
~You appear restless, Faren. I take it you are as disconcerted by these events as I.~
DO ~SetGlobal("FHFAjantis25","GLOBAL",1)~
== BFHF25 ~Restless? Itchy, maybe, like nothing fits right. I like avoiding treading on people's toes, you know? And now we're stamping around stopping wars. Or making them happen. I forget which way round it is, these days.~
== C#AJA25B ~I...confess I understand such a feeling. The Order provides us with purpose and guidance, and yet <CHARNAME>'s path is so momentous...~
== C#AJA25B IF ~InParty("Keldorn") !InParty("Mazzy")~ THEN ~Still, Sir Keldorn has such strength of resolve in these times. I shall endeavour to follow his lead.~
== BFHF25 IF ~InParty("Keldorn") !InParty("Mazzy")~ THEN ~It's good you've got someone to look up to. Me and him don't exactly see eye to eye, but I bet he's a good mentor.~
== C#AJA25B IF ~!InParty("Keldorn") InParty("Mazzy")~ THEN ~Still, I see Mazzy's calmness and strength of resolve in these times, and it is truly an inspiration.~
== BFHF25 IF ~!InParty("Keldorn") InParty("Mazzy")~ THEN ~I know! She just throws herself at everything and never gives up. I'd like to be so determined.~
== C#AJA25B IF ~InParty("Keldorn") InParty("Mazzy")~ THEN ~Still, Sir Keldorn and Mazzy are such inspirations in these times. I shall endeavour to follow their strength of resolve.~
== BFHF25 IF ~InParty("Keldorn") InParty("Mazzy")~ THEN ~Heh, me and Keldorn don't exactly see eye to eye, but I bet he's a good mentor. But Mazzy's so great - she just throws herself at everything and never gives up.~
== C#AJA25B ~But perhaps best not to dwell on such weighty subjects.~
== BFHF25 ~Well, you know me, I'm always good for light subjects. What shall I cook for dinner tonight...?~
EXIT
