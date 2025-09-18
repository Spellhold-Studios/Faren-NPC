//Romance conflict

//Conflict talk 1

CHAIN IF WEIGHT #-1 ~Global("FHFKelsConflict1","GLOBAL",1)~ THEN FHFRNJ FHFKelsConf1
@0
DO ~SetGlobal("FHFKelsConflict1","GLOBAL",2)~
== J#KLSYJ @1
== FHFRNJ @2
= @3
== J#KLSYJ @4
== FHFRNJ @5
EXIT

//Conflict talk 2

CHAIN IF WEIGHT #-1 ~Global("FHFKelsConflict2","GLOBAL",1)~ THEN J#KLSYJ FHFKelsconf2
@6
DO ~SetGlobal("FHFKelsConflict2","GLOBAL",2)~
== FHFRNJ @7
== J#KLSYJ @8
= @9
== FHFRNJ @10
== J#KLSYJ @11
== FHFRNJ @12
== J#KLSYJ @13
== FHFRNJ @14
END
++ @15 DO ~SetGlobal("FHFarenRomanceActive","GLOBAL",3) SetGlobal("FHFarenFriend","GLOBAL",1)~ EXTERN FHFRNJ FHFKelsconf2_farfriend
++ @16 DO ~SetGlobal("FHFarenRomanceActive","GLOBAL",3)~ EXTERN FHFRNJ FHFKelsconf2_farfriend
++ @17 DO ~SetGlobal("J#KelseyRomanceActive","GLOBAL",3)~ + FHFKelsconf2_kelsfriend
++ @18 DO ~SetGlobal("J#KelseyRomanceActive","GLOBAL",3)~ + FHFKelsconf2_kelsfriend
++ @19 DO ~SetGlobal("J#KelseyRomanceActive","GLOBAL",3) SetGlobal("FHFarenRomanceActive","GLOBAL",3) SetGlobal("FHFarenFriend","GLOBAL",1)~ + FHFKelsconf2_breakboth

CHAIN FHFRNJ FHFKelsconf2_farfriend
@20
== J#KLSYJ @21
EXIT

CHAIN J#KLSYJ FHFKelsconf2_kelsfriend
@22
== FHFRNJ @23
EXIT

CHAIN J#KLSYJ FHFKelsconf2_breakboth
@22
== FHFRNJ @20
EXIT

//Banters

CHAIN
IF ~InParty("FHFRN")
See("FHFRN")
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFKels1","GLOBAL",0)~ THEN BJ#KLSY FHFKels1
@24
DO ~SetGlobal("FHFKels1","GLOBAL",1)~
== BFHFRN @25
== BJ#KLSY @26
== BFHFRN @27
== BJ#KLSY @28
== BFHFRN @29
== BJ#KLSY @30
EXIT

CHAIN
IF ~InParty("FHFRN")
See("FHFRN")
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFKels2","GLOBAL",0)~ THEN BJ#KLSY FHFKels2
@31
DO ~SetGlobal("FHFKels2","GLOBAL",1)~
== BFHFRN @32
== BJ#KLSY @33
== BFHFRN @34
== BJ#KLSY @35
== BFHFRN @36
EXIT

CHAIN
IF ~InParty("J#Kelsey")
See("J#Kelsey")
!StateCheck("J#Kelsey",CD_STATE_NOTVALID)
Global("FHFKels3","GLOBAL",0)~ THEN BFHFRN FHFKels3
@37
DO ~SetGlobal("FHFKels3","GLOBAL",1)~
== BJ#KLSY @38
== BFHFRN @39
== BJ#KLSY @40
== BJ#KLSY IF ~InParty("Aerie")~ THEN @41
== BFHFRN IF ~InParty("Aerie")~ THEN @42
== BFHFRN @43
EXIT
