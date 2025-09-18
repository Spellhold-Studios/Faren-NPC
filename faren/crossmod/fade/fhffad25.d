//Fade ToB

CHAIN IF ~InParty("FHFRN")
See("FHFRN")
!StateCheck("FHFRN",CD_STATE_NOTVALID)
!StateCheck(Myself,CD_STATE_NOTVALID)
Global("FHFFade25","GLOBAL",0)~ THEN BE3FAD25 FHFFade25
~Faren? Oh, Faren?~
DO ~SetGlobal("FHFFade25","GLOBAL",1)~
== FHF25J ~Now that sounds downright sinister. What're you looking so innocent about?~
== BE3FAD25 ~Why, that's just shocking. What could I possibly be up to that anyone would call sinister?~
= ~Actually, I had a present for you. Here.~
== FHF25J ~Appreciate the thought, Fade, but unlabelled bottles aren't exactly reassuring.~
== BE3FAD25 ~It's a cocktail handed down for generations! But I'll have it back if you're too scared.~
== FHF25J ~No, no, I'm not scared. Hmmm. Doesn't smell too bad. Vapour's a bit strong. Let's give it a go.~
= ~(cough) Dear gods, what's *in* that stuff?!~
== BE3FAD25 ~Hahaha, I can't believe you fell for the old 'if you're too scared' line! And drank it, too!~
= ~Personally, I wouldn't want to dig too deep. It's a secret recipe, though, the shopkeeper told me so. Are you going to throw it away?~
== FHF25J ~No, no, I'm keeping it. For a special occasion. Or maybe to poison someone, I haven't quite decided yet...~
EXIT
