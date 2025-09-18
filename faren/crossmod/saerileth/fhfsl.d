//Romance conflict

CHAIN IF WEIGHT #-1 ~Global("FHFSaerConflict1","GLOBAL",1)~ THEN FHFRNJ FHFSaerConf1
@0
DO ~SetGlobal("FHFSaerConflict1","GLOBAL",2)~
== SAERILEJ @1
== FHFRNJ @2
== SAERILEJ @3
EXIT

//Conflict 2

CHAIN IF WEIGHT #-1 ~Global("FHFSaerConflict2","GLOBAL",1)~ THEN FHFRNJ FHFSaerConf2
@4
DO ~SetGlobal("FHFSaerConflict2","GLOBAL",2)~
== SAERILEJ @5
== FHFRNJ @6
== SAERILEJ @7
== FHFRNJ @8
== SAERILEJ @9
= @10
END
++ @11 DO ~SetGlobal("SaerilethRomanceActive","GLOBAL",2) SetGlobal("FHFarenRomanceActive","GLOBAL",3)~ EXTERN SAERILEJ FHFSaerConf2_farfriend
++ @12 DO ~SetGlobal("SaerilethRomanceActive","GLOBAL",3)~ EXTERN SAERILEJ FHFSaerConf2_saerfriend

CHAIN SAERILEJ FHFSaerConf2_farfriend
@13
== FHFRNJ @14
= @15
EXIT

CHAIN SAERILEJ FHFSaerConf2_saerfriend
@16
== FHFRNJ @17
EXIT

CHAIN
IF ~CombatCounter(0)
!Detect([ENEMY])
InParty(Myself)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty("Saerileth")
See("Saerileth")
!StateCheck("Saerileth",CD_STATE_NOTVALID)
Global("FHFSaer1","GLOBAL",0)~ THEN BFHFRN FHFSaer1
@18
DO ~SetGlobal("FHFSaer1","GLOBAL",1)~
== BSAERILE @19
== BFHFRN @20
== BSAERILE @21
== BFHFRN @22
== BSAERILE @23
== BFHFRN @24
== BSAERILE @25
== BFHFRN @26
EXIT

CHAIN
IF ~CombatCounter(0)
!Detect([ENEMY])
InParty(Myself)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty("Saerileth")
See("Saerileth")
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFSaer2","GLOBAL",0)~ THEN BFHFRN FHFSaer2
@27
= @28
DO ~SetGlobal("FHFSaer2","GLOBAL",1)~
== BSAERILE @29
== BFHFRN @30
== BSAERILE @31
== BFHFRN @32
== BSAERILE @33
== BFHFRN @34
== BSAERILE @35
== BFHFRN @36
EXIT

CHAIN
IF ~CombatCounter(0)
!Detect([ENEMY])
InParty(Myself)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty("Saerileth")
See("Saerileth")
!StateCheck("Saerileth",CD_STATE_NOTVALID)
Global("FHFSaer3","GLOBAL",0)~ THEN BFHFRN FHFSaer3
@37
DO ~SetGlobal("FHFSaer3","GLOBAL",1)~
== BSAERILE @38
== BFHFRN @39
== BSAERILE @40
== BFHFRN @41
== BSAERILE @42
EXIT
