//Romance conflict

CHAIN IF WEIGHT #-1 ~Global("FHFSolaConflict1","GLOBAL",1)~ THEN FHFRNJ FHFSolaConf1
@0
= @1
END
++ @2 DO ~SetGlobal("FHFSolaConflict1","GLOBAL",2)~ + FHFSolaConf1_talk
++ @3 DO ~SetGlobal("FHFSolaConflict1","GLOBAL",2)~ + FHFSolaConf1_like
++ @4 DO ~SetGlobal("FHFSolaConflict1","GLOBAL",2)~ + FHFSolaConf1_enjoy

CHAIN FHFRNJ FHFSolaConf1_talk
@5
END
+ ~Global("FHFarenRomanceActive","GLOBAL",1)~ + @6 DO ~SetGlobal("FHFarenRomanceActive","GLOBAL",3) SetGlobal("FHFarenFriend","GLOBAL",1)~ + FHFSolaConf1_farfriend1
+ ~Global("FHFarenRomanceActive","GLOBAL",2)~ + @6 DO ~SetGlobal("FHFarenRomanceActive","GLOBAL",3)~ + FHFSolaConf1_farfriend2
++ @7 DO ~SetGlobal("SolaTalk","GLOBAL",-1)~ + FHFSolaConf1_solfriend

CHAIN FHFRNJ FHFSolaConf1_like
@8
END
IF ~~ + FHFSolaConf1_talk

CHAIN FHFRNJ FHFSolaConf1_enjoy
@9
END
+ ~Global("FHFarenRomanceActive","GLOBAL",1)~ + @6 DO ~SetGlobal("FHFarenFriend","GLOBAL",1) SetGlobal("FHFarenRomanceActive","GLOBAL",3) SetGlobal("FHFarenFriend","GLOBAL",1)~ + FHFSolaConf1_farfriend1
+ ~Global("FHFarenRomanceActive","GLOBAL",2)~ + @6 DO ~SetGlobal("FHFarenRomanceActive","GLOBAL",3)~ + FHFSolaConf1_farfriend2
++ @7 DO ~SetGlobal("SolaTalk","GLOBAL",-1)~ + FHFSolaConf1_solfriend

CHAIN FHFRNJ FHFSolaConf1_farfriend1
@10
EXIT

CHAIN FHFRNJ FHFSolaConf1_farfriend2
@11
= @12
EXIT

CHAIN FHFRNJ FHFSolaConf1_solfriend
@13
EXIT

//Banters

CHAIN IF WEIGHT #-1 ~InParty("FHFRN")
See("FHFRN")
!StateCheck("FHFRN",CD_STATE_NOTVALID)
!StateCheck(Myself,CD_STATE_NOTVALID)
Global("FHFSol1","GLOBAL",0)~ THEN SOLA FHFSol1
@14
DO ~SetGlobal("FHFSol1","GLOBAL",1)~
== BFHFRN @15
== SOLA @16
== BFHFRN IF ~!Global("FHFarenRomanceActive","GLOBAL",2)~ THEN @17
== BFHFRN IF ~Global("FHFarenRomanceActive","GLOBAL",2)~ THEN @18
EXIT

CHAIN IF WEIGHT #-1 ~InParty("FHFRN")
See("FHFRN")
!StateCheck("FHFRN",CD_STATE_NOTVALID)
!StateCheck(Myself,CD_STATE_NOTVALID)
Global("FHFSol2","GLOBAL",0)~ THEN SOLA FHFSol2
@19
DO ~SetGlobal("FHFSol2","GLOBAL",1)~
== BFHFRN @20
== SOLA @21
== BFHFRN @22
== SOLA @23
== BFHFRN @24
== SOLA @25
== BFHFRN @26
EXIT

CHAIN IF WEIGHT #-1 ~InParty("Sola")
See("Sola")
!StateCheck("Sola",CD_STATE_NOTVALID)
!StateCheck(Myself,CD_STATE_NOTVALID)
Global("FHFSol3","GLOBAL",0)~ THEN BFHFRN FHFSol3
@27
DO ~SetGlobal("FHFSol3","GLOBAL",1)~
== SOLA @28
== BFHFRN @29
== SOLA @30
= @31
EXIT
