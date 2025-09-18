//This is where the Seth-related quest stuff lives
//Runner dialogue
//Appending to Imnesvale innkeeper dialogue
//Performing the ritual
//After the ritual cutscene
//Sent Seth to the temple


BEGIN FHFSETH

BEGIN FHFJES

BEGIN FHFARA

BEGIN FHFRUN

//Runner dialogue

CHAIN IF ~Global("FHFRunner","GLOBAL",1)~ THEN FHFRUN FHFRunner
@0
DO ~SetGlobal("FHFRunner","GLOBAL",3)~
== FHFRNJ @1
== FHFRUN @2
== FHFRNJ @3
== FHFRUN @4
== FHFRNJ @5
END
++ @6 EXTERN FHFRNJ FHFRunner_go
++ @7 EXTERN FHFRNJ FHFRunner_go
++ @8 EXTERN FHFRNJ FHFRunner_waste

CHAIN FHFRNJ FHFRunner_go
@9
END
IF ~~ UNSOLVED_JOURNAL @3000
DO ~SetGlobal("FHFSethQuest","GLOBAL",1) SetGlobalTimer("FHFSethCommentTimer","GLOBAL",ONE_DAY) RevealAreaOnMap("AR1100")~
EXIT

CHAIN FHFRNJ FHFRunner_waste
@11
END
++ @12 + FHFRunner_go
++ @13 + FHFRunner_distract

CHAIN FHFRNJ FHFRunner_distract
@14
= @15
DO ~SetGlobal("FHFarenLeavesAngry","GLOBAL",1)
SetGlobal("FHFarenLeaveSeth","GLOBAL",1)
ChangeAIScript("",DEFAULT)
SetLeavePartyDialogueFile()
LeaveParty()
EscapeAreaMove("AR1100",206,1400,1)~
EXIT

CHAIN IF ~Global("FHFRunner","GLOBAL",2)~ THEN FHFRUN FHFRunner2
@16
= @17
= @18
END
IF ~~ UNSOLVED_JOURNAL @3000
DO ~SetGlobal("FHFSethQuest","GLOBAL",1)
SetGlobal("FHFRunner","GLOBAL",3)
RevealAreaOnMap("AR1100")
EscapeArea()~
EXIT

//Appending to Imnesvale innkeeper dialogue

EXTEND_BOTTOM UHINN01 2
+ ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID) Global("FHFSethQuest","GLOBAL",1)~ + @19 + FHFVince_seen
END

EXTEND_BOTTOM UHINN01 29
+ ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID) Global("FHFSethQuest","GLOBAL",1)~ + @19 + FHFVince_seen
END

EXTEND_BOTTOM UHINN01 31
+ ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID) Global("FHFSethQuest","GLOBAL",1)~ + @19 + FHFVince_seen
END

EXTEND_BOTTOM UHINN01 36
+ ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID) Global("FHFSethQuest","GLOBAL",1)~ + @19 + FHFVince_seen
END

EXTEND_BOTTOM UHINN01 41
+ ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID) Global("FHFSethQuest","GLOBAL",1)~ + @19 + FHFVince_seen
END

EXTEND_BOTTOM UHINN01 44
+ ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID) Global("FHFSethQuest","GLOBAL",1)~ + @19 + FHFVince_seen
END

EXTEND_BOTTOM UHINN01 45
+ ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID) Global("FHFSethQuest","GLOBAL",1)~ + @19 + FHFVince_seen
END

EXTEND_BOTTOM UHINN01 46
+ ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID) Global("FHFSethQuest","GLOBAL",1)~ + @19 + FHFVince_seen
END

EXTEND_BOTTOM UHINN01 47
+ ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID) Global("FHFSethQuest","GLOBAL",1)~ + @19 + FHFVince_seen
END

EXTEND_BOTTOM UHINN01 48
+ ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID) Global("FHFSethQuest","GLOBAL",1)~ + @19 + FHFVince_seen
END

EXTEND_BOTTOM UHINN01 52
+ ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID) Global("FHFSethQuest","GLOBAL",1)~ + @19 + FHFVince_seen
END

CHAIN UHINN01 FHFVince_seen
@20
== UHINN02 @21
== FHFRNJ @22
== UHINN02 @23
== UHINN01 @24
== FHFRNJ @25
END
IF ~~ UNSOLVED_JOURNAL @3003
DO ~SetGlobal("FHFSethQuest","GLOBAL",2)~ EXIT

//Performing the ritual

CHAIN IF ~Global("FHFRitual","GLOBAL",1) OR(3) !InParty("FHFRN") StateCheck("FHFRN",CD_STATE_NOTVALID) !InMyArea("FHFRN")~ THEN FHFSETH FHFSethRitual2
@27
EXIT

CHAIN IF ~InParty("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID) InMyArea("FHFRN") Global("FHFSeenSeth","GLOBAL",1)~ THEN FHFSETH FHFSethRitual
@28
DO ~SetGlobal("FHFSeenSeth","GLOBAL",2) SetGlobal("FHFRitual","GLOBAL",2)~
== FHFRNJ @29
== FHFSETH @30
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN
@31
== FHFRNJ @32
== FHFSETH @33
= @34
== FHFRNJ @35
= @36
== FHFSETH @37
== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN
@38
== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN
@39
== FHFRNJ @40
END
++ @41 + FHFSeenSeth_2
++ @42 EXTERN FHFRNJ FHFSeenSeth_3
++ @43 + FHFSeenSeth_4

CHAIN FHFSETH FHFSeenSeth_2
@44
EXTERN FHFRNJ FHFSeenSeth_us

CHAIN FHFRNJ FHFSeenSeth_3
@45
== EDWINJ IF ~InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID) InMyArea("Edwin")~ THEN @46
EXTERN FHFRNJ FHFSeenSeth_us

CHAIN FHFSETH FHFSeenSeth_4
@47
== FHFRNJ @48
== FHFSETH @49
== FHFRNJ @50
== FHFSETH @51
EXTERN FHFRNJ FHFSeenSeth_us

CHAIN FHFRNJ FHFSeenSeth_us
@52
== FHFSETH @53
= @54
DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("fhfcut2")~ EXIT

//After the ritual cutscene

CHAIN IF ~Global("FHFRitual","GLOBAL",2)~ THEN FHFSETH FHFRitual2
@55
== FHFARA @56
== FHFRNJ @57
== FHFJES @58
DO ~SetGlobal("FHFRitual","GLOBAL",3)~
== FHFRNJ @59
DO ~ActionOverride("fhfjes",Enemy()) ActionOverride("fhfara",Enemy())~
EXIT

CHAIN IF ~Global("FHFRitual","GLOBAL",4) InParty("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID) InMyArea("FHFRN")~ THEN FHFSETH FHFRitual3
@60
DO ~SetGlobal("FHFRitual","GLOBAL",5)~
== FHFRNJ @61
== FHFSETH @62
== FHFRNJ @63
== FHFSETH @64
END
IF ~~ SOLVED_JOURNAL @65
DO ~EraseJournalEntry(@3000)
EraseJournalEntry(@3003)
SetGlobal("FHFTemple","GLOBAL",1) EscapeAreaMove("AR2008",486,350,0)~ EXIT

CHAIN IF ~Global("FHFRitual","GLOBAL",4) OR(3) !InParty("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID) !InMyArea("FHFRN")~ THEN FHFSETH FHFRitual3c
@66
= @67
END
IF ~~ SOLVED_JOURNAL @68
DO ~EraseJournalEntry(@3000)
EraseJournalEntry(@3003)
SetGlobal("FHFRitual","GLOBAL",5) EscapeArea()~ EXIT

//Sent Seth to the temple

CHAIN IF ~InParty("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID) InMyArea("FHFRN") Global("FHFSeenSeth","GLOBAL",2) Global("FHFTemple","GLOBAL",1)~ THEN FHFSETH FHFSethTemple
@69
DO ~SetGlobal("FHFTemple","GLOBAL",2)~
== FHFRNJ @70
== FHFSETH @71
== FHFRNJ @72
== FHFSETH @73
== FHFRNJ @74
== FHFSETH @75
== FHFRNJ @76
EXIT

CHAIN IF ~InParty("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID) InMyArea("FHFRN") Global("FHFSeenSeth","GLOBAL",2) Global("FHFTemple","GLOBAL",2)~ THEN FHFSETH FHFSethReturn
@77
EXIT

CHAIN IF ~Global("FHFSeenSeth","GLOBAL",2) Global("FHFTemple","GLOBAL",2) OR(3) !InParty("FHFRN") StateCheck("FHFRN",CD_STATE_NOTVALID) !InMyArea("FHFRN")~ THEN FHFSETH FHFSethReturn2
@78
EXIT
