//CONTENTS
//Plot talks
//Friendtalks
//Lovetalks
//Dream chains
//Master Wraith
//Interjections
//Nadiyya Reaction
//Nadiyya Follow Up
//Faren-initiated flirts
//Player-initiated dialogue

BEGIN FHF25J

//Plot talks

//Wraith spirit

IF ~Global("FHFAfterWraith","GLOBAL",1)~ FHFWraith
SAY @0
++ @1 DO ~SetGlobal("FHFAfterWraith","GLOBAL",2)~ + FHFWraith_gone
++ @2 DO ~SetGlobal("FHFAfterWraith","GLOBAL",2)~ + FHFWraith_gone
END

IF ~~ FHFWraith_gone
SAY @3
= @4
++ @5 + FHFWraith_lies
++ @6 + FHFWraith_past
++ @7 + FHFWraith_fault
END

IF ~~ FHFWraith_lies
SAY @8
IF ~~ + FHFWraith_fail
END

IF ~~ FHFWraith_past
SAY @9
IF ~~ + FHFWraith_fail
END

IF ~~ FHFWraith_fault
SAY @10
IF ~~ + FHFWraith_fail
END

IF ~~ FHFWraith_fail
SAY @11
++ @12 + FHFWraith_cheer
++ @13 + FHFWraith_cheer
++ @14 + FHFWraith_condition
END

IF ~~ FHFWraith_cheer
SAY @15
IF ~~ EXIT
END

IF ~~ FHFWraith_condition
SAY @16
IF ~~ DO ~SetGlobal("FHFarenRomanceActive","GLOBAL",3)
GivePartyAllEquipment()
LeaveParty()
EscapeArea()~
EXIT
END

//Saradush

IF ~Global("FHFSaradush","GLOBAL",1)~ FHFSara
SAY @17
++ @18 DO ~SetGlobal("FHFSaradush","GLOBAL",2)~ + FHFSara_yes
++ @19 DO ~SetGlobal("FHFSaradush","GLOBAL",2)~ + FHFSara_drunk
++ @20 DO ~SetGlobal("FHFSaradush","GLOBAL",2)~ + FHFSara_brandy
++ @21 DO ~SetGlobal("FHFSaradush","GLOBAL",2)~ + FHFSara_bed
END

IF ~~ FHFSara_yes
SAY @22
IF ~~ + FHFSara_sex
END

IF ~~ FHFSara_drunk
SAY @23
++ @24 + FHFSara_yes
++ @25 + FHFSara_bed
END

IF ~~ FHFSara_brandy
SAY @26
++ @24 + FHFSara_yes
++ @25 + FHFSara_bed
END

IF ~~ FHFSara_bed
SAY @27
IF ~~ + FHFSara_kiss
END

IF ~~ FHFSara_sex
SAY @28
++ @29 + FHFSara_do
++ @30 + FHFSara_sara
++ @31 + FHFSara_sara
END

IF ~~ FHFSara_do
SAY @32
IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ FHFSara_sara
SAY @33
= @34
++ @35 + FHFSara_reason
++ @36 + FHFSara_bed
++ @37 + FHFSara_do
END

IF ~~ FHFSara_reason
SAY @38
IF ~~ + FHFSara_kiss
END

IF ~~ FHFSara_kiss
SAY @39
IF ~~ DO ~RestParty()~ EXIT
END

//Saradush - morning

IF ~Global("FHFSaradush","GLOBAL",3)~ FHFSaraMorn
SAY @40
= @41
++ @42 DO ~SetGlobal("FHFSaradush","GLOBAL",4)~ + FHFSaraMorn_noneed
++ @43 DO ~SetGlobal("FHFSaradush","GLOBAL",4)~ + FHFSaraMorn_thank
++ @44 DO ~SetGlobal("FHFSaradush","GLOBAL",4)~ + FHFSaraMorn_ok
++ @45 DO ~SetGlobal("FHFSaradush","GLOBAL",4)~ + FHFSaraMorn_glad
++ @46 DO ~SetGlobal("FHFSaradush","GLOBAL",4)~ + FHFSaraMorn_behind
END

IF ~~ FHFSaraMorn_noneed
SAY @47
IF ~~ + FHFSaraMorn_just
END

IF ~~ FHFSaraMorn_thank
SAY @48
IF ~~ + FHFSaraMorn_just
END

IF ~~ FHFSaraMorn_ok
SAY @49
IF ~~ + FHFSaraMorn_dont
END

IF ~~ FHFSaraMorn_glad
SAY @50
IF ~~ + FHFSaraMorn_just
END

IF ~~ FHFSaraMorn_behind
SAY @51
IF ~~ EXIT
END

IF ~~ FHFSaraMorn_just
SAY @52
++ @53 + FHFSaraMorn_dead
++ @54 + FHFSaraMorn_sorry
++ @55 + FHFSaraMorn_fine
END

IF ~~ FHFSaraMorn_dead
SAY @56
IF ~~ + FHFSaraMorn_dont
END

IF ~~ FHFSaraMorn_sorry
SAY @57
IF ~~ + FHFSaraMorn_dont
END

IF ~~ FHFSaraMorn_fine
SAY @58
IF ~~ + FHFSaraMorn_dont
END

IF ~~ FHFSaraMorn_dont
SAY @59
IF ~~ EXIT
END

//Saradush: friendly

IF ~Global("FHFSaradushFriend","GLOBAL",2)~ FHFSaraFriend
SAY @632
= @633
++ @634 DO ~SetGlobal("FHFSaradushFriend","GLOBAL",3) GiveItemCreate("FHFCAT","FHFRN",0,0,0)~ + FHFSaraFriend_cat
++ @635 DO ~SetGlobal("FHFSaradushFriend","GLOBAL",3) GiveItemCreate("FHFCAT","FHFRN",0,0,0)~ + FHFSaraFriend_where
++ @636 DO ~SetGlobal("FHFSaradushFriend","GLOBAL",3) GiveItemCreate("FHFCAT","FHFRN",0,0,0)~ + FHFSaraFriend_where
END

IF ~~ FHFSaraFriend_cat
SAY @637
IF ~~ + FHFSaraFriend_squirm
END

IF ~~ FHFSaraFriend_where
SAY @638
IF ~~ + FHFSaraFriend_squirm
END

IF ~~ FHFSaraFriend_squirm
SAY @639
= @640
++ @641 + FHFSaraFriend_soft
++ @642 + FHFSaraFriend_thinking
++ @643 + FHFSaraFriend_fine
+ ~OR(3) PartyHasItem("FAMCAT") PartyHasItem("FAMCAT25") PartyHasItem("FAMDUST") PartyHasItem("FAMDUS25") PartyHasItem("FAMFAIR") PartyHasItem("FAMFAIR25") PartyHasItem("FAMFER") PartyHasItem("FAMFER25") PartyHasItem("FAMIMP") PartyHasItem("FAMIMP25")~ + @644 + FHFSaraFriend_fam
+ ~PartyHasItem("AERIEBAB")~ + @645 + FHFSaraFriend_baby
END

IF ~~ FHFSaraFriend_soft
SAY @646
IF ~~ + FHFSaraFriend_name
END

IF ~~ FHFSaraFriend_thinking
SAY @647
IF ~~ + FHFSaraFriend_name
END

IF ~~ FHFSaraFriend_fine
SAY @648
IF ~~ + FHFSaraFriend_name
END

IF ~~ FHFSaraFriend_fam
SAY @649
IF ~~ + FHFSaraFriend_name
END

IF ~~ FHFSaraFriend_baby
SAY @650
IF ~~ + FHFSaraFriend_name
END

IF ~~ FHFSaraFriend_name
SAY @651
IF ~~ EXIT
END


//Abazigal

IF ~Global("FHFAbaTalk","GLOBAL",1)~ FHFAba
SAY @60
= @61
= @62
++ @63 DO ~SetGlobal("FHFAbaTalk","GLOBAL",2)~ + FHFAba_tough
++ @64 DO ~SetGlobal("FHFAbaTalk","GLOBAL",2)~ + FHFAba_proud
++ @65 DO ~SetGlobal("FHFAbaTalk","GLOBAL",2)~ + FHFAba_danger
END

IF ~~ FHFAba_tough
SAY @66
++ @67 + FHFAba_surprise
++ @68 + FHFAba_prep
++ @69 + FHFAba_taxi
END

IF ~~ FHFAba_proud
SAY @70
IF ~~ + FHFAba_giddy
END

IF ~~ FHFAba_danger
SAY @71
++ @72 + FHFAba_surprise
++ @68 + FHFAba_prep
++ @73 + FHFAba_prep
END

IF ~~ FHFAba_surprise
SAY @74
IF ~~ + FHFAba_giddy
END

IF ~~ FHFAba_prep
SAY @75
IF ~~ + FHFAba_giddy
END

IF ~~ FHFAba_taxi
SAY @76
IF ~~ + FHFAba_giddy
END

IF ~~ FHFAba_giddy
SAY @77
IF ~~ EXIT
END

//Friendtalk 1: In Which Faren Is Interested in Your Wellbeing

IF ~Global("FHFToBFriendTalk","GLOBAL",2)~ FHFFT125
SAY @652
++ @653 DO ~IncrementGlobal("FHFToBFriendTalk","GLOBAL",1) RealSetGlobalTimer("FHFToBTalkTimer","GLOBAL",4200)~ + FHFFT125_judge
++ @654 DO ~IncrementGlobal("FHFToBFriendTalk","GLOBAL",1) RealSetGlobalTimer("FHFToBTalkTimer","GLOBAL",4200)~ + FHFFT125_see
++ @655 DO ~IncrementGlobal("FHFToBFriendTalk","GLOBAL",1) RealSetGlobalTimer("FHFToBTalkTimer","GLOBAL",4200)~ + FHFFT125_echo
END

IF ~~ FHFFT125_judge
SAY @656
IF ~~ + FHFFT125_how
END

IF ~~ FHFFT125_see
SAY @657
IF ~~ + FHFFT125_how
END

IF ~~ FHFFT125_echo
SAY @658
IF ~~ + FHFFT125_how
END

IF ~~ FHFFT125_how
SAY @659
++ @660 + FHFFT125_break
++ @661 + FHFFT125_move
++ @662 + FHFFT125_quiet
END

IF ~~ FHFFT125_break
SAY @663
++ @664 + FHFFT125_forward
++ @665 + FHFFT125_survive
++ @666 + FHFFT125_excite
+ ~Global("AerieRomanceActive","GLOBAL",2) Global("AerieHadBaby","GLOBAL",0)~ + @667 + FHFFT125_aerie1
+ ~Global("AerieRomanceActive","GLOBAL",2) Global("AerieHadBaby","GLOBAL",1)~ + @668 + FHFFT125_aerie2
+ ~Global("AnomenRomanceActive","GLOBAL",2)~ + @669 + FHFFT125_anomen
+ ~Global("DornRomanceActive","GLOBAL",2)~ + @670 + FHFFT125_dorn
+ ~Global("HexxatRomanceActive","GLOBAL",2)~ + @671 + FHFFT125_hexxat
+ ~Global("JaheiraRomanceActive","GLOBAL",2)~ + @672 + FHFFT125_jaheira
+ ~Global("RasaadRomanceActive","GLOBAL",2)~ + @673 + FHFFT125_rasaad
+ ~Global("ViconiaRomanceActive","GLOBAL",2)~ + @674 + FHFFT125_viconia
END

IF ~~ FHFFT125_move
SAY @675
COPY_TRANS FHF25J FHFFT125_break
END

IF ~~ FHFFT125_quiet
SAY @676
= @677
COPY_TRANS FHF25J FHFFT125_break
END

IF ~~ FHFFT125_forward
SAY @678
= @679
IF ~~ EXIT
END

IF ~~ FHFFT125_survive
SAY @680
IF ~~ + FHFFT125_side
END

IF ~~ FHFFT125_excite
SAY @681
= @682
IF ~~ EXIT
END

IF ~~ FHFFT125_aerie1
SAY @683
IF ~~ + FHFFT125_side
END

IF ~~ FHFFT125_aerie2
SAY @684
= @685
IF ~~ EXIT
END

IF ~~ FHFFT125_anomen
SAY @686
IF ~~ + FHFFT125_anyhow
END

IF ~~ FHFFT125_dorn
SAY @687
IF ~~ + FHFFT125_anyhow
END

IF ~~ FHFFT125_hexxat
SAY @688
IF ~~ + FHFFT125_hexxat
END

IF ~~ FHFFT125_jaheira
SAY @689
IF ~~ + FHFFT125_anyhow
END

IF ~~ FHFFT125_rasaad
SAY @690
IF ~~ + FHFFT125_anyhow
END

IF ~~ FHFFT125_viconia
SAY @691
IF ~~ + FHFFT125_anyhow
END

IF ~~ FHFFT125_side
SAY @692
IF ~~ EXIT
END

IF ~~ FHFFT125_anyhow
SAY @693
IF ~~ EXIT
END

//Friendtalk 2: In Which Faren Is Not A Great Fan Of War

IF ~Global("FHFToBFriendTalk","GLOBAL",4)~ FHFFT225
SAY @694
++ @695 DO ~IncrementGlobal("FHFToBFriendTalk","GLOBAL",1) RealSetGlobalTimer("FHFToBTalkTimer","GLOBAL",4200)~ + FHFFT225_violence
++ @696 DO ~IncrementGlobal("FHFToBFriendTalk","GLOBAL",1) RealSetGlobalTimer("FHFToBTalkTimer","GLOBAL",4200)~ + FHFFT225_over
++ @697 DO ~IncrementGlobal("FHFToBFriendTalk","GLOBAL",1) RealSetGlobalTimer("FHFToBTalkTimer","GLOBAL",4200)~ + FHFFT225_peace
++ @698 DO ~IncrementGlobal("FHFToBFriendTalk","GLOBAL",1) RealSetGlobalTimer("FHFToBTalkTimer","GLOBAL",4200)~ + FHFFT225_adv
END

IF ~~ FHFFT225_violence
SAY @699
+ ~NumInPartyGT(2)~ + @700 + FHFFT225_count1
+ ~!NumInPartyGT(2)~ + @700 + FHFFT225_count2
++ @701 + FHFFT225_blood
++ @702 + FHFFT225_killed
END

IF ~~ FHFFT225_over
SAY @703
++ @704 + FHFFT225_innocent
++ @705 + FHFFT225_essence
++ @706 + FHFFT225_survive
END

IF ~~ FHFFT225_peace
SAY @707
COPY_TRANS FHF25J FHFFT225_violence
END

IF ~~ FHFFT225_adv
SAY @708
COPY_TRANS FHF25J FHFFT225_over
END

IF ~~ FHFFT225_count1
SAY @709
IF ~~ + FHFFT225_worry
END

IF ~~ FHFFT225_count2
SAY @710
IF ~~ + FHFFT225_worry
END

IF ~~ FHFFT225_blood
SAY @711
IF ~~ + FHFFT225_worry
END

IF ~~ FHFFT225_killed
SAY @712
IF ~~ + FHFFT225_worry
END

IF ~~ FHFFT225_innocent
SAY @713
IF ~~ + FHFFT225_worry
END

IF ~~ FHFFT225_essence
SAY @714
IF ~~ + FHFFT225_worry
END

IF ~~ FHFFT225_survive
SAY @715
IF ~~ + FHFFT225_worry
END

IF ~~ FHFFT225_worry
SAY @716
= @717
IF ~~ EXIT
END

//Friendtalk 3: In Which Faren Tells A Story

IF ~Global("FHFToBFriendTalk","GLOBAL",6)~ FHFFT325
SAY @78
++ @80 DO ~IncrementGlobal("FHFToBFriendTalk","GLOBAL",1) RealSetGlobalTimer("FHFToBTalkTimer","GLOBAL",4200)~ + FHFFT325_appear
++ @81 DO ~IncrementGlobal("FHFToBFriendTalk","GLOBAL",1) RealSetGlobalTimer("FHFToBTalkTimer","GLOBAL",4200)~ + FHFFT325_dream
++ @79 DO ~IncrementGlobal("FHFToBFriendTalk","GLOBAL",1) RealSetGlobalTimer("FHFToBTalkTimer","GLOBAL",4200)~ + FHFFT325_busy
END

IF ~~ FHFFT325_busy
SAY @82
IF ~~ EXIT
END

IF ~~ FHFFT325_appear
SAY @83
IF ~~ + FHFFT325_dream
END

IF ~~ FHFFT325_cool
SAY @84
IF ~~ + FHFFT325_wow
END

IF ~~ FHFFT325_sexy
SAY @85
IF ~~ + FHFFT325_wow
END

IF ~~ FHFFT325_recognise
SAY @86
IF ~~ + FHFFT325_wow
END

IF ~~ FHFFT325_wow
SAY @87
++ @88 + FHFFT325_bedtime
++ @89 + FHFFT325_issues
+ ~CheckStatGT(Player1,13,WIS)~ + @90 + FHFFT325_wis
+ ~CheckStatLT(Player1,14,WIS)~ + @91 + FHFFT325_wis
END

IF ~~ FHFFT325_bedtime
SAY @92
IF ~~ + FHFFT325_last
END

IF ~~ FHFFT325_last
SAY @93
++ @94 + FHFFT325_stupid
++ @95 + FHFFT325_friv
++ @96 + FHFFT325_quiet
END

IF ~~ FHFFT325_distract
SAY @97
IF ~~ EXIT
END

IF ~~ FHFFT325_stupid
SAY @98
IF ~~ EXIT
END

IF ~~ FHFFT325_friv
SAY @99
IF ~~ EXIT
END

IF ~~ FHFFT325_quiet
SAY @100
IF ~~ EXIT
END

IF ~~ FHFFT325_issues
SAY @101
IF ~~ + FHFFT325_last
END

IF ~~ FHFFT325_wis
SAY @102
IF ~~ + FHFFT325_last
END

//Friendtalk 4: In Which Faren Has A Minor Crisis Of Confidence

IF ~Global("FHFToBFriendTalk","GLOBAL",8)~ FHFFT425
SAY @103
++ @104 DO ~IncrementGlobal("FHFToBFriendTalk","GLOBAL",1) RealSetGlobalTimer("FHFToBTalkTimer","GLOBAL",4200)~ + FHFFT425_lame
++ @105 DO ~IncrementGlobal("FHFToBFriendTalk","GLOBAL",1) RealSetGlobalTimer("FHFToBTalkTimer","GLOBAL",4200)~ + FHFFT425_lazy
++ @106 DO ~IncrementGlobal("FHFToBFriendTalk","GLOBAL",1) RealSetGlobalTimer("FHFToBTalkTimer","GLOBAL",4200)~ + FHFFT425_prowess
++ @107 DO ~IncrementGlobal("FHFToBFriendTalk","GLOBAL",1) RealSetGlobalTimer("FHFToBTalkTimer","GLOBAL",4200)~ + FHFFT425_fineass
END

IF ~~ FHFFT425_fineass
SAY @108
++ @109 + FHFFT425_care
++ @110 + FHFFT425_charfamous
++ @111 + FHFFT425_chin
END

IF ~~ FHFFT425_lame
SAY @112
++ @113 + FHFFT425_charfamous
++ @111 + FHFFT425_chin
++ @109 + FHFFT425_care
END

IF ~~ FHFFT425_lazy
SAY @114
++ @115 + FHFFT425_pun
++ @111 + FHFFT425_chin
++ @109 + FHFFT425_care
END

IF ~~ FHFFT425_prowess
SAY @116
++ @109 + FHFFT425_care
++ @110 + FHFFT425_charfamous
++ @111 + FHFFT425_chin
END

IF ~~ FHFFT425_care
SAY @117
IF ~~ + FHFFT425_explain
END

IF ~~ FHFFT425_talk
SAY @118
IF ~~ + FHFFT425_explain
END

IF ~~ FHFFT425_charfamous
SAY @119
IF ~~ + FHFFT425_explain
END

IF ~~ FHFFT425_chin
SAY @120
IF ~~ + FHFFT425_explain
END

IF ~~ FHFFT425_kidding
SAY @121
IF ~~ + FHFFT425_explain
END

IF ~~ FHFFT425_pun
SAY @122
= @123
IF ~~ + FHFFT425_explain
END

IF ~~ FHFFT425_jealous
SAY @124
IF ~~ + FHFFT425_explain
END

IF ~~ FHFFT425_explain
SAY @125
+ ~CheckStatGT(Player1,13,WIS)~ + @126 + FHFFT425_awesomewis
++ @127 + FHFFT425_take
++ @128 + FHFFT425_take
++ @129 + FHFFT425_take
END

IF ~~ FHFFT425_awesomewis
SAY @130
IF ~~ + FHFFT425_take
END

IF ~~ FHFFT425_take
SAY @131
= @132
IF ~~ EXIT
END

//Friendtalk 5: In Which Faren Is Pleased He's No Longer A Layabout

IF ~Global("FHFToBFriendTalk","GLOBAL",10)~ FHFFT525
SAY @718
++ @719 DO ~IncrementGlobal("FHFToBFriendTalk","GLOBAL",1)~ + FHFFT525_let
++ @720 DO ~IncrementGlobal("FHFToBFriendTalk","GLOBAL",1)~ + FHFFT525_thought
++ @721 DO ~IncrementGlobal("FHFToBFriendTalk","GLOBAL",1)~ + FHFFT525_exciting
++ @722 DO ~IncrementGlobal("FHFToBFriendTalk","GLOBAL",1)~ + FHFFT525_days
END

IF ~~ FHFFT525_let
SAY @723
IF ~~ + FHFFT525_days
END

IF ~~ FHFFT525_thought
SAY @724
IF ~~ + FHFFT525_days
END

IF ~~ FHFFT525_exciting
SAY @725
IF ~~ + FHFFT525_days
END

IF ~~ FHFFT525_days
SAY @726
= @727
++ @728 + FHFFT525_bad
++ @729 + FHFFT525_spend
++ @730 + FHFFT525_mind
END

IF ~~ FHFFT525_bad
SAY @731
IF ~~ + FHFFT525_influence
END

IF ~~ FHFFT525_spend
SAY @732
= @733
IF ~~ + FHFFT525_influence
END

IF ~~ FHFFT525_mind
SAY @734
IF ~~ + FHFFT525_influence
END

IF ~~ FHFFT525_influence
SAY @735
++ @736 + FHFFT525_provide
++ @737 + FHFFT525_respons
++ @738 + FHFFT525_happens
++ @739 + FHFFT525_regrets
END

IF ~~ FHFFT525_provide
SAY @740
IF ~~ + FHFFT525_company
END

IF ~~ FHFFT525_respons
SAY @741
IF ~~ + FHFFT525_company
END

IF ~~ FHFFT525_happens
SAY @742
IF ~~ + FHFFT525_company
END

IF ~~ FHFFT525_regrets
SAY @743
IF ~~ + FHFFT525_company
END

//Lovetalk 1: In Which Faren Is In The Angry Dome

IF ~Global("FHFToBLoveTalk","GLOBAL",2)~ FHFLT125
SAY @133
++ @134 DO ~IncrementGlobal("FHFToBLoveTalk","GLOBAL",1) RealSetGlobalTimer("FHFToBTalkTimer","GLOBAL",3800)~ + FHFLT125_next
++ @135 DO ~IncrementGlobal("FHFToBLoveTalk","GLOBAL",1) RealSetGlobalTimer("FHFToBTalkTimer","GLOBAL",3800)~ + FHFLT125_next
++ @136 DO ~IncrementGlobal("FHFToBLoveTalk","GLOBAL",1) RealSetGlobalTimer("FHFToBTalkTimer","GLOBAL",3800)~ + FHFLT125_next
END

IF ~~ FHFLT125_next
SAY @137
++ @138 + FHFLT125_before
++ @139 + FHFLT125_tiger
++ @140 + FHFLT125_angry
++ @141 + FHFLT125_tiger
END

IF ~~ FHFLT125_before
SAY @142
IF ~~ + FHFLT125_tiger
END

IF ~~ FHFLT125_angry
SAY @143
IF ~~ + FHFLT125_tiger
END

IF ~~ FHFLT125_tiger
SAY @144
++ @145 + FHFLT125_problem
++ @146 + FHFLT125_protect
++ @147 + FHFLT125_want
++ @148 + FHFLT125_want
END

IF ~~ FHFLT125_problem
SAY @149
++ @150 + FHFLT125_mess
++ @151 + FHFLT125_letgo
++ @152 + FHFLT125_apologise
END

IF ~~ FHFLT125_protect
SAY @153
++ @154 + FHFLT125_win
++ @155 + FHFLT125_lose
++ @156 + FHFLT125_worried
END

IF ~~ FHFLT125_want
SAY @157
++ @158 + FHFLT125_stop
++ @159 + FHFLT125_protect
++ @160 + FHFLT125_kiss
++ @161 + FHFLT125_shout
END

IF ~~ FHFLT125_mess
SAY @162
= @163
++ @164 + FHFLT125_glad
++ @165 + FHFLT125_about
++ @166 + FHFLT125_say
END

IF ~~ FHFLT125_letgo
SAY @167
IF ~~ + FHFLT125_last
END

IF ~~ FHFLT125_apologise
SAY @168
++ @164 + FHFLT125_glad
++ @166 + FHFLT125_say
END

IF ~~ FHFLT125_lose
SAY @169
IF ~~ EXIT
END

IF ~~ FHFLT125_win
SAY @170
IF ~~ + FHFLT125_last
END

IF ~~ FHFLT125_worried
SAY @171
=
@172
IF ~~ + FHFLT125_last
END

IF ~~ FHFLT125_stop
SAY @173
IF ~~ + FHFLT125_shout
END

IF ~~ FHFLT125_kiss
SAY @174
IF ~~ + FHFLT125_shout
END

IF ~~ FHFLT125_shout
SAY @175
IF ~~ + FHFLT125_last
END

IF ~~ FHFLT125_glad
SAY @176
IF ~~ + FHFLT125_last
END

IF ~~ FHFLT125_about
SAY @177
IF ~~ + FHFLT125_last
END

IF ~~ FHFLT125_say
SAY @178
IF ~~ + FHFLT125_last
END

IF ~~ FHFLT125_last
SAY @179
IF ~~ EXIT
END

//Lovetalk 2: In Which Faren is Not A Fan Of War And What It Does To Charname

IF ~Global("FHFToBLoveTalk","GLOBAL",4)~ FHFLT225
SAY @744
= @745
++ @695 DO ~IncrementGlobal("FHFToBLoveTalk","GLOBAL",1) RealSetGlobalTimer("FHFToBTalkTimer","GLOBAL",3800)~ + FHFLT225_violence
++ @696 DO ~IncrementGlobal("FHFToBLoveTalk","GLOBAL",1) RealSetGlobalTimer("FHFToBTalkTimer","GLOBAL",3800)~ + FHFLT225_over
++ @697 DO ~IncrementGlobal("FHFToBLoveTalk","GLOBAL",1) RealSetGlobalTimer("FHFToBTalkTimer","GLOBAL",3800)~ + FHFLT225_peace
++ @698 DO ~IncrementGlobal("FHFToBLoveTalk","GLOBAL",1) RealSetGlobalTimer("FHFToBTalkTimer","GLOBAL",3800)~ + FHFLT225_adv
END

IF ~~ FHFLT225_violence
SAY @746
+ ~NumInPartyGT(2)~ + @700 + FHFLT225_count1
+ ~!NumInPartyGT(2)~ + @700 + FHFLT225_count2
++ @701 + FHFLT225_blood
++ @702 + FHFLT225_killed
END

IF ~~ FHFLT225_over
SAY @703
++ @704 + FHFLT225_innocent
++ @705 + FHFLT225_essence
++ @706 + FHFLT225_survive
END

IF ~~ FHFLT225_peace
SAY @707
COPY_TRANS FHF25J FHFLT225_violence
END

IF ~~ FHFLT225_adv
SAY @747
COPY_TRANS FHF25J FHFLT225_over
END

IF ~~ FHFLT225_count1
SAY @748
IF ~~ + FHFLT225_worry
END

IF ~~ FHFLT225_count2
SAY @749
IF ~~ + FHFLT225_worry
END

IF ~~ FHFLT225_blood
SAY @711
IF ~~ + FHFLT225_worry
END

IF ~~ FHFLT225_killed
SAY @750
IF ~~ + FHFLT225_worry
END

IF ~~ FHFLT225_innocent
SAY @713
IF ~~ + FHFLT225_worry
END

IF ~~ FHFLT225_essence
SAY @714
IF ~~ + FHFLT225_worry
END

IF ~~ FHFLT225_survive
SAY @715
IF ~~ + FHFLT225_worry
END

IF ~~ FHFLT225_worry
SAY @751
++ @752 + FHFLT225_allright
++ @753 + FHFLT225_allright
++ @754 + FHFLT225_faren
++ @755 + FHFLT225_win
END

IF ~~ FHFLT225_allright
SAY @756
IF ~~ + FHFLT225_sorry
END

IF ~~ FHFLT225_faren
SAY @757
IF ~~ + FHFLT225_sorry
END

IF ~~ FHFLT225_win
SAY @758
IF ~~ + FHFLT225_sorry
END

IF ~~ FHFLT225_sorry
SAY @759
IF ~~ EXIT
END


//Lovetalk 3: In Which Faren Tells A Story

IF ~Global("FHFToBLoveTalk","GLOBAL",6)~ FHFLT325
SAY @78
++ @208 DO ~IncrementGlobal("FHFToBLoveTalk","GLOBAL",1) RealSetGlobalTimer("FHFToBTalkTimer","GLOBAL",3800)~ + FHFLT325_appear
++ @209 DO ~IncrementGlobal("FHFToBLoveTalk","GLOBAL",1) RealSetGlobalTimer("FHFToBTalkTimer","GLOBAL",3800)~ + FHFLT325_dream
++ @207 DO ~IncrementGlobal("FHFToBLoveTalk","GLOBAL",1) RealSetGlobalTimer("FHFToBTalkTimer","GLOBAL",3800)~ + FHFLT325_busy
END

IF ~~ FHFLT325_busy
SAY @82
IF ~~ EXIT
END

IF ~~ FHFLT325_appear
SAY @210
IF ~~ + FHFLT325_dream
END

IF ~~ FHFLT325_cool
SAY @84
IF ~~ + FHFLT325_wow
END

IF ~~ FHFLT325_sexy
SAY @85
IF ~~ + FHFLT325_wow
END

IF ~~ FHFLT325_recognise
SAY @86
IF ~~ + FHFLT325_wow
END

IF ~~ FHFLT325_wow
SAY @87
++ @88 + FHFLT325_bedtime
++ @89 + FHFLT325_issues
+ ~CheckStatGT(Player1,13,WIS)~ + @211 + FHFLT325_wis
+ ~CheckStatLT(Player1,14,WIS)~ + @212 + FHFLT325_wis
END

IF ~~ FHFLT325_bedtime
SAY @213
IF ~~ + FHFLT325_last
END

IF ~~ FHFLT325_last
SAY @93
++ @214 + FHFLT325_distract
++ @215 + FHFLT325_stupid
++ @95 + FHFLT325_friv
++ @216 + FHFLT325_quiet
END

IF ~~ FHFLT325_distract
SAY @97
IF ~~ EXIT
END

IF ~~ FHFLT325_stupid
SAY @217
IF ~~ EXIT
END

IF ~~ FHFLT325_friv
SAY @218
IF ~~ EXIT
END

IF ~~ FHFLT325_quiet
SAY @100
IF ~~ EXIT
END

IF ~~ FHFLT325_issues
SAY @219
IF ~~ + FHFLT325_last
END

IF ~~ FHFLT325_wis
SAY @102
IF ~~ + FHFLT325_last
END


//Lovetalk 4: In Which Faren Has A Minor Crisis Of Confidence

IF ~Global("FHFToBLoveTalk","GLOBAL",8)~ FHFLT425
SAY @103
++ @104 DO ~IncrementGlobal("FHFToBLoveTalk","GLOBAL",1) RealSetGlobalTimer("FHFToBTalkTimer","GLOBAL",3800)~ + FHFLT425_lame
++ @105 DO ~IncrementGlobal("FHFToBLoveTalk","GLOBAL",1) RealSetGlobalTimer("FHFToBTalkTimer","GLOBAL",3800)~ + FHFLT425_lazy
++ @180 DO ~IncrementGlobal("FHFToBLoveTalk","GLOBAL",1) RealSetGlobalTimer("FHFToBTalkTimer","GLOBAL",3800)~ + FHFLT425_ass
++ @181 DO ~IncrementGlobal("FHFToBLoveTalk","GLOBAL",1) RealSetGlobalTimer("FHFToBTalkTimer","GLOBAL",3800)~ + FHFLT425_consort
++ @106 DO ~IncrementGlobal("FHFToBLoveTalk","GLOBAL",1) RealSetGlobalTimer("FHFToBTalkTimer","GLOBAL",3800)~ + FHFLT425_prowess
END

IF ~~ FHFLT425_lame
SAY @182
++ @183 + FHFLT425_jealous
++ @184 + FHFLT425_talk
++ @113 + FHFLT425_charfamous
++ @111 + FHFLT425_chin
++ @109 + FHFLT425_care
END

IF ~~ FHFLT425_lazy
SAY @114
++ @115 + FHFLT425_pun
++ @185 + FHFLT425_talk
++ @186 + FHFLT425_kidding
++ @111 + FHFLT425_chin
++ @109 + FHFLT425_care
END

IF ~~ FHFLT425_ass
SAY @187
++ @109 + FHFLT425_care
++ @185 + FHFLT425_talk
++ @110 + FHFLT425_charfamous
++ @111 + FHFLT425_chin
END

IF ~~ FHFLT425_consort
SAY @188
++ @109 + FHFLT425_care
++ @185 + FHFLT425_talk
++ @110 + FHFLT425_charfamous
++ @111 + FHFLT425_chin
END

IF ~~ FHFLT425_prowess
SAY @116
++ @109 + FHFLT425_care
++ @185 + FHFLT425_talk
++ @110 + FHFLT425_charfamous
++ @111 + FHFLT425_chin
END

IF ~~ FHFLT425_care
SAY @117
IF ~~ + FHFLT425_explain
END

IF ~~ FHFLT425_talk
SAY @118
IF ~~ + FHFLT425_explain
END

IF ~~ FHFLT425_charfamous
SAY @119
IF ~~ + FHFLT425_explain
END

IF ~~ FHFLT425_chin
SAY @120
IF ~~ + FHFLT425_explain
END

IF ~~ FHFLT425_kidding
SAY @121
IF ~~ + FHFLT425_explain
END

IF ~~ FHFLT425_pun
SAY @122
= @189
IF ~~ + FHFLT425_explain
END

IF ~~ FHFLT425_jealous
SAY @124
IF ~~ + FHFLT425_explain
END

IF ~~ FHFLT425_explain
SAY @190
= @191
+ ~CheckStatGT(Player1,13,WIS)~ + @192 + FHFLT425_awesomewis
++ @128 + FHFLT425_things
++ @193 + FHFLT425_mean
END

IF ~~ FHFLT425_awesomewis
SAY @194
++ @195 + FHFLT425_never
++ @196 + FHFLT425_epic
++ @197 + FHFLT425_pat
++ @198 + FHFLT425_weight
END

IF ~~ FHFLT425_continue
SAY @199
++ @195 + FHFLT425_never
++ @196 + FHFLT425_epic
++ @197 + FHFLT425_pat
++ @198 + FHFLT425_weight
END

IF ~~ FHFLT425_things
SAY @200
++ @195 + FHFLT425_never
++ @196 + FHFLT425_epic
++ @197 + FHFLT425_pat
++ @201 + FHFLT425_weight
END

IF ~~ FHFLT425_mean
SAY @202
IF ~~ EXIT
END

IF ~~ FHFLT425_never
SAY @203
IF ~~ EXIT
END

IF ~~ FHFLT425_epic
SAY @204
IF ~~ EXIT
END

IF ~~ FHFLT425_pat
SAY @205
IF ~~ EXIT
END

IF ~~ FHFLT425_weight
SAY @206
IF ~~ EXIT
END

//Lovetalk 5: In Which Faren Wonders About The Future

IF ~Global("FHFToBLoveTalk","GLOBAL",10)~ FHFLT525
SAY @220
++ @221 DO ~IncrementGlobal("FHFToBLoveTalk","GLOBAL",1) RealSetGlobalTimer("FHFToBTalkTimer","GLOBAL",3800)~ + FHFLT525_premature
+ ~OR(2) Class(Player1,PALADIN_ALL) Class(Player1,CLERIC_ALL)~ + @222 DO ~IncrementGlobal("FHFToBLoveTalk","GLOBAL",1) RealSetGlobalTimer("FHFToBTalkTimer","GLOBAL",3800)~ + FHFLT525_holy
+ ~OR(2) Class(Player1,DRUID_ALL) Class(Player1,RANGER_ALL)~ + @223 DO ~IncrementGlobal("FHFToBLoveTalk","GLOBAL",1) RealSetGlobalTimer("FHFToBTalkTimer","GLOBAL",3800)~ + FHFLT525_holy
++ @224 DO ~IncrementGlobal("FHFToBLoveTalk","GLOBAL",1) RealSetGlobalTimer("FHFToBTalkTimer","GLOBAL",3800)~ + FHFLT525_adventure
++ @225 DO ~IncrementGlobal("FHFToBLoveTalk","GLOBAL",1) RealSetGlobalTimer("FHFToBTalkTimer","GLOBAL",3800)~ + FHFLT525_wait
++ @226 DO ~IncrementGlobal("FHFToBLoveTalk","GLOBAL",1) RealSetGlobalTimer("FHFToBTalkTimer","GLOBAL",3800)~ + FHFLT525_family
END

IF ~~ FHFLT525_premature
SAY @227
IF ~~ + FHFLT525_next
END

IF ~~ FHFLT525_adventure
SAY @228
IF ~~ + FHFLT525_next
END

IF ~~ FHFLT525_family
SAY @229
IF ~~ + FHFLT525_next
END

IF ~~ FHFLT525_wait
SAY @230
IF ~~ + FHFLT525_next
END

IF ~~ FHFLT525_holy
SAY @231
IF ~~ + FHFLT525_next
END

IF ~~ FHFLT525_next
SAY @232
+ ~ReputationGT(Player1,16)~ + @233 + FHFLT525_good
+ ~ReputationLT(Player1,10)~ + @234 + FHFLT525_evil
+ ~ReputationGT(Player1,9) ReputationLT(Player1,17)~ + @760 + FHFLT525_neutral
++ @235 + FHFLT525_together
++ @236 + FHFLT525_independent
++ @237 + FHFLT525_chef
++ @238 + FHFLT525_busy
++ @239 + FHFLT525_react
END

IF ~~ FHFLT525_busy
SAY @240
IF ~~ EXIT
END

IF ~~ FHFLT525_independent
SAY @241
IF ~~ + FHFLT525_next2
END

IF ~~ FHFLT525_good
SAY @242
IF ~~ + FHFLT525_next2
END

IF ~~ FHFLT525_evil
SAY @243
IF ~~ + FHFLT525_next2
END

IF ~~ FHFLT525_neutral
SAY @761
IF ~~ + FHFLT525_next2
END

IF ~~ FHFLT525_react
SAY @244
IF ~~ + FHFLT525_next2
END

IF ~~ FHFLT525_together
SAY @245
IF ~~ + FHFLT525_next2
END

IF ~~ FHFLT525_chef
SAY @246
IF ~~ + FHFLT525_next2
END

IF ~~ FHFLT525_next2
SAY @247
++ @248 + FHFLT525_inspire
++ @249 + FHFLT525_muddle
++ @250 + FHFLT525_what
END

IF ~~ FHFLT525_inspire
SAY @251
IF ~~ + FHFLT525_what
END

IF ~~ FHFLT525_muddle
SAY @252
IF ~~ + FHFLT525_what
END

IF ~~ FHFLT525_what
SAY @253
++ @254 + FHFLT525_sort
++ @255 + FHFLT525_well
++ @256 + FHFLT525_sort
++ @257 + FHFLT525_should
END

IF ~~ FHFLT525_sort
SAY @258
IF ~~ + FHFLT525_horns
END

IF ~~ FHFLT525_well
SAY @259
IF ~~ + FHFLT525_horns
END

IF ~~ FHFLT525_should
SAY @260
IF ~~ + FHFLT525_horns
END

IF ~~ FHFLT525_horns
SAY @261
IF ~~ EXIT
END

//Lovetalk 6: In Which Faren Reminisces About Life Before You

IF ~Global("FHFToBLoveTalk","GLOBAL",12)~ FHFLT625
SAY @762
++ @719 DO ~IncrementGlobal("FHFToBLoveTalk","GLOBAL",1)~ + FHFLT625_let
++ @720 DO ~IncrementGlobal("FHFToBLoveTalk","GLOBAL",1)~ + FHFLT625_thought
++ @721 DO ~IncrementGlobal("FHFToBLoveTalk","GLOBAL",1)~ + FHFLT625_exciting
++ @722 DO ~IncrementGlobal("FHFToBLoveTalk","GLOBAL",1)~ + FHFLT625_days
END

IF ~~ FHFLT625_let
SAY @723
IF ~~ + FHFLT625_days
END

IF ~~ FHFLT625_thought
SAY @724
IF ~~ + FHFLT625_days
END

IF ~~ FHFLT625_exciting
SAY @725
IF ~~ + FHFLT625_days
END

IF ~~ FHFLT625_days
SAY @763
= @727
++ @728 + FHFLT625_bad
++ @729 + FHFLT625_spend
++ @730 + FHFLT625_mind
END

IF ~~ FHFLT625_bad
SAY @731
IF ~~ + FHFLT625_influence
END

IF ~~ FHFLT625_spend
SAY @732
= @733
IF ~~ + FHFLT625_influence
END

IF ~~ FHFLT625_mind
SAY @734
IF ~~ + FHFLT625_influence
END

IF ~~ FHFLT625_influence
SAY @764
= @765
++ @766 + FHFLT625_provide
++ @767 + FHFLT625_respons
++ @768 + FHFLT625_happens
++ @739 + FHFLT625_regrets
END

IF ~~ FHFLT625_provide
SAY @769
IF ~~ + FHFLT625_company
END

IF ~~ FHFLT625_respons
SAY @770
IF ~~ + FHFLT625_company
END

IF ~~ FHFLT625_happens
SAY @771
IF ~~ + FHFLT625_company
END

IF ~~ FHFLT625_regrets
SAY @772
IF ~~ + FHFLT625_company
END

IF ~~ FHFLT625_company
SAY @773
IF ~~ EXIT
END


//Final Lovetalk: Final Lovetalk Before The Finale

IF ~Global("FHFFinalTalk","GLOBAL",1)~ FHFLTFin25
SAY @262
++ @263 DO ~SetGlobal("FHFFinalTalk","GLOBAL",2)~ + FHFLTFin25_pull
++ @264 DO ~SetGlobal("FHFFinalTalk","GLOBAL",2)~ + FHFLTFin25_know
++ @265 DO ~SetGlobal("FHFFinalTalk","GLOBAL",2)~ + FHFLTFin25_melo
++ @266 DO ~SetGlobal("FHFFinalTalk","GLOBAL",2)~ + FHFLTFin25_ready
END

IF ~~ FHFLTFin25_pull
SAY @267
IF ~~ + FHFLTFin25_journey
END

IF ~~ FHFLTFin25_know
SAY @268
IF ~~ + FHFLTFin25_journey
END

IF ~~ FHFLTFin25_melo
SAY @269
IF ~~ + FHFLTFin25_journey
END

IF ~~ FHFLTFin25_ready
SAY @270
IF ~~ + FHFLTFin25_journey
END

IF ~~ FHFLTFin25_journey
SAY @271
= @272
++ @273 + FHFLTFin25_destiny
++ @274 + FHFLTFin25_love
++ @275 + FHFLTFin25_back
END

IF ~~ FHFLTFin25_destiny
SAY @276
IF ~~ + FHFLTFin25_hug
END

IF ~~ FHFLTFin25_love
SAY @277
IF ~~ + FHFLTFin25_hug
END

IF ~~ FHFLTFin25_back
SAY @278
IF ~~ + FHFLTFin25_hug
END

IF ~~ FHFLTFin25_hug
SAY @279
IF ~~ EXIT
END

//Dream chains

//Friendtalk

CHAIN FHF25J FHFFT325_dream
@280
= @281
= @282
== FHF25J IF ~InParty("Mazzy")~ THEN @283
== FHF25J IF ~InParty("Jaheira")~ THEN @284
== FHF25J IF ~InParty("Aerie")~ THEN @285
== FHF25J IF ~InParty("Cernd")~ THEN @286
== FHF25J IF ~InParty("Keldorn")~ THEN @287
== FHF25J IF ~InParty("Edwin")~ THEN @288
== FHF25J IF ~InParty("Imoen2")~ THEN @289
== FHF25J IF ~InParty("Jan")~ THEN @290
== FHF25J IF ~InParty("Anomen")~ THEN @291
== FHF25J IF ~InParty("Korgan")~ THEN @292
== FHF25J IF ~InParty("Minsc")~ THEN @293
== FHF25J IF ~InParty("Sarevok")~ THEN @294
== FHF25J IF ~InParty("Valygar")~ THEN @295
== FHF25J IF ~InParty("Haerdalis")~ THEN @296
== FHF25J IF ~InParty("Nalia")~ THEN @297
== FHF25J IF ~InParty("FHLSEB")~ THEN @298
== FHF25J IF ~InParty("FHLAND")~ THEN @299
== FHF25J IF ~InParty("Nath")~ THEN @300
END
++ @301 + FHFFT325_wow
++ @302 + FHFFT325_cool
++ @303 + FHFFT325_wow

//Lovetalk

CHAIN FHF25J FHFLT325_dream
@280
= @304
= @282
== FHF25J IF ~InParty("Mazzy")~ THEN @283
== FHF25J IF ~InParty("Jaheira")~ THEN @284
== FHF25J IF ~InParty("Aerie")~ THEN @285
== FHF25J IF ~InParty("Cernd")~ THEN @286
== FHF25J IF ~InParty("Keldorn")~ THEN @287
== FHF25J IF ~InParty("Edwin")~ THEN @288
== FHF25J IF ~InParty("Imoen2")~ THEN @289
== FHF25J IF ~InParty("Jan")~ THEN @290
== FHF25J IF ~InParty("Anomen")~ THEN @291
== FHF25J IF ~InParty("Korgan")~ THEN @292
== FHF25J IF ~InParty("Minsc")~ THEN @293
== FHF25J IF ~InParty("Sarevok")~ THEN @294
== FHF25J IF ~InParty("Valygar")~ THEN @295
== FHF25J IF ~InParty("Haerdalis")~ THEN @296
== FHF25J IF ~InParty("Nalia")~ THEN @297
== FHF25J IF ~InParty("FHLSEB")~ THEN @298
== FHF25J IF ~InParty("FHLAND")~ THEN @299
== FHF25J IF ~InParty("Nath")~ THEN @300
END
++ @305 + FHFLT325_wow
++ @306 + FHFLT325_recognise
++ @307 + FHFLT325_cool
++ @303 + FHFLT325_wow
++ @308 + FHFLT325_sexy

//FT5 chain

CHAIN FHF25J FHFFT525_company
@774
== KORGA25J IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @775
== MAZZY25J IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @776
== FHF25J @777
EXIT

//Master Wraith

EXTEND_BOTTOM HGWRA01 18
IF ~Global("FHFarenRomanceActive","GLOBAL",2) InParty("FHFRN") See("FHFRN")~ THEN DO ~SetGlobal("FHFLovedOne","GLOBAL",6)~ EXTERN HGWRA01 FHFWraith
END

CHAIN HGWRA01 FHFWraith
@309
== FHF25J @310
EXTERN HGWRA01 24

EXTEND_BOTTOM HGWRA01 24
IF ~Global("FHFarenRomanceActive","GLOBAL",2)~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("FHFCut3")~ EXIT
END

BEGIN FHFLOVE

CHAIN IF ~NumTimesTalkedTo(0)~ THEN FHFLOVE FHFWraith1
@311
== FHF25J  @312
== FHFLOVE @313
== FHF25J  @314
== FHFLOVE @315
== FHF25J  @316
== FHFLOVE @317
END
++ @318 EXTERN HGWRA01 25
++ @319 EXTERN HGWRA01 25
++ @320 EXTERN HGWRA01 25
+ ~CheckStatGT(Player1,16,WIS)~ + @321 EXTERN HGWRA01 25

//Interjections

I_C_T 25SPELL 7 FHF25SPELL
== FHF25J IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@322
== AERIE25J IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID) InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@323
== FHF25J IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID) InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@324
END

I_C_T ABAZIGAL 1 FHFABA
== FHF25J IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@325
== ABAZIGAL IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@326
END

I_C_T AMMAYOR 1 FHFAMMAYOR
== FHF25J IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@327
END

I_C_T AMBAR01 17 FHFAMBAR01
== FHF25J IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@328
END

CHAIN IF WEIGHT #-1 ~InParty("FHFRN")
InMyArea("FHFRN")
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFAmboy","GLOBAL",0)~ THEN AMBOY01 FHFAMBOY01
@329
DO ~SetGlobal("FHFAmboy","GLOBAL",1)~
== FHF25J @330
EXIT

CHAIN IF WEIGHT #-1 ~InParty("FHFRN")
InMyArea("FHFRN")
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFAmCapt","GLOBAL",0)~ THEN AMCAPT01 FHFAMCAPT01
@331
DO ~SetGlobal("FHFAmCapt","GLOBAL",1)~
== FHF25J @332
EXIT

I_C_T SAFE AMCLER01 8 FHFAmCler01
== FHF25J IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@333
== AMCLER01 IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@334
END

I_C_T AMELM01 13 FHFAMELM01
== FHF25J IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@335
END

I_C_T AMFEM02 2 FHFAMFEM02
== FHF25J IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@336
== AMFEM02 @337
END

I_C_T AMLICH01 9 FHFAMLICH01
== FHF25J IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@338
END

I_C_T AMMAJIRA 2 FHFAMMAJIRA
== FHF25J IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@339
== AMMAJIRA IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@340
END

I_C_T AMMERC02 0 FHFAMMERC02
== FHF25J IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@341
END

I_C_T BAZDRA01 0 FHFBAZDRA01
== FHF25J IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@342
END

I_C_T BAZDRA03 13 FHFBAZDRA03
== FHF25J IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@343
END

I_C_T BAZEYE01 12 FHFBAZEYE01
== FHF25J IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@344
END

I_C_T BAZMONK 14 FHFBAZMONK
== FHF25J IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@345
END

EXTEND_BOTTOM FINSOL01 27
IF ~InParty("FHFRN") InMyArea("FHFRN") Global("FHFarenRomanceActive","GLOBAL",2) Global("FHFSolarChoice","GLOBAL",0) !StateCheck("FHFRN",CD_STATE_NOTVALID)~ DO ~SetGlobal("FHFSolarChoice","GLOBAL",1)~ EXTERN FHF25J FHFSolarChoice
END

EXTEND_BOTTOM FINSOL01 29
IF ~InParty("FHFRN") InMyArea("FHFRN") Global("FHFarenRomanceActive","GLOBAL",2) Global("FHFSolarLeave","GLOBAL",0) !StateCheck("FHFRN",CD_STATE_NOTVALID)~ DO ~SetGlobal("FHFSolarLeave","GLOBAL",1)~ EXTERN FHF25J FHFSolarLeave
END

EXTEND_BOTTOM FINSOL01 30
IF ~InParty("FHFRN") InMyArea("FHFRN") Global("FHFarenRomanceActive","GLOBAL",2) Global("FHFSolarLeave","GLOBAL",0) !StateCheck("FHFRN",CD_STATE_NOTVALID)~ DO ~SetGlobal("FHFSolarLeave","GLOBAL",1)~ EXTERN FHF25J FHFSolarLeave
END

EXTEND_BOTTOM FINSOL01 31
IF ~InParty("FHFRN") InMyArea("FHFRN") Global("FHFarenRomanceActive","GLOBAL",2) Global("FHFSolarLeave","GLOBAL",0) !StateCheck("FHFRN",CD_STATE_NOTVALID)~ DO ~SetGlobal("FHFSolarLeave","GLOBAL",1)~ EXTERN FHF25J FHFSolarLeave
END

EXTEND_BOTTOM FINSOL01 32
IF ~InParty("FHFRN") InMyArea("FHFRN") Global("FHFarenRomanceActive","GLOBAL",2) Global("FHFSolarStay","GLOBAL",0) !StateCheck("FHFRN",CD_STATE_NOTVALID)~ DO ~SetGlobal("O#XanSolarStay","GLOBAL",1)~ EXTERN FHF25J FHFSolarStay
END

CHAIN FHF25J FHFSolarChoice
@346
END
++ @347 + FHFSolarChoice_ought
++ @348 + FHFSolarChoice_lose
++ @349 + FHFSolarChoice_sorry

CHAIN FHF25J FHFSolarChoice_ought
@350
END
IF ~~ + FHFSolarChoice_love

CHAIN FHF25J FHFSolarChoice_lose
@351
END
IF ~~ + FHFSolarChoice_love

CHAIN FHF25J FHFSolarChoice_sorry
@352
END
IF ~~ + FHFSolarChoice_love

CHAIN FHF25J FHFSolarChoice_love
@353
= @354
= @355
END
COPY_TRANS FINSOL01 27

CHAIN FHF25J FHFSolarLeave
@356
= @357
END
COPY_TRANS FINSOL01 29

CHAIN FHF25J FHFSolarStay
@358
END
++ @359 + FHFSolarStay_shock
++ @360 + FHFSolarStay_shock
++ @361 + FHFSolarStay_shock

CHAIN FHF25J FHFSolarStay_shock
@362
= @363
END
++ @364 + FHFSolarStay_take
++ @365 + FHFSolarStay_say
++ @366 + FHFSolarStay_change

CHAIN FHF25J FHFSolarStay_take
@367
END
IF ~~ + FHFSolarStay_love

CHAIN FHF25J FHFSolarStay_say
@368
END
IF ~~ + FHFSolarStay_love

CHAIN FHF25J FHFSolarStay_change
@369
END
IF ~~ + FHFSolarStay_love

CHAIN FHF25J FHFSolarStay_love
@370
COPY_TRANS FINSOL01 32

//Visiting Watcher's Keep in ToB

I_C_T GORAPP1 10 FHFGORAPP1
== FHF25J IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID) GlobalGT("Chapter","GLOBAL",7)~ THEN
@371
END

I_C_T GORAPR 2 FHFGORAPR
== FHF25J IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID) GlobalGT("Chapter","GLOBAL",7)~ THEN
@372
== GORAPR IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID) GlobalGT("Chapter","GLOBAL",7)~ THEN
@373
END

I_C_T GORCAMB 17 FHFGORCAMB
== FHF25J IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID) GlobalGT("Chapter","GLOBAL",7)~ THEN
@374
END

I_C_T GORCAR 7 FHFGORCAR
== FHF25J IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID) GlobalGT("Chapter","GLOBAL",7)~ THEN
@375
== GORCAR IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID) GlobalGT("Chapter","GLOBAL",7)~ THEN
@376
END

I_C_T GORIMP01 7 FHFGORIMP01
== FHF25J IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID) GlobalGT("Chapter","GLOBAL",7)~ THEN
@377
END

I_C_T GORSUC01 6 FHFGORSUC01
== FHF25J IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID) OR(2) Global("FHFarenRomanceActive","GLOBAL",1) Global("FHFarenRomanceActive","GLOBAL",2) GlobalGT("Chapter","GLOBAL",7)~ THEN
@378
END

//Visiting Watcher's Keep in SoA

I_C_T GORAPP1 10 FHFGORAPP1
== FHFRNJ IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID) GlobalLT("Chapter","GLOBAL",8)~ THEN
@371
END

I_C_T GORAPR 2 FHFGORAPR
== FHFRNJ IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID) GlobalLT("Chapter","GLOBAL",8)~ THEN
@372
== GORAPR IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID) GlobalLT("Chapter","GLOBAL",8)~ THEN
@373
END

I_C_T GORCAMB 17 FHFGORCAMB
== FHFRNJ IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID) GlobalLT("Chapter","GLOBAL",8)~ THEN
@374
END

I_C_T GORCAR 7 FHFGORCAR
== FHFRNJ IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID) GlobalLT("Chapter","GLOBAL",8)~ THEN
@375
== GORCAR IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID) GlobalLT("Chapter","GLOBAL",8)~ THEN
@376
END

I_C_T GORIMP01 7 FHFGORIMP01
== FHFRNJ IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID) GlobalLT("Chapter","GLOBAL",8)~ THEN
@377
END

I_C_T GORSUC01 6 FHFGORSUC01
== FHFRNJ IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID) OR(2) Global("FHFarenRomanceActive","GLOBAL",1) Global("FHFarenRomanceActive","GLOBAL",2) GlobalLT("Chapter","GLOBAL",8)~ THEN
@378
END

I_C_T HGNYA01 13 FHFHGNYA01
== FHF25J IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@379
END

I_C_T HGNYA01 29 FHFNYA01b
== FHF25J IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@380
END

I_C_T ILLASERA 7 FHFILLASERA
== FHF25J IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@381
END

I_C_T MARLOWE 34 FHFMARLOWE
== FHF25J IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@382
END

I_C_T SARBHA02 1 FHFSARBHA02
== FHF25J IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@383
END

I_C_T SARBHA03 8 FHFSARBHA03
== FHF25J IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@384
END

I_C_T SARBOY01 2 FHFSARBOY1
== FHF25J IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@385
END

I_C_T SARBUL06 2 FHFSARBUL06
== FHF25J IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@386
END

I_C_T IMOEN25J 17 FHFSARMEL01a
== FHF25J IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@387
== IMOEN25J IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@388
== FHF25J IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@389
END

I_C_T HAERD25J 0 FHFSARMEL01b
== FHF25J IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@390
== HAERD25J IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@391
END

I_C_T SARVIE01 6 FHFSARVIE01
== FHF25J IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@392
END

EXTEND_BOTTOM SARVOLO 9 #2
+ ~InParty("FHFRN") InMyArea("FHFRN") !Global("FHFarenRomanceActive","GLOBAL",2)~ + @393 + FHFVoloNoRom
+ ~InParty("FHFRN") InMyArea("FHFRN") Global("FHFarenRomanceActive","GLOBAL",2)~ + @393 + FHFVoloRom
END

CHAIN SARVOLO FHFVoloNoRom
@394
== FHF25J @395
EXTERN SARVOLO 9

CHAIN SARVOLO FHFVoloRom
@396
== FHF25J @397
== SARVOLO @398
EXTERN SARVOLO 9

//Nadiyya Reaction

CHAIN IF ~Global("FHFNadiyyaReact","GLOBAL",1)~ THEN FHF25J FHFNadiyyaReact
@778
= @779
== JAHEI25J IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @780
== IMOEN25J IF ~InParty("Imoen2") InMyArea("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @781
== FHF25J @782
== AERIE25J IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @783
== ANOME25J IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @784
== KELDO25J IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @785
== VICON25J IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @786
== FHF25J @787
END
++ @788 DO ~SetGlobal("FHFNadiyyaReact","GLOBAL",2)~ + FHFNadiyyaReact_ring
++ @789 DO ~SetGlobal("FHFNadiyyaReact","GLOBAL",2)~ + FHFNadiyyaReact_notice
++ @790 DO ~SetGlobal("FHFNadiyyaReact","GLOBAL",2)~ + FHFNadiyyaReact_dare

CHAIN FHF25J FHFNadiyyaReact_ring
@791
END FHF25J FHFNadiyyaReact_sent

CHAIN FHF25J FHFNadiyyaReact_notice
@792
END FHF25J FHFNadiyyaReact_sent

CHAIN FHF25J FHFNadiyyaReact_dare
@793
END FHF25J FHFNadiyyaReact_sent

CHAIN FHF25J FHFNadiyyaReact_sent
@794
END
++ @795 + FHFNadiyyaReact_yes
++ @796 + FHFNadiyyaReact_yes
++ @797 + FHFNadiyyaReact_no

CHAIN FHF25J FHFNadiyyaReact_yes
@798
EXIT

CHAIN FHF25J FHFNadiyyaReact_no
@799
EXIT

//Speaking to Nadiyya after thievery tuition

CHAIN IF WEIGHT #-1 ~Global("FHFNadThieving","GLOBAL",1)~ THEN FHF25J FHFNadThieving
@800
DO ~SetGlobal("FHFNadThieving","GLOBAL",2)~
== FHFNA25 @801
== FHF25J @802
EXIT

//Nadiyya at the Temple

CHAIN IF WEIGHT #-1 ~Global("FHFNadiyya","GLOBAL",5) Global("FHFNadTemple","GLOBAL",2)~ THEN FHF25J FHFNadTemple
@803
DO ~SetGlobal("FHFNadTemple","GLOBAL",3)~
== FHFNA25 @804
== AMCLER02 @805
== FHFNA25 @806
== AMCLER02 @807
== FHFNA25 @808
END
++ @809 EXTERN AMCLER02 FHFNadTemple_lenient
++ @810 EXTERN AMCLER02 FHFNadTemple_comp
++ @811 EXTERN AMCLER02 FHFNadTemple_sev

CHAIN AMCLER02 FHFNadTemple_lenient
@812
END FHFNA25 FHFNadTemple_sigh

CHAIN AMCLER02 FHFNadTemple_comp
@813
= @814
END FHFNA25 FHFNadTemple_sigh

CHAIN AMCLER02 FHFNadTemple_sev
@815
END FHFNA25 FHFNadTemple_sigh

CHAIN FHFNA25 FHFNadTemple_sigh
@816
EXIT

//Nadiyya Follow up

CHAIN IF ~Global("FHFNadiyyaFollowup","GLOBAL",1)~ THEN FHF25J FHFNadiyyaFollowUp
@817
= @818
= @819
== JAHEI25J IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @820
== FHF25J @821
DO ~SetGlobal("FHFNadiyyaFollowup","GLOBAL",2)~
EXIT

//Faren-initiated flirts

CHAIN IF ~Global("FHFFlirtsDisabled","GLOBAL",0)
Global("FHFarenRomanceActive","GLOBAL",2)
Global("FHFStartFlirtTob","GLOBAL",1)~ THEN FHF25J FHFFlirtMenuTob
@399
END
IF ~Global("FHFFlirtCounterTob","GLOBAL",1)~ DO ~SetGlobal("FHFStartFlirtTob","GLOBAL",0) IncrementGlobal("FHFFlirtCounterTob","GLOBAL",1) RealSetGlobalTimer("FHFFlirtTimertob","GLOBAL",1500)~ + FHFFlirtMenuTob_1
IF ~Global("FHFFlirtCounterTob","GLOBAL",2)~ DO ~SetGlobal("FHFStartFlirtTob","GLOBAL",0) IncrementGlobal("FHFFlirtCounterTob","GLOBAL",1) RealSetGlobalTimer("FHFFlirtTimertob","GLOBAL",1500)~ + FHFFlirtMenuTob_2
IF ~Global("FHFFlirtCounterTob","GLOBAL",3)~ DO ~SetGlobal("FHFStartFlirtTob","GLOBAL",0) IncrementGlobal("FHFFlirtCounterTob","GLOBAL",1) RealSetGlobalTimer("FHFFlirtTimertob","GLOBAL",1500)~ + FHFFlirtMenuTob_3
IF ~Global("FHFFlirtCounterTob","GLOBAL",4)~ DO ~SetGlobal("FHFStartFlirtTob","GLOBAL",0) IncrementGlobal("FHFFlirtCounterTob","GLOBAL",1) RealSetGlobalTimer("FHFFlirtTimertob","GLOBAL",1500)~ + FHFFlirtMenuTob_4
IF ~Global("FHFFlirtCounterTob","GLOBAL",5)~ DO ~SetGlobal("FHFStartFlirtTob","GLOBAL",0) IncrementGlobal("FHFFlirtCounterTob","GLOBAL",1) RealSetGlobalTimer("FHFFlirtTimertob","GLOBAL",1500)~ + FHFFlirtMenuTob_5
IF ~Global("FHFFlirtCounterTob","GLOBAL",6) Gender(Player1,FEMALE)~ DO ~SetGlobal("FHFStartFlirtTob","GLOBAL",0) IncrementGlobal("FHFFlirtCounterTob","GLOBAL",1) RealSetGlobalTimer("FHFFlirtTimertob","GLOBAL",1500)~ + FHFFlirtMenuTob_6F
IF ~Global("FHFFlirtCounterTob","GLOBAL",6) Gender(Player1,MALE)~ DO ~SetGlobal("FHFStartFlirtTob","GLOBAL",0) IncrementGlobal("FHFFlirtCounterTob","GLOBAL",1) RealSetGlobalTimer("FHFFlirtTimertob","GLOBAL",1500)~ + FHFFlirtMenuTob_6M
IF ~Global("FHFFlirtCounterTob","GLOBAL",7)~ DO ~SetGlobal("FHFStartFlirtTob","GLOBAL",0) IncrementGlobal("FHFFlirtCounterTob","GLOBAL",1) RealSetGlobalTimer("FHFFlirtTimertob","GLOBAL",1500)~ + FHFFlirtMenuTob_7
IF ~Global("FHFFlirtCounterTob","GLOBAL",8)~ DO ~SetGlobal("FHFStartFlirtTob","GLOBAL",0) IncrementGlobal("FHFFlirtCounterTob","GLOBAL",1) RealSetGlobalTimer("FHFFlirtTimertob","GLOBAL",1500)~ + FHFFlirtMenuTob_8
IF ~Global("FHFFlirtCounterTob","GLOBAL",9)~ DO ~SetGlobal("FHFStartFlirtTob","GLOBAL",0) IncrementGlobal("FHFFlirtCounterTob","GLOBAL",1) RealSetGlobalTimer("FHFFlirtTimertob","GLOBAL",1500)~ + FHFFlirtMenuTob_9
IF ~Global("FHFFlirtCounterTob","GLOBAL",10)~ DO ~SetGlobal("FHFStartFlirtTob","GLOBAL",0) IncrementGlobal("FHFFlirtCounterTob","GLOBAL",1) RealSetGlobalTimer("FHFFlirtTimertob","GLOBAL",1500)~ + FHFFlirtMenuTob_10
IF ~Global("FHFFlirtCounterTob","GLOBAL",11)~ DO ~SetGlobal("FHFStartFlirtTob","GLOBAL",0) IncrementGlobal("FHFFlirtCounterTob","GLOBAL",1) RealSetGlobalTimer("FHFFlirtTimertob","GLOBAL",1500)~ + FHFFlirtMenuTob_11
IF ~Global("FHFFlirtCounterTob","GLOBAL",12)~ DO ~SetGlobal("FHFStartFlirtTob","GLOBAL",2) IncrementGlobal("FHFFlirtCounterTob","GLOBAL",1)~ + FHFFlirtMenuTob_12

CHAIN FHF25J FHFFlirtMenuTob_1
@400
EXIT

CHAIN FHF25J FHFFlirtMenuTob_2
@401
EXIT

CHAIN FHF25J FHFFlirtMenuTob_3
@402
EXIT

CHAIN FHF25J FHFFlirtMenuTob_4
@403
EXIT

CHAIN FHF25J FHFFlirtMenuTob_5
@404
EXIT

CHAIN FHF25J FHFFlirtMenuTob_6F
@405
EXIT

CHAIN FHF25J FHFFlirtMenuTob_6M
@406
EXIT

CHAIN FHF25J FHFFlirtMenuTob_7
@407
EXIT

CHAIN FHF25J FHFFlirtMenuTob_8
@408
EXIT

CHAIN FHF25J FHFFlirtMenuTob_9
@409
=
@410
EXIT

CHAIN FHF25J FHFFlirtMenuTob_10
@411
EXIT

CHAIN FHF25J FHFFlirtMenuTob_11
@412
= @413
EXIT

CHAIN FHF25J FHFFlirtMenuTob_12
@414
EXIT

//Player-initiated dialogue

//Romantic player-initiated dialogue

CHAIN IF
~IsGabber(Player1) CombatCounter(0) Global("FHFarenRomanceActive","GLOBAL",2)~ THEN FHF25J FHFRomtob
@415
END
+ ~RandomNum(3,1)~ + @416 + FHFRomtob_decision1
+ ~RandomNum(3,2)~ + @416 + FHFRomtob_decision2
+ ~RandomNum(3,3)~ + @416 + FHFRomtob_decision3
+ ~RandomNum(3,1)~ + @417 + FHFRomtob_need1
+ ~RandomNum(3,2)~ + @417 + FHFRomtob_need2
+ ~RandomNum(3,3)~ + @417 + FHFRomtob_need3
+ ~CheckStatGT("FHFAREN",5,FATIGUE)~ + @418 + FHFRomtob_tired
+ ~RandomNum(4,1)~ + @419 + FHFRomtob_good1
+ ~RandomNum(4,2)~ + @419 + FHFRomtob_good2
+ ~RandomNum(4,3)~ + @419 + FHFRomtob_good3
+ ~RandomNum(4,4)~ + @419 + FHFRomtob_good4
+ ~RandomNum(4,1)~ + @420 + FHFRomtob_think1
+ ~RandomNum(4,2)~ + @420 + FHFRomtob_think2
+ ~RandomNum(4,3)~ + @420 + FHFRomtob_think3
+ ~RandomNum(4,4)~ + @420 + FHFRomtob_think4
+ ~RandomNum(4,1)~ + @421 + FHFRomtob_how1
+ ~RandomNum(4,2)~ + @421 + FHFRomtob_how2
+ ~RandomNum(4,3)~ + @421 + FHFRomtob_how3
+ ~RandomNum(4,4)~ + @421 + FHFRomtob_how4
+ ~RandomNum(4,1)~ + @422 + FHFRomtob_love1
+ ~RandomNum(4,2)~ + @422 + FHFRomtob_love2
+ ~RandomNum(4,3)~ + @422 + FHFRomtob_love3
+ ~RandomNum(4,4)~ + @422 + FHFRomtob_love4
+ ~RandomNum(3,1) Global("FHFSaradushUpset","GLOBAL",1)~ + @423 + FHFRomtob_sara1
+ ~RandomNum(3,2) Global("FHFSaradushUpset","GLOBAL",1)~ + @423 + FHFRomtob_sara2
+ ~RandomNum(3,3) Global("FHFSaradushUpset","GLOBAL",1)~ + @423 + FHFRomtob_sara3
+ ~Global("FHFFlirtsDisabled","GLOBAL",0)~ + @424 + FHFRomtob_flirt
+ ~Global("FHFFlirtsDisabled","GLOBAL",0)~ + @425 + FHFarenFlirtDisable
+ ~Global("FHFFlirtsDisabled","GLOBAL",1)~ + @426 + FHFarenFlirtEnable
++ @427 DO ~SetGlobal("FHFarenRomanceActive","GLOBAL",3)~ + FHFRomtob_break
++ @428 EXIT

CHAIN FHF25J FHFRomtob_flirt
~~
END
+ ~RandomNum(4,1)~ + @430 + FHFRomtob_smile1
+ ~RandomNum(4,2)~ + @430 + FHFRomtob_smile2
+ ~RandomNum(4,3)~ + @430 + FHFRomtob_smile3
+ ~RandomNum(4,4)~ + @430 + FHFRomtob_smile4
+ ~RandomNum(4,1)~ + @431 + FHFRomtob_study1
+ ~RandomNum(4,2)~ + @431 + FHFRomtob_study2
+ ~RandomNum(4,3)~ + @431 + FHFRomtob_study3
+ ~RandomNum(4,4)~ + @431 + FHFRomtob_study4
+ ~RandomNum(4,1)~ + @432 + FHFRomtob_hair1
+ ~RandomNum(4,2)~ + @432 + FHFRomtob_hair2
+ ~RandomNum(4,3)~ + @432 + FHFRomtob_hair3
+ ~RandomNum(4,4)~ + @432 + FHFRomtob_hair4
+ ~RandomNum(4,1)~ + @433 + FHFRomtob_attract1
+ ~RandomNum(4,2)~ + @433 + FHFRomtob_attract2
+ ~RandomNum(4,3)~ + @433 + FHFRomtob_attract3
+ ~RandomNum(4,4)~ + @433 + FHFRomtob_attract4
+ ~RandomNum(4,1)~ + @434 + FHFRomtob_hug1
+ ~RandomNum(4,2)~ + @434 + FHFRomtob_hug2
+ ~RandomNum(4,3)~ + @434 + FHFRomtob_hug3
+ ~RandomNum(4,4)~ + @434 + FHFRomtob_hug4
+ ~RandomNum(4,1)~ + @435 + FHFRomtob_hand1
+ ~RandomNum(4,2)~ + @435 + FHFRomtob_hand2
+ ~RandomNum(4,3)~ + @435 + FHFRomtob_hand3
+ ~RandomNum(4,4)~ + @435 + FHFRomtob_hand4
+ ~RandomNum(4,1)~ + @436 + FHFRomtob_poke1
+ ~RandomNum(4,2)~ + @436 + FHFRomtob_poke2
+ ~RandomNum(4,3)~ + @436 + FHFRomtob_poke3
+ ~RandomNum(4,4)~ + @436 + FHFRomtob_poke4
+ ~Gender(Player1,FEMALE) RandomNum(4,1)~ + @437 + FHFRomtob_cleavage1
+ ~Gender(Player1,FEMALE) RandomNum(4,2)~ + @437 + FHFRomtob_cleavage2
+ ~Gender(Player1,FEMALE) RandomNum(4,3)~ + @437 + FHFRomtob_cleavage3
+ ~Gender(Player1,FEMALE) RandomNum(4,4)~ + @437 + FHFRomtob_cleavage4
+ ~Gender(Player1,MALE) RandomNum(4,1)~ + @438 + FHFRomtob_bend1
+ ~Gender(Player1,MALE) RandomNum(4,2)~ + @438 + FHFRomtob_bend2
+ ~Gender(Player1,MALE) RandomNum(4,3)~ + @438 + FHFRomtob_cleavage2
+ ~Gender(Player1,MALE) RandomNum(4,4)~ + @438 + FHFRomtob_cleavage3
+ ~RandomNum(4,1)~ + @439 + FHFRomtob_wolf1
+ ~RandomNum(4,2)~ + @439 + FHFRomtob_wolf2
+ ~RandomNum(4,3)~ + @439 + FHFRomtob_attract2
+ ~RandomNum(4,4)~ + @439 + FHFRomtob_attract4
+ ~RandomNum(4,1)~ + @440 + FHFRomtob_eyes1
+ ~RandomNum(4,2)~ + @440 + FHFRomtob_eyes2
+ ~RandomNum(4,3)~ + @440 + FHFRomtob_eyes3
+ ~RandomNum(4,4)~ + @440 + FHFRomtob_smile4
+ ~RandomNum(4,1)~ + @441 + FHFRomtob_face1
+ ~RandomNum(4,2)~ + @441 + FHFRomtob_face2
+ ~RandomNum(4,3)~ + @441 + FHFRomtob_face3
+ ~RandomNum(4,4)~ + @441 + FHFRomtob_hair4
+ ~RandomNum(4,1)~ + @442 + FHFRomtob_kiss1
+ ~RandomNum(4,2)~ + @442 + FHFRomtob_kiss2
+ ~RandomNum(4,3)~ + @442 + FHFRomtob_kiss3
+ ~RandomNum(4,4)~ + @442 + FHFRomtob_kiss4
+ ~RandomNum(4,1)~ + @443 + FHFRomtob_blowkiss1
+ ~RandomNum(4,2)~ + @443 + FHFRomtob_blowkiss2
+ ~RandomNum(4,3)~ + @443 + FHFRomtob_blowkiss3
+ ~RandomNum(4,4)~ + @443 + FHFRomtob_blowkiss4
+ ~RandomNum(4,1)~ + @444 + FHFRomtob_chest1
+ ~RandomNum(4,2)~ + @444 + FHFRomtob_chest2
+ ~RandomNum(4,3)~ + @444 + FHFRomtob_chest3
+ ~RandomNum(4,4)~ + @444 + FHFRomtob_chest4
+ ~RandomNum(4,1)~ + @445 + FHFRomtob_thigh1
+ ~RandomNum(4,2)~ + @445 + FHFRomtob_thigh2
+ ~RandomNum(4,3)~ + @445 + FHFRomtob_thigh3
+ ~RandomNum(4,4)~ + @445 + FHFRomtob_thigh4
+ ~RandomNum(3,1) OR (2) AreaCheck("AR5003") AreaCheck("AR5501")~ + @446 + FHFRomtob_innbathe1
+ ~RandomNum(3,2) OR (2) AreaCheck("AR5003") AreaCheck("AR5501")~ + @446 + FHFRomtob_innbathe2
+ ~RandomNum(3,3) OR (2) AreaCheck("AR5003") AreaCheck("AR5501")~ + @446 + FHFRomtob_innbathe3
+ ~RandomNum(3,1) AreaType(FOREST)~ + @446 + FHFRomtob_outbathe1
+ ~RandomNum(3,2) AreaType(FOREST)~ + @446 + FHFRomtob_outbathe2
+ ~RandomNum(3,3) AreaType(FOREST)~ + @446 + FHFRomtob_outbathe3
+ ~RandomNum(4,1)~ + @447 + FHFRomtob_action1
+ ~RandomNum(4,2)~ + @447 + FHFRomtob_action2
+ ~RandomNum(4,3)~ + @447 + FHFRomtob_blowkiss4
+ ~RandomNum(4,4)~ + @447 + FHFRomtob_thigh4
++ @428 EXIT

CHAIN FHF25J FHFarenFlirtDisable
@448
DO ~SetGlobal("FHFFlirtsDisabled","GLOBAL",1)~ EXIT

CHAIN FHF25J FHFarenFlirtEnable
@449
DO ~SetGlobal("FHFFlirtsDisabled","GLOBAL",0)~ EXIT

CHAIN FHF25J FHFRomtob_break
@450
=
@451
EXIT

CHAIN FHF25J FHFRomtob_decision1
@452
EXIT

CHAIN FHF25J FHFRomtob_decision2
@453
EXIT

CHAIN FHF25J FHFRomtob_decision3
@454
EXIT

CHAIN FHF25J FHFRomtob_need1
@455
EXIT

CHAIN FHF25J FHFRomtob_need2
@456
EXIT

CHAIN FHF25J FHFRomtob_need3
@457
EXIT

CHAIN FHF25J FHFRomtob_tired
@458
EXIT

CHAIN FHF25J FHFRomtob_good1
@459
EXIT

CHAIN FHF25J FHFRomtob_good2
@460
EXIT

CHAIN FHF25J FHFRomtob_good3
@461
=
@462
EXIT

CHAIN FHF25J FHFRomtob_good4
@463
EXIT

CHAIN FHF25J FHFRomtob_think1
@464
EXIT

CHAIN FHF25J FHFRomtob_think2
@465
=
@466
EXIT

CHAIN FHF25J FHFRomtob_think3
@467
EXIT

CHAIN FHF25J FHFRomtob_think4
@468
EXIT

CHAIN FHF25J FHFRomtob_how1
@469
EXIT

CHAIN FHF25J FHFRomtob_how2
@470
EXIT

CHAIN FHF25J FHFRomtob_how3
@471
EXIT

CHAIN FHF25J FHFRomtob_how4
@472
EXIT

CHAIN FHF25J FHFRomtob_love1
@473
EXIT

CHAIN FHF25J FHFRomtob_love2
@474
EXIT

CHAIN FHF25J FHFRomtob_love3
@475
EXIT

CHAIN FHF25J FHFRomtob_love4
@476
EXIT

CHAIN FHF25J FHFRomtob_sara1
@477
EXIT

CHAIN FHF25J FHFRomtob_sara2
@478
EXIT

CHAIN FHF25J FHFRomtob_sara3
@479
EXIT

CHAIN FHF25J FHFRomtob_smile1
@480
EXIT

CHAIN FHF25J FHFRomtob_smile2
@481
=
@482
=
@483
EXIT

CHAIN FHF25J FHFRomtob_smile3
@484
EXIT

CHAIN FHF25J FHFRomtob_smile4
@485
EXIT

CHAIN FHF25J FHFRomtob_study1
@486
=
@487
EXIT

CHAIN FHF25J FHFRomtob_study2
@488
=
@489
EXIT

CHAIN FHF25J FHFRomtob_study3
@490
EXIT

CHAIN FHF25J FHFRomtob_study4
@491
=
@492
=
@493
EXIT

CHAIN FHF25J FHFRomtob_hair1
@494
=
@495
EXIT

CHAIN FHF25J FHFRomtob_hair2
@496
EXIT

CHAIN FHF25J FHFRomtob_hair3
@497
EXIT

CHAIN FHF25J FHFRomtob_hair4
@498
EXIT

CHAIN FHF25J FHFRomtob_attract1
@499
EXIT

CHAIN FHF25J FHFRomtob_attract2
@500
EXIT

CHAIN FHF25J FHFRomtob_attract3
@501
=
@502
EXIT

CHAIN FHF25J FHFRomtob_attract4
@503
=
@504
EXIT

CHAIN FHF25J FHFRomtob_hand1
@505
EXIT

CHAIN FHF25J FHFRomtob_hand2
@506
EXIT

CHAIN FHF25J FHFRomtob_hand3
@507
EXIT

CHAIN FHF25J FHFRomtob_hand4
@508
EXIT

CHAIN FHF25J FHFRomtob_poke1
@509
EXIT

CHAIN FHF25J FHFRomtob_poke2
@510
EXIT

CHAIN FHF25J FHFRomtob_poke3
@511
EXIT

CHAIN FHF25J FHFRomtob_poke4
@512
EXIT

CHAIN FHF25J FHFRomtob_hug1
@513
EXIT

CHAIN FHF25J FHFRomtob_hug2
@514
EXIT

CHAIN FHF25J FHFRomtob_hug3
@515
EXIT

CHAIN FHF25J FHFRomtob_hug4
@516
EXIT

CHAIN FHF25J FHFRomtob_cleavage1
@517
=
@518
EXIT

CHAIN FHF25J FHFRomtob_cleavage2
@519
EXIT

CHAIN FHF25J FHFRomtob_cleavage3
@520
EXIT

CHAIN FHF25J FHFRomtob_cleavage4
@521
EXIT

CHAIN FHF25J FHFRomtob_bend1
@522
EXIT

CHAIN FHF25J FHFRomtob_bend2
@523
EXIT

CHAIN FHF25J FHFRomtob_wolf1
@524
=
@525
EXIT

CHAIN FHF25J FHFRomtob_wolf2
@526
EXIT

CHAIN FHF25J FHFRomtob_eyes1
@527
EXIT

CHAIN FHF25J FHFRomtob_eyes2
@528
EXIT

CHAIN FHF25J FHFRomtob_eyes3
@529
=
@530
EXIT

CHAIN FHF25J FHFRomtob_face1
@531
EXIT

CHAIN FHF25J FHFRomtob_face2
@532
EXIT

CHAIN FHF25J FHFRomtob_face3
@533
EXIT

CHAIN FHF25J FHFRomtob_kiss1
@534
EXIT

CHAIN FHF25J FHFRomtob_kiss2
@535
EXIT

CHAIN FHF25J FHFRomtob_kiss3
@536
=
@537
EXIT

CHAIN FHF25J FHFRomtob_kiss4
@538
EXIT

CHAIN FHF25J FHFRomtob_kiss5
@539
EXIT

CHAIN FHF25J FHFRomtob_kiss6
@540
=
@541
EXIT

CHAIN FHF25J FHFRomtob_blowkiss1
@542
=
@543
EXIT

CHAIN FHF25J FHFRomtob_blowkiss2
@544
EXIT

CHAIN FHF25J FHFRomtob_blowkiss3
@545
EXIT

CHAIN FHF25J FHFRomtob_blowkiss4
@546
EXIT

CHAIN FHF25J FHFRomtob_chest1
@547
EXIT

CHAIN FHF25J FHFRomtob_chest2
@548
= @549
EXIT

CHAIN FHF25J FHFRomtob_chest3
@550
EXIT

CHAIN FHF25J FHFRomtob_chest4
@551
= @552
EXIT

CHAIN FHF25J FHFRomtob_thigh1
@553
EXIT

CHAIN FHF25J FHFRomtob_thigh2
@554
EXIT

CHAIN FHF25J FHFRomtob_thigh3
@555
EXIT

CHAIN FHF25J FHFRomtob_thigh4
@556
EXIT

CHAIN FHF25J FHFRomtob_action1
@557
EXIT

CHAIN FHF25J FHFRomtob_action2
@558
EXIT

CHAIN FHF25J FHFRomtob_innbathe1
@559
= @560
= @561
EXIT

CHAIN FHF25J FHFRomtob_innbathe2
@562
= @563
= @564
= @565
EXIT

CHAIN FHF25J FHFRomtob_innbathe3
@566
= @567
= @568
= @569
EXIT

CHAIN FHF25J FHFRomtob_outbathe1
@570
= @571
= @572
EXIT

CHAIN FHF25J FHFRomtob_outbathe2
@573
=
@574
=
@575
=
@576
EXIT

CHAIN FHF25J FHFRomtob_outbathe3
@577
= @578
END
++ @579 + FHFRomtob_bathe1
+ ~CheckStatGT(Player1,15,STR)~ + @580 + FHFRomtob_bathe2
+ ~CheckStatLT(Player1,16,STR)~ + @580 + FHFRomtob_bathe3
++ @581 + FHFRomtob_bathe1
++ @582 + FHFRomtob_bathe4
++ @583 + FHFRomtob_bathe5

CHAIN FHF25J FHFRomtob_bathe1
@584
EXIT

CHAIN FHF25J FHFRomtob_bathe2
@585
= @586
EXIT

CHAIN FHF25J FHFRomtob_bathe3
@587
= @588
EXIT

CHAIN FHF25J FHFRomtob_bathe4
@589
= @588
EXIT

CHAIN FHF25J FHFRomtob_bathe5
@590
= @591
EXIT

//Friendly player-initiated dialogue

CHAIN IF ~IsGabber(Player1) Global("FHFarenFriend","GLOBAL",1)~ THEN FHF25J FHFPID25
@592
END
+ ~RandomNum(3,1)~ + @416 + FHFRomtob_decision1
+ ~RandomNum(3,2)~ + @416 + FHFRomtob_decision2
+ ~RandomNum(3,3)~ + @416 + FHFRomtob_decision3
+ ~RandomNum(3,1)~ + @417 + FHFRomtob_need1
+ ~RandomNum(3,2)~ + @417 + FHFFriendtob_need2
+ ~RandomNum(3,3)~ + @417 + FHFFriendtob_need3
+ ~CheckStatGT("FHFAREN",5,FATIGUE)~ + @418 + FHFRomtob_tired
+ ~RandomNum(4,1)~ + @593 + FHFFriendtob_good1
+ ~RandomNum(4,2)~ + @593 + FHFFriendtob_good2
+ ~RandomNum(4,3)~ + @593 + FHFFriendtob_good3
+ ~RandomNum(4,4)~ + @593 + FHFFriendtob_good4
+ ~RandomNum(4,1)~ + @420 + FHFRomtob_think1
+ ~RandomNum(4,2)~ + @420 + FHFFriendtob_think2
+ ~RandomNum(4,3)~ + @420 + FHFFriendtob_think3
+ ~RandomNum(4,4)~ + @420 + FHFRomtob_think4
+ ~RandomNum(4,1)~ + @594 + FHFRomtob_how1
+ ~RandomNum(4,2)~ + @594 + FHFFriendtob_how2
+ ~RandomNum(4,3)~ + @594 + FHFFriendtob_how3
+ ~RandomNum(4,4)~ + @594 + FHFFriendtob_how4
+ ~Global("FHFFlirtsDisabled","GLOBAL",0)~ + @424 + FHFFriendtob_flirt
++ @428 EXIT

CHAIN FHF25J FHFFriendtob_need2
@595
EXIT

CHAIN FHF25J FHFFriendtob_need3
@596
EXIT

CHAIN FHF25J FHFFriendtob_good1
@597
EXIT

CHAIN FHF25J FHFFriendtob_good2
@598
EXIT

CHAIN FHF25J FHFFriendtob_good3
@599
EXIT

CHAIN FHF25J FHFFriendtob_good4
@600
EXIT

CHAIN FHF25J FHFFriendtob_think2
@601
EXIT

CHAIN FHF25J FHFFriendtob_think3
@602
EXIT

CHAIN FHF25J FHFFriendtob_how2
@603
EXIT

CHAIN FHF25J FHFFriendtob_how3
@604
EXIT

CHAIN FHF25J FHFFriendtob_how4
@605
EXIT

CHAIN FHF25J FHFFriendtob_flirt
~~
END
+ ~RandomNum(4,1)~ + @430 + FHFriendtobsmile1
+ ~RandomNum(4,2)~ + @430 + FHFriendtobsmile2
+ ~RandomNum(4,3)~ + @430 + FHFriendtobsmile3
+ ~RandomNum(4,4)~ + @430 + FHFriendtobsmile4
+ ~RandomNum(5,1)~ + @431 + FHFriendtobstudy1
+ ~RandomNum(5,2)~ + @431 + FHFriendtobstudy2
+ ~RandomNum(5,3)~ + @431 + FHFriendtobstudy3
+ ~RandomNum(5,4)~ + @431 + FHFriendtobstudy4
+ ~RandomNum(5,5)~ + @431 + FHFriendtobstudy5
+ ~RandomNum(4,1)~ + @432 + FHFriendtobhair1
+ ~RandomNum(4,2)~ + @432 + FHFriendtobhair2
+ ~RandomNum(4,3)~ + @432 + FHFriendtobhair3
+ ~RandomNum(4,4)~ + @432 + FHFriendtobhair4
+ ~RandomNum(4,1)~ + @606 + FHFriendtobattract1
+ ~RandomNum(4,2)~ + @606 + FHFriendtobattract2
+ ~RandomNum(4,3)~ + @606 + FHFriendtobattract3
+ ~RandomNum(4,4)~ + @606 + FHFriendtobattract4
+ ~RandomNum(4,1)~ + @436 + FHFriendtobpoke1
+ ~RandomNum(4,2)~ + @436 + FHFriendtobpoke2
+ ~RandomNum(4,3)~ + @436 + FHFriendtobpoke3
+ ~RandomNum(4,4)~ + @436 + FHFriendtobpoke4
+ ~RandomNum(4,1) Global("FHFFriendFlirt","GLOBAL",2)~ + @434 + FHFriendtobhug1
+ ~RandomNum(4,2) Global("FHFFriendFlirt","GLOBAL",2)~ + @434 + FHFriendtobhug2
+ ~RandomNum(4,3) Global("FHFFriendFlirt","GLOBAL",2)~ + @434 + FHFriendtobhug3
+ ~RandomNum(4,4) Global("FHFFriendFlirt","GLOBAL",2)~ + @434 + FHFriendtobhug4
++ @428 EXIT

CHAIN FHF25J FHFriendtobsmile1
@607
EXIT

CHAIN FHF25J FHFriendtobsmile2
@608
EXIT

CHAIN FHF25J FHFriendtobsmile3
@609
EXIT

CHAIN FHF25J FHFriendtobsmile4
@610
EXIT

CHAIN FHF25J FHFriendtobstudy1
@486
=
@487
EXIT

CHAIN FHF25J FHFriendtobstudy2
@611
EXIT

CHAIN FHF25J FHFriendtobstudy3
@612
EXIT

CHAIN FHF25J FHFriendtobstudy4
@613
EXIT

CHAIN FHF25J FHFriendtobstudy5
@614
EXIT

CHAIN FHF25J FHFriendtobhair1
@615
EXIT

CHAIN FHF25J FHFriendtobhair2
@616
= @617
EXIT

CHAIN FHF25J FHFriendtobhair3
@618
EXIT

CHAIN FHF25J FHFriendtobhair4
@619
EXIT

CHAIN FHF25J FHFriendtobattract1
@620
EXIT

CHAIN FHF25J FHFriendtobattract2
@621
EXIT

CHAIN FHF25J FHFriendtobattract3
@622
EXIT

CHAIN FHF25J FHFriendtobattract4
@623
EXIT

CHAIN FHF25J FHFriendtobpoke1
@624
EXIT

CHAIN FHF25J FHFriendtobpoke2
@625
EXIT

CHAIN FHF25J FHFriendtobpoke3
@626
EXIT

CHAIN FHF25J FHFriendtobpoke4
@627
EXIT

CHAIN FHF25J FHFriendtobhug1
@628
EXIT

CHAIN FHF25J FHFriendtobhug2
@629
EXIT

CHAIN FHF25J FHFriendtobhug3
@630
EXIT

CHAIN FHF25J FHFriendtobhug4
@631
EXIT
