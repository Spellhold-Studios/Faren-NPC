//CONTENTS
//Halmar's guard dialogue
//Halmar dialogue
//Linnea dialogue
//Reporting Halmar to Brega

//Halmar's guards' dialogue

BEGIN FHFRUF1

BEGIN FHFRUF2

CHAIN IF ~RandomNum(4,1)~ THEN FHFRUF1 FHFRuf1a
@0
EXIT

CHAIN IF ~RandomNum(4,2)~ THEN FHFRUF1 FHFRuf1b
@1
EXIT

CHAIN IF ~RandomNum(4,3)~ THEN FHFRUF1 FHFRuf1c
@2
EXIT

CHAIN IF ~RandomNum(4,4)~ THEN FHFRUF1 FHFRuf1d
@3
EXIT

CHAIN IF ~RandomNum(4,1)~ THEN FHFRUF2 FHFRuf2a
@4
EXIT

CHAIN IF ~RandomNum(4,2)~ THEN FHFRUF2 FHFRuf2b
@5
EXIT

CHAIN IF ~RandomNum(4,3)~ THEN FHFRUF2 FHFRuf2c
@6
EXIT

CHAIN IF ~RandomNum(4,4)~ THEN FHFRUF2 FHFRuf2d
@7
EXIT

//Halmar dialogue

BEGIN FHFHAL

//If attacked

CHAIN IF ~Global("FHFHalAttacked","GLOBAL",1)~ THEN FHFHAL FHFHalAttacked
@8
DO ~ActionOverride("FHFHALG1",Enemy()
ActionOverride("FHFHALG2",Enemy()
Enemy()~
EXIT

//If Faren is not in the party

CHAIN IF ~Global("FHFHalFaren","GLOBAL",0)~ THEN FHFHAL FHFHal1
@9
EXIT

//Initial dialogue

CHAIN IF ~Global("FHFHalFaren","GLOBAL",1)~ THEN FHFHAL FHFHalJob
@10
DO ~SetGlobal("FHFHalFaren","GLOBAL",2) RealSetGlobalTimer("FHFHalCommentTimer","GLOBAL",300)~
== FHFRNJ @11
== FHFHAL @12
= @13
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @14
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @15
== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @16
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @17
== FHFRNJ @18
END
++ @19 + FHFHalJob_1
++ @20 + FHFHalJob_2

CHAIN FHFHAL FHFHalJob_1
@21
== FHFRNJ @22
== FHFHAL @23
== FHFRNJ @24
END
++ @25 DO ~SetGlobal("FHFHalJob","GLOBAL",1)~ + FHFHalJob_3
++ @26 + FHFHalJob_2

CHAIN FHFHAL FHFHalJob_2
@27
== FHFRNJ @24
END
++ @28 + FHFHalJob_4
++ @29 DO ~SetGlobal("FHFHalJob","GLOBAL",1)~ + FHFHalJob_3
++ @30 DO ~SetGlobal("FHFHalRefuse","GLOBAL",1)~ + FHFHalJob_5

CHAIN FHFHAL FHFHalJob_3
@31
END
IF ~~ UNSOLVED_JOURNAL @32
EXIT

CHAIN FHFHAL FHFHalJob_4
@33
END
++ @34 DO ~SetGlobal("FHFHalJob","GLOBAL",1)~ + FHFHalJob_3
++ @35 DO ~SetGlobal("FHFHalJob","GLOBAL",1)~ + FHFHalJob_3
++ @36 DO ~SetGlobal("FHFHalRefuse","GLOBAL",1)~ + FHFHalJob_5

CHAIN FHFHAL FHFHalJob_5
@37
== FHFRNJ @38
== FHFHAL @39
= @40
END
++ @41 EXTERN FHFRNJ FHFHalJob_6
++ @42 + FHFHalJob_7

CHAIN FHFRNJ FHFHalJob_6
@43
END
IF ~~ UNSOLVED_JOURNAL @44
EXIT

CHAIN FHFHAL FHFHalJob_7
@45
DO ~SetGlobal("FHFHalRefuse","GLOBAL",0) SetGlobal("FHFHalJob","GLOBAL",0) SetGlobal("FHFHalFaren","GLOBAL",3) SetGlobal("FHFHalEnemy","GLOBAL",1)
Enemy()~
END
IF ~~ SOLVED_JOURNAL @46
EXIT

//After telling Brega

CHAIN IF ~Global("FHFHalBrega","GLOBAL",1)~ THEN FHFHAL FHFHALdie
@47
= @48
DO ~SetGlobal("FHFHalBrega","GLOBAL",2)
IncrementGlobal("FHFPeaceful","GLOBAL",1)
ActionOverride("FHFHALG1",Enemy()
ActionOverride("FHFHALG2",Enemy()
Enemy()~
EXIT

//Returning

CHAIN IF ~Global("FHFHalFaren","GLOBAL",2) Global("FHFTellBrega","GLOBAL",0)~ THEN FHFHAL FHFHalJob1
@49
END
+ ~Global("FHFHalJob","GLOBAL",1) PartyHasItem("fhfhead")~ + @50 DO ~SetGlobal("FHFHalJob","GLOBAL",2)~ + FHFHalJob1_yes
+ ~Global("FHFHalJob","GLOBAL",1) !PartyHasItem("fhfhead")~ + @51 + FHFHalJob1_soon
+ ~Global("FHFHalJob","GLOBAL",1)~ + @52 + FHFHalJob1_details
+ ~Global("FHFHalRefuse","GLOBAL",1)~ + @53 DO ~SetGlobal("FHFHalRefuse","GLOBAL",0) SetGlobal("FHFHalJob","GLOBAL",1)~ + FHFHalJob1_change
+ ~Global("FHFHalRefuse","GLOBAL",1) PartyHasItem("fhfhead")~ + @54 DO ~SetGlobal("FHFHalJob","GLOBAL",2) SetGlobal("FHFHalRefuse","GLOBAL",0)~ + FHFHalJob1_yes
+ ~Global("FHFLinJob","GLOBAL",1)~ + @55 + FHFHalJob1_die
++ @56 + FHFHalJob1_nothing

CHAIN FHFHAL FHFHalJob1_yes
@57
DO ~GiveGoldForce(500)~
== FHFHAL IF ~InParty("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@58
== FHFRNJ IF ~InParty("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@59
== FHFHAL IF ~InParty("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@60
DO ~EraseJournalEntry(@32)
EraseJournalEntry(@61)
EraseJournalEntry(@62)
EscapeArea()~
END
IF ~~ SOLVED_JOURNAL @63
EXIT

CHAIN FHFHAL FHFHalJob1_soon
@64
EXIT

CHAIN FHFHAL FHFHalJob1_details
@65
EXIT

CHAIN FHFHAL FHFHalJob1_change
@66
=
@67
EXIT

CHAIN FHFHAL FHFHalJob1_die
@68
DO ~SetGlobal("FHFHalEnemy","GLOBAL",1)
Enemy()~
EXIT

CHAIN FHFHAL FHFHalJob1_nothing
@69
EXIT

//Linnea's dialogue

BEGIN FHFLIN

CHAIN IF ~Global("FHFHalFaren","GLOBAL",0) RandomNum(4,1)~ THEN FHFLIN FHFLIN1
@70
EXIT

CHAIN IF ~Global("FHFHalFaren","GLOBAL",0) RandomNum(4,2)~ THEN FHFLIN FHFLIN2
@71
EXIT

CHAIN IF ~Global("FHFHalFaren","GLOBAL",0) RandomNum(4,3)~ THEN FHFLIN FHFLIN3
@72
EXIT

CHAIN IF ~Global("FHFHalFaren","GLOBAL",0) RandomNum(4,4)~ THEN FHFLIN FHFLIN4
@73
EXIT

//Halmar's job

CHAIN IF ~Global("FHFHalFaren","GLOBAL",2) Global("FHFLinMove","GLOBAL",0) Global("FHFLinJob","GLOBAL",0)~ THEN FHFLIN FHFLINHAL
@74
END
++ @75 + FHFLINHAL_danger
++ @76 + FHFLINHAL_step
++ @77 + FHFLINHAL_nevermind

CHAIN FHFLIN FHFLINHAL_danger
@78
END
++ @79 + FHFLINHAL_explain
+ ~Global("FHFHalJob","GLOBAL",1)~ + @80 + FHFLINHAL_hal
+ ~Global("FHFHalRefuse","GLOBAL",1)~ + @81 + FHFLINHAL_hal

CHAIN FHFLIN FHFLINHAL_step
@82
END
++ @83 + FHFLINHAL_explain
+ ~Global("FHFHalJob","GLOBAL",1)~ + @80 + FHFLINHAL_hal
+ ~Global("FHFHalRefuse","GLOBAL",1)~ + @81 + FHFLINHAL_hal

CHAIN FHFLIN FHFLINHAL_nevermind
@84
EXIT

CHAIN FHFLIN FHFLINHAL_explain
@85
=
@86
DO ~SetGlobal("FHFLinMove","GLOBAL",1) MoveToObject("Tran1000")
MoveBetweenAreas("AR1000",[4100.1155],0)~ EXIT

CHAIN FHFLIN FHFLINHAL_hal
@87
END
++ @88 + FHFLINHAL_here
++ @89 + FHFLINHAL_insp
++ @90 + FHFLINHAL_die

CHAIN FHFLIN FHFLINHAL_here
@91
END
IF ~~ + FHFLINHAL_kill

CHAIN FHFLIN FHFLINHAL_insp
@92
EXIT

CHAIN FHFLIN FHFLINHAL_die
@93
DO ~Enemy()~
EXIT

CHAIN FHFLIN FHFLINHAL_kill
@94
END
++ @95 + FHFLINHAL_no
++ @96 + FHFLINHAL_pay
++ @97 + FHFLINHAL_alt
++ @98 + FHFLINHAL_up

CHAIN FHFLIN FHFLINHAL_no
@99
END
++ @100 + FHFLINHAL_no2
++ @101 + FHFLINHAL_alt
++ @102 + FHFLINHAL_up

CHAIN FHFLIN FHFLINHAL_pay
@103
END
++ @104 + FHFLINHAL_no2
++ @105 + FHFLINHAL_up
++ @106 + FHFLINHAL_insp

CHAIN FHFLIN FHFLINHAL_up
@107
END
IF ~~ UNSOLVED_JOURNAL @62
DO ~SetGlobal("FHFLinJob","GLOBAL",1)~
EXIT

CHAIN FHFLIN FHFLINHAL_alt
@108
END
++ @109 + FHFLINHAL_up
++ @110 + FHFLINHAL_insp

CHAIN FHFLIN FHFLINHAL_no2
@111
DO ~SetGlobal("FHFLinGone","GLOBAL",1)
EscapeArea()~
EXIT

CHAIN IF ~Global("FHFLinMove","GLOBAL",1) Global("FHFLinJob","GLOBAL",0)~ THEN FHFLIN FHFLINHAL_now
@112
END
++ @80 + FHFLINHAL_hal
++ @113 + FHFLINHAL_die

CHAIN IF ~Global("FHFLinJob","GLOBAL",1)~ THEN FHFLIN FHFLINHAL_2
@114
END
+ ~Dead("FHFHAL")~ + @115 DO ~SetGlobal("FHFLinJob","GLOBAL",2)~ + FHFLINHAL_2free
+ ~!Dead("FHFHAL")~ + @116 + FHFLINHAL_yet
++ @117 + FHFLINHAL_die
++ @118 + FHFLINHAL_no

CHAIN FHFLIN FHFLINHAL_2free
@119
== FHFLIN IF ~CheckStatGT(Player1,13,CHR)~ THEN
@120
DO ~GiveItem("FHFAMUL",Player1)~
== FHFLIN IF ~CheckStatLT(Player1,14,CHR)~ THEN
@121
DO ~GiveGoldForce(200)~
== FHFLIN @122
DO ~EscapeArea() SetGlobal("FHFHalRefuse","GLOBAL",0) SetGlobal("FHFHalJob","GLOBAL",0) EraseJournalEntry(@32)
EraseJournalEntry(@44)
EraseJournalEntry(@62)~
END
IF ~~ SOLVED_JOURNAL @123
EXIT

CHAIN FHFLIN FHFLINHAL_yet
@124
EXIT

//Reporting Halmar to Brega

EXTEND_BOTTOM HABREGA 0
+ ~!Dead("FHFLIN") Global("FHFHalFaren","GLOBAL",2) Global("FHFHalJob","GLOBAL",1) Global("FHFTellBrega","GLOBAL",0)~ + @125 DO ~SetGlobal("FHFTellBrega","GLOBAL",1)~ + FHFBreg_1
+ ~!Dead("FHFLIN") Global("FHFHalFaren","GLOBAL",2) Global("FHFHalRefuse","GLOBAL",1) Global("FHFTellBrega","GLOBAL",0)~ + @125 DO ~SetGlobal("FHFTellBrega","GLOBAL",1)~ + FHFBreg_2
END

CHAIN HABREGA FHFBreg_1
@126
END
++ @127 + FHFBreg_1b
++ @128 + FHFBreg_1c

CHAIN HABREGA FHFBreg_2
@126
END
++ @127 + FHFBreg_1b
++ @129 + FHFBreg_2b

CHAIN HABREGA FHFBreg_1b
@130
END
IF ~~ + FHFBreg_4

CHAIN HABREGA FHFBreg_1c
@131
END
IF ~~ + FHFBreg_4

CHAIN HABREGA FHFBreg_2b
@132
END
IF ~~ + FHFBreg_3

CHAIN HABREGA FHFBreg_3
@133
DO ~ReputationInc(1)
EraseJournalEntry(@44)~
END
IF ~~ SOLVED_JOURNAL @134
EXIT

CHAIN HABREGA FHFBreg_4
@135
DO ~EraseJournalEntry(@32)~
END
IF ~~ SOLVED_JOURNAL @136
EXIT
