//Auren-Faren banters - ToB

CHAIN IF ~InParty("FHFRN")
See("FHFRN")
!StateCheck("FHFRN",CD_STATE_NOTVALID)
!StateCheck(Myself, CD_STATE_NOTVALID)
Global("FHFAur25","GLOBAL",0)~ THEN K#Aur25B FHFAur25
@0
DO ~SetGlobal("FHFAur25","GLOBAL",1)~
== BFHF25 IF ~Global("K#AurenNaliaDecision","GLOBAL",1)~ THEN @1
== BFHF25 IF ~Global("K#AurenNaliaDecision","GLOBAL",0)~ THEN @2
== K#Aur25B @3
== BFHF25 @4
== K#Aur25B @5
== BFHF25 @6
EXIT
