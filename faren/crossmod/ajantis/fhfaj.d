//Romance conflict: engaged

CHAIN IF WEIGHT #-1 ~Global("FHFAjanConflict1","GLOBAL",1)~ THEN C#AJANJ FHFAjanEngagedConf
@0
= @1
END
++ @2 DO ~SetGlobal("FHFAjanConflict1","GLOBAL",2) SetGlobal("C#AjantisPCModRomance","GLOBAL",3)~ + 10
++ @3 DO ~SetGlobal("FHFAjanConflict1","GLOBAL",2) SetGlobal("FHFarenRomanceActive","GLOBAL",3) SetGlobal("FHFarenFriend","GLOBAL",1)~ + FHFAjanEngagedConf_farfriend

CHAIN C#AJANJ FHFAjanEngagedConf_farfriend
@4
EXIT

//Romance conflict: new beginnings

CHAIN IF WEIGHT #-1 ~Global("FHFAjanConflict2","GLOBAL",1)~ THEN C#AJANJ FHFAjanConf1
@5
DO ~SetGlobal("FHFAjanConflict2","GLOBAL",2)~
== FHFRNJ @6
== C#AJANJ @7
== FHFRNJ @8
== C#AJANJ @9
== FHFRNJ @10
== C#AJANJ @11
EXIT

CHAIN IF WEIGHT #-1 ~Global("FHFAjanConflict3","GLOBAL",1)~ THEN C#AJANJ FHFAjanConf2
@12
= @13
END
++ @14 DO ~SetGlobal("FHFAjanConflict3","GLOBAL",2) SetGlobal("C#AjantisRomanceActive","GLOBAL",3) SetGlobal("C#AjantisPCModRomance","GLOBAL",3)~ + FHFAjanConf2_end
++ @3 DO ~SetGlobal("FHFAjanConflict3","GLOBAL",2) SetGlobal("FHFarenFriend","GLOBAL",1) SetGlobal("FHFarenRomanceActive","GLOBAL",3) SetGlobal("FHFarenFriend","GLOBAL",1)~ + FHFAjanConf2_end

CHAIN C#AJANJ FHFAjanConf2_end
@15
EXIT

//Banters

CHAIN IF ~InParty("C#Ajantis")
See("C#Ajantis")
!StateCheck("C#Ajantis",CD_STATE_NOTVALID)
!StateCheck(Myself, CD_STATE_NOTVALID)
Global("FHFAjantis1","GLOBAL",0)~ THEN BFHFRN FHFAjantis1
@16
DO ~SetGlobal("FHFAjantis1","GLOBAL",1)~
== BKORGAN IF ~InParty("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID) InMyArea("Korgan")~ THEN @17
== C#AJANB @18
== BFHFRN @19
= @20
== C#AJANB @21
== BFHFRN @22
== C#AJANB @23
== BFHFRN @24
EXIT

CHAIN IF ~InParty("FHFRN")
See("FHFRN")
!StateCheck("FHFRN",CD_STATE_NOTVALID)
!StateCheck(Myself, CD_STATE_NOTVALID)
Global("FHFAjantis2","GLOBAL",0)~ THEN C#AJANB FHFAjantis2
@25
DO ~SetGlobal("FHFAjantis2","GLOBAL",1)~
== BFHFRN @26
== C#AJANB @27
== BFHFRN @28
= @29
EXIT

CHAIN IF WEIGHT #-1 ~InParty("C#Ajantis")
See("C#Ajantis")
!StateCheck("C#Ajantis",CD_STATE_NOTVALID)
!StateCheck(Myself, CD_STATE_NOTVALID)
Global("FHFAjantis3","GLOBAL",0)~ THEN BFHFRN FHFAjantis3
@30
DO ~SetGlobal("FHFAjantis3","GLOBAL",1)~
== C#AJANB @31
= @32
== BFHFRN @33
== C#AJANB @34
DO ~RestParty()~
EXIT
