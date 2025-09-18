//CONTENTS
//Initial dialogue
//Returning before Faren is free
//Returning after Faren is free
//Meeting back at Vyatri's
//Appending to Logan's dialogue

BEGIN FHFCOOP

BEGIN FHFRN

//Initial meeting

//Cernd chat

CHAIN IF ~Global("FHFarenCernd","GLOBAL",1)~ THEN FHFCOOP FHFarenCernd
@0
DO ~SetGlobal("FHFarenCernd","GLOBAL",2) SetGlobal("FHFMeetFaren","GLOBAL",1) SetGlobalTimer("FHFarenFreeTime","GLOBAL",ONE_DAY)~
== FHFRN @1
== FHFCOOP @2
== CERND @3
== FHFCOOP @4
== FHFRN @5
== FHFCOOP @6
== FHFRN @7
== FHFCOOP @8
END
++ @9 EXTERN FHFRN FHFCooper_pris
++ @10 EXTERN FHFRN FHFCooper_pris
++ @11 EXTERN FHFRN FHFCooper_eye
++ @12 EXTERN FHFRN FHFCooper_leave

//Cooper chat - if Cernd isn't around or is in party

CHAIN IF ~Global("FHFarenCooper","GLOBAL",1)~ THEN FHFCOOP FHFarenCooper
@0
DO ~SetGlobal("FHFarenCooper","GLOBAL",2) SetGlobal("FHFMeetFaren","GLOBAL",1) SetGlobalTimer("FHFarenFreeTime","GLOBAL",ONE_DAY)~
== FHFRN @13
== FHFCOOP @14
== FHFRN @15
== FHFCOOP @6
== FHFRN @7
== FHFCOOP @16
END
++ @9 EXTERN FHFRN FHFCooper_pris
++ @10 EXTERN FHFRN FHFCooper_pris
++ @11 EXTERN FHFRN FHFCooper_eye
++ @12 EXTERN FHFRN FHFCooper_leave

CHAIN FHFRN FHFCooper_pris
@17
== FHFCOOP @18
== FHFRN @19
== FHFCOOP @20
END
++ @21 EXTERN FHFCOOP FHFCooper_due
++ @22 EXTERN FHFCOOP FHFCooper_due
++ @23 + FHFCooper_leave

CHAIN FHFRN FHFCooper_eye
@24
== FHFCOOP @25
== FHFRN @19
== FHFCOOP @20
END
++ @21 EXTERN FHFCOOP FHFCooper_due
++ @22 EXTERN FHFCOOP FHFCooper_due
++ @23 + FHFCooper_leave

CHAIN FHFRN FHFCooper_leave
@26
== FHFCOOP @27
EXIT

CHAIN FHFCOOP FHFCooper_due
@28
= @29
END
++ @30 + FHFCooper_bail
++ @31 EXTERN FHFRN FHFCooper_leave

CHAIN FHFCOOP FHFCooper_bail
@32
EXIT

//Returning when Faren is not free

CHAIN IF ~Global("FHFarenFree","GLOBAL",0) OR(2) Global("FHFarenCernd","GLOBAL",2) Global("FHFarenCooper","GLOBAL",2)~ THEN FHFCOOP FHFCooper
@33
END
++ @9 EXTERN FHFRN FHFCooper_pris
++ @10 EXTERN FHFRN FHFCooper_pris
++ @11 EXTERN FHFRN FHFCooper_eye
++ @12 EXTERN FHFRN FHFCooper_leave

//Returning once Faren is free

CHAIN IF ~Global("FHFarenFree","GLOBAL",1)~ THEN FHFCOOP FHFCooperFree
@34
== FHFRN @35
= @36
== FHFRN IF ~Global("FHFarenBailPaid","GLOBAL",1)~ THEN @37
END
+ ~Dead("cefald01")~ + @38 DO ~SetGlobal("FHFarenFree","GLOBAL",2)~ EXTERN FHFRN FHFfree_sort
+ ~!Dead("cefald01")~ + @39 DO ~SetGlobal("FHFarenFree","GLOBAL",2)~ EXTERN FHFRN FHFfree_assist
+ ~Global("FHFarenBailPaid","GLOBAL",1)~ + @40 DO ~SetGlobal("FHFKnowsAboutBail","GLOBAL",1) SetGlobal("FHFarenFree","GLOBAL",2)~ EXTERN FHFRN FHFfree_dontmind
+ ~Global("FHFarenBailPaid","GLOBAL",1)~ + @41 DO ~SetGlobal("FHFarenFree","GLOBAL",2)~ EXTERN FHFRN FHFfree_goearly
++ @42 DO ~SetGlobal("FHFarenFree","GLOBAL",2)~ EXTERN FHFRN FHFfree_plans
++ @43 DO ~SetGlobal("FHFarenFree","GLOBAL",2)~ EXTERN FHFRN FHFfree_byebye

APPEND FHFRN

IF ~~ FHFfree_sort
SAY @44
IF ~~ + FHFfree_right
END

IF ~~ FHFfree_assist
SAY @45
IF ~~ + FHFfree_right
END

IF ~~ FHFfree_dontmind
SAY @46
++ @47 + FHFfree_joinme
++ @48 + FHFfree_goodpayback
++ @49 + FHFfree_plans
END

IF ~~ FHFfree_goearly
SAY @50
++ @51 + FHFfree_plans
++ @52 + FHFfree_joinme
++ @53 + FHFfree_byebye
END

IF ~~ FHFfree_plans
SAY @54
++ @55 + FHFfree_joinme
++ @56 + FHFfree_byebye
++ @57 + FHFfree_outoftrouble
END

IF ~~ FHFfree_byebye
SAY @58
IF ~~ DO ~SetGlobal("FHFarenVyatri","GLOBAL",1) EscapeAreaMove("AR2010",780,539,5)~ EXIT
END

IF ~~ FHFfree_right
SAY @59
++ @55 + FHFfree_joinme
++ @56 + FHFfree_byebye
++ @57 + FHFfree_outoftrouble
END

IF ~~ FHFfree_goodpayback
SAY @60
IF ~~ DO ~SetGlobal("FHFarenFree","GLOBAL",2) SetGlobal("FHFarenVyatri","GLOBAL",1) EscapeAreaMove("AR2010",780,539,5)~ EXIT
END

IF ~~ FHFfree_joinme
SAY @61
++ @62 + FHFfree_goodfighter
++ @63 + FHFfree_fun
++ @64 + FHFfree_nosociallife
END

IF ~~ FHFfree_outoftrouble
SAY @65
IF ~~ + FHFfree_right
END

IF ~~ FHFfree_goodfighter
SAY @66
IF ~~ + FHFfree_party
END

IF ~~ FHFfree_fun
SAY @67
IF ~~ + FHFfree_party
END

IF ~~ FHFfree_nosociallife
SAY @68
IF ~~ + FHFfree_party
END

IF ~~ FHFfree_party
SAY @69
= @70
+ ~Dead("SHADEL")~ + @71 + FHFfree_kill
+ ~Global("WainwrightJob","GLOBAL",1) !Dead("SHADEL")~ + @72 + FHFfree_agree
+ ~Global("Acceptance","GLOBAL",1) !Dead("SHADEL")~ + @73 + FHFfree_agree
++ @74 DO ~RevealAreaOnMap("AR1100") SetGlobal("FHFAR100Reveal","GLOBAL",1)~ + FHFfree_interest
++ @75 + FHFfree_join
++ @76 + FHFfree_byebye
END

IF ~~ FHFfree_kill
SAY @77
+ ~GlobalLT("Chapter","GLOBAL",4)~ + @78 + FHFfree_rescue
+ ~GlobalLT("Chapter","GLOBAL",4)~ + @79 + FHFfree_mage
++ @80 DO ~SetGlobalTimer("FHFSethArrive","GLOBAL",FIFTEEN_DAYS) JoinParty()~ EXIT
END

IF ~~ FHFfree_agree
SAY @81
+ ~GlobalLT("Chapter","GLOBAL",4)~ + @78 + FHFfree_rescue
+ ~GlobalLT("Chapter","GLOBAL",4)~ + @79 + FHFfree_mage
++ @80 DO ~SetGlobalTimer("FHFSethArrive","GLOBAL",FIFTEEN_DAYS) JoinParty()~ EXIT
END

IF ~~ FHFfree_interest
SAY @82
+ ~GlobalLT("Chapter","GLOBAL",4)~ + @78 + FHFfree_rescue
+ ~GlobalLT("Chapter","GLOBAL",4)~ + @79 + FHFfree_mage
++ @80 DO ~SetGlobalTimer("FHFSethArrive","GLOBAL",FIFTEEN_DAYS) JoinParty()~ EXIT
END

IF ~~ FHFfree_join
SAY @83
+ ~GlobalLT("Chapter","GLOBAL",4)~ + @78 + FHFfree_rescue
+ ~GlobalLT("Chapter","GLOBAL",4)~ + @79 + FHFfree_mage
++ @80 DO ~SetGlobalTimer("FHFSethArrive","GLOBAL",FIFTEEN_DAYS) JoinParty()~ EXIT
END

IF ~~ FHFfree_rescue
SAY @84
IF ~~ DO ~SetGlobalTimer("FHFSethArrive","GLOBAL",FIFTEEN_DAYS) JoinParty()~ EXIT
END

IF ~~ FHFfree_mage
SAY @85
IF ~~ DO ~SetGlobalTimer("FHFSethArrive","GLOBAL",FIFTEEN_DAYS) JoinParty()~ EXIT
END

//Meeting back at Vyatri's

IF ~Global("FHFarenFree","GLOBAL",2) Global("FHFarenVyatri","GLOBAL",1)~ FHFVyatri
SAY @86
++ @87 + FHFvyatri_join
+ ~Global("FHFKnowsAboutBail","GLOBAL",1) !Global("FHFPaidYouBack","GLOBAL",1)~ + @88 DO ~SetGlobal("FHFPaidYouBack","GLOBAL",1) GiveGoldForce(250)~ + FHFvyatri_payback
+ ~Global("FHFKnowsAboutBail","GLOBAL",0) !Global("FHFPaidYouBack","GLOBAL",1)~ + @88 DO ~SetGlobal("FHFPaidYouBack","GLOBAL",1) GiveGoldForce(250)~ + FHFvyatri_dontknowpayback
++ @89 + FHFvyatri_howdoing
++ @90 + FHFvyatri_swing
++ @91 + FHFvyatri_complicated
END

IF ~~ FHFvyatri_join
SAY @92
++ @62 + FHFfree_goodfighter
++ @63 + FHFfree_fun
++ @64 + FHFfree_nosociallife
END

IF ~~ FHFvyatri_payback
SAY @93
++ @94 + FHFvyatri_money
++ @95 + FHFvyatri_byebye
++ @96 + FHFvyatri_join
END

IF ~~ FHFvyatri_dontknowpayback
SAY @97
++ @94 + FHFvyatri_money
++ @98 + FHFvyatri_byebye
++ @99 + FHFvyatri_join
END

IF ~~ FHFvyatri_howdoing
SAY @100
++ @101 + FHFvyatri_join
++ @102 + FHFvyatri_sit
++ @103 + FHFvyatri_going
END

IF ~~ FHFvyatri_swing
SAY @104
++ @101 + FHFvyatri_join
++ @102 + FHFvyatri_sit
++ @103 + FHFvyatri_going
END

IF ~~ FHFvyatri_complicated
SAY @105
++ @106 + FHFvyatri_join
++ @107 + FHFvyatri_going
END

IF ~~ FHFvyatri_money
SAY @108
++ @109 + FHFvyatri_going
++ @96 + FHFvyatri_join
END

IF ~~ FHFvyatri_byebye
SAY @110
++ @111 + FHFvyatri_going
++ @112 + FHFvyatri_join
END

IF ~~ FHFvyatri_sit
SAY @113
++ @114 + FHFvyatri_join
++ @115 + FHFvyatri_going
END

IF ~~ FHFvyatri_going
SAY @116
IF ~~ EXIT
END
END

//Appending to Logan's dialogue

//Extending various states so that you can ask Logan about Faren's imprisonment

ADD_TRANS_TRIGGER CELOGAN 29
~OR(2)
!Global("FHFMeetFaren","GLOBAL",1)
GlobalGT("FHFarenFree","GLOBAL",0)~ 30 74 80 81 95 DO 0

EXTEND_BOTTOM CELOGAN 14
+ ~OR(2) Global("FHFarenCooper","GLOBAL",2) Global("FHFarenCernd","GLOBAL",2) Global("FHFarenFree","GLOBAL",0)~ + @117 + FHFlogan2_pleasant
+ ~OR(2) Global("FHFarenCooper","GLOBAL",2) Global("FHFarenCernd","GLOBAL",2) Global("FHFarenFree","GLOBAL",0)~ + @118 + FHFlogan2_release1
END

EXTEND_BOTTOM CELOGAN 28
+ ~OR(2) Global("FHFarenCooper","GLOBAL",2) Global("FHFarenCernd","GLOBAL",2) Global("FHFarenFree","GLOBAL",0)~ + @117 + FHFlogan2_pleasant
+ ~OR(2) Global("FHFarenCooper","GLOBAL",2) Global("FHFarenCernd","GLOBAL",2) Global("FHFarenFree","GLOBAL",0)~ + @118 + FHFlogan2_release1
END

EXTEND_BOTTOM CELOGAN 29
+ ~OR(2) Global("FHFarenCooper","GLOBAL",2) Global("FHFarenCernd","GLOBAL",2) Global("FHFarenFree","GLOBAL",0)~ + @117 + FHFlogan2_pleasant
+ ~OR(2) Global("FHFarenCooper","GLOBAL",2) Global("FHFarenCernd","GLOBAL",2) Global("FHFarenFree","GLOBAL",0)~ + @118 + FHFlogan2_release1
+ ~OR(2) Global("FHFarenCooper","GLOBAL",2) Global("FHFarenCernd","GLOBAL",2) Global("FHFarenFree","GLOBAL",0)~ + @119 EXIT
END

EXTEND_BOTTOM CELOGAN 30
+ ~OR(2) Global("FHFarenCooper","GLOBAL",2) Global("FHFarenCernd","GLOBAL",2) Global("FHFarenFree","GLOBAL",0)~ + @117 + FHFlogan2_pleasant
+ ~OR(2) Global("FHFarenCooper","GLOBAL",2) Global("FHFarenCernd","GLOBAL",2) Global("FHFarenFree","GLOBAL",0)~ + @118 + FHFlogan2_release1
+ ~OR(2) Global("FHFarenCooper","GLOBAL",2) Global("FHFarenCernd","GLOBAL",2) Global("FHFarenFree","GLOBAL",0)~ + @120 EXIT
END

EXTEND_BOTTOM CELOGAN 64
+ ~OR(2) Global("FHFarenCooper","GLOBAL",2) Global("FHFarenCernd","GLOBAL",2) Global("FHFarenFree","GLOBAL",0)~ + @117 + FHFlogan2_pleasant
+ ~OR(2) Global("FHFarenCooper","GLOBAL",2) Global("FHFarenCernd","GLOBAL",2) Global("FHFarenFree","GLOBAL",0)~ + @118 + FHFlogan2_release1
END

EXTEND_BOTTOM CELOGAN 67
+ ~OR(2) Global("FHFarenCooper","GLOBAL",2) Global("FHFarenCernd","GLOBAL",2) Global("FHFarenFree","GLOBAL",0)~ + @117 + FHFlogan2_pleasant
+ ~OR(2) Global("FHFarenCooper","GLOBAL",2) Global("FHFarenCernd","GLOBAL",2) Global("FHFarenFree","GLOBAL",0)~ + @118 + FHFlogan2_release1
END

EXTEND_BOTTOM CELOGAN 74
+ ~OR(2) Global("FHFarenCooper","GLOBAL",2) Global("FHFarenCernd","GLOBAL",2) Global("FHFarenFree","GLOBAL",0)~ + @121 + FHFlogan2_mad
END

EXTEND_BOTTOM CELOGAN 80
+ ~OR(2) Global("FHFarenCooper","GLOBAL",2) Global("FHFarenCernd","GLOBAL",2) Global("FHFarenFree","GLOBAL",0)~ + @117 + FHFlogan2_pleasant
+ ~OR(2) Global("FHFarenCooper","GLOBAL",2) Global("FHFarenCernd","GLOBAL",2) Global("FHFarenFree","GLOBAL",0)~ + @118 + FHFlogan2_release1
+ ~OR(2) Global("FHFarenCooper","GLOBAL",2) Global("FHFarenCernd","GLOBAL",2) Global("FHFarenFree","GLOBAL",0)~ + @122 EXIT
END

EXTEND_BOTTOM CELOGAN 81
+ ~OR(2) Global("FHFarenCooper","GLOBAL",2) Global("FHFarenCernd","GLOBAL",2) Global("FHFarenFree","GLOBAL",0)~ + @117 + FHFlogan2_pleasant
+ ~OR(2) Global("FHFarenCooper","GLOBAL",2) Global("FHFarenCernd","GLOBAL",2) Global("FHFarenFree","GLOBAL",0)~ + @118 + FHFlogan2_release1
+ ~OR(2) Global("FHFarenCooper","GLOBAL",2) Global("FHFarenCernd","GLOBAL",2) Global("FHFarenFree","GLOBAL",0)~ + @123 EXIT
END

EXTEND_BOTTOM CELOGAN 88
+ ~OR(2) Global("FHFarenCooper","GLOBAL",2) Global("FHFarenCernd","GLOBAL",2) Global("FHFarenFree","GLOBAL",0)~ + @117 + FHFlogan2_pleasant
+ ~OR(2) Global("FHFarenCooper","GLOBAL",2) Global("FHFarenCernd","GLOBAL",2) Global("FHFarenFree","GLOBAL",0)~ + @118 + FHFlogan2_release1
END

EXTEND_BOTTOM CELOGAN 95
+ ~OR(2) Global("FHFarenCooper","GLOBAL",2) Global("FHFarenCernd","GLOBAL",2) Global("FHFarenFree","GLOBAL",0)~ + @121 + FHFlogan2_mad
END

APPEND CELOGAN

IF ~~ FHFlogan2_pleasant
SAY @124
= @125
+ ~GlobalTimerExpired("FHFarenFreeTime","GLOBAL")~ + @118 + FHFlogan2_long1
+ ~!GlobalTimerExpired("FHFarenFreeTime","GLOBAL")~ + @118 + FHFlogan2_release2
+ ~GlobalTimerExpired("FHFarenFreeTime","GLOBAL")~ + @126 + FHFlogan2_long1
+ ~!GlobalTimerExpired("FHFarenFreeTime","GLOBAL")~ + @126 + FHFlogan2_long2
++ @127 + FHFlogan2_quickly
END

IF ~~ FHFlogan2_quickly
SAY @128
IF ~~ EXIT
END

IF ~~ FHFlogan2_release1
SAY @129
= @130
++ @131 + FHFlogan2_price
+ ~ReputationLT(LastTalkedToBy,8)~ + @132 + FHFlogan2_freelowrep
+ ~ReputationLT(LastTalkedToBy,15) ReputationGT(LastTalkedToBy,7)~ + @132 + FHFlogan2_freemidrep
+ ~ReputationGT(LastTalkedToBy,14)~ + @132 + FHFlogan2_freehighrep
++ @133 + FHFlogan2_quickly
END

IF ~~ FHFlogan2_mad
SAY @134
IF ~~ EXIT
END

IF ~~ FHFlogan2_long1
SAY @135
IF ~~ DO ~SetGlobal("FHFarenFree","GLOBAL",1)~
EXIT
END

IF ~~ FHFlogan2_long2
SAY @136
++ @137 + FHFlogan2_release1
++ @138 + FHFlogan2_quickly
END

IF ~~ FHFlogan2_release2
SAY @139
++ @131 + FHFlogan2_price
+ ~ReputationLT(LastTalkedToBy,8)~ + @132 + FHFlogan2_freelowrep
+ ~ReputationLT(LastTalkedToBy,15) ReputationGT(LastTalkedToBy,7)~ + @132 + FHFlogan2_freemidrep
+ ~ReputationGT(LastTalkedToBy,14)~ + @132 + FHFlogan2_freehighrep
++ @133 + FHFlogan2_quickly
END

IF ~~ FHFlogan2_price
SAY @140
+ ~ReputationLT(LastTalkedToBy,8)~ + @132 + FHFlogan2_freelowrep3
+ ~ReputationLT(LastTalkedToBy,15) ReputationGT(LastTalkedToBy,7)~ + @132 + FHFlogan2_freemidrep2
+ ~ReputationGT(LastTalkedToBy,14)~ + @132 + FHFlogan2_freehighrep2
++ @133 + FHFlogan2_quickly
END

IF ~~ FHFlogan2_freelowrep
SAY @141
+ ~CheckStatGT(LastTalkedToBy,14,CHR)~ + @142 + FHFlogan2_bail
+ ~CheckStatLT(LastTalkedToBy,15,CHR)~ + @142 + FHFlogan2_freelowrep2
++ @143 + FHFlogan2_quickly
END

IF ~~ FHFlogan2_freemidrep
SAY @144
IF ~~ THEN + FHFlogan2_bail
END

IF ~~ FHFlogan2_freehighrep
SAY @145
IF ~~ THEN + FHFlogan2_bail
END

IF ~~ FHFlogan2_freelowrep3
SAY @141
+ ~CheckStatGT(LastTalkedToBy,14,CHR)~ + @142 + FHFlogan2_freemidrep2
+ ~CheckStatLT(LastTalkedToBy,15,CHR)~ + @142 + FHFlogan2_freelowrep2
++ @143 + FHFlogan2_quickly
END

IF ~~ FHFlogan2_freemidrep2
SAY @146
+ ~PartyGoldGT(249)~ + @147 DO ~TakePartyGold(250)~ + FHFlogan2_freed
+ ~PartyGoldLT(251)~ + @148 + FHFlogan2_nomoney
++ @149 + FHFlogan2_nomoney
END

IF ~~ FHFlogan2_freehighrep2
SAY @150
+ ~PartyGoldGT(249)~ + @151 DO ~TakePartyGold(250)~ + FHFlogan2_freed
+ ~PartyGoldLT(251)~ + @148 + FHFlogan2_nomoney
++ @149 + FHFlogan2_nomoney
END

IF ~~ FHFlogan2_bail
SAY @152
+ ~PartyGoldGT(249)~ + @153 DO ~TakePartyGold(250)~ + FHFlogan2_freed
+ ~PartyGoldLT(251)~ + @154 + FHFlogan2_nomoney
++ @149 + FHFlogan2_nomoney
END

IF ~~ FHFlogan2_freelowrep2
SAY @155
IF ~~ EXIT
END

IF ~~ FHFlogan2_freed
SAY @156
= @157
IF ~~ DO ~SetGlobal("FHFarenBailPaid","GLOBAL",1) SetGlobal("FHFarenFree","GLOBAL",1)~
EXIT
END

IF ~~ FHFlogan2_nomoney
SAY @158
IF ~~ EXIT
END
END
