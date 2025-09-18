//Sebastian

CHAIN IF ~InParty("FHFRN")
See("FHFRN")
!StateCheck("FHFRN",CD_STATE_NOTVALID)
GlobalLT("FHFarenLoveTalk","GLOBAL",20)
Global("FHFSebTalk1","GLOBAL",0)~ THEN BFHLSEB FHFSeb2
@0
DO ~SetGlobal("FHFSebTalk1","GLOBAL",1)~
== BFHFRN @1

== BFHLSEB IF ~Global("FHLMDP","GLOBAL",0)~ THEN @2
== BFHFRN IF ~Global("FHLMDP","GLOBAL",0)~ THEN @3
== BFHLSEB IF ~Global("FHLMDP","GLOBAL",0)~ THEN @4
== BFHFRN IF ~Global("FHLMDP","GLOBAL",0)~ THEN @5
== BFHFRN IF ~Global("FHLMDP","GLOBAL",0)~ THEN @6
== BFHLSEB IF ~Global("FHLMDP","GLOBAL",0)~ THEN @7

== BFHLSEB IF ~GlobalGT("FHLMDP","GLOBAL",0)~ THEN @8
== BFHFRN IF ~GlobalGT("FHLMDP","GLOBAL",0)~ THEN @5
                                                = @9
== BFHLSEB IF ~GlobalGT("FHLMDP","GLOBAL",0)~ THEN @10
== BFHFRN @11
== BFHLSEB @12
EXIT

CHAIN IF ~InParty("FHFRN")
See("FHFRN")
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFSebTalk2","GLOBAL",0)~ THEN BFHLSEB FHFSeb3
@13
DO ~SetGlobal("FHFSebTalk2","GLOBAL",1)~
== BFHFRN  @14
== BFHLSEB @15
           = @16
== BFHFRN  @17
== BFHLSEB @18
== BFHFRN  @19
== BFHLSEB @20
== BFHFRN  @21
== BFHLSEB @22
EXIT

CHAIN IF ~InParty("FHLSEB")
InMyArea("FHLSEB")
!StateCheck("FHLSEB",CD_STATE_NOTVALID)
Global("FHFSebTalk3","GLOBAL",0)~ THEN BFHFRN FHFSeb3
@23
DO ~SetGlobal("FHFSebTalk3","GLOBAL",1)~
== BFHLSEB @24
== BFHFRN  @25
== BFHLSEB @26
== BFHFRN @27
EXIT

CHAIN IF WEIGHT #-1 ~InParty("FHLSEB")
InMyArea("FHLSEB")
!StateCheck("FHLSEB",CD_STATE_NOTVALID)
InMyArea("FHLAND")
!StateCheck("FHLAND",CD_STATE_NOTVALID)
Global("FHLMDP","GLOBAL",0)
Global("FHFSebTalkNight","GLOBAL",1)~ THEN BFHFRN FHFSeb4a
@28
DO ~SetGlobal("FHFSebTalkNight","GLOBAL",2)~
== BFHLSEB @29
== BFHLAND @30
== BFHLSEB @31
== BFHFRN @32
== BFHLSEB @33
== BFHLAND @34
           = @35
== BFHFRN @36
DO ~RestParty()~
EXIT

CHAIN IF WEIGHT #-1 ~InParty("FHLSEB")
InMyArea("FHLSEB")
!StateCheck("FHLSEB",CD_STATE_NOTVALID)
GlobalGT("FHLMDP","GLOBAL",0)
Global("FHFSebTalkNight","GLOBAL",1)~ THEN BFHFRN FHFSeb4b
@37
DO ~SetGlobal("FHFSebTalkNight","GLOBAL",2)~
== BFHLSEB @38
== BFHFRN @39
== BFHLSEB @40
== BFHFRN @41
== BFHLSEB @42
== BFHFRN @43
== BFHLSEB @44
== BFHFRN @45
== BFHLSEB @46
DO ~RestParty()~
EXIT

//Andrei

CHAIN IF ~InParty("FHLAND")
See("FHLAND")
!StateCheck("FHLAND",CD_STATE_NOTVALID)
InParty("FHLSEB")
See("FHLSEB")
!StateCheck("FHLSEB",CD_STATE_NOTVALID)
Global("FHFAndTalk1","GLOBAL",0)~ THEN BFHFRN FHFAnd1
@47
DO ~SetGlobal("FHFAndTalk1","GLOBAL",1)~
== BFHLAND @48
== BFHFRN @49
== BFHLAND @50
= @51
== BFHFRN @52
== BFHLSEB @53
== BFHLAND @54
== BFHLSEB @55
== BFHFRN @56
EXIT

CHAIN IF ~InParty("FHFRN")
See("FHFRN")
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFAndTalk2","GLOBAL",0)~ THEN BFHLAND FHFAnd2
@57
DO ~SetGlobal("FHFAndTalk2","GLOBAL",1)~
== BFHFRN @58
== BFHLAND @59
== BFHFRN @60
== BFHLAND @61
== BFHFRN @62
= @63
== BFHLAND @64
== BFHFRN @65
EXIT

CHAIN IF ~InParty("FHLAND")
See("FHLAND")
!StateCheck("FHLAND",CD_STATE_NOTVALID)
Global("FHFAndTalk3","GLOBAL",0)~ THEN BFHFRN FHFAnd3
@66
DO ~SetGlobal("FHFAndTalk3","GLOBAL",1)~
== BFHLAND @67
== BFHFRN @68
== BFHLAND @69
== BFHFRN @70
EXIT

//Sebastian conflict

CHAIN IF WEIGHT #-1 ~Global("FHFSebJealous","GLOBAL",1)~ THEN FHFRNJ FHFSebJealous
@71
== FHFRNJ IF ~Global("FHFarenRomanceActive","GLOBAL",1)~ THEN @72
== FHFRNJ IF ~Global("FHFarenRomanceActive","GLOBAL",2)~ THEN @73
== FHFRNJ @74
DO ~SetGlobal("FHFSebJealous","GLOBAL",2)~
END
+ ~OR(2) GlobalGT("FHLLDP","GLOBAL",1) GlobalGT("FHLMDP","GLOBAL",1)~ + @75 + FHFSebJealous_cheer
+ ~Global("FHFarenRomanceActive","GLOBAL",1) Global("FHLMDP","GLOBAL",0)~ + @76 + FHFSebJealous_enjoy1
+ ~Global("FHFarenRomanceActive","GLOBAL",2) Global("FHLMDP","GLOBAL",0)~ + @76 + FHFSebJealous_enjoy2
+ ~Global("FHFarenRomanceActive","GLOBAL",1) GlobalGT("FHLMDP","GLOBAL",1)~ + @76 + FHFSebJealous_enjoyMDP1
+ ~Global("FHFarenRomanceActive","GLOBAL",2) GlobalGT("FHLMDP","GLOBAL",1)~ + @76 + FHFSebJealous_enjoyMDP2
++ @77 + FHFSebJealous_affection
+ ~Global("FHFarenRomanceActive","GLOBAL",1)~ + @78 + FHFSebJealous_threat1
+ ~Global("FHFarenRomanceActive","GLOBAL",2)~ + @78 + FHFSebJealous_threat2
++ @79 + FHFSebJealous_stop

CHAIN FHFRNJ FHFSebJealous_cheer
@80
END
+ ~Global("FHFarenRomanceActive","GLOBAL",1) Global("FHLMDP","GLOBAL",0)~ + @76 + FHFSebJealous_enjoy1
+ ~Global("FHFarenRomanceActive","GLOBAL",2) Global("FHLMDP","GLOBAL",0)~ + @76 + FHFSebJealous_enjoy2
+ ~Global("FHFarenRomanceActive","GLOBAL",1) GlobalGT("FHLMDP","GLOBAL",1)~ + @76 + FHFSebJealous_enjoyMDP1
+ ~Global("FHFarenRomanceActive","GLOBAL",2) GlobalGT("FHLMDP","GLOBAL",1)~ + @76 + FHFSebJealous_enjoyMDP2
++ @77 + FHFSebJealous_affection
+ ~Global("FHFarenRomanceActive","GLOBAL",1)~ + @78 + FHFSebJealous_threat1
+ ~Global("FHFarenRomanceActive","GLOBAL",2)~ + @78 + FHFSebJealous_threat2
++ @79 + FHFSebJealous_stop

CHAIN FHFRNJ FHFSebJealous_enjoy1
@81
END
IF ~~ EXTERN FHLSEBJ FHFSebJealous_ears

CHAIN FHFRNJ FHFSebJealous_enjoy2
@82
= @83
END
IF ~~ EXTERN FHLSEBJ FHFSebJealous_ears

CHAIN FHLSEBJ FHFSebJealous_ears
@84
== FHFRNJ  @85
== FHLSEBJ @86
END
++ @87 + FHFSebJealous_lead
++ @88 EXTERN FHFRNJ FHFSebJealous_breakup
++ @89 EXTERN FHFRNJ FHFSebJealous_forget
++ @90 + FHFSebJealous_three

CHAIN FHFRNJ FHFSebJealous_enjoyMDP1
@91
END
++ @92 + FHFSebJealous_control
++ @93 + FHFSebJealous_forget
++ @94 + FHFSebJealous_threeMDP

CHAIN FHFRNJ FHFSebJealous_enjoyMDP2
@95
= @96
END
++ @92 + FHFSebJealous_control
++ @93 + FHFSebJealous_forget
++ @94 + FHFSebJealous_threeMDP

CHAIN FHFRNJ FHFSebJealous_affection
@97
END
+ ~Global("FHFarenRomanceActive","GLOBAL",1) Global("FHLMDP","GLOBAL",0)~ + @98 + FHFSebJealous_enjoy1
+ ~Global("FHFarenRomanceActive","GLOBAL",2) Global("FHLMDP","GLOBAL",0)~ + @98 + FHFSebJealous_enjoy2
+ ~Global("FHFarenRomanceActive","GLOBAL",1) GlobalGT("FHLMDP","GLOBAL",1)~ + @98 + FHFSebJealous_enjoyMDP1
+ ~Global("FHFarenRomanceActive","GLOBAL",2) GlobalGT("FHLMDP","GLOBAL",1)~ + @98 + FHFSebJealous_enjoyMDP2
++ @79 + FHFSebJealous_stop

CHAIN FHFRNJ FHFSebJealous_threat1
@99
END
+ ~Global("FHFarenRomanceActive","GLOBAL",1) Global("FHLMDP","GLOBAL",0)~ + @98 + FHFSebJealous_enjoy1
+ ~Global("FHFarenRomanceActive","GLOBAL",2) Global("FHLMDP","GLOBAL",0)~ + @98 + FHFSebJealous_enjoy2
+ ~Global("FHFarenRomanceActive","GLOBAL",1) GlobalGT("FHLMDP","GLOBAL",1)~ + @98 + FHFSebJealous_enjoyMDP1
+ ~Global("FHFarenRomanceActive","GLOBAL",2) GlobalGT("FHLMDP","GLOBAL",1)~ + @98 + FHFSebJealous_enjoyMDP2
++ @79 + FHFSebJealous_stop

CHAIN FHFRNJ FHFSebJealous_threat2
@100
END
+ ~Global("FHFarenRomanceActive","GLOBAL",1) Global("FHLMDP","GLOBAL",0)~ + @98 + FHFSebJealous_enjoy1
+ ~Global("FHFarenRomanceActive","GLOBAL",2) Global("FHLMDP","GLOBAL",0)~ + @98 + FHFSebJealous_enjoy2
+ ~Global("FHFarenRomanceActive","GLOBAL",1) GlobalGT("FHLMDP","GLOBAL",1)~ + @98 + FHFSebJealous_enjoyMDP1
+ ~Global("FHFarenRomanceActive","GLOBAL",2) GlobalGT("FHLMDP","GLOBAL",1)~ + @98 + FHFSebJealous_enjoyMDP2
++ @79 + FHFSebJealous_stop

CHAIN FHFRNJ FHFSebJealous_stop
@101
DO ~SetGlobal("FHLSebJustFriends","GLOBAL",1)~
EXIT

CHAIN FHLSEBJ FHFSebJealous_lead
@102
= @103
== FHFRNJ @104
END
IF ~~ + FHFSebJealous_gauge

CHAIN FHFRNJ FHFSebJealous_breakup
@105
= @106
EXIT

CHAIN FHFRNJ FHFSebJealous_forget
@107
DO ~SetGlobal("FHLSebJustFriends","GLOBAL",1)~
EXIT

CHAIN FHLSEBJ FHFSebJealous_three
@108
END
IF ~~ + FHFSebJealous_gauge

CHAIN FHFRNJ FHFSebJealous_control
@109
DO ~SetGlobal("FHFarenRomanceActive","GLOBAL",3)~
EXIT

CHAIN FHFRNJ FHFSebJealous_threeMDP
@110
= @111
= @112
END
++ @92 + FHFSebJealous_control
++ @93 + FHFSebJealous_forget

CHAIN FHLSEBJ FHFSebJealous_gauge
@113
== FHFRNJ @114
END
++ @89 EXTERN FHFRNJ FHFSebJealous_forget
++ @88 EXTERN FHFRNJ FHFSebJealous_breakup
