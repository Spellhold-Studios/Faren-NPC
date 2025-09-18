//Conflict 1

CHAIN IF WEIGHT #-1 ~Global("FHFXanConflict1","GLOBAL",1)~ THEN FHFRNJ FHFXanConf1
@0
DO ~SetGlobal("FHFXanConflict1","GLOBAL",2)~
== O#XANJ @1
== FHFRNJ @2
== O#XANJ @3
= @4
== FHFRNJ @5
== O#XANJ @6
EXIT

//Conflict 2

CHAIN IF WEIGHT #-1 ~Global("FHFXanConflict2","GLOBAL",1)~ THEN FHFRNJ FHFXanConf2
@7
= @8
DO ~SetGlobal("FHFXanConflict2","GLOBAL",2)~
END
++ @9 DO ~SetGlobal("O#XanRomanceActive","GLOBAL",3)~ + FHFXanConf2_xanfriend
++ @10 DO ~SetGlobal("FHFarenRomanceActive","GLOBAL",3) SetGlobal("FHFarenFriend","GLOBAL",1)~ + FHFXanConf2_farfriend

CHAIN FHFRNJ FHFXanConf2_xanfriend
@11
EXIT

CHAIN FHFRNJ FHFXanConf2_farfriend
@12
EXIT

//Banters

CHAIN
IF ~InParty("FHFRN")
See("FHFRN")
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFXan1","GLOBAL",0)~ THEN BO#XAN FHFXan1
@13
DO ~SetGlobal("FHFXan1","GLOBAL",1)~
== BFHFRN @14
== BO#XAN @15
== BFHFRN @16
== BO#XAN @17
== BFHFRN @18
EXIT

CHAIN
IF ~InParty("FHFRN")
See("FHFRN")
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFXan2","GLOBAL",0)~ THEN BO#XAN FHFXan2
@19
DO ~SetGlobal("FHFXan2","GLOBAL",1)~
== BFHFRN @20
== BO#XAN @21
== BFHFRN @22
== BO#XAN @23
== BFHFRN @24
== BO#XAN @25
== BO#XAN @26
== BFHFRN @27 
EXIT

CHAIN
IF ~InParty("O#Xan")
See("O#Xan")
!StateCheck("O#Xan",CD_STATE_NOTVALID)
AreaType(OUTDOOR)
Global("FHFXan3","GLOBAL",0)~ THEN BFHFRN FHFXan3
@28
DO ~SetGlobal("FHFXan3","GLOBAL",1)~
== BO#XAN @29
== BFHFRN @30
== BO#XAN @31
EXIT

CHAIN
IF ~InParty("FHFRN")
See("FHFRN")
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFXan4","GLOBAL",0)~ THEN BO#XAN FHFXan4
@32
DO ~SetGlobal("FHFXan4","GLOBAL",1)~
== BFHFRN @33
== BIMOEN2 IF ~InParty("Imoen2") InMyArea("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @34
== BJAHEIR IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @35
== BMINSC IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @36
== BO#XAN IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @37
== BFHFRN @38
== BO#XAN IF ~OR(2) Global("O#XanRomanceActive","GLOBAL",1) Global("O#XanRomanceActive","GLOBAL",2)~ THEN @39
== BO#XAN IF ~!Global("O#XanRomanceActive","GLOBAL",1) !Global("O#XanRomanceActive","GLOBAL",2)~ THEN @40
EXIT
