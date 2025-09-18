CHAIN IF WEIGHT #-1 ~Global("FHFNindeConflict1","GLOBAL",1)~ THEN LK#NINDJ FHFNindConf1
@0
DO ~SetGlobal("FHFNindeConflict1","GLOBAL",2)~
== FHFRNJ @1
== LK#NINDJ @2
== FHFRNJ @3
EXIT

CHAIN IF WEIGHT #-1 ~Global("FHFNindeConflict2","GLOBAL",1)~ THEN FHFRNJ FHFNindConf2
@4
DO ~SetGlobal("FHFNindeConflict2","GLOBAL",2)~
== LK#NINDJ @5
== FHFRNJ @6
== LK#NINDJ @7
== FHFRNJ @8
== LK#NINDJ @9
END
++ @10 + FHFNindConf2_eq
++ @11 + FHFNindConf2_eq

CHAIN FHFRNJ FHFNindConf2_eq
@12
== LK#NINDJ @13 
END
++ @14 DO ~SetGlobal("LK#NindeRomanceActive","GLOBAL",3)~ EXTERN LK#NINDJ FHFNindConf2_nindfriend
++ @15 DO ~SetGlobal("FHFarenRomanceActive","GLOBAL",3) SetGlobal("FHFarenFriend","GLOBAL",1)~ + FHFNindConf2_farfriend

CHAIN LK#NINDJ FHFNindConf2_nindfriend
@16
== FHFRNJ @17
= @18
EXIT

CHAIN FHFRNJ FHFNindConf2_farfriend
@19
== LK#NINDJ @20
EXIT

//Banters

CHAIN
IF WEIGHT #-1 ~InParty("FHFRN")
See("FHFRN")
!StateCheck("FHFRN",CD_STATE_NOTVALID)
InParty(Myself)
!StateCheck(Myself,CD_STATE_NOTVALID)
Global("FHFNinde1","GLOBAL",1)~ THEN BLK#NIND FHFNinde1
@21
= @22
DO ~SetGlobal("FHFNinde1","GLOBAL",2)~
== BFHFRN @23
== BLK#NIND @24
= @25
== BFHFRN @26
== BLK#NIND @27
DO ~RestParty()~
EXIT

CHAIN
IF ~InParty("FHFRN")
See("FHFRN")
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFNinde2","GLOBAL",0)~ THEN BLK#NIND FHFNinde2
@28
= @29
DO ~SetGlobal("FHFNinde2","GLOBAL",1)~
== BFHFRN @30
== BLK#NIND @31
== BFHFRN @32
== BLK#NIND @33
EXIT

CHAIN
IF ~InParty("FHFRN")
See("FHFRN")
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFNinde3","GLOBAL",0)
AreaType(OUTDOOR)~ THEN BLK#NIND FHFNinde3
@34
DO ~SetGlobal("FHFNinde3","GLOBAL",1)~
== BFHFRN @35
== BLK#NIND @36
= @37
== BFHFRN @38
== BLK#NIND @39
= @40
== BFHFRN @41
== BLK#NIND @42
== BFHFRN @43
== BLK#NIND @44
== BJAHEIR IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @45
== BKORGAN IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @46
EXIT
