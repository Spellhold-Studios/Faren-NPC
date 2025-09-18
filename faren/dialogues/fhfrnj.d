//CONTENTS
//Scripted friendship dialogue
//Scripted romance dialogue
//Plot-related talks
//Non-tracked dialogue
//Phaere comments
//Post-Bodhi dialogue
//Appending to Phaere's dialogue
//Rumours appended to Trademeet and Imnesvale inns
//Commenting before seeing Seth
//Commenting about the Halmar quest
//Romance conflicts
//Interjections
//Bodhi abduction
//Faren-initiated flirts
//Player-initiated dialogue

BEGIN FHFRNJ

//Scripted friendship dialogue

//Friendtalk 1 In Which Faren's Jaw Clicks Platonically

IF ~Global("FHFarenFriendTalk","GLOBAL",2)~ FHFFT1
SAY @0
++ @1 DO ~SetGlobal("FHFarenFriendTalk","GLOBAL",3) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",4200)~ + FHFFT1_punish
++ @2 DO ~SetGlobal("FHFarenFriendTalk","GLOBAL",3) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",4200)~ + FHFFT1_given
++ @3 DO ~SetGlobal("FHFarenFriendTalk","GLOBAL",3) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",4200)~ + FHFFT1_broke
++ @4 DO ~SetGlobal("FHFarenFriendTalk","GLOBAL",3) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",4200)~ + FHFFT1_suffer
++ @5 DO ~SetGlobal("FHFarenFriendTalk","GLOBAL",3) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",4200)~ + FHFFT1_look
END

IF ~~ FHFFT1_punish
SAY @6
= @7
IF ~~ + FHFFT1_fair
END

IF ~~ FHFFT1_given
SAY @8
= @9
IF ~~ + FHFFT1_fair
END

IF ~~ FHFFT1_broke
SAY @10
= @11
IF ~~ + FHFFT1_fair
END

IF ~~ FHFFT1_suffer
SAY @12
IF ~~ EXIT
END

IF ~~ FHFFT1_look
SAY @13
IF ~~ + FHFFT1_fair
END

IF ~~ FHFFT1_fair
SAY @14
++ @15 + FHFFT1_unpop
++ @16 + FHFFT1_know
++ @17 + FHFFT1_cope
++ @18 + FHFFT1_glad
END

IF ~~ FHFFT1_unpop
SAY @19
= @20
IF ~~ + FHFFT1_maybe
END

IF ~~ FHFFT1_know
SAY @21
IF ~~ + FHFFT1_maybe
END

IF ~~ FHFFT1_cope
SAY @22
= @23
IF ~~ + FHFFT1_maybe
END

IF ~~ FHFFT1_glad
SAY @24
IF ~~ + FHFFT1_maybe
END

IF ~~ FHFFT1_maybe
SAY @25
++ @26 + FHFFT1_tell
++ @27 DO ~IncrementGlobal("FHFarenLike","GLOBAL",1)~ + FHFFT1_actions
++ @28 + FHFFT1_problems
END

IF ~~ FHFFT1_tell
SAY @29
IF ~~ + FHFFT1_brood
END

IF ~~ FHFFT1_actions
SAY @30
IF ~~ + FHFFT1_brood
END

IF ~~ FHFFT1_problems
SAY @31
IF ~~ + FHFFT1_brood
END

IF ~~ FHFFT1_brood
SAY @32
IF ~~ EXIT
END

//Friendtalk 2

IF ~Global("FHFarenFriendTalk","GLOBAL",4)~ FHFFT2
SAY @33
++ @34 DO ~SetGlobal("FHFarenFriendTalk","GLOBAL",5) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",4200)~ + FHFFT2_comfort
++ @35 DO ~SetGlobal("FHFarenFriendTalk","GLOBAL",5) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",4200)~ + FHFFT2_atten
++ @36 DO ~SetGlobal("FHFarenFriendTalk","GLOBAL",5) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",4200)~ + FHFFT2_volun
++ @37 DO ~SetGlobal("FHFarenFriendTalk","GLOBAL",5) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",4200)~ + FHFFT2_steps
END

IF ~~ FHFFT2_comfort
SAY @38
IF ~~ + FHFFT2_north
END

IF ~~ FHFFT2_atten
SAY @39
IF ~~ + FHFFT2_north
END

IF ~~ FHFFT2_volun
SAY @40
IF ~~ + FHFFT2_north
END

IF ~~ FHFFT2_steps
SAY @41
IF ~~ + FHFFT2_north
END

IF ~~ FHFFT2_north
SAY @42
++ @43 + FHFFT2_stick
++ @44 + FHFFT2_fuss
++ @45 + FHFFT2_capable
END

IF ~~ FHFFT2_stick
SAY @46
++ @47 + FHFFT2_unscrup
++ @48 + FHFFT2_fine
++ @49 + FHFFT2_thanks
++ @50 + FHFFT2_pity
END

IF ~~ FHFFT2_fuss
SAY @51
IF ~~ EXIT
END

IF ~~ FHFFT2_experience
SAY @52
++ @47 + FHFFT2_unscrup
++ @48 + FHFFT2_fine
++ @49 + FHFFT2_thanks
++ @50 + FHFFT2_pity
END

IF ~~ FHFFT2_capable
SAY @53
++ @47 + FHFFT2_unscrup
++ @48 + FHFFT2_fine
++ @49 + FHFFT2_thanks
++ @50 + FHFFT2_pity
END

IF ~~ FHFFT2_unscrup
SAY @54
IF ~~ EXIT
END

IF ~~ FHFFT2_fine
SAY @55
IF ~~ EXIT
END

IF ~~ FHFFT2_thanks
SAY @56
IF ~~ EXIT
END

IF ~~ FHFFT2_pity
SAY @57
IF ~~ EXIT
END

//Friendtalk 3 - In Which Faren Remembers Blackmail Isn't So Much Fun

IF ~Global("FHFarenFriendTalk","GLOBAL",6)~ FHFFT3
SAY @58
IF ~ReputationGT(Player1,15)~ DO ~SetGlobal("FHFarenFriendTalk","GLOBAL",7) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",4200)~ + FHFFT3_highrep
IF ~ReputationLT(Player1,16) ReputationGT(Player1,10)~ DO ~SetGlobal("FHFarenFriendTalk","GLOBAL",7) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",4200)~ + FHFFT3_medrep
IF ~ReputationLT(Player1,11)~ DO ~SetGlobal("FHFarenFriendTalk","GLOBAL",7) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",4200)~ + FHFFT3_lowrep
END

IF ~~ FHFFT3_highrep
SAY @59
IF ~~ + FHFFT3_blackmail
END

IF ~~ FHFFT3_medrep
SAY @60
IF ~~ + FHFFT3_blackmail
END

IF ~~ FHFFT3_lowrep
SAY @61
IF ~~ + FHFFT3_blackmail
END

IF ~~ FHFFT3_blackmail
SAY @62
++ @63 + FHFFT3_why
++ @64 + FHFFT3_why
++ @65 + FHFFT3_obligated
++ @66 + FHFFT3_awful
++ @67 + FHFFT3_awful
END

IF ~~ FHFFT3_awful
SAY @68
IF ~~ + FHFFT3_why
END

IF ~~ FHFFT3_obligated
SAY @69
IF ~~ + FHFFT3_why
END

IF ~~ FHFFT3_notbothered
SAY @70
IF ~~ + FHFFT3_why
END

IF ~~ FHFFT3_shocking
SAY @71
IF ~~ + FHFFT3_why
END

IF ~~ FHFFT3_why
SAY @72
= @73
= @74
++ @75 + FHFFT3_believe
++ @76 + FHFFT3_change
+ ~!Alignment(Player1,MASK_GOOD)~ + @77 DO ~IncrementGlobal("FHFarenLike","GLOBAL",-1)~ + FHFFT3_ambitious
+ ~CheckStatGT(Player1,15,INT)~ + @78 + FHFFT3_ouch
++ @79 + FHFFT3_short
++ @80 + FHFFT3_opiumden
END

IF ~~ FHFFT3_believe
SAY @81
IF ~~ + FHFFT3_continue
END

IF ~~ FHFFT3_change
SAY @82
IF ~~ + FHFFT3_continue
END

IF ~~ FHFFT3_ambitious
SAY @83
IF ~~ + FHFFT3_continue
END

IF ~~ FHFFT3_ouch
SAY @84
IF ~~ + FHFFT3_continue
END

IF ~~ FHFFT3_opiumden
SAY @85
IF ~~ + FHFFT3_continue
END

IF ~~ FHFFT3_short
SAY @86
+ ~GlobalGT("FHFarenLike","GLOBAL",0)~ + @87 + FHFFT3_firm
+ ~GlobalLT("FHFarenLike","GLOBAL",1)~ + @87 DO ~IncrementGlobal("FHFarenLike","GLOBAL",-1)~ + FHFFT3_mean
++ @88 + FHFFT3_frustrating
++ @89 DO ~IncrementGlobal("FHFarenLike","GLOBAL",-1)~ + FHFFT3_mean
++ @90 + FHFFT3_firm
++ @91 DO ~IncrementGlobal("FHFarenLike","GLOBAL",1)~ + FHFFT3_revenge
END

IF ~~ FHFFT3_continue
SAY @92
= @93
+ ~GlobalGT("FHFarenLike","GLOBAL",0)~ + @87 + FHFFT3_firm
+ ~GlobalLT("FHFarenLike","GLOBAL",1)~ + @87 DO ~IncrementGlobal("FHFarenLike","GLOBAL",-1)~ + FHFFT3_mean
++ @88 + FHFFT3_frustrating
++ @89 DO ~IncrementGlobal("FHFarenLike","GLOBAL",-1)~ + FHFFT3_mean
++ @90 + FHFFT3_firm
++ @91 DO ~IncrementGlobal("FHFarenLike","GLOBAL",1)~ + FHFFT3_revenge
END

IF ~~ FHFFT3_mean
SAY @94
= @95
IF ~~ EXIT
END

IF ~~ FHFFT3_firm
SAY @96
++ @97 DO ~IncrementGlobal("FHFarenLike","GLOBAL",1)~ + FHFFT3_stupid
++ @98 + FHFFT3_where
++ @99 + FHFFT3_moveon
++ @100 + FHFFT3_stay
++ @101 DO ~IncrementGlobal("FHFarenLike","GLOBAL",-1)~ + FHFFT3_horrid
END

IF ~~ FHFFT3_frustrating
SAY @102
++ @97 DO ~IncrementGlobal("FHFarenLike","GLOBAL",1)~ + FHFFT3_stupid
++ @98 + FHFFT3_where
++ @99 + FHFFT3_moveon
++ @100 + FHFFT3_stay
++ @101 DO ~IncrementGlobal("FHFarenLike","GLOBAL",-1)~ + FHFFT3_horrid
END

IF ~~ FHFFT3_revenge
SAY @103
++ @104 + FHFFT3_anything
++ @105 + FHFFT3_bloodthirsty
END

IF ~~ FHFFT3_stupid
SAY @106
++ @107 + FHFFT3_exception
++ @108 + FHFFT3_start
++ @109 + FHFFT3_srsbzns
END

IF ~~ FHFFT3_where
SAY @110
++ @111 + FHFFT3_condolences
+ ~CheckStatGT(Player1,15,WIS)~ + @112 + FHFFT3_wise
++ @113 DO ~IncrementGlobal("FHFarenLike","GLOBAL",-1)~ + FHFFT3_badluck
END

IF ~~ FHFFT3_moveon
SAY @114
IF ~~ EXIT
END

IF ~~ FHFFT3_stay
SAY @115
++ @116 + FHFFT3_discipline
++ @117 + FHFFT3_important
++ @118 + FHFFT3_maybe
END

IF ~~ FHFFT3_horrid
SAY @119
IF ~~ EXIT
END

IF ~~ FHFFT3_anything
SAY @120
IF ~~ EXIT
END

IF ~~ FHFFT3_bloodthirsty
SAY @121
IF ~~ EXIT
END

IF ~~ FHFFT3_exception
SAY @122
IF ~~ EXIT
END

IF ~~ FHFFT3_start
SAY @123
IF ~~ EXIT
END

IF ~~ FHFFT3_srsbzns
SAY @124
IF ~~ EXIT
END

IF ~~ FHFFT3_condolences
SAY @125
IF ~~ EXIT
END

IF ~~ FHFFT3_wise
SAY @126
= @127
IF ~~ EXIT
END

IF ~~ FHFFT3_badluck
SAY @128
= @129
IF ~~ EXIT
END

IF ~~ FHFFT3_discipline
SAY @130
IF ~~ EXIT
END

IF ~~ FHFFT3_important
SAY @131
IF ~~ EXIT
END

IF ~~ FHFFT3_maybe
SAY @132
IF ~~ EXIT
END

//Friendtalk 4

IF ~Global("FHFarenFriendTalk","GLOBAL",8)~ FHFFT4
SAY @133
= @134
++ @135 DO ~SetGlobal("FHFarenFriendTalk","GLOBAL",9) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",4200)~ + FHFFT4_military
++ @136 DO ~SetGlobal("FHFarenFriendTalk","GLOBAL",9) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",4200)~ + FHFFT4_stiff
++ @137 DO ~IncrementGlobal("FHFarenLike","GLOBAL",-1) SetGlobal("FHFarenFriendTalk","GLOBAL",9) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",4200)~ + FHFFT4_whine
END

IF ~~ FHFFT4_whine
SAY @138
IF ~~ EXIT
END

IF ~~ FHFFT4_military
SAY @139
IF ~~ + FHFFT4_what
END

IF ~~ FHFFT4_stiff
SAY @140
IF ~~ + FHFFT4_what
END

IF ~~ FHFFT4_what
SAY @141
= @142
= @143
++ @144 + FHFFT4_follow
++ @145 + FHFFT4_catch
++ @146 DO ~IncrementGlobal("FHFarenLike","GLOBAL",1)~ + FHFFT4_flatter
++ @147 + FHFFT4_catch
END

IF ~~ FHFFT4_follow
SAY @148
IF ~~ + FHFFT4_next
END

IF ~~ FHFFT4_catch
SAY @149
IF ~~ + FHFFT4_next
END

IF ~~ FHFFT4_flatter
SAY @150
= @151
IF ~~ + FHFFT4_next
END

IF ~~ FHFFT4_next
SAY @152
= @153
++ @154 + FHFFT4_cat
++ @155 + FHFFT4_last
++ @156 + FHFFT4_notinterested
END

IF ~~ FHFFT4_cat
SAY @157
IF ~~ + FHFFT4_last
END

IF ~~ FHFFT4_notinterested
SAY @158
IF ~~ EXIT
END

IF ~~ FHFFT4_last
SAY @159
++ @160 + FHFFT4_cat2
++ @161 + FHFFT4_thief
++ @162 + FHFFT4_thief
++ @163 + FHFFT4_lie
END

IF ~~ FHFFT4_cat2
SAY @164
IF ~~ + FHFFT4_thief
END

IF ~~ FHFFT4_thief
SAY @165
+ ~Gender(Player1,FEMALE)~ + @166 + FHFFT4_lookf
+ ~Gender(Player1,MALE)~ + @166 + FHFFT4_lookm
++ @167 + FHFFT4_men
++ @168 + FHFFT4_enemy
++ @169 + FHFFT4_brilliant
END

IF ~~ FHFFT4_brilliant
SAY @170
IF ~~ EXIT
END

IF ~~ FHFFT4_lie
SAY @171
IF ~~ + FHFFT4_thief
END

IF ~~ FHFFT4_lookf
SAY @172
++ @173 + FHFFT4_boring
++ @174 + FHFFT4_brilliant
END

IF ~~ FHFFT4_lookm
SAY @175
++ @173 + FHFFT4_boring
++ @174 + FHFFT4_brilliant
END

IF ~~ FHFFT4_men
SAY @176
= @177
IF ~~ EXIT
END

IF ~~ FHFFT4_enemy
SAY @178
++ @173 + FHFFT4_boring
++ @174 + FHFFT4_brilliant
END

IF ~~ FHFFT4_boring
SAY @179
IF ~~ EXIT
END

//Friendtalk 5 - In Which Faren Wonders Whether You Have a Sweetheart At Home, Archie

IF ~Global("FHFarenFriendTalk","GLOBAL",10)~ FHFFT5
SAY @180
= @181
+ ~Gender(Player1,FEMALE) Global("FHFLGBWoman","GLOBAL",0)~ + @182 DO ~SetGlobal("FHFarenFriendTalk","GLOBAL",11) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",4200) SetGlobal("FHFLGBWoman","GLOBAL",1)~ + FHFFT5_lgb
+ ~Gender(Player1,FEMALE) Global("FHFLGBWoman","GLOBAL",1)~ + @182 DO ~SetGlobal("FHFarenFriendTalk","GLOBAL",11) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",4200)~ + FHFFT5_sep
+ ~Gender(Player1,MALE) Global("FHFLGBMan","GLOBAL",0)~ + @183 DO ~SetGlobal("FHFarenFriendTalk","GLOBAL",11) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",4200)  SetGlobal("FHFLGBMan","GLOBAL",1)~ + FHFFT5_lgb
+ ~Gender(Player1,MALE) Global("FHFLGBMan","GLOBAL",1)~ + @183 DO ~SetGlobal("FHFarenFriendTalk","GLOBAL",11) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",4200)~ + FHFFT5_sep
+ ~Gender(Player1,FEMALE)~ + @183 DO ~SetGlobal("FHFarenFriendTalk","GLOBAL",11) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",4200)~ + FHFFT5_sep
+ ~Gender(Player1,MALE)~ + @182 DO ~SetGlobal("FHFarenFriendTalk","GLOBAL",11) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",4200)~ + FHFFT5_sep
++ @184 DO ~SetGlobal("FHFarenFriendTalk","GLOBAL",11) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",4200)~ + FHFFT5_heart
++ @185 DO ~SetGlobal("FHFarenFriendTalk","GLOBAL",11) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",4200)~ + FHFFT5_know
++ @186 DO ~SetGlobal("FHFarenFriendTalk","GLOBAL",11) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",4200)~ + FHFFT5_heartbreaker
++ @187 DO ~SetGlobal("FHFarenFriendTalk","GLOBAL",11) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",4200)~ + FHFFT5_business
++ @188 DO ~SetGlobal("FHFarenFriendTalk","GLOBAL",11) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",4200)~ + FHFFT5_serious
END

IF ~~ FHFFT5_lgb
SAY @189
IF ~~ + FHFFT5_serious
END

IF ~~ FHFFT5_sep
SAY @190
IF ~~ + FHFFT5_serious
END

IF ~~ FHFFT5_heart
SAY @191
IF ~~ + FHFFT5_serious
END

IF ~~ FHFFT5_know
SAY @192
IF ~~ + FHFFT5_serious
END

IF ~~ FHFFT5_heartbreaker
SAY @193
IF ~~ + FHFFT5_serious
END

IF ~~ FHFFT5_business
SAY @194
IF ~~ EXIT
END

IF ~~ FHFFT5_serious
SAY @195
++ @196 + FHFFT5_deep
++ @197 + FHFFT5_casual
++ @198 + FHFFT5_youth
++ @199 + FHFFT5_danger
END

IF ~~ FHFFT5_deep
SAY @200
IF ~~ + FHFFT5_go
END

IF ~~ FHFFT5_casual
SAY @201
IF ~~ + FHFFT5_go
END

IF ~~ FHFFT5_youth
SAY @202
IF ~~ EXIT
END

IF ~~ FHFFT5_danger
SAY @203
IF ~~ + FHFFT5_go
END

IF ~~ FHFFT5_go
SAY @204
IF ~~ EXIT
END

//Friendtalk 6 In Which Faren Shows Off His Intellect, Or Rather Thiefiness

IF ~Global("FHFarenFriendTalk","GLOBAL",12)~ FHFFT6
SAY @205
++ @206 DO ~SetGlobal("FHFarenFriendTalk","GLOBAL",13) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",4200)~ + FHFFT6_distract
++ @207 DO ~SetGlobal("FHFarenFriendTalk","GLOBAL",13) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",4200)~ + FHFFT6_pocket
++ @208 DO ~SetGlobal("FHFarenFriendTalk","GLOBAL",13) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",4200)~ + FHFFT6_pick
END

IF ~~ FHFFT6_distract
SAY @209
++ @208 + FHFFT6_pick
+ ~CheckStatGT(Player1,14,DEX)~ + @210 + FHFFT6_trick
++ @211 + FHFFT6_mood
END

IF ~~ FHFFT6_pocket
SAY @212
++ @208 + FHFFT6_pick
+ ~CheckStatGT(Player1,14,DEX)~ + @210 + FHFFT6_trick
++ @211 + FHFFT6_mood
END

IF ~~ FHFFT6_pick
SAY @213
IF ~RandomNum(3,1)~ + FHFFT6_success
IF ~RandomNum(3,2)~ + FHFFT6_success
IF ~RandomNum(3,3)~ + FHFFT6_fail
END

IF ~~ FHFFT6_trick
SAY @214
++ @208 + FHFFT6_pick
++ @211 + FHFFT6_mood
END

IF ~~ FHFFT6_mood
SAY @215
IF ~~ + FHFFT6_practise
END

IF ~~ FHFFT6_success
SAY @216
= @217
+ ~CheckStatGT(Player1,13,CHR)~ + @218 + FHFFT6_yeshigh
+ ~CheckStatLT(Player1,14,CHR)~ + @218 + FHFFT6_nohigh
+ ~CheckStatLT(Player1,16,INT)~ + @219 + FHFFT6_how
+ ~CheckStatGT(Player1,15,INT)~ + @220 + FHFFT6_know
++ @221 + FHFFT6_important
END

IF ~~ FHFFT6_fail
SAY @222
= @223
IF ~~ + FHFFT6_practise
END

IF ~~ FHFFT6_yeshigh
SAY @224
IF ~~ + FHFFT6_practise
END

IF ~~ FHFFT6_nohigh
SAY @225
IF ~~ EXIT
END

IF ~~ FHFFT6_how
SAY @226
IF ~~ + FHFFT6_practise
END

IF ~~ FHFFT6_know
SAY @227
IF ~~ + FHFFT6_practise
END

IF ~~ FHFFT6_important
SAY @228
IF ~~ + FHFFT6_practise
END

IF ~~ FHFFT6_practise
SAY @229
IF ~~ EXIT
END

//Friendtalk 7 In Which Faren Thinks You're a Hardcore Friend

IF ~Global("FHFarenFriendTalk","GLOBAL",14)~ FHFFT7
SAY @230
= @231
++ @232 DO ~SetGlobal("FHFarenFriendTalk","GLOBAL",15) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",4200)~ + FHFFT7_risk
++ @233 DO ~SetGlobal("FHFarenFriendTalk","GLOBAL",15) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",4200)~ + FHFFT7_help
++ @234 DO ~SetGlobal("FHFarenFriendTalk","GLOBAL",15) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",4200)~ + FHFFT7_skills
++ @235 DO ~SetGlobal("FHFarenFriendTalk","GLOBAL",15) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",4200)~ + FHFFT7_odds
END

IF ~~ FHFFT7_risk
SAY @236
IF ~InParty("Imoen2") InMyArea("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ EXTERN IMOEN2J FHFImFT7
IF ~~ + FHFFT7_parents
END

IF ~~ FHFFT7_parents
SAY @237
++ @238 + FHFFT7_meet
++ @239 + FHFFT7_inherit
++ @240 + FHFFT7_shame
END

IF ~~ FHFFT7_help
SAY @241
IF ~~ + FHFFT7_parents
END

IF ~~ FHFFT7_skills
SAY @242
IF ~~ + FHFFT7_parents
END

IF ~~ FHFFT7_odds
SAY @243
IF ~~ + FHFFT7_parents
END

IF ~~ FHFFT7_meet
SAY @244
IF ~~ + FHFFT7_go
END

IF ~~ FHFFT7_reg
SAY @245
IF ~~ + FHFFT7_go
END

IF ~~ FHFFT7_inherit
SAY @246
IF ~~ EXIT
END

IF ~~ FHFFT7_shame
SAY @247
= @248
END

IF ~~ FHFFT7_go
SAY @249
IF ~~ EXIT
END

//Friendtalk 8a In Which Faren Wants A Drink, Outdoors

IF ~Global("FHFarenFriendTalk","GLOBAL",16)
!AreaCheck("AR0704")
!AreaCheck("AR0709")
!AreaCheck("AR0406")
!AreaCheck("AR0513")
!AreaCheck("AR0509")
!AreaCheck("AR0021")
!AreaCheck("AR0313")
!AreaCheck("AR1105")
!AreaCheck("AR2010")
!AreaCheck("AR1602")~ FHFFT8out
SAY @250
+ ~TimeGT(6) TimeLT(21)~ + @251 DO ~SetGlobal("FHFarenFriendTalk","GLOBAL",17) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",4200)~ + FHFFT8out_sun
+ ~OR(2) TimeGT(20) TimeLT(7)~ + @252 DO ~SetGlobal("FHFarenFriendTalk","GLOBAL",17) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",4200)~ + FHFFT8out_cold
++ @253 DO ~SetGlobal("FHFarenFriendTalk","GLOBAL",17) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",4200)~ + FHFFT8out_alert
++ @254 DO ~SetGlobal("FHFarenFriendTalk","GLOBAL",17) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",4200)~ + FHFFT8out_cold
++ @255 DO ~SetGlobal("FHFarenFriendTalk","GLOBAL",17) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",4200)~ + FHFFT8out_talk
++ @256 DO ~SetGlobal("FHFarenFriendTalk","GLOBAL",17) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",4200)~ + FHFFT8out_sleep
END

IF ~~ FHFFT8out_sun
SAY @257
IF ~~ + FHFFT8out_flask
END

IF ~~ FHFFT8out_cold
SAY @258
+ ~CheckStatGT(Player1,15,CON)~ + @259 + FHFFT8out_drinkhigh
+ ~CheckStatLT(Player1,16,CON) CheckStatGT(Player1,11,CON)~ + @259 + FHFFT8out_drinkmed
+ ~CheckStatLT(Player1,12,CON)~ + @259 + FHFFT8out_drinklow
++ @260 + FHFFT8out_rather
++ @261 + FHFFT8out_sleep
END

IF ~~ FHFFT8out_alert
SAY @262
IF ~~ + FHFFT8out_flask
END

IF ~~ FHFFT8out_talk
SAY @263
IF ~~ + FHFFT8out_flask
END

IF ~~ FHFFT8out_sleep
SAY @264
IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ FHFFT8out_flask
SAY @265
= @266
+ ~CheckStatGT(Player1,15,CON)~ + @267 + FHFFT8out_drinkhigh
+ ~CheckStatLT(Player1,16,CON) CheckStatGT(Player1,11,CON)~ + @267 + FHFFT8out_drinkmed
+ ~CheckStatLT(Player1,12,CON)~ + @267 + FHFFT8out_drinklow
++ @268 + FHFFT8out_harm
++ @269 + FHFFT8out_rather
++ @270 + FHFFT8out_sleep
END

IF ~~ FHFFT8out_drinkhigh
SAY @271
IF ~~ + FHFFT8out_like
END

IF ~~ FHFFT8out_drinkmed
SAY @272
IF ~~ + FHFFT8out_like
END

IF ~~ FHFFT8out_drinklow
SAY @273
= @274
IF ~~ + FHFFT8out_like
END

IF ~~ FHFFT8out_harm
SAY @275
= @276
IF ~~ + FHFFT8out_like
END

IF ~~ FHFFT8out_rather
SAY @277
IF ~~ + FHFFT8out_like
END

IF ~~ FHFFT8out_like
SAY @278
++ @279 + FHFFT8out_inn
++ @280 + FHFFT8out_comfort
++ @281 + FHFFT8out_free
+ ~OR(2) Class(Player1,DRUID_ALL) Class(Player1,RANGER_ALL)~ + @282 + FHFFT8out_listen
END

IF ~~ FHFFT8out_inn
SAY @283
IF ~~ + FHFFT8out_silence
END

IF ~~ FHFFT8out_comfort
SAY @284
++ @285 + FHFFT8out_lot
++ @286 + FHFFT8out_fair
++ @287 + FHFFT8out_lead
++ @288 + FHFFT8out_fair
END

IF ~~ FHFFT8out_free
SAY @289
IF ~~ + FHFFT8out_silence
END

IF ~~ FHFFT8out_listen
SAY @290
IF ~~ + FHFFT8out_silence
END

IF ~~ FHFFT8out_silence
SAY @291
++ @292 + FHFFT8out_chat
++ @293 + FHFFT8out_comfort
END

IF ~~ FHFFT8out_lot
SAY @294
++ @286 + FHFFT8out_fair
++ @287 + FHFFT8out_lead
++ @288 + FHFFT8out_fair
END

IF ~~ FHFFT8out_fair
SAY @295
IF ~~ DO ~RestParty()~
EXIT
END

IF ~~ FHFFT8out_lead
SAY @296
IF ~~ DO ~RestParty()~
EXIT
END

IF ~~ FHFFT8out_chat
SAY @297
IF ~~ DO ~RestParty()~
EXIT
END

//Friendtalk 8b In Which Faren Wants A Drink, Indoors

IF ~Global("FHFarenFriendTalk","GLOBAL",16)
OR(10)
AreaCheck("AR0704")
AreaCheck("AR0709")
AreaCheck("AR0406")
AreaCheck("AR0513")
AreaCheck("AR0509")
AreaCheck("AR0021")
AreaCheck("AR0313")
AreaCheck("AR1105")
AreaCheck("AR2010")
AreaCheck("AR1602")~ FHFFT8inn
SAY @298
+ ~TimeGT(6) TimeLT(21)~ + @299 DO ~SetGlobal("FHFarenFriendTalk","GLOBAL",19) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",4200)~ + FHFFT8inn_early
++ @300 DO ~SetGlobal("FHFarenFriendTalk","GLOBAL",17) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",4200)~ + FHFFT8inn_alert
++ @301 DO ~SetGlobal("FHFarenFriendTalk","GLOBAL",17) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",4200)~ + FHFFT8inn_ok
++ @255 DO ~SetGlobal("FHFarenFriendTalk","GLOBAL",17) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",4200)~ + FHFFT8inn_early
++ @302 DO ~SetGlobal("FHFarenFriendTalk","GLOBAL",17) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",4200)~ + FHFFT8out_sleep
END

IF ~~ FHFFT8inn_early
SAY @303
IF ~~ + FHFFT8inn_bar
END

IF ~~ FHFFT8inn_alert
SAY @304
IF ~~ + FHFFT8inn_bar
END

IF ~~ FHFFT8inn_ok
SAY @305
= @306
++ @307 + FHFFT8inn_expense
+ ~CheckStatGT(Player1,15,CON)~ + @308 + FHFFT8inn_drinkhigh
+ ~CheckStatLT(Player1,16,CON) CheckStatGT(Player1,11,CON)~ + @308 + FHFFT8inn_drinkmed
+ ~CheckStatLT(Player1,12,CON)~ + @308 + FHFFT8inn_drinklow
++ @309 + FHFFT8inn_rather1
++ @310 + FHFFT8out_sleep
END

IF ~~ FHFFT8inn_bar
SAY @311
= @312
++ @307 + FHFFT8inn_expense
+ ~CheckStatGT(Player1,15,CON)~ + @267 + FHFFT8inn_drinkhigh
+ ~CheckStatLT(Player1,16,CON) CheckStatGT(Player1,11,CON)~ + @267 + FHFFT8inn_drinkmed
+ ~CheckStatLT(Player1,12,CON)~ + @267 + FHFFT8inn_drinklow
++ @268 + FHFFT8inn_harm
++ @269 + FHFFT8inn_rather
++ @313 + FHFFT8out_sleep
END

IF ~~ FHFFT8inn_expense
SAY @314
+ ~CheckStatGT(Player1,15,CON)~ + @315 + FHFFT8inn_drinkhigh
+ ~CheckStatLT(Player1,16,CON) CheckStatGT(Player1,11,CON)~ + @315 + FHFFT8inn_drinkmed
+ ~CheckStatLT(Player1,12,CON)~ + @315 + FHFFT8inn_drinklow
++ @309 + FHFFT8inn_rather1
++ @310 + FHFFT8out_sleep
END

IF ~~ FHFFT8inn_drinkhigh
SAY @316
IF ~~ + FHFFT8inn_like
END

IF ~~ FHFFT8inn_drinkmed
SAY @317
IF ~~ + FHFFT8inn_like
END

IF ~~ FHFFT8inn_drinklow
SAY @318
IF ~~ + FHFFT8inn_like
END

IF ~~ FHFFT8inn_rather1
SAY @319
IF ~~ + FHFFT8inn_like
END

IF ~~ FHFFT8inn_harm
SAY @320
IF ~~ + FHFFT8inn_like
END

IF ~~ FHFFT8inn_rather
SAY @264
IF ~~ + FHFFT8inn_like
END

IF ~~ FHFFT8inn_like
SAY @321
++ @322 + FHFFT8inn_stop
++ @323 + FHFFT8inn_presume
++ @324 + FHFFT8inn_stop
++ @325 + FHFFT8inn_thanks
END

IF ~~ FHFFT8inn_stop
SAY @326
IF ~~ + FHFFT8inn_silence
END

IF ~~ FHFFT8inn_presume
SAY @327
= @328
IF ~~ DO ~RestParty()~
EXIT
END

IF ~~ FHFFT8inn_thanks
SAY @329
IF ~~ + FHFFT8inn_silence
END

IF ~~ FHFFT8inn_silence
SAY @291
++ @330 + FHFFT8out_comfort
++ @331 + FHFFT8out_chat
END

//Friendtalk 9 In Which Faren Doesn't Want His Friends To Die, Again

IF ~Global("FHFarenFriendTalk","GLOBAL",18)~ FHFFT9
SAY @332
++ @333 DO ~SetGlobal("FHFarenFriendTalk","GLOBAL",19)~ + FHFFT9_joke
++ @334 DO ~SetGlobal("FHFarenFriendTalk","GLOBAL",19)~ + FHFFT9_joke
++ @335 DO ~SetGlobal("FHFarenFriendTalk","GLOBAL",19)~ + FHFFT9_healed
END

IF ~~ FHFFT9_joke
SAY @336
+ ~CheckStatGT(Player1,12,WIS)~ + @337 + FHFFT9_really
++ @338 + FHFFT9_bet
++ @339 DO ~IncrementGlobal("FHFarenLike","GLOBAL",-1)~ + FHFFT9_deal
++ @340 + FHFFT9_luck
END

IF ~~ FHFFT9_healed
SAY @341
+ ~CheckStatGT(Player1,12,WIS)~ + @337 + FHFFT9_really
++ @338 + FHFFT9_bet
++ @339 DO ~IncrementGlobal("FHFarenLike","GLOBAL",-1)~ + FHFFT9_deal
++ @340 + FHFFT9_luck
END

IF ~~ FHFFT9_really
SAY @342
IF ~~ + FHFFT9_whatif
END

IF ~~ FHFFT9_bet
SAY @343
IF ~~ + FHFFT9_whatif
END

IF ~~ FHFFT9_deal
SAY @344
IF ~~ + FHFFT9_whatif
END

IF ~~ FHFFT9_luck
SAY @345
IF ~~ + FHFFT9_whatif
END

IF ~~ FHFFT9_whatif
SAY @346
++ @347 + FHFFT9_thatmuch
++ @348 + FHFFT9_anger
++ @349 DO ~IncrementGlobal("FHFarenLike","GLOBAL",1)~ + FHFFT9_mutual
++ @350 + FHFFT9_focus
END

IF ~~ FHFFT9_thatmuch
SAY @351
++ @352 + FHFFT9_going
++ @353 + FHFFT9_mutual
++ @354 DO ~IncrementGlobal("FHFarenLike","GLOBAL",1)~ + FHFFT9_growapair
END

IF ~~ FHFFT9_anger
SAY @355
++ @352 + FHFFT9_going
++ @353 + FHFFT9_mutual
++ @354 DO ~IncrementGlobal("FHFarenLike","GLOBAL",1)~ + FHFFT9_growapair
END

IF ~~ FHFFT9_mutual
SAY @356
++ @357 + FHFFT9_avenge
++ @358 + FHFFT9_res
++ @359 + FHFFT9_like
END

IF ~~ FHFFT9_focus
SAY @360
++ @352 + FHFFT9_going
++ @353 + FHFFT9_mutual
++ @354 DO ~IncrementGlobal("FHFarenLike","GLOBAL",1)~ + FHFFT9_growapair
END

IF ~~ FHFFT9_going
SAY @361
IF ~~ EXIT
END

IF ~~ FHFFT9_growapair
SAY @362
IF ~~ EXIT
END

IF ~~ FHFFT9_avenge
SAY @363
IF ~~ EXIT
END

IF ~~ FHFFT9_res
SAY @364
IF ~~ EXIT
END

IF ~~ FHFFT9_like
SAY @365
IF ~~ EXIT
END

//Scripted romance dialogue

//Lovetalk 1 In Which Faren's Jaw Clicks

IF ~Global("FHFarenLoveTalk","GLOBAL",2)~ FHFLT1
SAY @0
++ @1 DO ~SetGlobal("FHFarenLoveTalk","GLOBAL",3) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",3400)~ + FHFLT1_punish
++ @2 DO ~SetGlobal("FHFarenLoveTalk","GLOBAL",3) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",3400)~ + FHFLT1_given
++ @3 DO ~SetGlobal("FHFarenLoveTalk","GLOBAL",3) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",3400)~ + FHFLT1_broke
++ @4 DO ~SetGlobal("FHFarenLoveTalk","GLOBAL",3) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",3400)~ + FHFLT1_suffer
++ @5 DO ~SetGlobal("FHFarenLoveTalk","GLOBAL",3) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",3400)~ + FHFLT1_look
END

IF ~~ FHFLT1_punish
SAY @6
= @7
IF ~~ + FHFLT1_fair
END

IF ~~ FHFLT1_given
SAY @8
= @366
IF ~~ + FHFLT1_fair
END

IF ~~ FHFLT1_broke
SAY @10
= @11
IF ~~ + FHFLT1_fair
END

IF ~~ FHFLT1_suffer
SAY @12
IF ~~ EXIT
END

IF ~~ FHFLT1_look
SAY @13
IF ~~ + FHFLT1_fair
END

IF ~~ FHFLT1_fair
SAY @14
++ @15 + FHFLT1_unpop
++ @16 + FHFLT1_know
++ @17 + FHFLT1_cope
++ @18 + FHFLT1_glad
END

IF ~~ FHFLT1_unpop
SAY @19
= @367
IF ~~ + FHFLT1_maybe
END

IF ~~ FHFLT1_know
SAY @368
IF ~~ + FHFLT1_maybe
END

IF ~~ FHFLT1_cope
SAY @369
= @370
IF ~~ + FHFLT1_maybe
END

IF ~~ FHFLT1_glad
SAY @371
IF ~~ + FHFLT1_maybe
END

IF ~~ FHFLT1_maybe
SAY @25
++ @26 + FHFLT1_tell
++ @27 DO ~IncrementGlobal("FHFarenLike","GLOBAL",1)~ + FHFLT1_actions
++ @28 + FHFLT1_problems
END

IF ~~ FHFLT1_tell
SAY @29
IF ~~ + FHFLT1_brood
END

IF ~~ FHFLT1_actions
SAY @30
IF ~~ + FHFLT1_brood
END

IF ~~ FHFLT1_problems
SAY @31
IF ~~ + FHFLT1_brood
END

IF ~~ FHFLT1_brood
SAY @32
IF ~~ EXIT
END

//Lovetalk 2 In Which Faren Patronises You

IF ~Global("FHFarenLoveTalk","GLOBAL",4)~ FHFLT2
SAY @33
++ @34 DO ~SetGlobal("FHFarenLoveTalk","GLOBAL",5) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",3400)~ + FHFLT2_comfort
++ @35 DO ~SetGlobal("FHFarenLoveTalk","GLOBAL",5) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",3400)~ + FHFLT2_atten
++ @36 DO ~SetGlobal("FHFarenLoveTalk","GLOBAL",5) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",3400)~ + FHFLT2_volun
++ @37 DO ~SetGlobal("FHFarenLoveTalk","GLOBAL",5) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",3400)~ + FHFLT2_steps
END

IF ~~ FHFLT2_comfort
SAY @38
IF ~~ + FHFLT2_north
END

IF ~~ FHFLT2_atten
SAY @39
IF ~~ + FHFLT2_north
END

IF ~~ FHFLT2_volun
SAY @372
IF ~~ + FHFLT2_north
END

IF ~~ FHFLT2_steps
SAY @41
IF ~~ + FHFLT2_north
END

IF ~~ FHFLT2_north
SAY @42
++ @43 + FHFLT2_stick
++ @44 + FHFLT2_fuss
++ @45 + FHFLT2_capable
END

IF ~~ FHFLT2_stick
SAY @46
++ @47 + FHFLT2_unscrup
++ @48 + FHFLT2_fine
++ @49 + FHFLT2_thanks
++ @50 + FHFLT2_pity
END

IF ~~ FHFLT2_fuss
SAY @51
IF ~~ EXIT
END

IF ~~ FHFLT2_experience
SAY @52
++ @47 + FHFLT2_unscrup
++ @48 + FHFLT2_fine
++ @49 + FHFLT2_thanks
++ @50 + FHFLT2_pity
END

IF ~~ FHFLT2_capable
SAY @53
++ @47 + FHFLT2_unscrup
++ @48 + FHFLT2_fine
++ @49 + FHFLT2_thanks
++ @50 + FHFLT2_pity
END

IF ~~ FHFLT2_unscrup
SAY @54
IF ~~ EXIT
END

IF ~~ FHFLT2_fine
SAY @55
IF ~~ EXIT
END

IF ~~ FHFLT2_thanks
SAY @56
IF ~~ EXIT
END

IF ~~ FHFLT2_pity
SAY @57
IF ~~ EXIT
END

//Lovetalk 3 - In Which Faren Remembers That Blackmail Might Not Be A Very Nice Thing To Do

IF ~Global("FHFarenLoveTalk","GLOBAL",6)~ FHFLT3
SAY @58
IF ~ReputationGT(Player1,15)~ DO ~SetGlobal("FHFarenLoveTalk","GLOBAL",7) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",3400)~ + FHFLT3_highrep
IF ~ReputationLT(Player1,16) ReputationGT(Player1,10)~ DO ~SetGlobal("FHFarenLoveTalk","GLOBAL",7) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",3400)~ + FHFLT3_medrep
IF ~ReputationLT(Player1,11)~ DO ~SetGlobal("FHFarenLoveTalk","GLOBAL",7) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",3400)~ + FHFLT3_lowrep
END

IF ~~ FHFLT3_highrep
SAY @59
IF ~~ + FHFLT3_blackmail
END

IF ~~ FHFLT3_medrep
SAY @60
IF ~~ + FHFLT3_blackmail
END

IF ~~ FHFLT3_lowrep
SAY @61
IF ~~ + FHFLT3_blackmail
END

IF ~~ FHFLT3_blackmail
SAY @62
++ @63 + FHFLT3_why
++ @64 + FHFLT3_why
++ @65 + FHFLT3_obligated
++ @373 + FHFLT3_awful
++ @374 + FHFLT3_notbothered
END

IF ~~ FHFLT3_awful
SAY @68
IF ~~ + FHFLT3_why
END

IF ~~ FHFLT3_obligated
SAY @69
IF ~~ + FHFLT3_why
END

IF ~~ FHFLT3_notbothered
SAY @70
IF ~~ + FHFLT3_why
END

IF ~~ FHFLT3_shocking
SAY @71
IF ~~ + FHFLT3_why
END

IF ~~ FHFLT3_why
SAY @72
= @73
= @375
++ @75 + FHFLT3_believe
++ @76 + FHFLT3_change
+ ~!Alignment(Player1,MASK_GOOD)~ + @77 DO ~IncrementGlobal("FHFarenLike","GLOBAL",-1)~ + FHFLT3_ambitious
+ ~CheckStatGT(Player1,15,INT)~ + @78 + FHFLT3_ouch
++ @79 + FHFLT3_short
++ @80 + FHFLT3_opiumden
END

IF ~~ FHFLT3_believe
SAY @376
IF ~~ + FHFLT3_continue
END

IF ~~ FHFLT3_change
SAY @377
IF ~~ + FHFLT3_continue
END

IF ~~ FHFLT3_ambitious
SAY @83
IF ~~ + FHFLT3_continue
END

IF ~~ FHFLT3_ouch
SAY @84
IF ~~ + FHFLT3_continue
END

IF ~~ FHFLT3_opiumden
SAY @85
IF ~~ + FHFLT3_continue
END

IF ~~ FHFLT3_short
SAY @378
+ ~GlobalGT("FHFarenLike","GLOBAL",0)~ + @87 + FHFLT3_firm
+ ~GlobalLT("FHFarenLike","GLOBAL",1)~ + @87 DO ~IncrementGlobal("FHFarenLike","GLOBAL",-1)~ + FHFLT3_mean
++ @88 + FHFLT3_frustrating
++ @89 DO ~IncrementGlobal("FHFarenLike","GLOBAL",-1)~ + FHFLT3_mean
++ @90 + FHFLT3_firm
++ @91 + FHFLT3_firm
END

IF ~~ FHFLT3_continue
SAY @92
= @379
+ ~GlobalGT("FHFarenLike","GLOBAL",0)~ + @87 + FHFLT3_firm
+ ~GlobalLT("FHFarenLike","GLOBAL",1)~ + @87 DO ~IncrementGlobal("FHFarenLike","GLOBAL",-1)~ + FHFLT3_mean
++ @88 + FHFLT3_frustrating
++ @89 DO ~IncrementGlobal("FHFarenLike","GLOBAL",-1)~ + FHFLT3_mean
++ @90 + FHFLT3_firm
++ @91 + FHFLT3_firm
END

IF ~~ FHFLT3_mean
SAY @94
= @380
IF ~~ EXIT
END

IF ~~ FHFLT3_firm
SAY @96
++ @97 DO ~IncrementGlobal("FHFarenLike","GLOBAL",1)~ + FHFLT3_stupid
++ @98 + FHFLT3_where
++ @99 + FHFLT3_moveon
++ @100 + FHFLT3_stay
++ @101 DO ~IncrementGlobal("FHFarenLike","GLOBAL",-1)~ + FHFLT3_horrid
END

IF ~~ FHFLT3_frustrating
SAY @102
++ @97 DO ~IncrementGlobal("FHFarenLike","GLOBAL",1)~ + FHFLT3_stupid
++ @98 + FHFLT3_where
++ @99 + FHFLT3_moveon
++ @100 + FHFLT3_stay
++ @101 DO ~IncrementGlobal("FHFarenLike","GLOBAL",-1)~ + FHFLT3_horrid
END

IF ~~ FHFLT3_revenge
SAY @103
++ @104 + FHFLT3_anything
++ @105 + FHFLT3_bloodthirsty
END

IF ~~ FHFLT3_stupid
SAY @106
++ @107 + FHFLT3_exception
++ @108 + FHFLT3_start
++ @109 + FHFLT3_srsbzns
END

IF ~~ FHFLT3_where
SAY @110
++ @111 + FHFLT3_condolences
+ ~CheckStatGT(Player1,15,WIS)~ + @112 + FHFLT3_wise
++ @113 DO ~IncrementGlobal("FHFarenLike","GLOBAL",-1)~ + FHFLT3_badluck
END

IF ~~ FHFLT3_moveon
SAY @114
IF ~~ EXIT
END

IF ~~ FHFLT3_stay
SAY @115
++ @116 + FHFLT3_discipline
++ @117 + FHFLT3_important
++ @118 + FHFLT3_maybe
END

IF ~~ FHFLT3_horrid
SAY @119
IF ~~ EXIT
END

IF ~~ FHFLT3_anything
SAY @120
IF ~~ EXIT
END

IF ~~ FHFLT3_bloodthirsty
SAY @381
= @382
IF ~~ EXIT
END

IF ~~ FHFLT3_exception
SAY @122
IF ~~ EXIT
END

IF ~~ FHFLT3_start
SAY @123
IF ~~ EXIT
END

IF ~~ FHFLT3_srsbzns
SAY @124
IF ~~ EXIT
END

IF ~~ FHFLT3_condolences
SAY @125
IF ~~ EXIT
END

IF ~~ FHFLT3_wise
SAY @126
= @127
IF ~~ EXIT
END

IF ~~ FHFLT3_badluck
SAY @128
= @129
IF ~~ EXIT
END

IF ~~ FHFLT3_discipline
SAY @383
IF ~~ EXIT
END

IF ~~ FHFLT3_important
SAY @131
IF ~~ EXIT
END

IF ~~ FHFLT3_maybe
SAY @132
IF ~~ EXIT
END

//Lovetalk 4 In Which Faren Reminisces About His Pals

IF ~Global("FHFarenLoveTalk","GLOBAL",8)~ FHFLT4
SAY @133
= @134
++ @135 DO ~SetGlobal("FHFarenLoveTalk","GLOBAL",9) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",3400)~ + FHFLT4_military
++ @136 DO ~SetGlobal("FHFarenLoveTalk","GLOBAL",9) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",3400)~ + FHFLT4_stiff
++ @384 DO ~IncrementGlobal("FHFarenLike","GLOBAL",-1) SetGlobal("FHFarenLoveTalk","GLOBAL",9) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",3400)~ + FHFLT4_whine
END

IF ~~ FHFLT4_whine
SAY @138
IF ~~ EXIT
END

IF ~~ FHFLT4_military
SAY @139
IF ~~ + FHFLT4_what
END

IF ~~ FHFLT4_stiff
SAY @140
IF ~~ + FHFLT4_what
END

IF ~~ FHFLT4_what
SAY @141
= @142
= @143
++ @144 + FHFLT4_follow
++ @385 + FHFLT4_catch
++ @146 DO ~IncrementGlobal("FHFarenLike","GLOBAL",1)~ + FHFLT4_flatter
++ @147 + FHFLT4_catch
END

IF ~~ FHFLT4_follow
SAY @386
IF ~~ + FHFLT4_next
END

IF ~~ FHFLT4_catch
SAY @387
IF ~~ + FHFLT4_next
END

IF ~~ FHFLT4_flatter
SAY @388
= @389
IF ~~ + FHFLT4_next
END

IF ~~ FHFLT4_next
SAY @152
= @390
++ @154 + FHFLT4_cat
++ @155 + FHFLT4_last
++ @156 + FHFLT4_notinterested
END

IF ~~ FHFLT4_cat
SAY @157
IF ~~ + FHFLT4_last
END

IF ~~ FHFLT4_notinterested
SAY @158
IF ~~ EXIT
END

IF ~~ FHFLT4_last
SAY @159
++ @160 + FHFLT4_cat2
++ @391 + FHFLT4_thief
++ @162 + FHFLT4_thief
++ @163 + FHFLT4_lie
END

IF ~~ FHFLT4_cat2
SAY @164
IF ~~ + FHFLT4_thief
END

IF ~~ FHFLT4_thief
SAY @392
= @393
++ @167 + FHFFT4_men
++ @168 + FHFFT4_enemy
++ @394 + FHFLT4_whynot
++ @395 + FHFLT4_broken
++ @169 + FHFFT4_brilliant
END

IF ~~ FHFLT4_brilliant
SAY @170
IF ~~ EXIT
END

IF ~~ FHFLT4_lie
SAY @171
IF ~~ + FHFLT4_thief
END

IF ~~ FHFLT4_whynot
SAY @396
++ @397 + FHFLT4_long
++ @398 + FHFLT4_possessive
++ @173 + FHFLT4_boring
++ @174 + FHFLT4_brilliant
END

IF ~~ FHFLT4_possessive
SAY @399
IF ~~ EXIT
END

IF ~~ FHFLT4_enemy
SAY @400
IF ~~ + FHFLT4_anyway
END

IF ~~ FHFLT4_broken
SAY @401
IF ~~ + FHFLT4_anyway
END


IF ~~ FHFLT4_long
SAY @402
IF ~~ + FHFLT4_anyway
END

IF ~~ FHFLT4_boring
SAY @403
IF ~~ + FHFLT4_anyway
END

IF ~~ FHFLT4_anyway
SAY @404
IF ~~ EXIT
END

//Lovetalk 5 In Which Faren Is Interested In Your Past Conquests

IF ~Global("FHFarenLoveTalk","GLOBAL",10)~ FHFLT5
SAY @405
+ ~Gender(Player1,FEMALE) Global("FHFLGBWoman","GLOBAL",0)~ + @182 DO ~SetGlobal("FHFarenLoveTalk","GLOBAL",11) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",3400) SetGlobal("FHFLGBWoman","GLOBAL",1)~ + FHFLT5_lgb
+ ~Gender(Player1,FEMALE) Global("FHFLGBWoman","GLOBAL",1)~ + @182 DO ~SetGlobal("FHFarenLoveTalk","GLOBAL",11) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",3400)~ + FHFLT5_sep
+ ~Gender(Player1,MALE) Global("FHFLGBMan","GLOBAL",0)~ + @183 DO ~SetGlobal("FHFarenLoveTalk","GLOBAL",11) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",3400)  SetGlobal("FHFLGBMan","GLOBAL",1)~ + FHFLT5_lgb
+ ~Gender(Player1,MALE) Global("FHFLGBMan","GLOBAL",1)~ + @183 DO ~SetGlobal("FHFarenLoveTalk","GLOBAL",11) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",3400)~ + FHFLT5_sep
+ ~Gender(Player1,FEMALE)~ + @183 DO ~SetGlobal("FHFarenLoveTalk","GLOBAL",11) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",3400)~ + FHFLT5_sep
+ ~Gender(Player1,MALE)~ + @182 DO ~SetGlobal("FHFarenLoveTalk","GLOBAL",11) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",3400)~ + FHFLT5_sep
++ @184 DO ~SetGlobal("FHFarenLoveTalk","GLOBAL",11) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",3400)~ + FHFLT5_heart
++ @406 DO ~SetGlobal("FHFarenLoveTalk","GLOBAL",11) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",3400)~ + FHFLT5_know
++ @186 DO ~SetGlobal("FHFarenLoveTalk","GLOBAL",11) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",3400)~ + FHFLT5_heartbreaker
++ @187 DO ~SetGlobal("FHFarenLoveTalk","GLOBAL",11) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",3400)~ + FHFLT5_business
++ @188 DO ~SetGlobal("FHFarenLoveTalk","GLOBAL",11) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",3400)~ + FHFLT5_serious
END

IF ~~ FHFLT5_lgb
SAY @189
IF ~~ + FHFLT5_serious
END

IF ~~ FHFLT5_sep
SAY @190
IF ~~ + FHFLT5_serious
END

IF ~~ FHFLT5_heart
SAY @191
IF ~~ + FHFLT5_serious
END

IF ~~ FHFLT5_know
SAY @407
IF ~~ + FHFLT5_serious
END

IF ~~ FHFLT5_heartbreaker
SAY @408
IF ~~ + FHFLT5_serious
END

IF ~~ FHFLT5_business
SAY @194
IF ~~ EXIT
END

IF ~~ FHFLT5_serious
SAY @409
++ @410 + FHFLT5_deep
++ @411 + FHFLT5_odd
++ @412 + FHFLT5_well
++ @199 + FHFLT5_danger
END

IF ~~ FHFLT5_deep
SAY @413
IF ~~ + FHFLT5_go
END

IF ~~ FHFLT5_odd
SAY @414
IF ~~ + FHFLT5_go
END

IF ~~ FHFLT5_well
SAY @415
IF ~~ + FHFLT5_go
END

IF ~~ FHFLT5_danger
SAY @416
IF ~~ + FHFLT5_go
END

IF ~~ FHFLT5_go
SAY @417
IF ~~ EXIT
END

//Lovetalk 6 In Which Faren Shows Off His Quick Hands

IF ~Global("FHFarenLoveTalk","GLOBAL",12)~ FHFLT6
SAY @205
++ @206 DO ~SetGlobal("FHFarenLoveTalk","GLOBAL",13) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",3400)~ + FHFLT6_distract
++ @207 DO ~SetGlobal("FHFarenLoveTalk","GLOBAL",13) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",3400)~ + FHFLT6_pocket
++ @208 DO ~SetGlobal("FHFarenLoveTalk","GLOBAL",13) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",3400)~ + FHFLT6_pick
END

IF ~~ FHFLT6_distract
SAY @418
++ @208 + FHFLT6_pick
+ ~CheckStatGT(Player1,14,DEX)~ + @210 + FHFLT6_trick
++ @211 + FHFLT6_mood
END

IF ~~ FHFLT6_pocket
SAY @419
++ @208 + FHFLT6_pick
+ ~CheckStatGT(Player1,14,DEX)~ + @210 + FHFLT6_trick
++ @211 + FHFLT6_mood
END

IF ~~ FHFLT6_pick
SAY @213
IF ~RandomNum(3,1)~ + FHFLT6_success
IF ~RandomNum(3,2)~ + FHFLT6_success
IF ~RandomNum(3,3)~ + FHFLT6_fail
END

IF ~~ FHFLT6_trick
SAY @420
++ @208 + FHFLT6_pick
++ @211 + FHFLT6_mood
END

IF ~~ FHFLT6_mood
SAY @421
IF ~~ + FHFLT6_practise
END

IF ~~ FHFLT6_success
SAY @422
= @423
+ ~CheckStatGT(Player1,13,CHR)~ + @218 + FHFLT6_yeshigh
+ ~CheckStatLT(Player1,14,CHR)~ + @218 + FHFLT6_nohigh
+ ~CheckStatLT(Player1,16,INT)~ + @219 + FHFLT6_how
+ ~CheckStatGT(Player1,15,INT)~ + @220 + FHFLT6_know
++ @221 + FHFLT6_important
END

IF ~~ FHFLT6_fail
SAY @424
= @425
IF ~~ + FHFLT6_practise
END

IF ~~ FHFLT6_yeshigh
SAY @224
IF ~~ + FHFLT6_practise
END

IF ~~ FHFLT6_nohigh
SAY @426
IF ~~ + FHFLT6_practise
END

IF ~~ FHFLT6_how
SAY @427
IF ~~ + FHFLT6_practise
END

IF ~~ FHFLT6_know
SAY @428
IF ~~ + FHFLT6_practise
END

IF ~~ FHFLT6_important
SAY @228
IF ~~ + FHFLT6_practise
END

IF ~~ FHFLT6_practise
SAY @429
IF ~~ EXIT
END

//Lovetalk 7 In Which Faren Fails At Subtlety

IF ~Global("FHFarenLoveTalk","GLOBAL",14)~ FHFLT7
SAY @430
++ @431 DO ~SetGlobal("FHFarenLoveTalk","GLOBAL",15) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",3400)~ + FHFLT7_boring
++ @432 DO ~SetGlobal("FHFarenLoveTalk","GLOBAL",15) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",3400)~ + FHFLT7_crazy
++ @433 DO ~SetGlobal("FHFarenLoveTalk","GLOBAL",15) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",3400)~ + FHFLT7_family
++ @434 DO ~SetGlobal("FHFarenLoveTalk","GLOBAL",15) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",3400)~ + FHFLT7_why
END

IF ~~ FHFLT7_boring
SAY @435
IF ~~ + FHFLT7_celibate
END

IF ~~ FHFLT7_crazy
SAY @436
IF ~~ + FHFLT7_celibate
END

IF ~~ FHFLT7_family
SAY @437
IF ~~ + FHFLT7_celibate
END

IF ~~ FHFLT7_why
SAY @438
IF ~~ + FHFLT7_celibate
END

IF ~~ FHFLT7_celibate
SAY @439
++ @440 + FHFLT7_who
++ @441 + FHFLT7_who
++ @442 + FHFLT7_who
++ @443 + FHFLT7_paranoid
END

IF ~~ FHFLT7_who
SAY @444
IF ~~ + FHFLT7_type
END

IF ~~ FHFLT7_paranoid
SAY @445
IF ~~ + FHFLT7_type
END

IF ~~ FHFLT7_type
SAY @446
++ @447 + FHFLT7_ulterior
++ @448 + FHFLT7_viconia
+ ~Gender(Player1,FEMALE) Global("FHFLGBWoman","GLOBAL",0)~ + @449 DO ~SetGlobal("FHFLGBWoman","GLOBAL",1)~ + FHFLT7_faerie0
+ ~Gender(Player1,FEMALE) Global("FHFLGBWoman","GLOBAL",1)~ + @449 + FHFLT7_faerie1
+ ~Gender(Player1,MALE)~ + @449 + FHFLT7_maerie
++ @450 + FHFLT7_anomen
++ @451 + FHFLT7_jaheira
++ @452 + FHFLT7_hobag
END

IF ~~ FHFLT7_ulterior
SAY @453
IF ~~ + FHFLT7_his
END

IF ~~ FHFLT7_viconia
SAY @454
IF ~~ + FHFLT7_his
END

IF ~~ FHFLT7_faerie0
SAY @455
IF ~~ + FHFLT7_his
END

IF ~~ FHFLT7_faerie1
SAY @456
IF ~~ + FHFLT7_his
END

IF ~~ FHFLT7_maerie
SAY @457
IF ~~ + FHFLT7_his
END

IF ~~ FHFLT7_anomen
SAY @458
IF ~~ + FHFLT7_his
END

IF ~~ FHFLT7_jaheira
SAY @459
IF ~~ + FHFLT7_his
END

IF ~~ FHFLT7_hobag
SAY @460
IF ~~ + FHFLT7_his
END

IF ~~ FHFLT7_his
SAY @461
++ @462 + FHFLT7_guess
+ ~CheckStatGT(Player1,15,STR) Gender(Player1,FEMALE)~ + @463 + FHFLT7_eatthatjosswhedon
+ ~CheckStatGT(Player1,15,STR) Gender(Player1,MALE)~ + @464 + FHFLT7_millsandboon
+ ~CheckStatGT(Player1,15,DEX)~ + @465 + FHFLT7_dex
+ ~CheckStatGT(Player1,15,CON) Gender(Player1,FEMALE)~ + @466 + FHFLT7_girlsta
+ ~CheckStatGT(Player1,15,CON) Gender(Player1,MALE)~ + @466 + FHFLT7_boysta
+ ~CheckStatGT(Player1,15,INT)~ + @467 + FHFLT7_smart
+ ~CheckStatGT(Player1,15,WIS)~ + @468 + FHFLT7_wis
+ ~CheckStatGT(Player1,15,CHR)~ + @469 + FHFLT7_magnetism
END

IF ~~ FHFLT7_guess
SAY @470
++ @471 + FHFLT7_brick
++ @472 + FHFLT7_credit
++ @473 + FHFLT7_strain
++ @474 + FHFLT7_straight
END

IF ~~ FHFLT7_brick
SAY @475
IF ~~ EXIT
END

IF ~~ FHFLT7_credit
SAY @476
IF ~~ EXIT
END

IF ~~ FHFLT7_strain
SAY @477
= @478
IF ~~ EXIT
END

IF ~~ FHFLT7_straight
SAY @479
IF ~~ EXIT
END

IF ~~ FHFLT7_eatthatjosswhedon
SAY @480
++ @481 + FHFLT7_remember
++ @482 + FHFLT7_girlstrcontrol
++ @483 + FHFLT7_shutup
END

IF ~~ FHFLT7_remember
SAY @484
IF ~~ EXIT
END

IF ~~ FHFLT7_girlstrcontrol
SAY @485
IF ~~ EXIT
END

IF ~~ FHFLT7_shutup
SAY @486
IF ~~ EXIT
END

IF ~~ FHFLT7_millsandboon
SAY @487
++ @481 + FHFLT7_remember
++ @488 + FHFLT7_boystrcontrol
++ @483 + FHFLT7_shutup
END

IF ~~ FHFLT7_boystrcontrol
SAY @489
IF ~~ EXIT
END

IF ~~ FHFLT7_dex
SAY @490
++ @491 + FHFLT7_charisbendy
++ @492 + FHFLT7_remember
++ @493 + FHFLT7_farenisbendy
END

IF ~~ FHFLT7_charisbendy
SAY @494
IF ~~ EXIT
END

IF ~~ FHFLT7_farenisbendy
SAY @495
IF ~~ EXIT
END

IF ~~ FHFLT7_girlsta
SAY @496
++ @497 + FHFLT7_table
++ @492 + FHFLT7_remember
END

IF ~~ FHFLT7_table
SAY @498
IF ~~ EXIT
END

IF ~~ FHFLT7_boysta
SAY @499
++ @500 + FHFLT7_remember
++ @501 + FHFLT7_table
END

IF ~~ FHFLT7_smart
SAY @502
++ @503 + FHFLT7_brains
++ @504 + FHFLT7_brains
END

IF ~~ FHFLT7_brains
SAY @505
= @506
IF ~~ EXIT
END

IF ~~ FHFLT7_wis
SAY @507
= @508
++ @500 + FHFLT7_remember
++ @509 + FHFLT7_tellthem
END

IF ~~ FHFLT7_tellthem
SAY @510
IF ~~ EXIT
END

IF ~~ FHFLT7_magnetism
SAY @511
++ @512 + FHFLT7_remember
++ @513 + FHFLT7_tellthem
END

//Lovetalk 8 In Which Faren Thinks You're Hardcore

IF ~Global("FHFarenLoveTalk","GLOBAL",16)~ FHFLT8
SAY @230
= @231
++ @232 DO ~SetGlobal("FHFarenLoveTalk","GLOBAL",17) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",3400)~ + FHFLT8_risk
++ @233 DO ~SetGlobal("FHFarenLoveTalk","GLOBAL",17) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",3400)~ + FHFLT8_help
++ @514 DO ~SetGlobal("FHFarenLoveTalk","GLOBAL",17) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",3400)~ + FHFLT8_skills
++ @235 DO ~SetGlobal("FHFarenLoveTalk","GLOBAL",17) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",3400)~ + FHFLT8_odds
++ @515 DO ~SetGlobal("FHFarenLoveTalk","GLOBAL",17) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",3400)~ + FHFLT8_care
END

IF ~~ FHFLT8_risk
SAY @516
IF ~~ + FHFLT8_conf
END

IF ~~ FHFLT8_help
SAY @517
IF ~~ + FHFLT8_conf
END

IF ~~ FHFLT8_conf
SAY @518
IF ~InParty("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ EXTERN IMOEN2J FHFImLT8
IF ~~ + FHFLT8_comp
END

IF ~~ FHFLT8_skills
SAY @519
IF ~~ + FHFLT8_comp
END

IF ~~ FHFLT8_odds
SAY @520
IF ~~ + FHFLT8_conf
END

IF ~~ FHFLT8_care
SAY @521
IF ~~ + FHFLT8_conf
END

IF ~~ FHFLT8_comp
SAY @522
++ @523 + FHFLT8_enjoy
++ @524 + FHFLT8_you
++ @525 + FHFLT8_quiet
END

IF ~~ FHFLT8_enjoy
SAY @526
IF ~~ + FHFLT8_ego
END

IF ~~ FHFLT8_you
SAY @527
IF ~~ + FHFLT8_ego
END

IF ~~ FHFLT8_quiet
SAY @528
= @529
IF ~~ EXIT
END

IF ~~ FHFLT8_ego
SAY @530
IF ~~ EXIT
END

//Lovetalk 9 In Which Faren Gets You Drunk, But At Least The Brandy Is Fresh

IF ~Global("FHFarenLoveTalk","GLOBAL",18)
OR(10)
AreaCheck("AR0704")
AreaCheck("AR0709")
AreaCheck("AR0406")
AreaCheck("AR0513")
AreaCheck("AR0509")
AreaCheck("AR0021")
AreaCheck("AR0313")
AreaCheck("AR1105")
AreaCheck("AR2010")
AreaCheck("AR1602")~ FHFLT9_inn
SAY @531
+ ~TimeGT(6) TimeLT(21)~ + @299 DO ~SetGlobal("FHFarenLoveTalk","GLOBAL",19) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",3400)~ + FHFLT9inn_early
++ @300 DO ~SetGlobal("FHFarenLoveTalk","GLOBAL",19) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",3400)~ + FHFLT9inn_alert
++ @301 DO ~SetGlobal("FHFarenLoveTalk","GLOBAL",19) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",3400)~ + FHFLT9inn_ok
++ @255 DO ~SetGlobal("FHFarenLoveTalk","GLOBAL",19) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",3400)~ + FHFLT9inn_early
++ @256 DO ~SetGlobal("FHFarenLoveTalk","GLOBAL",19) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",3400)~ + FHFLT9out_sleep
IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) Global("AnomenRomanceActive","GLOBAL",1) !Global("AnomenIsNotKnight","GLOBAL",1)~ DO ~SetGlobal("FHFarenLoveTalk","GLOBAL",19) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",3400)~ EXTERN ANOMENJ FHFLT9innAno
IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) Global("AnomenRomanceActive","GLOBAL",1) Global("AnomenIsNotKnight","GLOBAL",1)~ DO ~SetGlobal("FHFarenLoveTalk","GLOBAL",19) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",3400)~ EXTERN ANOMENJ FHFLT9innAnoCN
IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID) Global("JaheiraRomanceActive","GLOBAL",1)~ DO ~SetGlobal("FHFarenLoveTalk","GLOBAL",19) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",3400)~ EXTERN JAHEIRAJ FHFLT9innJah
END

IF ~~ FHFLT9inn_early
SAY @532
IF ~~ + FHFLT9inn_bar
END

IF ~~ FHFLT9inn_alert
SAY @533
IF ~~ + FHFLT9inn_bar
END

IF ~~ FHFLT9inn_ok
SAY @534
= @535
++ @307 + FHFLT9inn_expense
+ ~CheckStatGT(Player1,15,CON)~ + @536 + FHFLT9inn_drinkhigh
+ ~CheckStatLT(Player1,16,CON) CheckStatGT(Player1,11,CON)~ + @536 + FHFLT9inn_drinkmed
+ ~CheckStatLT(Player1,12,CON)~ + @536 + FHFLT9inn_drinklow
++ @309 + FHFLT9inn_rather1
++ @310 + FHFLT9out_sleep
END

IF ~~ FHFLT9inn_bar
SAY @537
= @538
++ @307 + FHFLT9inn_expense
+ ~CheckStatGT(Player1,15,CON)~ + @267 + FHFLT9inn_drinkhigh
+ ~CheckStatLT(Player1,16,CON) CheckStatGT(Player1,11,CON)~ + @267 + FHFLT9inn_drinkmed
+ ~CheckStatLT(Player1,12,CON)~ + @267 + FHFLT9inn_drinklow
++ @268 + FHFLT9inn_harm
++ @269 + FHFLT9inn_rather
++ @313 + FHFLT9out_sleep
END

IF ~~ FHFLT9inn_expense
SAY @539
+ ~CheckStatGT(Player1,15,CON)~ + @540 + FHFLT9inn_drinkhigh
+ ~CheckStatLT(Player1,16,CON) CheckStatGT(Player1,11,CON)~ + @540 + FHFLT9inn_drinkmed
+ ~CheckStatLT(Player1,12,CON)~ + @540 + FHFLT9inn_drinklow
++ @309 + FHFLT9inn_rather1
++ @310 + FHFLT9out_sleep
END

IF ~~ FHFLT9inn_drinkhigh
SAY @541
IF ~~ + FHFLT9inn_like
END

IF ~~ FHFLT9inn_drinkmed
SAY @542
IF ~~ + FHFLT9inn_like
END

IF ~~ FHFLT9inn_drinklow
SAY @543
IF ~~ + FHFLT9inn_like
END

IF ~~ FHFLT9inn_rather1
SAY @544
IF ~~ + FHFLT9inn_like
END

IF ~~ FHFLT9inn_harm
SAY @320
IF ~~ + FHFLT9inn_like
END

IF ~~ FHFLT9inn_rather
SAY @545
IF ~~ + FHFLT9inn_like
END

IF ~~ FHFLT9inn_like
SAY @546
++ @547 DO ~IncrementGlobal("FHFarenLike","GLOBAL",1)~ + FHFLT9inn_company
++ @548 + FHFLT9inn_snuggle
+ ~Gender(Player1,FEMALE)~ + @549 + FHFLT9inn_kissfemale
+ ~Gender(Player1,MALE)~ + @549 + FHFLT9inn_kissmale
++ @550 + FHFLT9out_sleep
END

IF ~~ FHFLT9inn_company
SAY @551
++ @548 + FHFLT9inn_snuggle
+ ~Gender(Player1,FEMALE)~ + @549 + FHFLT9inn_kissfemale
+ ~Gender(Player1,MALE)~ + @549 + FHFLT9inn_kissmale
++ @552 + FHFLT9out_silent
END

IF ~~ FHFLT9inn_snuggle
SAY @553
++ @554 + FHFLT9inn_what
++ @555 DO ~IncrementGlobal("FHFarenLike","GLOBAL",1)~ + FHFLT9inn_silent
+ ~Gender(Player1,FEMALE)~ + @549 + FHFLT9inn_kissfemale
+ ~Gender(Player1,MALE)~ + @549 + FHFLT9inn_kissmale
++ @552 + FHFLT9inn_silent
END

IF ~~ FHFLT9inn_kissfemale
SAY @556
= @557
++ @558 + FHFLT9inn_stop
++ @559 + FHFLT9inn_carry
++ @560 + FHFLT9inn_bed
END

IF ~~ FHFLT9inn_kissmale
SAY @556
= @561
++ @558 + FHFLT9inn_stop
++ @559 + FHFLT9inn_carry
++ @560 + FHFLT9inn_bed
END

IF ~~ FHFLT9inn_silent
SAY @562
= @563
IF ~~ DO ~RestParty()~
EXIT
END

IF ~~ FHFLT9inn_what
SAY @564
+ ~Gender(Player1,FEMALE)~ + @549 + FHFLT9inn_kissfemale
+ ~Gender(Player1,MALE)~ + @549 + FHFLT9inn_kissmale
++ @565 + FHFLT9inn_wait
++ @566 + FHFLT9out_mistake
END

IF ~~ FHFLT9inn_stop
SAY @567
++ @568 + FHFLT9inn_fast
++ @569 + FHFLT9inn_carryaway
++ @570 DO ~IncrementGlobal("FHFarenLike","GLOBAL",-1)~ + FHFLT9out_mistake
END

IF ~~ FHFLT9inn_carry
SAY @571
IF ~~ DO ~SetGlobal("FHFarenKiss","GLOBAL",1) RestParty()~
EXIT
END

IF ~~ FHFLT9inn_bed
SAY @572
IF ~~ DO ~SetGlobal("FHFarenKiss","GLOBAL",1) RestParty()~
EXIT
END

IF ~~ FHFLT9inn_wait
SAY @573
++ @558 + FHFLT9inn_stop
++ @559 + FHFLT9inn_carry
++ @560 + FHFLT9inn_bed
END

IF ~~ FHFLT9inn_fast
SAY @574
IF ~~ DO ~SetGlobal("FHFarenKiss","GLOBAL",1) RestParty()~
EXIT
END

IF ~~ FHFLT9inn_carryaway
SAY @575
IF ~~ DO ~SetGlobal("FHFarenKiss","GLOBAL",1) RestParty()~
EXIT
END

//Lovetalk 9 In Which Faren Tries To Get You Drunk, With Squirrels Watching You (And Toads)

IF ~Global("FHFarenLoveTalk","GLOBAL",18)
!AreaCheck("AR0704")
!AreaCheck("AR0709")
!AreaCheck("AR0406")
!AreaCheck("AR0513")
!AreaCheck("AR0509")
!AreaCheck("AR0021")
!AreaCheck("AR0313")
!AreaCheck("AR1105")
!AreaCheck("AR2010")
!AreaCheck("AR1602")~ FHFLT9out
SAY @576
+ ~TimeGT(6) TimeLT(21)~ + @251 DO ~SetGlobal("FHFarenLoveTalk","GLOBAL",19) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",3400)~ + FHFLT9out_sun
+ ~OR(2) TimeGT(20) TimeLT(7)~ + @577 DO ~SetGlobal("FHFarenLoveTalk","GLOBAL",19) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",3400)~ + FHFLT9out_cold
++ @578 DO ~SetGlobal("FHFarenLoveTalk","GLOBAL",19) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",3400)~ + FHFLT9out_alert
++ @579 DO ~SetGlobal("FHFarenLoveTalk","GLOBAL",19) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",3400)~ + FHFLT9out_cold
++ @580 DO ~SetGlobal("FHFarenLoveTalk","GLOBAL",19) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",3400)~ + FHFLT9out_talk
++ @256 DO ~SetGlobal("FHFarenLoveTalk","GLOBAL",19) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",3400)~ + FHFLT9out_sleep
IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) Global("AnomenRomanceActive","GLOBAL",1) !Global("AnomenIsNotKnight","GLOBAL",1)~ DO ~SetGlobal("FHFarenLoveTalk","GLOBAL",19) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",3400)~ EXTERN ANOMENJ FHFLT9outAno
IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID) Global("JaheiraRomanceActive","GLOBAL",1)~ DO ~SetGlobal("FHFarenLoveTalk","GLOBAL",19) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",3400)~ EXTERN JAHEIRAJ FHFLT9outJah
END

IF ~~ FHFLT9out_sun
SAY @581
IF ~~ + FHFLT9out_flask
END

IF ~~ FHFLT9out_cold
SAY @258
+ ~CheckStatGT(Player1,15,CON)~ + @582 + FHFLT9out_drinkhigh
+ ~CheckStatLT(Player1,16,CON) CheckStatGT(Player1,11,CON)~ + @582 + FHFLT9out_drinkmed
+ ~CheckStatLT(Player1,12,CON)~ + @582 + FHFLT9out_drinklow
++ @260 + FHFLT9out_rather
++ @261 + FHFLT9out_sleep
END

IF ~~ FHFLT9out_alert
SAY @262
IF ~~ + FHFLT9out_flask
END

IF ~~ FHFLT9out_talk
SAY @263
IF ~~ + FHFLT9out_flask
END

IF ~~ FHFLT9out_sleep
SAY @264
IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ FHFLT9out_flask
SAY @583
+ ~CheckStatGT(Player1,15,CON)~ + @267 + FHFLT9out_drinkhigh
+ ~CheckStatLT(Player1,16,CON) CheckStatGT(Player1,11,CON)~ + @267 + FHFLT9out_drinkmed
+ ~CheckStatLT(Player1,12,CON)~ + @267 + FHFLT9out_drinklow
++ @268 + FHFLT9out_harm
++ @269 + FHFLT9out_rather
++ @313 + FHFLT9out_sleep
END

IF ~~ FHFLT9out_drinkhigh
SAY @584
IF ~~ + FHFLT9out_like
END

IF ~~ FHFLT9out_drinkmed
SAY @585
IF ~~ + FHFLT9out_like
END

IF ~~ FHFLT9out_drinklow
SAY @273
= @586
IF ~~ + FHFLT9out_like
END

IF ~~ FHFLT9out_harm
SAY @275
= @587
IF ~~ + FHFLT9out_like
END

IF ~~ FHFLT9out_rather
SAY @588
IF ~~ + FHFLT9out_like
END

IF ~~ FHFLT9out_like
SAY @589
++ @550 + FHFLT9out_sleep
++ @547 DO ~IncrementGlobal("FHFarenLike","GLOBAL",1)~ + FHFLT9out_company
++ @548 + FHFLT9out_snuggle
+ ~Gender(Player1,FEMALE)~ + @549 + FHFLT9out_kissfemale
+ ~Gender(Player1,MALE)~ + @549 + FHFLT9out_kissmale
END

IF ~~ FHFLT9out_company
SAY @551
++ @548 + FHFLT9out_snuggle
+ ~Gender(Player1,FEMALE)~ + @549 + FHFLT9out_kissfemale
+ ~Gender(Player1,MALE)~ + @549 + FHFLT9out_kissmale
++ @552 + FHFLT9out_silent
END

IF ~~ FHFLT9out_snuggle
SAY @553
++ @554 + FHFLT9out_what
++ @555 DO ~IncrementGlobal("FHFarenLike","GLOBAL",1)~ + FHFLT9out_silent
+ ~Gender(Player1,FEMALE)~ + @549 + FHFLT9out_kissfemale
+ ~Gender(Player1,MALE)~ + @549 + FHFLT9out_kissmale
++ @552 + FHFLT9out_silent
END

IF ~~ FHFLT9out_kissfemale
SAY @557
++ @558 + FHFLT9out_stop
++ @559 + FHFLT9out_carry
++ @560 + FHFLT9out_bed
END

IF ~~ FHFLT9out_kissmale
SAY @590
++ @558 + FHFLT9out_stop
++ @559 + FHFLT9out_carry
++ @560 + FHFLT9out_bed
END

IF ~~ FHFLT9out_silent
SAY @591
IF ~~ DO ~RestParty()~
EXIT
END

IF ~~ FHFLT9out_what
SAY @564
++ @566 + FHFLT9out_mistake
++ @592 + FHFLT9out_wait
+ ~Gender(Player1,FEMALE)~ + @549 + FHFLT9out_kissfemale
+ ~Gender(Player1,MALE)~ + @549 + FHFLT9out_kissmale
END

IF ~~ FHFLT9out_stop
SAY @593
++ @568 + FHFLT9out_fast
++ @569 + FHFLT9out_carryaway
++ @570 DO ~IncrementGlobal("FHFarenLike","GLOBAL",-1)~ + FHFLT9out_mistake
END

IF ~~ FHFLT9out_carry
SAY @594
IF ~~ DO ~SetGlobal("FHFarenKiss","GLOBAL",1) RestParty()~
EXIT
END

IF ~~ FHFLT9out_bed
SAY @595
IF ~~ DO ~SetGlobal("FHFarenKiss","GLOBAL",1) RestParty()~
EXIT
END

IF ~~ FHFLT9out_fast
SAY @596
IF ~~ DO ~SetGlobal("FHFarenKiss","GLOBAL",1) RestParty()~
EXIT
END

IF ~~ FHFLT9out_carryaway
SAY @597
IF ~~ DO ~SetGlobal("FHFarenKiss","GLOBAL",1) RestParty()~
EXIT
END

IF ~~ FHFLT9out_mistake
SAY @598
IF ~~ DO ~SetGlobal("FHFarenFriend","GLOBAL",1) SetGlobal("FHFarenFriendTalk","GLOBAL",17) SetGlobal("FHFarenRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ FHFLT9out_wait
SAY @599
++ @558 + FHFLT9inn_stop
++ @559 + FHFLT9inn_carry
++ @560 + FHFLT9inn_bed
END

//Lovetalk 10 In Which Faren Cannot Keep His Libido In Check, But At Least You Guys Have A Bed

IF ~Global("FHFarenLoveTalk","GLOBAL",20)
OR(10)
AreaCheck("AR0704")
AreaCheck("AR0709")
AreaCheck("AR0406")
AreaCheck("AR0513")
AreaCheck("AR0509")
AreaCheck("AR0021")
AreaCheck("AR0313")
AreaCheck("AR1105")
AreaCheck("AR2010")
AreaCheck("AR1602")~ FHFLT10_inn
SAY @600
++ @601 DO ~SetGlobal("FHFarenLoveTalk","GLOBAL",21)~ + FHFLT10inn_go
++ @602 DO ~SetGlobal("FHFarenLoveTalk","GLOBAL",21)~ + FHFLT9out_sleep
++ @603 DO ~SetGlobal("FHFarenLoveTalk","GLOBAL",21)~ + FHFLT10inn_weird
++ @604 + FHFLT10_feel
IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID) Global("AerieRomanceActive","GLOBAL",1)~ DO ~SetGlobal("FHFarenLoveTalk","GLOBAL",21) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",3400)~ EXTERN AERIEJ FHFLT10innAer
IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) Global("AnomenRomanceActive","GLOBAL",1)~ DO ~SetGlobal("FHFarenLoveTalk","GLOBAL",21) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",3400)~ EXTERN ANOMENJ FHFLT10innAno
END

IF ~~ FHFLT10inn_go
SAY @605
+ ~Gender(Player1,MALE)~ + @606 + FHFLT10_attract1
+ ~Gender(Player1,FEMALE)~ + @606 + FHFLT10_attract2
++ @607 + FHFLT10_virgin
++ @608 + FHFLT10_yes
+ ~Gender(Player1,MALE)~ + @609 + FHFLT10_reper1
+ ~Gender(Player1,FEMALE)~ + @609 + FHFLT10_reper2
++ @610 + FHFLT10_idea
++ @611 + FHFLT10_feel
END

IF ~~ FHFLT10inn_weird
SAY @612
++ @613 + FHFLT10inn_go
++ @614 + FHFLT9out_sleep
END

//Lovetalk 10 In Which Faren Feels Exhibitionistic, And So Propositions You In The Great Outdoors

IF ~Global("FHFarenLoveTalk","GLOBAL",20)
!AreaCheck("AR0704")
!AreaCheck("AR0709")
!AreaCheck("AR0406")
!AreaCheck("AR0513")
!AreaCheck("AR0509")
!AreaCheck("AR0021")
!AreaCheck("AR0313")
!AreaCheck("AR1105")
!AreaCheck("AR2010")
!AreaCheck("AR1602")~ FHFLT10out
SAY @615
++ @616 DO ~SetGlobal("FHFarenLoveTalk","GLOBAL",21)~ + FHFLT10out_go
++ @602 DO ~SetGlobal("FHFarenLoveTalk","GLOBAL",21)~ + FHFLT10_sleep
++ @603 DO ~SetGlobal("FHFarenLoveTalk","GLOBAL",21)~ + FHFLT10out_weird
++ @617 + FHFLT10_feel
IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID) Global("AerieRomanceActive","GLOBAL",1)~ DO ~SetGlobal("FHFarenLoveTalk","GLOBAL",21) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",3400)~ EXTERN AERIEJ FHFLT10outAer
IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) Global("AnomenRomanceActive","GLOBAL",1)~ DO ~SetGlobal("FHFarenLoveTalk","GLOBAL",21) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",3400)~ EXTERN ANOMENJ FHFLT10outAno
END

IF ~~ FHFLT10out_go
SAY @618
= @605
+ ~Gender(Player1,MALE)~ + @606 + FHFLT10_attract1
+ ~Gender(Player1,FEMALE)~ + @606 + FHFLT10_attract2
++ @607 + FHFLT10_virgin
++ @608 + FHFLT10_yes
+ ~Gender(Player1,MALE)~ + @609 + FHFLT10_reper1
+ ~Gender(Player1,FEMALE)~ + @609 + FHFLT10_reper2
++ @610 + FHFLT10_idea
++ @611 + FHFLT10_feel
END

IF ~~ FHFLT10_sleep
SAY @619
IF ~~ DO ~RestParty()~
EXIT
END

IF ~~ FHFLT10out_weird
SAY @620
++ @613 + FHFLT10out_go
++ @614 + FHFLT10_sleep
END

IF ~~ FHFLT10_feel
SAY @621
IF ~~ DO ~SetGlobal("FHFarenFriend","GLOBAL",1) SetGlobal("FHFarenFriendTalk","GLOBAL",17) RealSetGlobalTimer("FHFarenTalkTime","GLOBAL",3400) SetGlobal("FHFarenRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ FHFLT10_attract1
SAY @622
IF ~~ + FHFLT10_want
END

IF ~~ FHFLT10_attract2
SAY @623
IF ~~ + FHFLT10_want
END

IF ~~ FHFLT10_virgin
SAY @624
+ ~Gender(Player1,MALE)~ + @625 + FHFLT10_weirdmen
+ ~Gender(Player1,FEMALE)~ + @626 + FHFLT10_hurtwoman
++ @627 + FHFLT10_yes
++ @628 + FHFLT10_idea
++ @629 + FHFLT10_idea
END

IF ~~ FHFLT10_weirdmen
SAY @630
IF ~~ DO ~SetGlobal("FHFarenSex","GLOBAL",1) RestParty()~ EXIT
END

IF ~~ FHFLT10_hurtwoman
SAY @631
IF ~~ DO ~SetGlobal("FHFarenSex","GLOBAL",1) RestParty()~ EXIT
END

IF ~~ FHFLT10_want
SAY @632
++ @633 + FHFLT10_romantic
++ @634 + FHFLT10_virgin
++ @635 + FHFLT10_yes
++ @636 + FHFLT10_idea
END

IF ~~ FHFLT10_yes
SAY @637
IF ~~ DO ~SetGlobal("FHFarenSex","GLOBAL",1) RestParty()~ EXIT
END

IF ~~ FHFLT10_reper1
SAY @638
++ @639 + FHFLT10_herit
++ @640 + FHFLT10_use
END

IF ~~ FHFLT10_reper2
SAY @641
++ @642 + FHFLT10_herit
++ @640 + FHFLT10_use
END

IF ~~ FHFLT10_idea
SAY @643
IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ FHFLT10_romantic
SAY @644
++ @634 + FHFLT10_virgin
++ @645 + FHFLT10_yes
++ @636 + FHFLT10_idea
++ @629 + FHFLT10_idea
END

IF ~~ FHFLT10_herit
SAY @646
IF ~~ + FHFLT10_pressure
END

IF ~~ FHFLT10_use
SAY @647
IF ~~ + FHFLT10_pressure
END

IF ~~ FHFLT10_pressure
SAY @648
++ @649 + FHFLT10_sleep
++ @650 + FHFLT10_yes
END

//Lovetalk 11a In Which Faren Sexed You Up Good

IF ~Global("FHFarenLoveTalk","GLOBAL",22) Global("FHFarenSex","GLOBAL",1)~ FHFLT11a
SAY @651
++ @652 DO ~SetGlobal("FHFarenLoveTalk","GLOBAL",23) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",3400)~ + FHFLT11a_enjoy
++ @653 DO ~SetGlobal("FHFarenLoveTalk","GLOBAL",23) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",3400)~ + FHFLT11a_better
++ @654 + FHFLT11a_mistake
IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) Global("ViconiaRomanceActive","GLOBAL",1)~ DO ~SetGlobal("FHFarenLoveTalk","GLOBAL",23) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",3400)~ EXTERN VICONIJ FHFLT11Vic
END

IF ~~ FHFLT11a_enjoy
SAY @655
++ @656 + FHFLT11a_repeat
++ @657 + FHFLT11a_lie
++ @658 + FHFLT11a_go
END

IF ~~ FHFLT11a_better
SAY @659
++ @660 + FHFLT11a_hope
++ @661 + FHFLT11a_ego
END

IF ~~ FHFLT11a_mistake
SAY @662
IF ~~ DO ~SetGlobal("FHFarenFriend","GLOBAL",1) SetGlobal("FHFarenFriendTalk","GLOBAL",17) SetGlobal("FHFarenRomanceActive","GLOBAL",3)~
EXIT
END

IF ~~ FHFLT11a_repeat
SAY @663
IF ~~ EXIT
END

IF ~~ FHFLT11a_lie
SAY @664
IF ~~ EXIT
END

IF ~~ FHFLT11a_go
SAY @665
IF ~~ EXIT
END

IF ~~ FHFLT11a_hope
SAY @666
IF ~~ EXIT
END

IF ~~ FHFLT11a_ego
SAY @667
= @668
++ @669 + FHFLT11a_go
++ @670 + FHFLT11a_lie
++ @671 DO ~IncrementGlobal("FHFarenLike","GLOBAL",-1)~ + FHFLT11a_mistake
END

//Lovetalk 11b In Which Faren Didn't Sex You Up

IF ~Global("FHFarenLoveTalk","GLOBAL",22) Global("FHFarenSex","GLOBAL",0)~ FHFLT11b
SAY @672
++ @673 DO ~SetGlobal("FHFAskSex","GLOBAL",1) SetGlobal("FHFarenLoveTalk","GLOBAL",23) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",3400)~ + FHFLT11b_further
++ @674 DO ~SetGlobal("FHFarenLoveTalk","GLOBAL",23) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",3400)~ + FHFLT11b_ready
END

IF ~~ FHFLT11b_further
SAY @675
IF ~~ EXIT
END

IF ~~ FHFLT11b_ready
SAY @676
= @677
IF ~~ EXIT
END

//Lovetalk 12 In Which, In A Shock Move, Faren Likes The Theatre

IF ~Global("FHFarenLoveTalk","GLOBAL",24)~ FHFLT12
SAY @678
= @679
+ ~Gender(Player1,MALE)~ + @680 DO ~SetGlobal("FHFarenLoveTalk","GLOBAL",25) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",3400)~ + FHFLT12_datem
+ ~Gender(Player1,FEMALE)~ + @680 DO ~SetGlobal("FHFarenLoveTalk","GLOBAL",25) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",3400)~ + FHFLT12_datef
+ ~CheckStatGT(Player1,15,INT)~ + @681 DO ~SetGlobal("FHFarenLoveTalk","GLOBAL",25) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",3400)~ + FHFLT12_int
++ @682 DO ~SetGlobal("FHFarenLoveTalk","GLOBAL",25) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",3400)~ + FHFLT12_time
++ @683 DO ~SetGlobal("FHFarenLoveTalk","GLOBAL",25) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",3400)~ + FHFLT12_fun
++ @684 DO ~SetGlobal("FHFarenLoveTalk","GLOBAL",25) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",3400)~ + FHFLT12_intimate
IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID) Global("JaheiraRomanceActive","GLOBAL",1)~ DO ~SetGlobal("FHFarenLoveTalk","GLOBAL",25) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",3400)~ EXTERN JAHEIRAJ FHFLT12jah
END

IF ~~ FHFLT12_datem
SAY @685
++ @686 + FHFLT12_interest
++ @687 + FHFLT12_yes
++ @688 + FHFLT12_inapp
++ @689 + FHFLT12_time
END

IF ~~ FHFLT12_datef
SAY @690
++ @686 + FHFLT12_interest
++ @687 + FHFLT12_yes
++ @688 + FHFLT12_inapp
++ @689 + FHFLT12_time
END

IF ~~ FHFLT12_int
SAY @691
++ @686 + FHFLT12_interest
++ @687 + FHFLT12_yes
++ @688 + FHFLT12_inapp
++ @689 + FHFLT12_time
END

IF ~~ FHFLT12_time
SAY @692
IF ~~ EXIT
END

IF ~~ FHFLT12_fun
SAY @693
++ @686 + FHFLT12_interest
++ @694 + FHFLT12_interest
++ @695 + FHFLT12_inapp
END

IF ~~ FHFLT12_intimate
SAY @696
++ @686 + FHFLT12_interest
++ @697 + FHFLT12_yes
++ @698 + FHFLT12_time
END

IF ~~ FHFLT12_interest
SAY @699
= @700
++ @701 + FHFLT12_risque
++ @702 + FHFLT12_why
++ @703 + FHFLT12_alone
++ @704 DO ~IncrementGlobal("FHFarenLike","GLOBAL",-1)~ + FHFLT12_stupid
END

IF ~~ FHFLT12_yes
SAY @705
IF ~~ + FHFLT12_interest
END

IF ~~ FHFLT12_inapp
SAY @706
= @707
++ @703 + FHFLT12_alone2
++ @708 DO ~IncrementGlobal("FHFarenLike","GLOBAL",-1)~ + FHFLT12_stupid2
END

IF ~~ FHFLT12_risque
SAY @709
= @710
IF ~~ EXIT
END

IF ~~ FHFLT12_why
SAY @711
IF ~~ EXIT
END

IF ~~ FHFLT12_alone
SAY @712
IF ~~ EXIT
END

IF ~~ FHFLT12_stupid
SAY @713
IF ~~ EXIT
END

IF ~~ FHFLT12_alone2
SAY @714
IF ~~ EXIT
END

IF ~~ FHFLT12_stupid2
SAY @715
IF ~~ EXIT
END

//Lovetalk 13 In Which Faren Does The Obligatory Food Talk Rather Well

IF ~Global("FHFarenLoveTalk","GLOBAL",26)~ FHFLT13
SAY @716
++ @717 DO ~SetGlobal("FHFarenLoveTalk","GLOBAL",27) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",3400)~ + FHFLT13_hungry
++ @718 DO ~SetGlobal("FHFarenLoveTalk","GLOBAL",27) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",3400)~ + FHFLT13_ignore
++ @719 DO ~SetGlobal("FHFarenLoveTalk","GLOBAL",27) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",3400)~ + FHFLT13_explain1
END

IF ~~ FHFLT13_hungry
SAY @720
++ @721 + FHFLT13_touchy
++ @722 + FHFLT13_whynot
+ ~CheckStatGT(Player1,11,WIS)~ + @723 + FHFLT13_explain1
END

IF ~~ FHFLT13_ignore
SAY @724
++ @725 + FHFLT13_was
++ @726 + FHFLT13_touchy
+ ~CheckStatGT(Player1,11,WIS)~ + @727 + FHFLT13_explain1
++ @728 + FHFLT13_cranky
END

IF ~~ FHFLT13_explain1
SAY @729
IF ~~ + FHFLT13_show
END

IF ~~ FHFLT13_touchy
SAY @730
IF ~~ + FHFLT13_show
END

IF ~~ FHFLT13_was
SAY @731
IF ~~ + FHFLT13_show
END

IF ~~ FHFLT13_whynot
SAY @732
IF ~~ + FHFLT13_show
END

IF ~~ FHFLT13_cranky
SAY @733
IF ~~ + FHFLT13_show
END

IF ~~ FHFLT13_show
SAY @734
++ @735 + FHFLT13_eat
++ @736 + FHFLT13_cook
++ @737 + FHFLT13_when
++ @738 + FHFLT13_nolikesteak
END

IF ~~ FHFLT13_eat
SAY @739
++ @740 + FHFLT13_cook
++ @741 + FHFLT13_when
++ @742 + FHFLT13_nolikesteak
++ @743 + FHFLT13_nomnomnom
END

IF ~~ FHFLT13_cook
SAY @744
++ @745 + FHFLT13_work
++ @746 + FHFLT13_nomnomnom
++ @747 + FHFLT13_nolikesteak
END

IF ~~ FHFLT13_when
SAY @748
++ @740 + FHFLT13_cook
++ @742 + FHFLT13_nolikesteak
++ @743 + FHFLT13_nomnomnom
END

IF ~~ FHFLT13_work
SAY @749
++ @750 + FHFLT13_slack
++ @751 + FHFLT13_innuendo
++ @752 + FHFLT13_nomnomnom
END

IF ~~ FHFLT13_nolikesteak
SAY @753
++ @754 + FHFLT13_many
++ @755 + FHFLT13_nomnomnom
++ @756 + FHFLT13_fussy
++ @757 + FHFLT13_handy
END
                                                                   
IF ~~ FHFLT13_many
SAY @758
++ @759 + FHFLT13_nomnomnom
++ @760 + FHFLT13_handy
++ @761 + FHFLT13_fussy
END

IF ~~ FHFLT13_handy
SAY @762
++ @763 + FHFLT13_fussy
++ @759 + FHFLT13_nomnomnom
END

IF ~~ FHFLT13_innuendo
SAY @764
++ @742 + FHFLT13_nolikesteak
++ @743 + FHFLT13_nomnomnom
END

IF ~~ FHFLT13_slack
SAY @765
++ @742 + FHFLT13_nolikesteak
++ @743 + FHFLT13_nomnomnom
END

IF ~~ FHFLT13_fussy
SAY @766
= @767
++ @768 + FHFLT13_whatfor
++ @769 + FHFLT13_cake
++ @770 + FHFLT13_relax
++ @771 + FHFLT13_meat
END

IF ~~ FHFLT13_nomnomnom
SAY @772
++ @773 + FHFLT13_good
++ @774 + FHFLT13_better
++ @775 + FHFLT13_kidnap
++ @776 + FHFLT13_whatfor
END

IF ~~ FHFLT13_cake
SAY @777
IF ~~ + FHFLT13_purpose
END

IF ~~ FHFLT13_relax
SAY @778
IF ~~ + FHFLT13_purpose
END

IF ~~ FHFLT13_meat
SAY @779
IF ~~ + FHFLT13_purpose
END

IF ~~ FHFLT13_kidnap
SAY @780
IF ~~ + FHFLT13_purpose
END

IF ~~ FHFLT13_good
SAY @781
IF ~~ + FHFLT13_purpose
END

IF ~~ FHFLT13_better
SAY @782
IF ~~ + FHFLT13_purpose
END

IF ~~ FHFLT13_whatfor
SAY @783
++ @784 + FHFLT13_sweet
++ @785 + FHFLT13_fault
++ @786 + FHFLT13_accept
END

IF ~~ FHFLT13_purpose
SAY @787
++ @784 + FHFLT13_sweet
++ @785 + FHFLT13_fault
++ @786 + FHFLT13_accept
END

IF ~~ FHFLT13_sweet
SAY @788
IF ~~ EXIT
END

IF ~~ FHFLT13_fault
SAY @789
++ @790 DO ~IncrementGlobal("FHFarenLike","GLOBAL",2)~ + FHFLT13_own
++ @791 + FHFLT13_own
++ @792 + FHFLT13_understand
++ @793 + FHFLT13_burden
END

IF ~~ FHFLT13_accept
SAY @794
IF ~~ EXIT
END

IF ~~ FHFLT13_feel
SAY @795
++ @796 + FHFLT13_help
++ @797 DO ~IncrementGlobal("FHFarenLike","GLOBAL",-2)~ + FHFLT13_deargodharsh
END

IF ~~ FHFLT13_own
SAY @798
IF ~~ EXIT
END

IF ~~ FHFLT13_understand
SAY @799
IF ~~ EXIT
END

IF ~~ FHFLT13_burden
SAY @800
IF ~~ EXIT
END

IF ~~ FHFLT13_help
SAY @801
IF ~~ EXIT
END

IF ~~ FHFLT13_deargodharsh
SAY @802
= @803
IF ~~ EXIT
END

//Lovetalk 17: In Which Faren Doesn't Want You To Die

IF ~Global("FHFarenLoveTalk","GLOBAL",28)~ FHFLT14
SAY @804
++ @333 DO ~SetGlobal("FHFarenLoveTalk","GLOBAL",29) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",3400)~ + FHFLT14_joke
++ @334 DO ~SetGlobal("FHFarenLoveTalk","GLOBAL",29) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",3400)~ + FHFLT14_joke
++ @805 DO ~SetGlobal("FHFarenLoveTalk","GLOBAL",29) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",3400)~ + FHFLT14_stressed
++ @335 DO ~SetGlobal("FHFarenLoveTalk","GLOBAL",29) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",3400)~ + FHFLT14_healed
END

IF ~~ FHFLT14_joke
SAY @336
++ @806 + FHFLT14_really
++ @807 + FHFLT14_bet
++ @808 DO ~IncrementGlobal("FHFarenLike","GLOBAL",-1)~ + FHFLT14_deal
++ @809 + FHFLT14_luck
END


IF ~~ FHFLT14_stressed
SAY @810
++ @806 + FHFLT14_really
++ @807 + FHFLT14_bet
++ @808 DO ~IncrementGlobal("FHFarenLike","GLOBAL",-1)~ + FHFLT14_deal
++ @809 + FHFLT14_luck
END

IF ~~ FHFLT14_healed
SAY @811
++ @806 + FHFLT14_really
++ @807 + FHFLT14_bet
++ @808 DO ~IncrementGlobal("FHFarenLike","GLOBAL",-1)~ + FHFLT14_deal
++ @809 + FHFLT14_luck
END

IF ~~ FHFLT14_really
SAY @812
IF ~~ + FHFLT14_whatif
END

IF ~~ FHFLT14_bet
SAY @813
IF ~~ + FHFLT14_whatif
END

IF ~~ FHFLT14_deal
SAY @814
IF ~~ + FHFLT14_whatif
END

IF ~~ FHFLT14_luck
SAY @815
=
@816
+ ~Global("FHFarenSex","GLOBAL",1)~ + @817 + FHFLT14_thatmuchsex
+ ~Global("FHFarenSex","GLOBAL",0)~ + @817 + FHFLT14_thatmuchnosex
++ @818 + FHFLT14_thatit
++ @819 DO ~IncrementGlobal("FHFarenLike","GLOBAL",1)~ + FHFLT14_mutual
++ @350 + FHFLT14_focus
END

IF ~~ FHFLT14_whatif
SAY @820
+ ~Global("FHFarenSex","GLOBAL",1)~ + @817 + FHFLT14_thatmuchsex
+ ~Global("FHFarenSex","GLOBAL",0)~ + @817 + FHFLT14_thatmuchnosex
++ @818 + FHFLT14_thatit
++ @819 DO ~IncrementGlobal("FHFarenLike","GLOBAL",1)~ + FHFLT14_mutual
++ @350 + FHFLT14_focus
END

IF ~~ FHFLT14_thatmuchsex
SAY @821
++ @352 + FHFLT14_going
++ @822 + FHFLT14_thanks
++ @823 DO ~IncrementGlobal("FHFarenLike","GLOBAL",-3)~ + FHFLT14_growapair
END

IF ~~ FHFLT14_thatmuchnosex
SAY @824
++ @352 + FHFLT14_going
++ @822 + FHFLT14_thanks
++ @823 DO ~IncrementGlobal("FHFarenLike","GLOBAL",-3)~ + FHFLT14_growapair
END

IF ~~ FHFLT14_thatit
SAY @825
++ @352 + FHFLT14_going
++ @822 + FHFLT14_thanks
++ @823 DO ~IncrementGlobal("FHFarenLike","GLOBAL",-3)~ + FHFLT14_growapair
END

IF ~~ FHFLT14_mutual
SAY @826
++ @827 + FHFLT14_idea
++ @357 + FHFLT14_avenge
++ @358 + FHFLT14_res
++ @828 + FHFLT14_like
END

IF ~~ FHFLT14_focus
SAY @829
++ @352 + FHFLT14_going
++ @822 + FHFLT14_thanks
++ @823 DO ~IncrementGlobal("FHFarenLike","GLOBAL",-3)~ + FHFLT14_growapair
END

IF ~~ FHFLT14_going
SAY @830
IF ~~ + FHFLT14_end
END

IF ~~ FHFLT14_thanks
SAY @831
IF ~~ + FHFLT14_end
END

IF ~~ FHFLT14_growapair
SAY @832
IF ~~ + FHFLT14_end
END

IF ~~ FHFLT14_idea
SAY @833
IF ~~ + FHFLT14_end
END

IF ~~ FHFLT14_avenge
SAY @834
IF ~~ + FHFLT14_end
END

IF ~~ FHFLT14_res
SAY @835
IF ~~ + FHFLT14_end
END

IF ~~ FHFLT14_like
SAY @836
IF ~~ + FHFLT14_end
END

IF ~~ FHFLT14_end
SAY @837
IF ~~ EXIT
END

//Lovetalk 15 In Which Faren Makes You Decide Either Way

IF ~Global("FHFarenLoveTalk","GLOBAL",30)~ FHFLT15
SAY @838
IF ~GlobalGT("FHFarenLike","GLOBAL",5) Race(Player1,HUMAN)~ DO ~SetGlobal("FHFarenLoveTalk","GLOBAL",31) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",3400)~ + FHFLT15_likeh
IF ~GlobalGT("FHFarenLike","GLOBAL",5) !Race(Player1,HUMAN)~ DO ~SetGlobal("FHFarenLoveTalk","GLOBAL",31) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",3400)~ + FHFLT15_likenh
IF ~GlobalLT("FHFarenLike","GLOBAL",6) GlobalGT("FHFarenLike","GLOBAL",0) Race(Player1,HUMAN)~ DO ~SetGlobal("FHFarenLoveTalk","GLOBAL",31) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",3400)~ + FHFLT15_midh
IF ~GlobalLT("FHFarenLike","GLOBAL",6) GlobalGT("FHFarenLike","GLOBAL",2) !Race(Player1,HUMAN)~ DO ~SetGlobal("FHFarenLoveTalk","GLOBAL",31) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",3400)~ + FHFLT15_midnh
IF ~GlobalLT("FHFarenLike","GLOBAL",1) Race(Player1,HUMAN)~ DO ~SetGlobal("FHFarenLoveTalk","GLOBAL",31) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",3400)~ + FHFLT15_lowh
IF ~GlobalLT("FHFarenLike","GLOBAL",3) !Race(Player1,HUMAN)~ DO ~SetGlobal("FHFarenLoveTalk","GLOBAL",31) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",3400)~ + FHFLT15_lownh
END

IF ~~ FHFLT15_likeh
SAY @839
++ @840 + FHFLT15_loveh
++ @841 + FHFLT15_sure
++ @842 + FHFLT15_friends
END

IF ~~ FHFLT15_likenh
SAY @843
= @844
++ @840 + FHFLT15_lovenh
++ @841 + FHFLT15_sure
++ @842 + FHFLT15_friends
++ @845 + FHFLT15_different
END

IF ~~ FHFLT15_midh
SAY @846
++ @840 + FHFLT15_lovemidh
++ @841 + FHFLT15_sure
++ @842 + FHFLT15_friends
END

IF ~~ FHFLT15_midnh
SAY @847
++ @840 + FHFLT15_lovemidnh
++ @841 + FHFLT15_sure
++ @842 + FHFLT15_friends
++ @845 + FHFLT15_different
END

IF ~~ FHFLT15_lowh
SAY @848
= @849
++ @840 + FHFLT15_lovelowh
++ @841 + FHFLT15_sure
++ @842 + FHFLT15_friends
END

IF ~~ FHFLT15_lownh
SAY @850
= @851
++ @840 + FHFLT15_lovelownh
++ @841 + FHFLT15_sure
++ @842 + FHFLT15_friends
++ @845 + FHFLT15_different
END

IF ~~ FHFLT15_loveh
SAY @852
= @853
IF ~~ DO ~SetGlobal("FHFarenRomanceActive","GLOBAL",2)~ EXIT
END

IF ~~ FHFLT15_lovenh
SAY @854
= @855
IF ~~ DO ~SetGlobal("FHFarenRomanceActive","GLOBAL",2)~ EXIT
END

IF ~~ FHFLT15_sure
SAY @856
++ @857 + FHFLT15_strung
++ @858 + FHFLT15_strung
++ @859 + FHFLT15_time
END

IF ~~ FHFLT15_friends
SAY @860
IF ~~ DO ~SetGlobal("FHFarenRomanceActive","GLOBAL",3) SetGlobal("FHFarenFriend","GLOBAL",1)~
EXIT
END

IF ~~ FHFLT15_different
SAY @861
IF ~Race(Player1,DWARF)~ THEN + FHFLT15_diffdwarf
IF ~Race(Player1,ELF)~ THEN + FHFLT15_diffelf
IF ~Race(Player1,GNOME)~ THEN + FHFLT15_diffgnome
IF ~Race(Player1,HALF_ELF)~ THEN + FHFLT15_diffhalfelf
IF ~Race(Player1,HALFLING)~ THEN + FHFLT15_diffhalfling
IF ~Race(Player1,HALFORC)~ THEN + FHFLT15_diffhalforc
END

IF ~~ FHFLT15_lovemidh
SAY @862
= @863
IF ~~ DO ~SetGlobal("FHFarenRomanceActive","GLOBAL",2)~ EXIT
END

IF ~~ FHFLT15_lovemidnh
SAY @864
IF ~~ DO ~SetGlobal("FHFarenRomanceActive","GLOBAL",2)~ EXIT
END

IF ~~ FHFLT15_lovelowh
SAY @865
IF ~~ DO ~SetGlobal("FHFarenRomanceActive","GLOBAL",2)~ EXIT
END

IF ~~ FHFLT15_lovelownh
SAY @866
IF ~~ DO ~SetGlobal("FHFarenRomanceActive","GLOBAL",2)~ EXIT
END

IF ~~ FHFLT15_strung
SAY @867
++ @868 + FHFLT15_time
++ @869 + FHFLT15_friends
+ ~Race(Player1,HUMAN)~ + @870 + FHFLT15_lovemidh
+ ~!Race(Player1,HUMAN)~ + @870 + FHFLT15_lovemidnh
END

IF ~~ FHFLT15_time
SAY @871
IF ~~ DO ~SetGlobal("FHFarenLoveTalk","GLOBAL",35)~
EXIT
END

IF ~~ FHFLT15_diffdwarf
SAY @872
++ @873 + FHFLT15_common
++ @874 + FHFLT15_lovenh
++ @875 + FHFLT15_sure
++ @876 + FHFLT15_friends
END

IF ~~ FHFLT15_diffelf
SAY @877
++ @878 + FHFLT15_common
++ @874 + FHFLT15_lovenh
++ @875 + FHFLT15_sure
++ @876 + FHFLT15_friends
END

IF ~~ FHFLT15_diffgnome
SAY @879
++ @880 + FHFLT15_common
++ @874 + FHFLT15_lovenh
++ @875 + FHFLT15_sure
++ @876 + FHFLT15_friends
END

IF ~~ FHFLT15_diffhalfelf
SAY @881
++ @882 + FHFLT15_common
++ @874 + FHFLT15_lovenh
++ @875 + FHFLT15_sure
++ @876 + FHFLT15_friends
END

IF ~~ FHFLT15_diffhalfling
SAY @883
++ @884 + FHFLT15_common
++ @874 + FHFLT15_lovenh
++ @875 + FHFLT15_sure
++ @876 + FHFLT15_friends
END

IF ~~ FHFLT15_diffhalforc
SAY @885
++ @884 + FHFLT15_common
++ @874 + FHFLT15_lovenh
++ @875 + FHFLT15_sure
++ @876 + FHFLT15_friends
END

IF ~~ FHFLT15_common
SAY @886
++ @887 + FHFLT15_lovenh
++ @888 + FHFLT15_sure
++ @876 + FHFLT15_friends
END

//Lovetalk 16 In Which Faren Forgets How Relationships Should Work But Does Admirably Anyway

IF ~Global("FHFarenLoveTalk","GLOBAL",32)~ FHFLT16
SAY @889
+ ~Gender(Player1,FEMALE)~ + @890 DO ~SetGlobal("FHFarenLoveTalk","GLOBAL",33) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",3400)~ + FHFLT16_what1
+ ~Gender(Player1,MALE)~ + @890 DO ~SetGlobal("FHFarenLoveTalk","GLOBAL",33) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",3400)~ + FHFLT16_what2
++ @891 DO ~SetGlobal("FHFarenLoveTalk","GLOBAL",33) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",3400)~ + FHFLT16_propose
++ @892 DO ~SetGlobal("FHFarenLoveTalk","GLOBAL",33) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",3400)~ + FHFLT16_yes
++ @893 DO ~SetGlobal("FHFarenLoveTalk","GLOBAL",33) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",3400)~ + FHFLT16_flowers
++ @894 DO ~IncrementGlobal("FHFarenLike","GLOBAL",1) SetGlobal("FHFarenLoveTalk","GLOBAL",33) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",3400)~ + FHFLT16_buy
END

IF ~~ FHFLT16_what1
SAY @895
IF ~~ + FHFLT16_weird
END

IF ~~ FHFLT16_what2
SAY @896
IF ~~ + FHFLT16_weird
END

IF ~~ FHFLT16_propose
SAY @897
IF ~~ + FHFLT16_weird
END

IF ~~ FHFLT16_yes
SAY @898
IF ~~ + FHFLT16_weird
END

IF ~~ FHFLT16_flowers
SAY @899
IF ~~ + FHFLT16_weird
END

IF ~~ FHFLT16_buy
SAY @900
IF ~~ + FHFLT16_weird
END

IF ~~ FHFLT16_weird
SAY @901
++ @902 + FHFLT16_this
++ @903 + FHFLT16_think
++ @904 + FHFLT16_scared
END

IF ~~ FHFLT16_this
SAY @905
++ @906 + FHFLT16_have
++ @907 + FHFLT16_new
++ @908 + FHFLT16_get
END

IF ~~ FHFLT16_think
SAY @909
IF ~~ + FHFLT16_this
END

IF ~~ FHFLT16_scared
SAY @910
IF ~~ + FHFLT16_this
END

IF ~~ FHFLT16_have
SAY @911
IF ~~ + FHFLT16_worry
END

IF ~~ FHFLT16_worry
SAY @912
IF ~~ EXIT
END

IF ~~ FHFLT16_new
SAY @913
IF ~~ + FHFLT16_worry
END

IF ~~ FHFLT16_get
SAY @914
IF ~~ EXIT
END

//Lovetalk 17 In Which Faren Reminisces About Avery's Parents

IF ~Global("FHFarenLoveTalk","GLOBAL",34)~ FHFLT17
SAY @915
++ @916 DO ~SetGlobal("FHFarenLoveTalk","GLOBAL",35) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",3400)~ + FHFLT17_what
++ @917 DO ~SetGlobal("FHFarenLoveTalk","GLOBAL",35) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",3400)~ + FHFLT17_cigar
+ ~OR(2) Class(Player1,DRUID_ALL) Class(Player1,RANGER_ALL)~ + @918 DO ~SetGlobal("FHFarenLoveTalk","GLOBAL",35) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",3400)~ + FHFLT17_garden
+ ~!Class(Player1,DRUID_ALL) !Class(Player1,RANGER_ALL)~ + @919 DO ~SetGlobal("FHFarenLoveTalk","GLOBAL",35) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",3400)~ + FHFLT17_garden
++ @920 DO ~SetGlobal("FHFarenLoveTalk","GLOBAL",35) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",3400)~ + FHFLT17_neither
++ @921 DO ~SetGlobal("FHFarenLoveTalk","GLOBAL",35) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",3400)~ + FHFLT17_clingy
END

IF ~~ FHFLT17_garden
SAY @922
IF ~~ + FHFLT17_what
END

IF ~~ FHFLT17_cigar
SAY @923
IF ~~ + FHFLT17_what
END

IF ~~ FHFLT17_neither
SAY @924
IF ~~ + FHFLT17_what
END

IF ~~ FHFLT17_clingy
SAY @925
IF ~~ + FHFLT17_what
END

IF ~~ FHFLT17_what
SAY @926
++ @927 + FHFLT17_miss
++ @928 + FHFLT17_thank
++ @929 + FHFLT17_approve
++ @930 + FHFLT17_bhaal
END

IF ~~ FHFLT17_miss
SAY @931
++ @932 + FHFLT17_pleased
++ @933 + FHFLT17_gorion
++ @934 + FHFLT17_thank
++ @935 + FHFLT17_approve
++ @936 + FHFLT17_different
END

IF ~~ FHFLT17_thank
SAY @937
++ @938 + FHFLT17_respect
++ @939 + FHFLT17_gorionlove
++ @940 + FHFLT17_ownperson
END

IF ~~ FHFLT17_bhaal
SAY @941
++ @938 + FHFLT17_respect
++ @939 + FHFLT17_gorionlove
++ @940 + FHFLT17_ownperson
END

IF ~~ FHFLT17_pleased
SAY @942
=
@943
+ ~CheckStatGT(Player1,14,CHR)~ + @944 + FHFLT17_win
+ ~CheckStatLT(Player1,15,CHR)~ + @944 + FHFLT17_fail
+ ~Global("FHFarenSex","GLOBAL",0)~ + @945 + FHFLT17_badnosex
+ ~Global("FHFarenSex","GLOBAL",1)~ + @945 + FHFLT17_badsex
++ @946 + FHFLT17_badnosex
++ @947 + FHFLT17_mind
END

IF ~~ FHFLT17_gorion
SAY @948
++ @938 + FHFLT17_respect
++ @939 + FHFLT17_gorionlove
++ @940 + FHFLT17_ownperson
END

IF ~~ FHFLT17_approve
SAY @949
= @943
+ ~CheckStatGT(Player1,14,CHR)~ + @944 + FHFLT17_win
+ ~CheckStatLT(Player1,15,CHR)~ + @944 + FHFLT17_fail
+ ~Global("FHFarenSex","GLOBAL",0)~ + @945 + FHFLT17_badsex
+ ~Global("FHFarenSex","GLOBAL",1)~ + @945 + FHFLT17_badnosex
++ @946 + FHFLT17_badnosex
++ @950 + FHFLT17_mind
END

IF ~~ FHFLT17_different
SAY @951
++ @952 + FHFLT17_proud
++ @953 + FHFLT17_trial
++ @954 + FHFLT17_happy
++ @955 + FHFLT17_proud
END

IF ~~ FHFLT17_respect
SAY @956
IF ~~ + FHFLT17_parents
END

IF ~~ FHFLT17_gorionlove
SAY @957
=
@958
=
@959
IF ~~ EXIT
END

IF ~~ FHFLT17_ownperson
SAY @960
++ @961 + FHFLT17_approve
++ @936 + FHFLT17_different
++ @962 + FHFLT17_scary
END

IF ~~ FHFLT17_parents
SAY @963
+ ~CheckStatGT(Player1,14,CHR)~ + @944 + FHFLT17_win
+ ~CheckStatLT(Player1,15,CHR)~ + @944 + FHFLT17_fail
+ ~Global("FHFarenSex","GLOBAL",0)~ + @945 + FHFLT17_badsex
+ ~Global("FHFarenSex","GLOBAL",1)~ + @945 + FHFLT17_badnosex
++ @946 + FHFLT17_badnosex
++ @950 + FHFLT17_mind
END

IF ~~ FHFLT17_win
SAY @964
IF ~~ EXIT
END

IF ~~ FHFLT17_fail
SAY @965
IF ~~ EXIT
END

IF ~~ FHFLT17_badnosex
SAY @966
IF ~~ EXIT
END

IF ~~ FHFLT17_badsex
SAY @967
=
@968
IF ~~ EXIT
END

IF ~~ FHFLT17_mind
SAY @969
IF ~~ EXIT
END

IF ~~ FHFLT17_trial
SAY @970
= @971
IF ~~ EXIT
END

IF ~~ FHFLT17_happy
SAY @972
IF ~~ EXIT
END

IF ~~ FHFLT17_proud
SAY @973
IF ~~ EXIT
END

IF ~~ FHFLT17_scary
SAY @974
IF ~~ EXIT
END

//Lovetalk 18 In Which Faren Has Excellent Boot Taste

IF ~Global("FHFarenLoveTalk","GLOBAL",36)~ FHFLT18
SAY @975
++ @976 DO ~SetGlobal("FHFarenLoveTalk","GLOBAL",37) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",3400) GiveItemCreate("FHFBOOT",Player1,1,0,0)~ + FHFLT18_next
++ @977 DO ~SetGlobal("FHFarenLoveTalk","GLOBAL",37) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",3400)~ + FHFLT18_kind
++ @978 DO ~SetGlobal("FHFarenLoveTalk","GLOBAL",37) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",3400)~ + FHFLT18_no
END

IF ~~ FHFLT18_kind
SAY @979
++ @980 + FHFLT18_no
++ @981 DO ~GiveItemCreate("FHFBOOT",Player1,1,0,0)~ + FHFLT18_next
++ @978 + FHFLT18_no
END

IF ~~ FHFLT18_no
SAY @982
++ @983 DO ~GiveItemCreate("FHFBOOT",Player1,1,0,0)~ + FHFLT18_next
++ @984 DO ~GiveItemCreate("FHFBOOT",Player1,1,0,0) IncrementGlobal("FHFarenLike","GLOBAL",-1)~ + FHFLT18_isaiditandimeanit
END

IF ~~ FHFLT18_next
SAY @985
++ @986 + FHFLT18_cani
++ @987 + FHFLT18_kiss
+ ~CheckStatGT(Player1,15,INT)~ + @988 + FHFLT18_high
+ ~CheckStatLT(Player1,16,INT) CheckStatGT(Player1,9,INT)~ + @988 + FHFLT18_med
+ ~CheckStatLT(Player1,10,INT)~ + @988 + FHFLT18_low
++ @989 + FHFLT18_smell
END

IF ~~ FHFLT18_isaiditandimeanit
SAY @990
=
@991
++ @992 + FHFLT18_lovely
++ @993 + FHFLT18_got
++ @994 + FHFLT18_what
++ @995 + FHFLT18_where
END

IF ~~ FHFLT18_cani
SAY @996
IF ~~ + FHFLT18_boot
END

IF ~~ FHFLT18_kiss
SAY @997
IF ~~ + FHFLT18_boot
END

IF ~~ FHFLT18_high
SAY @998
IF ~~ + FHFLT18_bootsmart
END

IF ~~ FHFLT18_med
SAY @999
IF ~~ + FHFLT18_bootsmart
END

IF ~~ FHFLT18_low
SAY @1000
IF ~~ + FHFLT18_boot
END

IF ~~ FHFLT18_smell
SAY @1001
= @1002
IF ~~ + FHFLT18_boot
END

IF ~~ FHFLT18_boot
SAY @1003
++ @992 + FHFLT18_lovely
++ @993 + FHFLT18_got
++ @994 + FHFLT18_what
++ @995 + FHFLT18_where
END

IF ~~ FHFLT18_bootsmart
SAY @1004
++ @992 + FHFLT18_lovely
++ @993 + FHFLT18_got
++ @994 + FHFLT18_what
++ @995 + FHFLT18_where
END

IF ~~ FHFLT18_lovely
SAY @1005
IF ~~ + FHFLT18_what
END

IF ~~ FHFLT18_got
SAY @1006
= @1007
IF ~~ + FHFLT18_what
END

IF ~~ FHFLT18_where
SAY @1008
IF ~~ + FHFLT18_what
END

IF ~~ FHFLT18_what
SAY @1009
++ @1010 + FHFLT18_thanks
++ @1011 + FHFLT18_pick
++ @1012 + FHFLT18_handy
++ @1013 + FHFLT18_relaxed
END

IF ~~ FHFLT18_thanks
SAY @1014
++ @1015 + FHFLT18_ofcourse
++ @1016 + FHFLT18_loveyou
++ @1017 + FHFLT18_jewelry
END

IF ~~ FHFLT18_pick
SAY @1018
++ @1019 + FHFLT18_ofcourse
++ @1016 + FHFLT18_loveyou
++ @1020 + FHFLT18_ofcourse
END

IF ~~ FHFLT18_handy
SAY @1021
++ @1022 + FHFLT18_help
++ @1023 + FHFLT18_thanks
++ @1024 + FHFLT18_prefer
END

IF ~~ FHFLT18_relaxed
SAY @1025
IF ~~ EXIT
END

IF ~~ FHFLT18_ofcourse
SAY @1026
IF ~~ EXIT
END

IF ~~ FHFLT18_loveyou
SAY @1027
++ @1028 + FHFLT18_said
++ @1029 + FHFLT18_ready
++ @1030 + FHFLT18_weirdo
END

IF ~~ FHFLT18_jewelry
SAY @1031
IF ~~ EXIT
END

IF ~~ FHFLT18_help
SAY @1032
IF ~~ EXIT
END

IF ~~ FHFLT18_prefer
SAY @1033
IF ~~ EXIT
END

IF ~~ FHFLT18_said
SAY @1034
IF ~~ EXIT
END

IF ~~ FHFLT18_ready
SAY @1035
IF ~~ EXIT
END

IF ~~ FHFLT18_weirdo
SAY @1036
IF ~~ EXIT
END

//Lovetalk 19 In Which Faren Is A Sap

IF ~Global("FHFarenLoveTalk","GLOBAL",38)~ FHFLT19
SAY @1037
= @1038
++ @1039 DO ~SetGlobal("FHFarenLoveTalk","GLOBAL",39) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",3400)~ + FHFLT19_yes
++ @1040 DO ~SetGlobal("FHFarenLoveTalk","GLOBAL",39) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",3400)~ + FHFLT19_distract
++ @1041 DO ~SetGlobal("FHFarenLoveTalk","GLOBAL",39) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",3400)~ + FHFLT19_sleep
++ @1042 DO ~SetGlobal("FHFarenLoveTalk","GLOBAL",39) RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",3400)~ + FHFLT19_here
END

IF ~~ FHFLT19_yes
SAY @1043
IF ~~ + FHFLT19_watch
END

IF ~~ FHFLT19_distract
SAY @1044
IF ~~ + FHFLT19_watch
END

IF ~~ FHFLT19_sleep
SAY @1045
IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ FHFLT19_here
SAY @1046
IF ~~ + FHFLT19_watch
END

IF ~~ FHFLT19_watch
SAY @1047
IF ~Global("FHFarenRomanceActive","GLOBAL",2)~ + FHFLT19_start1
IF ~Global("FHFarenRomanceActive","GLOBAL",1)~ + FHFLT19_start2
END

IF ~~ FHFLT19_start1
SAY @1048
IF ~~ + FHFLT19_stick
END

IF ~~ FHFLT19_start2
SAY @1049
IF ~~ + FHFLT19_stick
END

IF ~~ FHFLT19_stick
SAY @1050
=
@1051
++ @1052 + FHFLT19_sudden
++ @1053 + FHFLT19_too
++ @1054 + FHFLT19_prob
+ ~Global("FHFarenRomanceActive","GLOBAL",2)~ + @1055 DO ~SetGlobal("FHFarenRomanceActive","GLOBAL",3)~ + FHFLT19_fast1
+ ~Global("FHFarenRomanceActive","GLOBAL",1)~ + @1055 DO ~SetGlobal("FHFarenRomanceActive","GLOBAL",3)~ + FHFLT19_fast2
END

IF ~~ FHFLT19_sudden
SAY @1056
++ @1057 + FHFLT19_scare
++ @1058 + FHFLT19_keel
++ @1059 + FHFLT19_too
+ ~Global("FHFarenRomanceActive","GLOBAL",1)~ + @1060 DO ~SetGlobal("FHFarenRomanceActive","GLOBAL",3)~ + FHFLT19_fast2
END

IF ~~ FHFLT19_too
SAY @1061
IF ~~ + FHFLT19_hold
END

IF ~~ FHFLT19_prob
SAY @1062
++ @1057 + FHFLT19_scare
++ @1058 + FHFLT19_keel
++ @1059 + FHFLT19_too
+ ~Global("FHFarenRomanceActive","GLOBAL",1)~ + @1060 DO ~SetGlobal("FHFarenRomanceActive","GLOBAL",3)~ + FHFLT19_fast2
END

IF ~~ FHFLT19_fast1
SAY @1063
=
@1064
IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ FHFLT19_fast2
SAY @1065
=
@1066
IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ FHFLT19_scare
SAY @1067
=
@1068
IF ~~ + FHFLT19_hold
END

IF ~~ FHFLT19_keel
SAY @1069
IF ~~ + FHFLT19_hold
END

IF ~~ FHFLT19_hold
SAY @1070
++ @1071 + FHFLT19_bed
++ @1072 + FHFLT19_funny
++ @1073 + FHFLT19_hard
+ ~Global("FHFarenRomanceActive","GLOBAL",1)~ + @1074 DO ~SetGlobal("FHFarenRomanceActive","GLOBAL",3)~ + FHFLT19_fast2
END

IF ~~ FHFLT19_bed
SAY @1075
IF ~~ DO ~SetGlobal("FHFarenRomanceActive","GLOBAL",2) RestParty()~ EXIT
END

IF ~~ FHFLT19_funny
SAY @1076
IF ~~ DO ~SetGlobal("FHFarenRomanceActive","GLOBAL",2) RestParty()~ EXIT
END

IF ~~ FHFLT19_hard
SAY @1077
IF ~~ DO ~SetGlobal("FHFarenRomanceActive","GLOBAL",2) RestParty()~ EXIT
END

//Lovetalk 20 In Which Faren Has A Ferret, Felix

IF ~Global("FHFarenLoveTalk","GLOBAL",40)~ FHFLT20
SAY @1078
++ @1079 DO ~SetGlobal("FHFarenLoveTalk","GLOBAL",41) GiveItemCreate("FHFFEL","FHFRN",0,0,0)~ + FHFLT20_next
++ @1080 DO ~SetGlobal("FHFarenLoveTalk","GLOBAL",41) GiveItemCreate("FHFFEL","FHFRN",0,0,0)~ + FHFLT20_next
++ @1081 DO ~SetGlobal("FHFarenLoveTalk","GLOBAL",41) GiveItemCreate("FHFFEL","FHFRN",0,0,0)~ + FHFLT20_next
END

IF ~~ FHFLT20_next
SAY @1082
++ @1083 + FHFLT20_isthat
++ @1084 + FHFLT20_what
++ @1085 + FHFLT20_cute
++ @1086 + FHFLT20_mage
END

IF ~~ FHFLT20_isthat
SAY @1087
IF ~~ + FHFLT20_hifelix
END

IF ~~ FHFLT20_what
SAY @1088
IF ~~ + FHFLT20_hifelix
END

IF ~~ FHFLT20_cute
SAY @1089
IF ~~ + FHFLT20_hifelix
END

IF ~~ FHFLT20_mage
SAY @1090
IF ~~ + FHFLT20_hifelix
END

IF ~~ FHFLT20_hifelix
SAY @1091
++ @1092 + FHFLT20_brandish
++ @1093 + FHFLT20_yo
++ @1094 + FHFLT20_where
END

IF ~~ FHFLT20_brandish
SAY @1095
++ @1096 + FHFLT20_stopplaying
++ @1097 + FHFLT20_yo
++ @1098 + FHFLT20_where
END

IF ~~ FHFLT20_yo
SAY @1099
++ @1100 + FHFLT20_like
++ @1101 + FHFLT20_safe
++ @1102 + FHFLT20_ferrets
++ @1103 + FHFLT20_more
END

IF ~~ FHFLT20_where
SAY @1104
++ @1101 + FHFLT20_safe
++ @1102 + FHFLT20_ferrets
++ @1103 + FHFLT20_stopplaying
END

IF ~~ FHFLT20_stopplaying
SAY @1105
IF ~~ + FHFLT20_more
END

IF ~~ FHFLT20_more
SAY @1106
++ @1107 + FHFLT20_answer
++ @1108 + FHFLT20_glad
++ @1109 + FHFLT20_children
++ @1110 + FHFLT20_glad
END

IF ~~ FHFLT20_like
SAY @1111
= @1112
++ @1113 + FHFLT20_apologise
++ @1114 + FHFLT20_cheerful
++ @1115 + FHFLT20_express
END

IF ~~ FHFLT20_safe
SAY @1116
= @1117
++ @1107 + FHFLT20_answer
++ @1108 + FHFLT20_glad
++ @1109 + FHFLT20_children
++ @1110 + FHFLT20_glad
END

IF ~~ FHFLT20_ferrets
SAY @1118
= @1106
++ @1107 + FHFLT20_answer
++ @1108 + FHFLT20_glad
++ @1109 + FHFLT20_children
++ @1110 + FHFLT20_glad
END

IF ~~ FHFLT20_apologise
SAY @1119
= @1106
++ @1107 + FHFLT20_answer
++ @1108 + FHFLT20_glad
++ @1109 + FHFLT20_children
++ @1110 + FHFLT20_glad
END

IF ~~ FHFLT20_cheerful
SAY @1120
++ @1107 + FHFLT20_answer
++ @1108 + FHFLT20_glad
++ @1109 + FHFLT20_children
++ @1110 + FHFLT20_glad
END

IF ~~ FHFLT20_express
SAY @1121
= @1122
++ @1107 + FHFLT20_answer
++ @1108 + FHFLT20_glad
++ @1109 + FHFLT20_children
++ @1110 + FHFLT20_glad
END


IF ~~ FHFLT20_answer
SAY @1123
++ @1124 + FHFLT20_settle
++ @1125 + FHFLT20_road
++ @1126 + FHFLT20_willdo
END

IF ~~ FHFLT20_glad
SAY @1127
IF ~~ + FHFLT20_kiss
END

IF ~~ FHFLT20_children
SAY @1128
= @1129
+ ~Gender(Player1,FEMALE)~ + @1130 + FHFLT20_femalewant
+ ~Gender(Player1,MALE)~ + @1130 + FHFLT20_malewant
++ @1131 + FHFLT20_spring
++ @1132 + FHFLT20_heart
+ ~Gender(Player1,FEMALE)~ + @1133 + FHFLT20_femaleday
+ ~Gender(Player1,MALE)~ + @1134 + FHFLT20_maleday
END

IF ~~ FHFLT20_settle
SAY @1135
IF ~~ + FHFLT20_kiss
END

IF ~~ FHFLT20_road
SAY @1136
IF ~~ + FHFLT20_kiss
END

IF ~~ FHFLT20_willdo
SAY @1137
IF ~~ + FHFLT20_kiss
END

IF ~~ FHFLT20_malewant
SAY @1138
=
@1139
IF ~~ + FHFLT20_kiss
END

IF ~~ FHFLT20_femalewant
SAY @1140
= @1141
IF ~~ + FHFLT20_kiss
END

IF ~~ FHFLT20_spring
SAY @1142
= @1143
IF ~~ + FHFLT20_kiss
END

IF ~~ FHFLT20_heart
SAY @1144
= @1145
IF ~~ + FHFLT20_kiss
END

IF ~~ FHFLT20_femaleday
SAY @1146
=
@1147
IF ~~ + FHFLT20_kiss
END

IF ~~ FHFLT20_maleday
SAY @1148
=
@1147
IF ~~ + FHFLT20_kiss
END

IF ~~ FHFLT20_kiss
SAY @1149
IF ~~ EXIT
END

//Floating plot-related talks

//Plot talk 1: Imoen

IF ~Global("FHFPlotTalkStart","GLOBAL",1) Global("FHFarenPlotTalk","GLOBAL",2)~ FHFPlot1
SAY @1150
++ @1151 DO ~SetGlobal("FHFPlotTalkStart","GLOBAL",0) SetGlobal("FHFarenPlotTalk","GLOBAL",3)~ + FHFPlot1_worry
++ @1152 DO ~SetGlobal("FHFPlotTalkStart","GLOBAL",0) SetGlobal("FHFarenPlotTalk","GLOBAL",3)~ + FHFPlot1_revenge
++ @1153 DO ~SetGlobal("FHFPlotTalkStart","GLOBAL",0) SetGlobal("FHFarenPlotTalk","GLOBAL",3)~ + FHFPlot1_time
++ @1154 DO ~SetGlobal("FHFPlotTalkStart","GLOBAL",0) IncrementGlobal("FHFarenLike","GLOBAL",-1) SetGlobal("FHFarenPlotTalk","GLOBAL",3)~ + FHFPlot1_business
END

IF ~~ FHFPlot1_worry
SAY @1155
++ @1156 DO ~IncrementGlobal("FHFarenLike","GLOBAL",1)~ + FHFPlot1_comp
++ @1157 + FHFPlot1_left
++ @1158 + FHFPlot1_grow
END

IF ~~ FHFPlot1_revenge
SAY @1159
= @1160
++ @1161 + FHFPlot1_advice
++ @1162 DO ~IncrementGlobal("FHFarenLike","GLOBAL",-1)~ + FHFPlot1_suffer
++ @1163 DO ~IncrementGlobal("FHFarenLike","GLOBAL",1)~ + FHFPlot1_hold
++ @1164 + FHFPlot1_advice
END

IF ~~ FHFPlot1_time
SAY @1165
IF ~~ EXIT
END

IF ~~ FHFPlot1_business
SAY @1166
IF ~~ EXIT
END

IF ~~ FHFPlot1_comp
SAY @1167
IF ~~ EXIT
END

IF ~~ FHFPlot1_left
SAY @1168
=
@1169
IF ~~ EXIT
END

IF ~~ FHFPlot1_grow
SAY @1170
= @1171
IF ~~ EXIT
END

IF ~~ FHFPlot1_advice
SAY @1172
IF ~~ EXIT
END

IF ~~ FHFPlot1_suffer
SAY @1173
IF ~~ EXIT
END

IF ~~ FHFPlot1_hold
SAY @1174
=
@1175
IF ~~ EXIT
END

//Plot talk 2a: working for Aran

IF ~Global("FHFPlotTalkStart","GLOBAL",1) Global("WorkingForAran","GLOBAL",1) Global("FHFarenPlotTalk","GLOBAL",4)~ FHFPlot2a
SAY @1176
++ @1177 DO ~SetGlobal("FHFPlotTalkStart","GLOBAL",0) SetGlobal("FHFarenPlotTalk","GLOBAL",5)~ + FHFPlot2a_dare
++ @1178 DO ~SetGlobal("FHFPlotTalkStart","GLOBAL",0) SetGlobal("FHFarenPlotTalk","GLOBAL",5)~ + FHFPlot2a_fair
++ @1179 DO ~SetGlobal("FHFPlotTalkStart","GLOBAL",0) SetGlobal("FHFarenPlotTalk","GLOBAL",5)~ + FHFPlot2a_only
++ @1180 DO ~SetGlobal("FHFPlotTalkStart","GLOBAL",0) SetGlobal("FHFarenPlotTalk","GLOBAL",5)~ + FHFPlot2a_choice
END

IF ~~ FHFPlot2a_dare
SAY @1181
IF ~~ EXIT
END

IF ~~ FHFPlot2a_fair
SAY @1182
++ @1183 + FHFPlot2a_fight
++ @1184 + FHFPlot2a_afraid
++ @1185 + FHFPlot2a_choice
++ @1186 + FHFPlot2a_work
END

IF ~~ FHFPlot2a_only
SAY @1187
IF ~~ + FHFPlot2a_through
END

IF ~~ FHFPlot2a_choice
SAY @1188
IF ~~ + FHFPlot2a_through
END

IF ~~ FHFPlot2a_fight
SAY @1189
IF ~~ + FHFPlot2a_through
END

IF ~~ FHFPlot2a_afraid
SAY @1190
IF ~~ + FHFPlot2a_through
END

IF ~~ FHFPlot2a_work
SAY @1191
IF ~~ + FHFPlot2a_through
END

IF ~~ FHFPlot2a_through
SAY @1192
IF ~~ EXIT
END

//Plot talk 2b: working for Bodhi

IF ~Global("FHFPlotTalkStart","GLOBAL",1) Global("WorkingForBodhi","GLOBAL",1) Global("FHFarenPlotTalk","GLOBAL",4)~ FHFPlot2b
SAY @1193
++ @1194 DO ~SetGlobal("FHFPlotTalkStart","GLOBAL",0) SetGlobal("FHFarenPlotTalk","GLOBAL",5)~ + FHFPlot2b_odd
++ @1195 DO ~SetGlobal("FHFPlotTalkStart","GLOBAL",0) SetGlobal("FHFarenPlotTalk","GLOBAL",5)~ + FHFPlot2b_ideal
++ @1196 DO ~SetGlobal("FHFPlotTalkStart","GLOBAL",0) SetGlobal("FHFarenPlotTalk","GLOBAL",5)~ + FHFPlot2b_strong
END

IF ~~ FHFPlot2b_odd
SAY @1197
IF ~~ + FHFPlot2b_through
END

IF ~~ FHFPlot2b_ideal
SAY @1198
IF ~~ + FHFPlot2b_through
END

IF ~~ FHFPlot2b_strong
SAY @1199
IF ~~ + FHFPlot2b_through
END

IF ~~ FHFPlot2b_through
SAY @1200
IF ~~ EXIT
END


//Plot talk 3: Brynnlaw

IF ~Global("FHFPlotTalkStart","GLOBAL",1) Global("FHFarenPlotTalk","GLOBAL",6)~ FHFPlot3
SAY @1201
= @1202
++ @1203 DO ~SetGlobal("FHFPlotTalkStart","GLOBAL",0) SetGlobal("FHFarenPlotTalk","GLOBAL",7)~ + FHFPlot3_thank
++ @1204 DO ~SetGlobal("FHFPlotTalkStart","GLOBAL",0) SetGlobal("FHFarenPlotTalk","GLOBAL",7)~ + FHFPlot3_expect
++ @1205 DO ~SetGlobal("FHFPlotTalkStart","GLOBAL",0) SetGlobal("FHFarenPlotTalk","GLOBAL",7) IncrementGlobal("FHFarenLike","GLOBAL",1)~ + FHFPlot3_need
++ @1206 DO ~SetGlobal("FHFPlotTalkStart","GLOBAL",0) SetGlobal("FHFarenPlotTalk","GLOBAL",7)~ + FHFPlot3_handle
END

IF ~~ FHFPlot3_thank
SAY @1207
IF ~~ EXIT
END

IF ~~ FHFPlot3_expect
SAY @1208
++ @1209 DO ~IncrementGlobal("FHFarenLike","GLOBAL",1)~ + FHFPlot3_like
++ @1210 + FHFPlot3_handle2
END

IF ~~ FHFPlot3_need
SAY @1211
=
@1212
IF ~~ EXIT
END

IF ~~ FHFPlot3_handle
SAY @1213
=
@1214
IF ~~ EXIT
END

IF ~~ FHFPlot3_like
SAY @1215
IF ~~ EXIT
END

IF ~~ FHFPlot3_handle2
SAY @1216
IF ~~ EXIT
END

//Plot talk 4: The Underdark

IF ~Global("FHFPlotTalkStart","GLOBAL",1) Global("FHFarenPlotTalk","GLOBAL",8)~ FHFPlot4
SAY @1217
++ @1218 DO ~SetGlobal("FHFPlotTalkStart","GLOBAL",0) SetGlobal("FHFarenPlotTalk","GLOBAL",9)~ + FHFPlot4_comfort
++ @1219 DO ~SetGlobal("FHFPlotTalkStart","GLOBAL",0) SetGlobal("FHFarenPlotTalk","GLOBAL",9) IncrementGlobal("FHFarenLike","GLOBAL",1)~ + FHFPlot4_soon
++ @1220 DO ~SetGlobal("FHFPlotTalkStart","GLOBAL",0) SetGlobal("FHFarenPlotTalk","GLOBAL",9) IncrementGlobal("FHFarenLike","GLOBAL",-1)~ + FHFPlot4_whine
END

IF ~~ FHFPlot4_comfort
SAY @1221
IF ~~ EXIT
END

IF ~~ FHFPlot4_soon
SAY @1222
=
@1223
IF ~~ EXIT
END

IF ~~ FHFPlot4_whine
SAY @1224
IF ~~ EXIT
END

//Plot talk 5: out of the Underdark

IF ~Global("FHFPlotTalkStart","GLOBAL",1) Global("FHFarenPlotTalk","GLOBAL",10)~ FHFPlot5
SAY @1225
++ @1226 DO ~SetGlobal("FHFPlotTalkStart","GLOBAL",0) SetGlobal("FHFarenPlotTalk","GLOBAL",11)~ + FHFPlot5_remember
++ @1227 DO ~SetGlobal("FHFPlotTalkStart","GLOBAL",0) SetGlobal("FHFarenPlotTalk","GLOBAL",11)~ + FHFPlot5_out
++ @1228 DO ~SetGlobal("FHFPlotTalkStart","GLOBAL",0) SetGlobal("FHFarenPlotTalk","GLOBAL",11)~ + FHFPlot5_sun
++ @1229 DO ~SetGlobal("FHFPlotTalkStart","GLOBAL",0) SetGlobal("FHFarenPlotTalk","GLOBAL",11)~ + FHFPlot5_happy
END

IF ~~ FHFPlot5_remember
SAY @1230
IF ~~ EXIT
END

IF ~~ FHFPlot5_out
SAY @1231
IF ~~ EXIT
END

IF ~~ FHFPlot5_sun
SAY @1232
IF ~~ EXIT
END

IF ~~ FHFPlot5_happy
SAY @1233
IF ~~ EXIT
END

//Plot talk 6: before facing Bodhi

IF ~Global("FHFPlotTalkStart","GLOBAL",1) Global("FHFarenPlotTalk","GLOBAL",12)~ FHFPlot6
SAY @1234
++ @1235 DO ~SetGlobal("FHFPlotTalkStart","GLOBAL",0) SetGlobal("FHFarenPlotTalk","GLOBAL",13)~ + FHFPlot6_back
++ @1236 DO ~SetGlobal("FHFPlotTalkStart","GLOBAL",0) SetGlobal("FHFarenPlotTalk","GLOBAL",13)~ + FHFPlot6_stake
++ @1237 DO ~SetGlobal("FHFPlotTalkStart","GLOBAL",0) SetGlobal("FHFarenPlotTalk","GLOBAL",13)~ + FHFPlot6_match
END

IF ~~ FHFPlot6_back
SAY @1238
IF ~~ + FHFPlot6_wish
END

IF ~~ FHFPlot6_stake
SAY @1239
IF ~~ + FHFPlot6_wish
END

IF ~~ FHFPlot6_match
SAY @1240
IF ~~ + FHFPlot6_wish
END

IF ~~ FHFPlot6_wish
SAY @1241
++ @1242 + FHFPlot6_serious
++ @1243 + FHFPlot6_glad
++ @1244 + FHFPlot6_bother
END

IF ~~ FHFPlot6_serious
SAY @1245
IF ~~ EXIT
END

IF ~~ FHFPlot6_glad
SAY @1246
IF ~~ EXIT
END

IF ~~ FHFPlot6_bother
SAY @1247
IF ~~ EXIT
END

//Plot talk 7: after killing Bodhi

IF ~Global("FHFPlotTalkStart","GLOBAL",1) Global("FHFarenPlotTalk","GLOBAL",14)~ FHFPlot7
SAY @1248
++ @1249 DO ~SetGlobal("FHFPlotTalkStart","GLOBAL",0) SetGlobal("FHFarenPlotTalk","GLOBAL",15)~ + FHFPlot7_soul
++ @1250 DO ~SetGlobal("FHFPlotTalkStart","GLOBAL",0) SetGlobal("FHFarenPlotTalk","GLOBAL",15)~ + FHFPlot7_step
++ @1251 DO ~SetGlobal("FHFPlotTalkStart","GLOBAL",0) SetGlobal("FHFarenPlotTalk","GLOBAL",15)~ + FHFPlot7_survive
++ @1252 DO ~SetGlobal("FHFPlotTalkStart","GLOBAL",0) SetGlobal("FHFarenPlotTalk","GLOBAL",15)~ + FHFPlot7_faith
END

IF ~~ FHFPlot7_soul
SAY @1253
++ @1254 + FHFPlot7_helps
++ @1255 + FHFPlot7_long
++ @1256 + FHFPlot7_life
END

IF ~~ FHFPlot7_step
SAY @1257
++ @1258 + FHFPlot7_energy
++ @1259 + FHFPlot7_free
++ @1260 + FHFPlot7_rest
END

IF ~~ FHFPlot7_survive
SAY @1261
++ @1262 + FHFPlot7_free
++ @1263 + FHFPlot7_helps
++ @1264 + FHFPlot7_change
END

IF ~~ FHFPlot7_faith
SAY @1265
= @1266
+ ~Global("FHFarenRomanceActive","GLOBAL",2)~ + @1267 + FHFPlot7_lucky1
+ ~!Global("FHFarenRomanceActive","GLOBAL",2)~ + @1267 + FHFPlot7_lucky2
++ @1268 + FHFPlot7_free
END

IF ~~ FHFPlot7_helps
SAY @1269
IF ~~ EXIT
END

IF ~~ FHFPlot7_long
SAY @1270
IF ~~ EXIT
END

IF ~~ FHFPlot7_life
SAY @1271
=
@1272
IF ~~ EXIT
END

IF ~~ FHFPlot7_energy
SAY @1273
=
@1274
IF ~~ EXIT
END

IF ~~ FHFPlot7_free
SAY @1275
=
@1276
IF ~~ EXIT
END

IF ~~ FHFPlot7_rest
SAY @1277
IF ~~ EXIT
END

IF ~~ FHFPlot7_change
SAY @1278
=
@1279
IF ~~ EXIT
END

IF ~~ FHFPlot7_lucky1
SAY @1280
IF ~~ EXIT
END

IF ~~ FHFPlot7_lucky2
SAY @1281
IF ~~ EXIT
END

//Plot talk 8: Suldanessellar

IF ~Global("FHFPlotTalkStart","GLOBAL",1) Global("FHFarenPlotTalk","GLOBAL",16)~ FHFPlot8
SAY @1282
+ ~Race(Player1,ELF)~ + @1283 DO ~SetGlobal("FHFPlotTalkStart","GLOBAL",0) SetGlobal("FHFarenPlotTalk","GLOBAL",17)~ + FHFPlot8_home
+ ~Race(Player1,HALF_ELF)~ + @1284 DO ~SetGlobal("FHFPlotTalkStart","GLOBAL",0) SetGlobal("FHFarenPlotTalk","GLOBAL",17)~ + FHFPlot8_belong
++ @1285 DO ~SetGlobal("FHFPlotTalkStart","GLOBAL",0) SetGlobal("FHFarenPlotTalk","GLOBAL",17)~ + FHFPlot8_beaut
++ @1286 DO ~SetGlobal("FHFPlotTalkStart","GLOBAL",0) SetGlobal("FHFarenPlotTalk","GLOBAL",17)~ + FHFPlot8_fall
++ @1287 DO ~SetGlobal("FHFPlotTalkStart","GLOBAL",0) SetGlobal("FHFarenPlotTalk","GLOBAL",17)~ + FHFPlot8_job
END

IF ~~ FHFPlot8_home
SAY @1288
IF ~~ + FHFPlot8_mouth
END

IF ~~ FHFPlot8_belong
SAY @1289
IF ~~ + FHFPlot8_mouth
END

IF ~~ FHFPlot8_beaut
SAY @1290
IF ~~ + FHFPlot8_loud
END

IF ~~ FHFPlot8_fall
SAY @1291
=
@1292
IF ~~ EXIT
END

IF ~~ FHFPlot8_job
SAY @1293
IF ~~ + FHFPlot8_loud
END

IF ~~ FHFPlot8_mouth
SAY @1294
IF ~~ EXIT
END

IF ~~ FHFPlot8_loud
SAY @1295
IF ~~ EXIT
END

//Non-tracked dialogue

//Sleeping with Faren

//Outdoors

IF ~Global("FHFAskSex","GLOBAL",2)
!AreaCheck("AR0704")
!AreaCheck("AR0709")
!AreaCheck("AR0406")
!AreaCheck("AR0513")
!AreaCheck("AR0509")
!AreaCheck("AR0021")
!AreaCheck("AR0313")
!AreaCheck("AR1105")
!AreaCheck("AR2010")
!AreaCheck("AR1602")~ FHFAskSexa
SAY @1296
= @1297
++ @1298 DO ~SetGlobal("FHFAskSex","GLOBAL",0)~ + FHFAskSex_ready
++ @1299 DO ~SetGlobal("FHFAskSex","GLOBAL",3) SetGlobal("FHFarenSex","GLOBAL",1)~ + FHFAskSex_like
END

IF ~~ FHFAskSex_ready
SAY @1300
IF ~~ DO ~RestParty()~
EXIT
END

IF ~~ FHFAskSex_like
SAY @1301
IF ~~ DO ~RestParty()~
EXIT
END

//Indoors

IF ~Global("FHFAskSex","GLOBAL",2)
OR(10)
AreaCheck("AR0704")
AreaCheck("AR0709")
AreaCheck("AR0406")
AreaCheck("AR0513")
AreaCheck("AR0509")
AreaCheck("AR0021")
AreaCheck("AR0313")
AreaCheck("AR1105")
AreaCheck("AR2010")
AreaCheck("AR1602")~ FHFAskSexb
SAY @1302
= @1303
++ @549 DO ~SetGlobal("FHFarenSex","GLOBAL",1) SetGlobal("FHFAskSex","GLOBAL",3)~ + FHFAskSexb_kiss
++ @1304 DO ~SetGlobal("FHFAskSex","GLOBAL",0)~ + FHFAskSex_ready
++ @1305 DO ~SetGlobal("FHFarenSex","GLOBAL",1) SetGlobal("FHFAskSex","GLOBAL",3)~ + FHFAskSexb_bed
END

IF ~~ FHFAskSexb_kiss
SAY @1306
IF ~~ DO ~RestParty()~
EXIT
END

IF ~~ FHFAskSexb_bed
SAY @1307
=
@1308
IF ~~ DO ~RestParty()~
EXIT
END

//Morning after sleeping with Faren

IF ~Global("FHFAskSex","GLOBAL",4)~ FHFAskSexAfter
SAY @651
++ @652 DO ~SetGlobal("FHFAskSex","GLOBAL",5)~ + FHFAskSex_enjoy
++ @1309 DO ~SetGlobal("FHFAskSex","GLOBAL",5)~ + FHFAskSex_special
++ @653 DO ~SetGlobal("FHFAskSex","GLOBAL",5)~ + FHFAskSex_better
END

IF ~~ FHFAskSex_enjoy
SAY @655
++ @656 + FHFAskSex_repeat
++ @657 + FHFAskSex_lie
++ @658 + FHFAskSex_go
END

IF ~~ FHFAskSex_special
SAY @1310
++ @1311 + FHFAskSex_go
++ @1312 + FHFAskSex_lie
END

IF ~~ FHFAskSex_better
SAY @659
++ @660 + FHFAskSex_hope
++ @661 + FHFAskSex_ego
END

IF ~~ FHFAskSex_repeat
SAY @663
IF ~~ EXIT
END

IF ~~ FHFAskSex_lie
SAY @1313
=
@1314
IF ~~ EXIT
END

IF ~~ FHFAskSex_go
SAY @1315
IF ~~ EXIT
END

IF ~~ FHFAskSex_hope
SAY @666
IF ~~ EXIT
END

IF ~~ FHFAskSex_ego
SAY @667
=
@668
++ @669 + FHFAskSex_go
++ @670 + FHFAskSex_lie
END

//Drinking talks

//Friendly

IF ~Global("FHFDrinkFriend","GLOBAL",1)~ FHFDrinkFriend
SAY @1316
++ @1317 DO ~SetGlobal("FHFDrinkFriend","GLOBAL",2)~ + FHFDrinkFriend_enough
+ ~Gender(Player1,FEMALE)~ + @1318 DO ~SetGlobal("FHFDrinkFriend","GLOBAL",2)~ + FHFDrinkFriend_fmen
+ ~Gender(Player1,MALE) Global("FHFLGBMan","GLOBAL",0)~ + @1318 DO ~SetGlobal("FHFLGBMan","GLOBAL",1) SetGlobal("FHFDrinkFriend","GLOBAL",2)~ + FHFDrinkFriend_mmen
+ ~Gender(Player1,MALE) Global("FHFLGBMan","GLOBAL",1)~ + @1318 DO ~SetGlobal("FHFDrinkFriend","GLOBAL",2)~ + FHFDrinkFriend_good
+ ~Gender(Player1,FEMALE)~ + @1319 DO ~SetGlobal("FHFLGBWoman","GLOBAL",1) SetGlobal("FHFDrinkFriend","GLOBAL",2)~ + FHFDrinkFriend_good
++ @1320 DO ~SetGlobal("FHFDrinkFriend","GLOBAL",2)~ + FHFDrinkFriend_seedy
++ @1321 DO ~SetGlobal("FHFDrinkFriend","GLOBAL",2)~ + FHFDrinkFriend_cosy
END

IF ~~ FHFDrinkFriend_enough
SAY @1322
IF ~~ + FHFDrinkFriend_go
END

IF ~~ FHFDrinkFriend_fmen
SAY @1323
IF ~~ + FHFDrinkFriend_go
END

IF ~~ FHFDrinkFriend_mmen
SAY @1324
IF ~~ + FHFDrinkFriend_go
END

IF ~~ FHFDrinkFriend_good
SAY @1325
IF ~~ + FHFDrinkFriend_go
END

IF ~~ FHFDrinkFriend_seedy
SAY @1326
IF ~~ + FHFDrinkFriend_go
END

IF ~~ FHFDrinkFriend_cosy
SAY @1327
IF ~~ + FHFDrinkFriend_go
END

IF ~~ FHFDrinkFriend_go
SAY @1328
IF ~~ EXIT
END

//Early romance

IF ~Global("FHFDrinkEarlyRom","GLOBAL",1)~ FHFDrinkRom1
SAY @1329
IF ~Gender(Player1,FEMALE)~ DO ~SetGlobal("FHFDrinkEarlyRom","GLOBAL",2)~ + FHFDrinkRom1_f
IF ~Gender(Player1,MALE)~ DO ~SetGlobal("FHFDrinkEarlyRom","GLOBAL",2)~ + FHFDrinkRom1_m
END

IF ~~ FHFDrinkRom1_f
SAY @1330
++ @1331 + FHFDrinkRom1_comp
++ @1332 + FHFDrinkRom1_know
++ @1333 + FHFDrinkRom1_fine
++ @1334 + FHFDrinkRom1_do
END

IF ~~ FHFDrinkRom1_m
SAY @1335
++ @1336 + FHFDrinkRom1_go
++ @1332 + FHFDrinkRom1_know
++ @1337 + FHFDrinkRom1_fine
++ @1334 + FHFDrinkRom1_do
END

IF ~~ FHFDrinkRom1_comp
SAY @1338
IF ~~ + FHFDrinkRom1_stop
END

IF ~~ FHFDrinkRom1_know
SAY @1339
IF ~~ + FHFDrinkRom1_stop
END

IF ~~ FHFDrinkRom1_fine
SAY @1340
IF ~~ + FHFDrinkRom1_stop
END

IF ~~ FHFDrinkRom1_do
SAY @1341
++ @1342 DO ~SetGlobal("FHFarenKiss","GLOBAL",1)~ + FHFDrinkRom1_kiss
++ @1343 + FHFDrinkRom1_stop
END

IF ~~ FHFDrinkRom1_go
SAY @1344
IF ~~ + FHFDrinkRom1_stop
END

IF ~~ FHFDrinkRom1_stop
SAY @1345
IF ~~ EXIT
END

IF ~~ FHFDrinkRom1_kiss
SAY @1346
IF ~~ + FHFDrinkRom1_stop
END

//Late romance

IF ~Global("FHFDrinkLateRom","GLOBAL",1)~ FHFDrinkRom2
SAY @1347
=
@1348
IF ~~ DO ~SetGlobal("FHFDrinkLateRom","GLOBAL",2)~ EXIT
END

//Romance discussion

IF ~Global("FHFarenDiscussRomance","GLOBAL",1)~ FHFDiscuss
SAY @1349
+ ~!Race(Player1,HUMAN)~ + @1350 DO ~SetGlobal("FHFarenDiscussRomance","GLOBAL",2)~ + FHFDiscuss_sorrynonhuman
+ ~Race(Player1,HUMAN)~ + @1350  DO ~SetGlobal("FHFarenDiscussRomance","GLOBAL",2)~ + FHFDiscuss_sorryhuman
++ @1351 DO ~SetGlobal("FHFarenDiscussRomance","GLOBAL",2)~ + FHFDiscuss_joke
++ @1352 DO ~SetGlobal("FHFarenDiscussRomance","GLOBAL",2)~ + FHFDiscuss_break
END

IF ~~ FHFDiscuss_sorrynonhuman
SAY @1353
++ @1354 + FHFDiscuss_give
++ @1355 + FHFDiscuss_break
++ @1356 + FHFDiscuss_tog
END

IF ~~ FHFDiscuss_sorryhuman
SAY @1357
++ @1354 + FHFDiscuss_give
++ @1355 + FHFDiscuss_break
++ @1356 + FHFDiscuss_tog
END

IF ~~ FHFDiscuss_joke
SAY @1358
++ @1359 + FHFDiscuss_give
++ @1360 + FHFDiscuss_break
END

IF ~~ FHFDiscuss_give
SAY @1361
IF ~~ DO ~SetGlobal("FHFarenLike","GLOBAL",0)~ EXIT
END

IF ~~ FHFDiscuss_break
SAY @1362
IF ~~ DO ~SetGlobal("FHFarenRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ FHFDiscuss_tog
SAY @1363
IF ~~ + FHFDiscuss_give
END

//Underdark romance

IF ~Global("FHFarenUDRomTalk","GLOBAL",1)~ FHFUD
SAY @1364
++ @1365 DO ~SetGlobal("FHFarenUDRomTalk","GLOBAL",2)~ + FHFUD_sleep
++ @1366 DO ~SetGlobal("FHFarenUDRomTalk","GLOBAL",2)~ + FHFUD_want
++ @1367 DO ~SetGlobal("FHFarenUDRomTalk","GLOBAL",2)~ + FHFUD_rest
END

IF ~~ FHFUD_sleep
SAY @1368
IF ~~ DO ~RestParty()~
EXIT
END

IF ~~ FHFUD_want
SAY @1369
++ @1370 + FHFUD_pardon
+ ~OR(2) Race(Player1,HALF_ELF) Race(Player1,ELF)~ + @1371 + FHFUD_goelf
+ ~!Race(Player1,HALF_ELF) !Race(Player1,ELF)~ + @1371 + FHFUD_go
++ @1372 + FHFUD_why
++ @1373 + FHFUD_no
END

IF ~~ FHFUD_rest
SAY @1374
IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ FHFUD_pardon
SAY @1375
IF ~~ + FHFUD_weird
END

IF ~~ FHFUD_goelf
SAY @1376
IF ~~ + FHFUD_drow1
END

IF ~~ FHFUD_go
SAY @1376
IF ~~ + FHFUD_drow2
END

IF ~~ FHFUD_why
SAY @1377
IF ~~ + FHFUD_weird
END

IF ~~ FHFUD_no
SAY @1378
IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ FHFUD_weird
SAY @1379
= @1380
+ ~OR(2) Race(Player1,HALF_ELF) Race(Player1,ELF)~ + @1381 + FHFUD_goelf
+ ~OR(2) Race(Player1,HUMAN) Race(Player1,HALFORC)~ + @1381 + FHFUD_go
++ @1382 + FHFUD_no
++ @1383 + FHFUD_no
END

IF ~~ FHFUD_drow1
SAY @1384
++ @1385 + FHFUD_insult
++ @1386 + FHFUD_leave
++ @1387 + FHFUD_difficult
END

IF ~~ FHFUD_drow2
SAY @1388
++ @1389 + FHFUD_insult
++ @1386 + FHFUD_shut
++ @1387 + FHFUD_difficult
END

IF ~~ FHFUD_insult
SAY @1390
IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ FHFUD_leave
SAY @1391
IF ~~ + FHFUD_rest2
END

IF ~~ FHFUD_shut
SAY @1392
IF ~~ + FHFUD_rest2
END

IF ~~ FHFUD_difficult
SAY @1393
IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ FHFUD_rest2
SAY @1394
IF ~~ DO ~RestParty()~ EXIT
END

//Phaere Innuendo

//If the romance is not serious yet

IF ~Global("FHFPhaereInnuendoTalk","GLOBAL",1) Global("FHFarenRomanceActive","GLOBAL",1) GlobalGT("FHFarenLoveTalk","GLOBAL",16)~ FHFPhaereInn1
SAY @1395
++ @1396 DO ~SetGlobal("FHFPhaereInnuendoTalk","GLOBAL",2)~ + FHFPhaereInn1_jeal
++ @1397 DO ~SetGlobal("FHFPhaereInnuendoTalk","GLOBAL",2)~ + FHFPhaereInn1_ruse
++ @1398 DO ~SetGlobal("FHFPhaereInnuendoTalk","GLOBAL",2)~ + FHFPhaereInn1_serious
END

IF ~~ FHFPhaereInn1_jeal
SAY @1399
IF ~~ + FHFPhaereInn1_whatever
END

IF ~~ FHFPhaereInn1_ruse
SAY @1400
=
@1401
IF ~~ EXIT
END

IF ~~ FHFPhaereInn1_serious
SAY @1402
IF ~~ + FHFPhaereInn1_whatever
END

IF ~~ FHFPhaereInn1_whatever
SAY @1403
IF ~~ EXIT
END

//If the romance is serious

IF ~Global("FHFPhaereInnuendoTalk","GLOBAL",1) Global("FHFarenRomanceActive","GLOBAL",2)~ FHFPhaereInn2
SAY @1404
++ @1405 DO ~SetGlobal("FHFPhaereInnuendoTalk","GLOBAL",2)~ + FHFPhaereInn2_jeal
++ @1397 DO ~SetGlobal("FHFPhaereInnuendoTalk","GLOBAL",2)~ + FHFPhaereInn2_ruse
++ @1406 DO ~SetGlobal("FHFPhaereInnuendoTalk","GLOBAL",2)~ + FHFPhaereInn2_attract
END

IF ~~ FHFPhaereInn2_jeal
SAY @1407
IF ~~ + FHFPhaereInn2_sorry
END

IF ~~ FHFPhaereInn2_ruse
SAY @1408
IF ~~ EXIT
END

IF ~~ FHFPhaereInn2_attract
SAY @1409
IF ~~ + FHFPhaereInn2_sorry
END

IF ~~ FHFPhaereInn2_sorry
SAY @1410
IF ~~ EXIT
END

//Sleeping with Phaere

//Romance is not serious

IF ~Global("FHFPhaereSleep","GLOBAL",1) Global("PhaereInnuendo","GLOBAL",2) Global("FHFarenRomanceActive","GLOBAL",1)~ FHFPhaereSleep
SAY @1411
++ @1412 DO ~SetGlobal("FHFPhaereSleep","GLOBAL",2) IncrementGlobal("FHFarenLike","GLOBAL",-3)~ + FHFPhaereSleep_exp
++ @1413 DO ~SetGlobal("FHFPhaereSleep","GLOBAL",2) IncrementGlobal("FHFarenLike","GLOBAL",-5)~ + FHFPhaereSleep_exp
END

IF ~~ FHFPhaereSleep_exp
SAY @1414
IF ~~ EXIT
END

//Romance is serious

IF ~Global("FHFPhaereSleep","GLOBAL",1) Global("PhaereInnuendo","GLOBAL",2) Global("FHFarenRomanceActive","GLOBAL",2)~ FHFPhaereSleep2
SAY @1415
+ ~OR(2) CheckStatGT(Player1,12,CHR) GlobalGT("FHFarenLike","GLOBAL",5)~ + @1416 DO ~IncrementGlobal("FHFarenLike","GLOBAL",-2) SetGlobal("FHFPhaereSleep","GLOBAL",2)~ + FHFPhaereSleep2_choice
+ ~OR(2) CheckStatLT(Player1,13,CHR) GlobalLT("FHFarenLike","GLOBAL",5)~ + @1416 DO ~IncrementGlobal("FHFarenLike","GLOBAL",-5) SetGlobal("FHFPhaereSleep","GLOBAL",2)~ + FHFPhaereSleep2_choice
+ ~OR(2) CheckStatGT(Player1,12,CHR) GlobalGT("FHFarenLike","GLOBAL",5)~ + @1417 DO ~IncrementGlobal("FHFarenLike","GLOBAL",-2) SetGlobal("FHFPhaereSleep","GLOBAL",2)~ + FHFPhaereSleep2_destroy
+ ~OR(2) CheckStatLT(Player1,13,CHR) GlobalLT("FHFarenLike","GLOBAL",5)~ + @1417 DO ~IncrementGlobal("FHFarenLike","GLOBAL",-5) SetGlobal("FHFPhaereSleep","GLOBAL",2)~ + FHFPhaereSleep2_destroy
++ @1418 DO ~IncrementGlobal("FHFarenLike","GLOBAL",-5) SetGlobal("FHFPhaereSleep","GLOBAL",2)~ + FHFPhaereSleep2_leave
END

IF ~~ FHFPhaereSleep2_choice
SAY @1419
=
@1420
IF ~~ EXIT
END

IF ~~ FHFPhaereSleep2_destroy
SAY @1421
=
@1422
IF ~~ EXIT
END

IF ~~ FHFPhaereSleep2_leave
SAY @1423
IF ~~ DO ~SetGlobal("FHFarenRomanceActive","GLOBAL",3)~
EXIT
END

//Not sleeping with Phaere

IF ~Global("FHFPhaereSleep","GLOBAL",1) Global("PhaereInnuendo","GLOBAL",3)~ FHFPhaereNoSleep
SAY @1424
IF ~~ DO ~SetGlobal("FHFPhaereSleep","GLOBAL",2)~ EXIT
END

//Post-Bodhi dialogue

IF ~Global("FHFPostVampire","GLOBAL",2)~ FHFPostVamp
SAY @1425
= @1426
++ @1427 DO ~SetGlobal("FHFPostVampire","GLOBAL",3)~ + FHFPostVamp_give
++ @1428 DO ~SetGlobal("FHFPostVampire","GLOBAL",3)~ + FHFPostVamp_same
++ @1429 DO ~SetGlobal("FHFPostVampire","GLOBAL",3)~ + FHFPostVamp_bite
END

IF ~~ FHFPostVamp_give
SAY @1430
IF ~~ + FHFPostVamp_go
END

IF ~~ FHFPostVamp_same
SAY @1431
IF ~~ + FHFPostVamp_go
END

IF ~~ FHFPostVamp_bite
SAY @1432
IF ~~ + FHFPostVamp_go
END

IF ~~ FHFPostVamp_go
SAY @1433
IF ~~ EXIT
END

//Appending to Phaere's dialogue

EXTEND_TOP UDPHAE01 106
+ ~!Global("FHFarenRomanceActive","GLOBAL",1) !Global("FHFarenRomanceActive","GLOBAL",3)~ + @1434 + FHFUDPHAE
END

APPEND UDPHAE01
IF ~~ FHFUDPHAE
SAY @1435
++ @1436 + 111
++ @1437 + 101
++ @1438 + 105
++ @1439 + 103
END
END

//Rumours appended to Trademeet and Imnesvale inns

APPEND RUMORT
IF ~RandomNum(8,5) !InParty("FHFRN")~ FHFRumourT
SAY @1440
IF ~~ EXIT
END
END

APPEND RUMORI
IF ~Global("VILLAGESAVED","GLOBAL",0) RandomNum(6,4)~ FHFRumourI
SAY @1441
IF ~~ EXIT
END
END

//Seth-related stuff

//Commenting before seeing Seth

CHAIN IF ~Global("FHFSethComment","GLOBAL",1)~ THEN FHFRNJ FHFSethComment
@1442
END
++ @1443 DO ~SetGlobal("FHFSethComment","GLOBAL",2) SetGlobalTimer("FHFSethCommentTimer","GLOBAL",ONE_DAY)~ + FHFSethComment_go
++ @1444 DO ~SetGlobal("FHFSethComment","GLOBAL",2) SetGlobalTimer("FHFSethCommentTimer","GLOBAL",ONE_DAY)~ + FHFSethComment_go
++ @1445 DO ~SetGlobal("FHFSethComment","GLOBAL",2) SetGlobalTimer("FHFSethCommentTimer","GLOBAL",ONE_DAY)~ + FHFSethComment_waste

CHAIN FHFRNJ FHFSethComment_go
@1446
EXIT

CHAIN FHFRNJ FHFSethComment_waste
@1447
END
++ @1448 + FHFSethComment_go
++ @1449 + FHFRunner_distract

CHAIN IF ~Global("FHFSethComment","GLOBAL",3)~ THEN FHFRNJ FHFSethAngry
@1450
DO ~SetGlobal("FHFarenLeavesAngry","GLOBAL",1)
SetGlobal("FHFarenLeaveSeth","GLOBAL",1)
ChangeAIScript("",DEFAULT)
SetLeavePartyDialogueFile()
LeaveParty()
EscapeAreaMove("AR1100",206,1400,1)~
EXIT

//Commenting at the Imnesvale Inn

CHAIN IF ~Global("FHFInnComment","GLOBAL",1)~ THEN FHFRNJ FHFInnComment
@1451
= @1452
DO ~SetGlobal("FHFInnComment","GLOBAL",2)~ EXIT

//If Seth dies

CHAIN IF ~Global("FHFSethDead","GLOBAL",1) Global("FHFRitual","GLOBAL",4) Dead("FHFSETH")~ THEN FHFRNJ FHFRitual3b
@1453
= @1454
END
IF ~~ SOLVED_JOURNAL @3003
DO ~EraseJournalEntry(@3000)
EraseJournalEntry(@1457)
SetGlobal("FHFSethDead","GLOBAL",2) SetGlobal("FHFRitual","GLOBAL",5)~ EXIT

//Post Seth conversation if everyone survived

CHAIN IF ~Global("FHFPostSeth","GLOBAL",1)~ THEN FHFRNJ FHFPostSeth
@1458
END
++ @1459 DO ~SetGlobal("FHFPostSeth","GLOBAL",2)~ + FHFPostSeth_upset
++ @1460 DO ~SetGlobal("FHFPostSeth","GLOBAL",2)~ + FHFPostSeth_bother
++ @1461 DO ~SetGlobal("FHFPostSeth","GLOBAL",2)~ + FHFPostSeth_pain
++ @1462 DO ~IncrementGlobal("FHFarenLike","GLOBAL",-1) SetGlobal("FHFPostSeth","GLOBAL",2)~ + FHFPostSeth_get

CHAIN FHFRNJ FHFPostSeth_upset
@1463
END
IF ~~ + FHFPostSeth_honest

CHAIN FHFRNJ FHFPostSeth_bother
@1464
END
IF ~~ + FHFPostSeth_honest

CHAIN FHFRNJ FHFPostSeth_pain
@1465
END
IF ~~ + FHFPostSeth_honest

CHAIN FHFRNJ FHFPostSeth_get
@1466
EXIT

CHAIN FHFRNJ FHFPostSeth_honest
@1467
END
+ ~Alignment(Player1,MASK_GOOD)~ + @1468 + FHFPostSeth_save
+ ~Alignment(Player1,MASK_GENEUTRAL)~ + @1469 DO ~IncrementGlobal("FHFarenLike","GLOBAL",1)~ + FHFPostSeth_look
+ ~Alignment(Player1,MASK_EVIL)~ + @1470 + FHFPostSeth_owe
++ @1471 DO ~IncrementGlobal("FHFarenLike","GLOBAL",1)~ + FHFPostSeth_look
++ @1472 + FHFPostSeth_alive
++ @1473 + FHFPostSeth_give

CHAIN FHFRNJ FHFPostSeth_save
@1474
END
IF ~~ + FHFPostSeth_open

CHAIN FHFRNJ FHFPostSeth_look
@1475
END
IF ~~ + FHFPostSeth_open

CHAIN FHFRNJ FHFPostSeth_owe
@1476
END
IF ~~ + FHFPostSeth_open

CHAIN FHFRNJ FHFPostSeth_alive
@1477
END
IF ~~ + FHFPostSeth_open

CHAIN FHFRNJ FHFPostSeth_give
@1478
END
IF ~~ + FHFPostSeth_open

CHAIN FHFRNJ FHFPostSeth_open
@1479
= @1480
EXIT

//Commenting on Halmar quest

CHAIN IF ~Global("FHFHalComment","GLOBAL",1)~ THEN FHFRNJ FHFHalComment
@1481
DO ~SetGlobal("FHFHalComment","GLOBAL",2)~
== FHFRNJ IF ~Global("FHFHalJob","GLOBAL",1)~ THEN @1482
== FHFRNJ IF ~Global("FHFHalJob","GLOBAL",1)~ THEN @1483
== FHFRNJ IF ~Global("FHFHalRefuse","GLOBAL",1)~ THEN @1484
== FHFRNJ IF ~Global("FHFHalRefuse","GLOBAL",1)~ THEN @1485
END
++ @1486 + FHFHalComment_know
++ @1487 + FHFHalComment_report
+ ~Global("FHFHalJob","GLOBAL",1)~ + @1488 + FHFHalComment_pretty
+ ~Global("FHFHalJob","GLOBAL",1)~ + @1489 + FHFHalComment_plan
+ ~Global("FHFHalRefuse","GLOBAL",1)~ + @1490 + FHFHalComment_plan

CHAIN FHFRNJ FHFHalComment_know
@1491
EXIT

CHAIN FHFRNJ FHFHalComment_report
@1492
END
IF ~~ + FHFHalComment_best

CHAIN FHFRNJ FHFHalComment_pretty
@1493
END
IF ~~ + FHFHalComment_best

CHAIN FHFRNJ FHFHalComment_best
@1494
EXIT

CHAIN FHFRNJ FHFHalComment_plan
@1495
= @1496
EXIT

//Commenting upon Halmar's death

CHAIN IF ~Global("FHFHalDeathComment","GLOBAL",1)~ THEN FHFRNJ FHFHalDeath
@1497
DO ~SetGlobal("FHFHalDeathComment","GLOBAL",2)~
== FHFRNJ IF ~Global("FHFLinJob","GLOBAL",1)~ THEN @1498
EXIT

//Commenting upon Linnea's death

CHAIN IF ~Global("FHFLinDeathComment","GLOBAL",1)~ THEN FHFRNJ FHFLinDeath
@1499
DO ~SetGlobal("FHFLinDeathComment","GLOBAL",2)~ EXIT

//Commenting upon telling Brega about Halmar

CHAIN IF ~Global("FHFBregaComment","GLOBAL",1)~ THEN FHFRNJ FHFBregaComment
@1500
DO ~SetGlobal("FHFBregaComment","GLOBAL",2)~ EXIT

//Misc friendtalk and lovetalk interruptions

CHAIN IMOEN2J FHFImFT7
@1501
== FHFRNJ @1502
EXTERN FHFRNJ FHFFT7_parents

CHAIN IMOEN2J FHFImLT8
@1503
== FHFRNJ @1504
EXTERN FHFRNJ FHFLT8_comp

//Romance conflicts

//Aerie interrupts Faren

//LT10a

CHAIN AERIEJ FHFLT10innAer
@1505
== FHFRNJ @1506
== AERIEJ @1507
== FHFRNJ @1508
== AERIEJ @1509
END
++ @1510 DO ~SetGlobal("AerieRomanceActive","GLOBAL",3)~ + FHFLT10innAer_aerfriend
++ @1511 EXTERN FHFRNJ FHFLT10Aer_farfriend
++ @1512 + FHFLT10innAer_bed
++ @1513 EXTERN FHFRNJ FHFLT10innAer_nothing

CHAIN AERIEJ FHFLT10innAer_aerfriend
@1514
== FHFRNJ @1515
END
++ @601 EXTERN FHFRNJ FHFLT10inn_go
++ @602 EXTERN FHFRNJ FHFLT9out_sleep
++ @603 EXTERN FHFRNJ FHFLT10inn_weird

CHAIN FHFRNJ FHFLT10Aer_farfriend
@1516
DO ~SetGlobal("FHFarenRomanceActive","GLOBAL",3) SetGlobal("FHFarenFriend","GLOBAL",1) SetGlobal("FHFarenFriendTalk","GLOBAL",17)~
== AERIEJ @1517
EXIT

CHAIN AERIEJ FHFLT10innAer_bed
@1518
== FHFRNJ @1519
END
++ @1520 DO ~SetGlobal("AerieRomanceActive","GLOBAL",3)~ + FHFLT10innAer_aerfriend
++ @1521 EXTERN FHFRNJ FHFLT10Aer_farfriend

CHAIN FHFRNJ FHFLT10innAer_nothing
@1522
== AERIEJ @1523
END
++ @1524 + FHFLT10Aer_farfriend
++ @1525 DO ~SetGlobal("AerieRomanceActive","GLOBAL",3)~ + FHFLT10innAer_where

CHAIN FHFRNJ FHFLT10innAer_where
@1526
END
++ @601 EXTERN FHFRNJ FHFLT10inn_go
++ @602 EXTERN FHFRNJ FHFLT9out_sleep
++ @603 EXTERN FHFRNJ FHFLT10inn_weird

//LT10b

CHAIN AERIEJ FHFLT10outAer
@1505
== FHFRNJ @1506
== AERIEJ @1507
== FHFRNJ @1508
== AERIEJ @1509
END
++ @1510 DO ~SetGlobal("AerieRomanceActive","GLOBAL",3)~ + FHFLT10outAer_aerfriend
++ @1511 EXTERN FHFRNJ FHFLT10Aer_farfriend
++ @1512 + FHFLT10outAer_bed
++ @1513 EXTERN FHFRNJ FHFLT10outAer_nothing

CHAIN AERIEJ FHFLT10outAer_aerfriend
@1514
== FHFRNJ @1515
END
++ @616 EXTERN FHFRNJ FHFLT10out_go
++ @602 EXTERN FHFRNJ FHFLT10_sleep
++ @603 EXTERN FHFRNJ FHFLT10out_weird

CHAIN AERIEJ FHFLT10outAer_bed
@1518
== FHFRNJ @1519
END
++ @1520 DO ~SetGlobal("AerieRomanceActive","GLOBAL",3)~ + FHFLT10outAer_aerfriend
++ @1521 EXTERN FHFRNJ FHFLT10Aer_farfriend

CHAIN FHFRNJ FHFLT10outAer_nothing
@1527
== AERIEJ @1523
END
++ @1524 + FHFLT10Aer_farfriend
++ @1525 DO ~SetGlobal("AerieRomanceActive","GLOBAL",3)~ + FHFLT10outAer_where

CHAIN FHFRNJ FHFLT10outAer_where
@1528
END
++ @616 EXTERN FHFRNJ FHFLT10out_go
++ @602 EXTERN FHFRNJ FHFLT10_sleep
++ @603 EXTERN FHFRNJ FHFLT10out_weird

//Faren interrupts Aerie

//LT4

EXTEND_BOTTOM BAERIE 130
IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID) Global("FHFarenRomanceActive","GLOBAL",1)~ EXTERN FHFRNJ FHFAerLT4
END

CHAIN FHFRNJ FHFAerLT4
@1529
== AERIEJ @1530
== FHFRNJ @1531
== AERIEJ @1532
END
++ #56260 EXTERN BAERIE 131
++ #56262 EXTERN BAERIE 131
++ #56263 EXTERN BAERIE 135
++ @1533 EXTERN BAERIE 421

//LT7

EXTEND_BOTTOM BAERIE 167
IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID) Global("FHFarenRomanceActive","GLOBAL",1)~ EXTERN FHFRNJ FHFAerLT7
END

CHAIN FHFRNJ FHFAerLT7
@1534
== AERIEJ @1535
== FHFRNJ @1536
== AERIEJ @1537
== FHFRNJ @1538
== AERIEJ @1539
END
++ #56279 EXTERN BAERIE 168
++ #56280 EXTERN BAERIE 172
++ #56281 EXTERN BAERIE 173

//LT9

EXTEND_BOTTOM BAERIE 201
IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID) Global("FHFarenRomanceActive","GLOBAL",1)~ EXTERN FHFRNJ FHFAerLT9
END

CHAIN FHFRNJ FHFAerLT9
@1540
== AERIEJ @1541
== FHFRNJ @1542
== AERIEJ @1543
== FHFRNJ @1544
== AERIEJ @1545
END
++ #56288 EXTERN BAERIE 202
++ #56289 EXTERN BAERIE 203
++ #56290 EXTERN BAERIE 206
++ #56291 DO ~SetGlobal("AerieRomanceActive","GLOBAL",3)~ EXTERN BAERIE 210

//LT13

EXTEND_BOTTOM BAERIE 233
IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID) Global("FHFarenRomanceActive","GLOBAL",1)~ EXTERN FHFRNJ FHFAerLT13
END

CHAIN FHFRNJ FHFAerLT13
@1546
== AERIEJ @1547
== FHFRNJ @1548
== AERIEJ @1549
== FHFRNJ @1550
END
++ @1551 DO ~SetGlobal("FHFarenRomanceActive","GLOBAL",3)~ + FHFAerLT13_farfriend
++ @1552 DO ~SetGlobal("FHFarenRomanceActive","GLOBAL",3) SetGlobal("FHFarenFriend","GLOBAL",1)~ + FHFAerLT13_farfriend
++ @1553 DO ~SetGlobal("AerieRomanceActive","GLOBAL",3)~ EXTERN AERIEJ FHFAerLT13_aerfriend
++ @1554 DO ~SetGlobal("AerieRomanceActive","GLOBAL",3)~ EXTERN AERIEJ FHFAerLT13_aerfriendcruel

CHAIN FHFRNJ FHFAerLT13_farfriend
@1555
EXTERN BAERIE 434

CHAIN AERIEJ FHFAerLT13_aerfriend
@1556
DO ~RestParty()~
EXIT

CHAIN AERIEJ FHFAerLT13_aerfriendcruel
@1557
DO ~SetGlobal("AerieRomanceActive","GLOBAL",3)
ChangeAIScript("",DEFAULT)
SetLeavePartyDialogFile()
SetGlobal("KickedOut","LOCALS",1)
LeaveParty()
MoveGlobal("AR0607","Aerie",[1034.1034])
Wait(2)
RestParty()~
EXIT

//Anomen

//Anomen interrupts Faren

//LT9 outdoors

CHAIN ANOMENJ FHFLT9outAno
@1558
END
IF ~~ EXTERN FHFRNJ FHFLT9outAno_yes

CHAIN ANOMENJ FHFLT9outAnoCN
@1559
END
IF ~~ EXTERN FHFRNJ FHFLT9outAno_yes

CHAIN FHFRNJ FHFLT9outAno_yes
@1560
END
++ @1561 EXTERN ANOMENJ FHFLT9Ano_chat
++ @1562 EXTERN ANOMENJ FHFLT9Ano_chat
++ @1563 EXTERN ANOMENJ FHFLT9Ano_sleep
++ @1564 EXTERN FHFRNJ FHFLT9out_mistake
++ @1565 EXTERN ANOMENJ FHFLT9Ano_sleep

CHAIN ANOMENJ FHFLT9Ano_chat
@1566
== FHFRNJ
@1567
END
+ ~TimeGT(6) TimeLT(21)~ + @251 EXTERN FHFRNJ FHFLT9out_sun
+ ~OR(2) TimeGT(20) TimeLT(7)~ + @577 EXTERN FHFRNJ FHFLT9out_cold
++ @578 EXTERN FHFRNJ FHFLT9out_alert
++ @579 EXTERN FHFRNJ FHFLT9out_cold
++ @580 EXTERN FHFRNJ FHFLT9out_talk
++ @256 EXTERN FHFRNJ FHFLT9out_sleep

CHAIN ANOMENJ FHFLT9Ano_sleep
@1568
== FHFRNJ
@1569
DO ~RestParty()~
EXIT

//LT9 inn

CHAIN ANOMENJ FHFLT9innAno
@1558
END
IF ~~ EXTERN FHFRNJ FHFLT9innAno_yes

CHAIN ANOMENJ FHFLT9innAnoCN
@1559
END
IF ~~ EXTERN FHFRNJ FHFLT9innAno_yes

CHAIN FHFRNJ FHFLT9innAno_yes
@1560
END
++ @1561 EXTERN ANOMENJ FHFLT9Anoinn_chat
++ @1562 EXTERN ANOMENJ FHFLT9Anoinn_chat
++ @1563 EXTERN ANOMENJ FHFLT9Ano_sleep
++ @1564 EXTERN FHFRNJ FHFLT9out_mistake
++ @1565 EXTERN ANOMENJ FHFLT9Ano_sleep

CHAIN ANOMENJ FHFLT9Anoinn_chat
@1566
== FHFRNJ
@1570
END
+ ~TimeGT(6) TimeLT(21)~ + @299 EXTERN FHFRNJ FHFLT9inn_early
++ @300 EXTERN FHFRNJ FHFLT9inn_alert
++ @301 EXTERN FHFRNJ FHFLT9inn_ok
++ @255 EXTERN FHFRNJ FHFLT9inn_early
++ @256 EXTERN FHFRNJ FHFLT9out_sleep

//LT10a - inn

CHAIN ANOMENJ FHFLT10innAno
@1571
== FHFRNJ @1572
== ANOMENJ @1573
== FHFRNJ @1574
END
++ @1575 DO ~SetGlobal("AnomenRomanceActive","GLOBAL",3)~ + FHFLT10innAno_anofriend
++ @1576 EXTERN FHFRNJ FHFLT10Ano_farfriend
++ @1512 EXTERN ANOMENJ FHFLT10innAno_bed
++ @1577 EXTERN ANOMENJ FHFLT10innAno_bed

CHAIN ANOMENJ FHFLT10innAno_anofriend
@1578
== FHFRNJ @1579
END
++ @601 EXTERN FHFRNJ FHFLT10inn_go
++ @602 EXTERN FHFRNJ FHFLT9out_sleep
++ @603 EXTERN FHFRNJ FHFLT10inn_weird

CHAIN FHFRNJ FHFLT10Ano_farfriend
@1580
DO ~SetGlobal("FHFarenRomanceActive","GLOBAL",3) SetGlobal("FHFarenFriend","GLOBAL",1) SetGlobal("FHFarenFriendTalk","GLOBAL",17)~ EXIT

CHAIN ANOMENJ FHFLT10innAno_bed
@1581
== FHFRNJ @1582
END
++ @1583 EXTERN FHFRNJ FHFLT10Ano_farfriend
++ @1584 EXTERN ANOMENJ FHFLT10innAno_anofriend

//LT10b - outside

CHAIN ANOMENJ FHFLT10outAno
@1571
== FHFRNJ @1572
== ANOMENJ @1573
== FHFRNJ @1574
END
++ @1575 DO ~SetGlobal("AnomenRomanceActive","GLOBAL",3)~ + FHFLT10outAno_anofriend
++ @1576 EXTERN FHFRNJ FHFLT10Ano_farfriend
++ @1512 EXTERN ANOMENJ FHFLT10outAno_bed
++ @1577 EXTERN ANOMENJ FHFLT10outAno_bed

CHAIN ANOMENJ FHFLT10outAno_anofriend
@1578
== FHFRNJ @1585
END
++ @601 EXTERN FHFRNJ FHFLT10out_go
++ @602 EXTERN FHFRNJ FHFLT9out_sleep
++ @603 EXTERN FHFRNJ FHFLT10out_weird

CHAIN ANOMENJ FHFLT10outAno_bed
@1581
== FHFRNJ @1582
END
++ @1583 EXTERN FHFRNJ FHFLT10Ano_farfriend
++ @1584 EXTERN ANOMENJ FHFLT10outAno_anofriend

//Faren interrupts Anomen

//LT8

EXTEND_BOTTOM BANOMEN 210
IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID) Global("FHFarenRomanceActive","GLOBAL",1)~ EXTERN FHFRNJ FHFAnoLT8a
END

CHAIN FHFRNJ FHFAnoLT8a
@1586
== ANOMENJ @1587
== FHFRNJ @1588
== ANOMENJ @1589
== FHFRNJ @1590
== ANOMENJ @1591
END
++ @1592 DO ~SetGlobal("FHFarenFriend","GLOBAL",1) SetGlobal("FHFarenRomanceActive","GLOBAL",3) SetGlobal("FHFarenFriend","GLOBAL",1)~ + FHFAnoLT14a_farfriend
++ @1593 DO ~SetGlobal("FHFarenRomanceActive","GLOBAL",3)~ + FHFAnoLT14a_farfriendcruel
++ @1594 DO ~SetGlobal("AnomenRomanceActive","GLOBAL",3)~ EXTERN ANOMENJ FHFAnoLT14a_anofriend
++ @1595 DO ~SetGlobal("AnomenRomanceActive","GLOBAL",3)~ EXTERN ANOMENJ FHFAnoLT14a_anofriend

CHAIN FHFRNJ FHFAnoLT14a_farfriend
@1596
== ANOMENJ @1597
END
COPY_TRANS BANOMEN 210

CHAIN FHFRNJ FHFAnoLT14a_farfriendcruel
@1598
== ANOMENJ @1599
END
COPY_TRANS BANOMEN 210

CHAIN ANOMENJ FHFAnoLT14a_anofriend
@1600
=
@1601
EXIT

EXTEND_BOTTOM BANOMEN 223
IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID) Global("FHFarenRomanceActive","GLOBAL",1)~ EXTERN FHFRNJ FHFAnoLT8b
END

CHAIN FHFRNJ FHFAnoLT8b
@1602
== ANOMENJ @1603
== FHFRNJ @1588
== ANOMENJ @1589
== FHFRNJ @1590
== ANOMENJ @1591
END
++ @1592 DO ~SetGlobal("FHFarenFriend","GLOBAL",1) SetGlobal("FHFarenRomanceActive","GLOBAL",3) SetGlobal("FHFarenFriend","GLOBAL",1)~ + FHFAnoLT14b_farfriend
++ @1593 DO ~SetGlobal("FHFarenRomanceActive","GLOBAL",3)~ + FHFAnoLT14b_farfriendcruel
++ @1594 DO ~SetGlobal("AnomenRomanceActive","GLOBAL",3)~ EXTERN ANOMENJ FHFAnoLT14b_anofriend
++ @1595 DO ~SetGlobal("AnomenRomanceActive","GLOBAL",3)~ EXTERN ANOMENJ FHFAnoLT14b_anofriend

CHAIN FHFRNJ FHFAnoLT14b_farfriend
@1596
== ANOMENJ @1604
END
COPY_TRANS BANOMEN 223

CHAIN FHFRNJ FHFAnoLT14b_farfriendcruel
@1598
== ANOMENJ @1599
END
COPY_TRANS BANOMEN 223

CHAIN ANOMENJ FHFAnoLT14b_anofriend
@1605
=
@1606
EXIT

//Jaheira

//Independent talk

CHAIN IF ~Global("FHFJaheiraConflict","GLOBAL",2)~ THEN JAHEIRAJ FHFJaheiraConflict
@1607
DO ~SetGlobal("FHFJaheiraConflict","GLOBAL",3)~
== FHFRNJ   @1608
== JAHEIRAJ @1609
== FHFRNJ   @1610
== JAHEIRAJ @1611
            = @1612
== FHFRNJ   @1613
EXIT

//Jaheira interrupts Faren

//LT5

CHAIN JAHEIRAJ FHFLT5Jah
@1614
== FHFRNJ @1615
== JAHEIRAJ @1616
== FHFRNJ @1617
EXIT

//LT9 - inn

CHAIN JAHEIRAJ FHFLT9innJah
@1618
== FHFRNJ @1619
== JAHEIRAJ @1620
== FHFRNJ @1621
== JAHEIRAJ @1622
= @1623
== FHFRNJ @1624
END
+ ~TimeGT(6) TimeLT(21)~ + @299 EXTERN FHFRNJ FHFLT9inn_early
++ @300 EXTERN FHFRNJ FHFLT9inn_alert
++ @301 EXTERN FHFRNJ FHFLT9inn_ok
++ @255 EXTERN FHFRNJ FHFLT9inn_early
++ @256 EXTERN FHFRNJ FHFLT9out_sleep

//LT9 - outdoors

CHAIN JAHEIRAJ FHFLT9outJah
@1618
== FHFRNJ @1619
== JAHEIRAJ @1620
== FHFRNJ @1621
== JAHEIRAJ @1625
= @1623
== FHFRNJ @1624
END
+ ~TimeGT(6) TimeLT(21)~ + @299 EXTERN FHFRNJ FHFLT9inn_early
++ @300 EXTERN FHFRNJ FHFLT9inn_alert
++ @301 EXTERN FHFRNJ FHFLT9inn_ok
++ @255 EXTERN FHFRNJ FHFLT9inn_early
++ @256 EXTERN FHFRNJ FHFLT9out_sleep

//LT12

CHAIN JAHEIRAJ FHFLT12jah
@1626
== FHFRNJ   @1627
== JAHEIRAJ @1628
== FHFRNJ @1629
          = @1630
== JAHEIRAJ @1631
== FHFRNJ @1632
== JAHEIRAJ @1633
            = @1634
END
++ @1635 DO ~SetGlobal("FHFarenFriend","GLOBAL",1) SetGlobal("FHFarenRomanceActive","GLOBAL",3) SetGlobal("FHFarenFriend","GLOBAL",1)~ EXTERN FHFRNJ FHFJahLT12_farfriend
++ @1636 DO ~SetGlobal("FHFarenRomanceActive","GLOBAL",3)~ EXTERN FHFRNJ FHFJahLT12_farfriend
++ @1637 DO ~SetGlobal("JaheiraRomanceActive","GLOBAL",3)~ + FHFJahLT12_jahfriend
++ @1638 DO ~SetGlobal("JaheiraRomanceActive","GLOBAL",3)~ + FHFJahLT12_jahfriend

CHAIN FHFRNJ FHFJahLT12_farfriend
@1639
EXIT

CHAIN JAHEIRAJ FHFJahLT12_jahfriend
@1640
== FHFRNJ @1641
END
+ ~Gender(Player1,MALE)~ + @680 EXTERN FHFRNJ FHFLT12_datem
+ ~Gender(Player1,FEMALE)~ + @680 EXTERN FHFRNJ FHFLT12_datef
+ ~CheckStatGT(Player1,15,INT)~ + @681 EXTERN FHFRNJ FHFLT12_int
++ @682 EXTERN FHFRNJ FHFLT12_time
++ @683 EXTERN FHFRNJ FHFLT12_fun
++ @684 EXTERN FHFRNJ FHFLT12_intimate

//Faren interrupts Jaheira

//LT5

EXTEND_BOTTOM BJAHEIR 130
IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID) Global("FHFarenRomanceActive","GLOBAL",1)~ EXTERN FHFRNJ FHFJahLT5
END

CHAIN FHFRNJ FHFJahLT5
@1642
== JAHEIRAJ @1643
END
++ #20484 EXTERN BJAHEIR 132
++ #20485 EXTERN BJAHEIR 131
++ #20486 EXTERN BJAHEIR 136

//LT8

EXTEND_BOTTOM BJAHEIR 162
IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID) Global("FHFarenRomanceActive","GLOBAL",1)~ EXTERN FHFRNJ FHFJahLT8
END

CHAIN FHFRNJ FHFJahLT8
@1644
== JAHEIRAJ @1645
== FHFRNJ @1646
== JAHEIRAJ @1647
END
++ #21108 EXTERN BJAHEIR 163
++ #21109 EXTERN BJAHEIR 165
++ #21110 EXTERN BJAHEIR 169
++ #21111 EXTERN BJAHEIR 170

//LT10

EXTEND_BOTTOM BJAHEIR 186
IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID) Global("FHFarenRomanceActive","GLOBAL",1)~ EXTERN FHFRNJ FHFJahLT10
END

CHAIN FHFRNJ FHFJahLT10
@1648
== JAHEIRAJ @1649
== FHFRNJ @1650
== JAHEIRAJ @1651
== FHFRNJ @1652
== JAHEIRAJ @1653
== FHFRNJ @1654
END
++ @1635 DO ~SetGlobal("FHFarenFriend","GLOBAL",1) SetGlobal("FHFarenRomanceActive","GLOBAL",3) SetGlobal("FHFarenFriend","GLOBAL",1)~ + FHFJahLT10_farfriend
++ @1636 DO ~SetGlobal("FHFarenRomanceActive","GLOBAL",3)~ + FHFJahLT10_farfriendcruel
++ @1637 DO ~SetGlobal("JaheiraRomanceActive","GLOBAL",3)~ EXTERN JAHEIRAJ FHFJahLT10_jahfriend
++ @1638 DO ~SetGlobal("JaheiraRomanceActive","GLOBAL",3)~ EXTERN JAHEIRAJ FHFJahLT10_jahfriend

CHAIN FHFRNJ FHFJahLT10_farfriend
@1655
== JAHEIRAJ @1656
EXIT

CHAIN FHFRNJ FHFJahLT10_farfriendcruel
@1657
== JAHEIRAJ @1656
EXIT

CHAIN JAHEIRAJ FHFJahLT10_jahfriend
@1640
EXIT

//Viconia

//Viconia interrupts Faren

//LT11

CHAIN VICONIJ FHFLT11Vic
@1658
== FHFRNJ @1659
== VICONIJ @1660
== FHFRNJ @1661
END
++ @1662 DO ~SetGlobal("FHFarenRomanceActive","GLOBAL",3) SetGlobal("FHFarenFriend","GLOBAL",1) SetGlobal("FHFarenFriendTalk","GLOBAL",17)~ EXTERN FHFRNJ FHFVicLT11_mistake
++ @1663 DO ~SetGlobal("ViconiaRomanceActive","GLOBAL",3)~ + FHFVicLT11_spy

CHAIN FHFRNJ FHFVicLT11_mistake
@1664
= @1665
== VICONIJ @1666
EXIT

CHAIN VICONIJ FHFVicLT11_spy
@1667
= @1668
== FHFRNJ @1669
EXIT

//Faren interrupts Viconia

//LT4

EXTEND_BOTTOM BVICONI 31
IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID) Global("FHFarenRomanceActive","GLOBAL",1)~ EXTERN FHFRNJ FHFVicLT4
END

CHAIN FHFRNJ FHFVicLT4
@1670
== VICONIJ @1671
== FHFRNJ @1672
== VICONIJ @1673
END
++ #8673 EXTERN BVICONI 172
++ #8674 EXTERN BVICONI 173

//LT5

EXTEND_BOTTOM BVICONI 32
IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID) Global("FHFarenRomanceActive","GLOBAL",1)~ EXTERN FHFRNJ FHFVicLT5
END

CHAIN FHFRNJ FHFVicLT5
@1674
== VICONIJ @1675
== FHFRNJ @1676
== VICONIJ @1677
END
++ @1678 EXTERN BVICONI 178
++ #56343 EXTERN BVICONI 179

//LT10

EXTEND_BOTTOM BVICONI 64
IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID) Global("FHFarenRomanceActive","GLOBAL",1)~ EXTERN FHFRNJ FHFVicLT10
END

CHAIN FHFRNJ FHFVicLT10
@1679
=
@1680
== VICONIJ @1681
== FHFRNJ @1682
END
++ @1683 DO ~SetGlobal("FHFarenFriend","GLOBAL",1) SetGlobal("FHFarenRomanceActive","GLOBAL",3) SetGlobal("FHFarenFriend","GLOBAL",1)~ + FHFVicLT10_farfriend
++ @1684 DO ~SetGlobal("FHFarenRomanceActive","GLOBAL",3)~ + FHFVicLT10_farfriend
++ @1685 DO ~SetGlobal("ViconiaRomanceActive","GLOBAL",3)~ EXTERN VICONIJ FHFVicLT10_vicfriend
++ @1686 DO ~SetGlobal("ViconiaRomanceActive","GLOBAL",3)~ EXTERN VICONIJ FHFVicLT10_vicfriend

CHAIN FHFRNJ FHFVicLT10_farfriend
@1687
== VICONIJ @1688
=
@1689
END
++ #9775 EXTERN BVICONI 67
++ #9776 EXTERN BVICONI 65
++ #27135 EXTERN BVICONI 232

CHAIN VICONIJ FHFVicLT10_vicfriend
@1690
EXIT

//Interjections

I_C_T AMSI 2 FHFAMSI
== FHFRNJ IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@1691
== AMSI IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@1692
END

I_C_T ANOMENJ 150 FHFANOMENJ
== FHFRNJ IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@1693
END

I_C_T ARAN 49 FHFARAN1
== FHFRNJ IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@1694
END

I_C_T SAFE ARAN 20 FHFARAN2
== FHFRNJ IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@1695
== ARAN IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@1696
END

I_C_T ARAN 77 FHFARAN4
== FHFRNJ IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@1697
END

CHAIN IF WEIGHT #-1
~InParty("FHFRN")
InMyArea("FHFRN")
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFMissyCoat","GLOBAL",0)~ THEN ARNGRL01 FHFARNGRL
@1698
DO ~SetGlobal("FHFMissyCoat","GLOBAL",1)~
== FHFRNJ @1699
== ARNGRL01 @1700
EXIT

I_C_T ARNMAN04 0 FHFARNMAN04
== FHFRNJ IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@1701
END

I_C_T ARNMAN04 6 FHFARNMAN04b
== FHFRNJ IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@1702
== ARNMAN04 IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@1703
== FHFRNJ IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@1704
END

I_C_T ARNMAN05 3 FHFARNMAN05
== FHFRNJ IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@1705
END

I_C_T BODHI 6 FHFBODHI
== FHFRNJ IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@1706
END

I_C_T BODHI 114 FHFBODHI2
== FHFRNJ IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@1707
END

I_C_T BODHI 45 FHFBODHI4
== FHFRNJ IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@1708
END

I_C_T BODHI 49 FHFBODHI5
== FHFRNJ IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@1709
END

I_C_T BODHI 72 FHFBODHI6
== FHFRNJ IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@1710
END

I_C_T YOSHJ 76 FHFYoshBodhi1
== FHFRNJ IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@1711
END

I_C_T YOSHJ 78 FHFYoshBodhi2
== FHFRNJ IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@1712
== YOSHJ IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@1713
END

I_C_T YOSHJ 113 FHFYoshPPIreni1
== FHFRNJ IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@2447
END

CHAIN IF WEIGHT #-1
~InParty("FHFRN")
InMyArea("FHFRN")
!StateCheck("FHFRN",CD_STATE_NOTVALID)
InPartySlot(LastTalkedToBy,0)
OR(2)
Global("FHFarenRomanceActive","GLOBAL",1)
Global("FHFarenRomanceActive","GLOBAL",2)
Global("FHFBertrand","GLOBAL",0)~ THEN BERTRAND FHFBERTRAND
@1714
DO ~SetGlobal("FHFBertrand","GLOBAL",1)~
== FHFRNJ @1715
== BERTRAND @1716
== FHFRNJ @1717
== BERTRAND @1718
EXIT

CHAIN IF WEIGHT #-1
~InParty("FHFRN")
InMyArea("FHFRN")
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFBFISH","GLOBAL",0)~ THEN BFISHW1 FHFBFISHW1
@1719
DO ~SetGlobal("FHFBFISH","GLOBAL",1)~
== FHFRNJ @1720
== BFISHW1 @1721
== FHFRNJ @1722
EXIT

CHAIN IF WEIGHT #-1
~InParty("FHFRN")
InMyArea("FHFRN")
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFBFTOWN2","GLOBAL",0)~ THEN BFTOWN2 FHFBFTOWN2
@1723
DO ~SetGlobal("FHFBFTOWN2","GLOBAL",1)~
== FHFRNJ @1724
EXIT

CHAIN IF WEIGHT #-1
~InParty("FHFRN")
InMyArea("FHFRN")
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFBPROST1","GLOBAL",0)~ THEN BPROST1 FHFBPROST1
@1725
DO ~SetGlobal("FHFBPROST1","GLOBAL",1)~
== FHFRNJ @1726
EXIT

I_C_T NALIAJ 235 FHFBBEGG1
== FHFRNJ IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@1727
== NALIAJ IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@1728
END

I_C_T CERND 7 FHFCerndInt
== FHFRNJ IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@1729
END

CHAIN IF WEIGHT #-1
~InParty("FHFRN")
InMyArea("FHFRN")
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFFCUST03","GLOBAL",0)~ THEN FFCUST03 FHFFCUST03
@1730
DO ~SetGlobal("FHFFCUST03","GLOBAL",1)~
== FHFRNJ @1731
EXIT

CHAIN IF WEIGHT #-1
~InParty("FHFRN")
InMyArea("FHFRN")
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFFCUST08","GLOBAL",0)~ THEN FFCUST08 FHFFCUST08
@1732
DO ~SetGlobal("FHFFCUST08","GLOBAL",1)~
== FHFRNJ @1733
== FFCUST08 @1734
EXIT

CHAIN IF WEIGHT #-1
~InParty("FHFRN")
InMyArea("FHFRN")
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFBRAT3","GLOBAL",0)~ THEN BRAT3 FHFBRAT3
@1735
DO ~SetGlobal("FHFBRAT3","GLOBAL",1)~
== FHFRNJ @1736
= @1737
EXIT

CHAIN IF WEIGHT #-1
~InParty("FHFRN")
InMyArea("FHFRN")
!StateCheck("FHFRN",CD_STATE_NOTVALID)
InPartySlot(LastTalkedToBy,0)
OR(2)
Global("FHFarenRomanceActive","GLOBAL",1)
Global("FHFarenRomanceActive","GLOBAL",2)
Global("FHFDADROW21","GLOBAL",0)~ THEN DADROW21 FHFDADROW21
@1738
= @1739
= @1740
DO ~SetGlobal("FHFDADROW21","GLOBAL",1)~
== FHFRNJ @1741
= @1742
EXIT

CHAIN IF WEIGHT #-1
~Name("FHFRN",LastTalkedToBy)~ THEN DADROW21 FHFDADROW21b
@1743
= @1739
= @1740
END
++ @1744 + 3

CHAIN IF WEIGHT #-1
~Name("FHFRN",LastTalkedToBy)~ THEN DADROW23 FHFDADROW23
@1745
= @1746
= @1747
END
++ @1748 EXTERN DADROW23 4
++ @1749 EXTERN DADROW23 5

I_C_T DELON 6 FHFDELON1
== FHFRNJ IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@1750
== DELON IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@1751
END

I_C_T DELON 15 FHFDELON1
== FHFRNJ IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@1752
== DELON IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@1753
END

CHAIN IF WEIGHT #-1
~InParty("FHFRN")
InMyArea("FHFRN")
!StateCheck("FHFRN",CD_STATE_NOTVALID)
!Global("FHFarenRomanceActive","GLOBAL",2)
Global("FHFDELTOW02","GLOBAL",0)~ THEN DELTOW02 FHFDELTOW02
@1754
DO ~SetGlobal("FHFDELTOW02","GLOBAL",1)~
== FHFRNJ @1755
EXIT

CHAIN IF WEIGHT #-1
~InParty("FHFRN")
InMyArea("FHFRN")
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFDFISHER","GLOBAL",0)~ THEN DFISHER FHFDFISHER
@1756
DO ~SetGlobal("FHFDFISHER","GLOBAL",1)~
== FHFRNJ @1757
EXIT

CHAIN IF WEIGHT #-1
~InParty("FHFRN")
InMyArea("FHFRN")
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFDFTOWN2","GLOBAL",0)~ THEN DFTOWN2 FHFDFTOWN2
@1758
DO ~SetGlobal("FHFDFTOWN2","GLOBAL",1)~
== FHFRNJ @1759
== DFTOWN2 @1760
== FHFRNJ @1761
EXIT

CHAIN IF WEIGHT #-1
~InParty("FHFRN")
InMyArea("FHFRN")
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFDHALF1","GLOBAL",0)~ THEN DHALF1 FHFDHALF1
@1762
DO ~SetGlobal("FHFDHALF1","GLOBAL",1)~
== FHFRNJ @1763
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @1764
EXIT

CHAIN IF WEIGHT #-1
~InParty("FHFRN")
InMyArea("FHFRN")
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFDSAILOR1","GLOBAL",0)~ THEN DSAILOR1 FHFDSAILOR1
@1765
DO ~SetGlobal("FHFDSAILOR1","GLOBAL",1)~
== FHFRNJ @1766
EXIT

CHAIN IF WEIGHT #-1
~InParty("FHFRN")
InMyArea("FHFRN")
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFDRUNK1","GLOBAL",0)~ THEN DRUNK1 FHFDRUNK1
@1767
DO ~SetGlobal("FHFDrunk1","GLOBAL",1)~
== FHFRNJ @1768
== DRUNK1 @1769
EXIT

I_C_T EDWIN 34 FHFEdwinMae1
== FHFRNJ IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@1770
END

I_C_T EDWIN 62 FHFEdwinMae2
== FHFRNJ IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@1771
END

I_C_T EDWIN 26 FHFEdwinMae3
== FHFRNJ IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@1772
== EDWIN IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@1773
END

CHAIN IF WEIGHT #-1
~InParty("FHFRN")
InMyArea("FHFRN")
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFGFTOWN01","GLOBAL",0)~ THEN GFTOWN01 FHFGFTOWN01
@1774
DO ~SetGlobal("FHFGFTOWN01","GLOBAL",1)~
== FHFRNJ @1775
EXIT

CHAIN IF WEIGHT #-1
~InParty("FHFRN")
InMyArea("FHFRN")
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFGMTOWN02","GLOBAL",0)~ THEN GMTOWN02 FHFGMTOWN02
@1776
DO ~SetGlobal("FHFGMTOWN02","GLOBAL",1)~
== FHFRNJ @1777
EXIT

I_C_T GNOBLEF1 3 FHFGNOBLEF1
== FHFRNJ IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@1778
END

I_C_T HELLJON 7 FHFHELLJON
== FHFRNJ IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@1779
END

I_C_T HELLJON 8 FHFHELLJON
== FHFRNJ IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@1779
END

I_C_T HELLJON 9 FHFHELLJON
== FHFRNJ IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@1779
END

I_C_T HELLJON 10 FHFHELLJON
== FHFRNJ IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@1779
END

I_C_T SAFE PLAYER1 16 FHFIRENDEAD
== FHFRNJ IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@1780
END

I_C_T SAFE SUJON 14 FHFSUJON
== FHFRNJ IF ~InParty("FHFRN") InMyArea("FHFRN") Global("FHFarenRomanceActive","GLOBAL",2) !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@1781
== SUJON IF ~InParty("FHFRN") InMyArea("FHFRN") Global("FHFarenRomanceActive","GLOBAL",2) !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@1782
END

I_C_T HIDDEN 15 FHFHIDDEN
== FHFRNJ IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@1783
== HIDDEN IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@1784
END

I_C_T LEHTIN 10 FHFLEHTIN
== FHFRNJ IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@1785
== LEHTIN IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@1786
END

I_C_T LIN 0 FHFLIN
== FHFRNJ IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@1787
END

CHAIN IF WEIGHT #-1
~NumberOfTimesTalkedTo(0)
Name("FHFRN",LastTalkedToBy)
!Global("MadamUpset","GLOBAL",1)~ THEN MADAM FHFMADAM1
@1788
END
++ @1789 + 2
++ @1790 + 1

CHAIN IF WEIGHT #-1
~!NumberOfTimesTalkedTo(0)
Name("FHFRN",LastTalkedToBy)
!Global("MadamUpset","GLOBAL",1)~ THEN MADAM FHFMADAM2
@1791
END
++ @1789 + 2
++ @1790 + 1

I_C_T MADAM 4 FHFMADAM3
== FHFRNJ IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@1792
END

I_C_T MADAM 6 FHFMADAM4
== FHFRNJ IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@1793
END

I_C_T MAEVAR 1 FHFMAEVAR1
== FHFRNJ IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@1794
== MAEVAR IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@1795
END

I_C_T MAEVAR 2 FHFMAEVAR2
== FHFRNJ IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@1794
== MAEVAR IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@1795
END

I_C_T MAEVAR 3 FHFMAEVAR3
== FHFRNJ IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@1794
== MAEVAR IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@1795
END

I_C_T MARIA 5 FHFMARIA
== FHFRNJ IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@1796
END

I_C_T MAZZY 0 FHFMAZZY1
== FHFRNJ IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@1797
== MAZZY IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@1798
END

INTERJECT MAZZY 6 FHFMAZZY2
== FHFRNJ IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@1799
DO ~SetGlobal("Mazzy1","GLOBAL",1) SetGlobal("MazzyFreed","GLOBAL",1)~ EXTERN MAZZY 13

I_C_T VARA1 1 FHFVARA1
== FHFRNJ IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@1800
END

I_C_T MOURNER8 0 FHFMOURNER8
== FHFRNJ IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@1801
END

CHAIN IF WEIGHT #-1
~InParty("FHFRN")
InMyArea("FHFRN")
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFMURTLEN","GLOBAL",0)~ THEN MURTLEN FHFMURTLEN
@1802
DO ~SetGlobal("FHFMURTLEN","GLOBAL",1)~
== FHFRNJ @1803
EXIT

I_C_T NALIA 13 FHFNALIA
== FHFRNJ IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@1804
END

I_C_T PLAYER1 0 FHFSlayerDizzy
== FHFRNJ IF ~InParty("FHFRN") See("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@1805
END

I_C_T PLAYER1 5 FHFSlayerChange1
== FHFRNJ IF ~InParty("FHFRN") See("FHFRN") !Global("FHFarenRomanceActive","GLOBAL",2) !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@1806
END

I_C_T PLAYER1 5 FHFSlayerChange2
== FHFRNJ IF ~InParty("FHFRN") See("FHFRN") Global("FHFarenRomanceActive","GLOBAL",2) !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@1807
END

INTERJECT PLAYER1 7 FHFSlayerChangeAttack
== FHFRNJ IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID) OR(2) Global("FHFarenRomanceActive","GLOBAL",1) Global("FHFarenRomanceActive","GLOBAL",2)~ THEN
@1808
END
++ @1809 DO ~SetGlobal("FHFSlayerChangeAttack","GLOBAL",1)~ EXTERN FHFRNJ FHFSlayerChangeAttack_2
++ @1810 DO ~SetGlobal("FHFSlayerChangeAttack","GLOBAL",1)~ EXTERN FHFRNJ FHFSlayerChangeAttack_2
++ @1811 DO ~SetGlobal("FHFSlayerChangeAttack","GLOBAL",1)~ EXTERN FHFRNJ FHFSlayerChangeAttack_2

CHAIN FHFRNJ FHFSlayerChangeAttack_2
@1812
DO ~ActionOverride(Player1,ReallyForceSpell(Myself,SLAYER_CHANGE))~
EXIT

INTERJECT Player1 10 FHFPostSlayerAttack
== FHFRNJ IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID) OR(2) Global("FHFarenRomanceActive","GLOBAL",1) Global("FHFarenRomanceActive","GLOBAL",2)~ THEN
@1813
== FHFRNJ IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID) OR(2) Global("FHFarenRomanceActive","GLOBAL",1) Global("FHFarenRomanceActive","GLOBAL",2)~ THEN
@1814
END
IF ~~ DO ~SetGlobal("DrowTalk","GLOBAL",5)~ EXIT

EXTEND_BOTTOM Player1 10
IF ~Dead("FHFRN") Global("FHFSlayerChangeAttack","GLOBAL",1)~ EXTERN Player1 12
END

I_C_T PLAYER1 15 FHFLonkDead
== FHFRNJ IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@1815
END

I_C_T PLAYER1 25 FHFEnterHell
== FHFRNJ IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@1816
== FHFRNJ IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID) Global("FHFarenRomanceActive","GLOBAL",2)~ THEN
@1817
END

EXTEND_BOTTOM PLAYER1 33
IF ~InParty("FHFRN") InMyArea("FHFRN") Global("FHFTree","GLOBAL",0) !Global("FHFarenRomanceActive","GLOBAL",2)~
DO ~SetGlobal("FHFTree","GLOBAL",1)~ EXTERN PLAYER1 FHFTreeLife
END

EXTEND_BOTTOM PLAYER1 33
IF ~InParty("FHFRN") InMyArea("FHFRN") Global("FHFTree","GLOBAL",0) Global("FHFarenRomanceActive","GLOBAL",2)~
DO ~SetGlobal("FHFTree","GLOBAL",1)~ EXTERN PLAYER1 FHFTreeLifeRom
END

CHAIN PLAYER1 FHFTreeLife
@1818
END
++ @1819 DO ~SetGlobal("FHFTree","GLOBAL",1)~ EXTERN FHFRNJ FHFTreeLife_fight
++ @1820 DO ~SetGlobal("FHFTree","GLOBAL",1)~ EXTERN FHFRNJ FHFTreeLife_danger
++ @1821 DO ~SetGlobal("FHFTree","GLOBAL",1)~ EXTERN FHFRNJ FHFTreeLife_danger

CHAIN FHFRNJ FHFTreeLife_fight
@1822
COPY_TRANS PLAYER1 33

CHAIN FHFRNJ FHFTreeLife_danger
@1823
COPY_TRANS PLAYER1 33

CHAIN PLAYER1 FHFTreeLifeRom
@1824
END
++ @1825 EXTERN FHFRNJ FHFTreeLife_rom

CHAIN FHFRNJ FHFTreeLife_rom
@1826
COPY_TRANS PLAYER1 33

CHAIN IF WEIGHT #-1
~InParty("FHFRN")
InMyArea("FHFRN")
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFPOSTUL2","GLOBAL",0)~ THEN POSTUL2 FHFPOSTUL2
@1827
DO ~SetGlobal("FHFPOSTUL2","GLOBAL",1)~
== FHFRNJ @1828
EXIT

I_C_T PPSAEM 14 FHFPPSAEM1
== FHFRNJ IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@1829
END

I_C_T PPSAEM 32 FHFPPSAEM2
== FHFRNJ IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@1830
END

I_C_T PPSAEM 53 FHFPPSAEM3
== FHFRNJ IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@1829
END

I_C_T SAFE PPSAEM 59 FHFPPSAEM4
== FHFRNJ IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@1831
== PPSAEM IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@1832
END

I_C_T PPSAEM2 21 FHFPPSAEM5
== FHFRNJ IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@1833
END

I_C_T PPSAEM3 1 FHFPPSAEM6
== FHFRNJ IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@1834
END

I_C_T QUAYLE 10 FHFQuayle
== FHFRNJ IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@1835
END

I_C_T RENAL 7 FHFRENAL1
== FHFRNJ IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@1836
== RENAL IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@1837
END

I_C_T RENAL 23 FHFRENAL2
== FHFRNJ IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@1838
END

I_C_T REPTHF1 0 FHFREPTHF1
== FHFRNJ IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@1839
END

I_C_T SAHKNG01 1 FHFSAHKNG01
== FHFRNJ IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@1840
END

I_C_T RNGSHA02 1 FHFRNGSHA02
== FHFRNJ IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@1841
END

I_C_T SHADEL 6 FHFSHADEL
== FHFRNJ IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@1842
END

I_C_T SLILMAT 12 FHFSLILMAT
== FHFRNJ IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@2451
END

CHAIN IF WEIGHT #-1
~InParty("FHFRN")
InMyArea("FHFRN")
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFSLUMF2","GLOBAL",0)~ THEN SLUMF2 FHFSLUMF2
@1843
DO ~SetGlobal("FHFSLUMF2","GLOBAL",1)~
== FHFRNJ @1844
== SLUMF2 @1845
EXIT

CHAIN IF WEIGHT #-1
~InParty("FHFRN")
InMyArea("FHFRN")
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFSPOILED1","GLOBAL",0)~ THEN SPOILED1 FHFSPOILED1
@1846
DO ~SetGlobal("FHFSPOILED1","GLOBAL",1)~
== FHFRNJ @1847
== SPOILED1 @1848
EXIT

I_C_T SUAVATAR 5 FHFSUAVATAR
== FHFRNJ IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@1849
END

I_C_T SUDEMIN 11 FHFSUDEMIN1
== FHFRNJ IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@1850
END

I_C_T SUDEMIN 22 FHFSUDEMIN2
== FHFRNJ IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@1851
END

I_C_T SUDEMIN 32 FHFSUDEMIN3
== FHFRNJ IF ~InParty("FHFRN") InMyArea("FHFRN") Global("FHFarenRomanceActive","GLOBAL",2) !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@1852
END

I_C_T TOLGER 75 FHFTOLGER1
== FHFRNJ IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@1853
END

I_C_T TRCUT07 4 FHFTRCUT07a
== FHFRNJ IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@1854
END

I_C_T TRCUT07 8 FHFTRCUT07b
== FHFRNJ IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@1855
END

I_C_T TREVIL01 6 FHFTREVIL01
== FHFRNJ IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@1856
END

CHAIN IF WEIGHT #-1
~InParty("FHFRN")
InMyArea("FHFRN")
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Dead("cefald01")
Global("geniesgone","GLOBAL",1)
Global("FHFTRFTOW01","GLOBAL",0)~ THEN TRFTOW01 FHFTRFTOW01
@1857
DO ~SetGlobal("FHFTRFTOW01","GLOBAL",1)~
== FHFRNJ @1858
EXIT

CHAIN IF WEIGHT #-1
~InParty("FHFRN")
InMyArea("FHFRN")
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFTRFTOW03","GLOBAL",0)~ THEN TRFTOW03 FHFTRFTOW03
@1859
DO ~SetGlobal("FHFTRFTOW03","GLOBAL",1)~
== FHFRNJ @1860
EXIT

CHAIN IF WEIGHT #-1
~InParty("FHFRN")
InMyArea("FHFRN")
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFTRFTOW05","GLOBAL",0)~ THEN TRFTOW05 FHFTRFTOW05
@1861
DO ~SetGlobal("FHFTRFTOW05","GLOBAL",1)~
== FHFRNJ @1862
== TRFTOW05 @1863
EXIT

CHAIN IF WEIGHT #-1
~InParty("FHFRN")
InMyArea("FHFRN")
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Dead("cefald01")
Global("geniesgone","GLOBAL",1)
Global("FHFTRGRD01","GLOBAL",0)~ THEN TRGRD01 FHFTRGRD01
@1864
DO ~SetGlobal("FHFTRGRD01","GLOBAL",1)~
== FHFRNJ @1865
EXIT

CHAIN IF WEIGHT #-1
~InParty("FHFRN")
InMyArea("FHFRN")
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFTRLGRD01","GLOBAL",0)~ THEN TRLGRD01 FHFTRLGRD01
@1866
DO ~SetGlobal("FHFTRLGRD01","GLOBAL",1)~
== FHFRNJ @1867
EXIT

CHAIN IF WEIGHT #-1
~InParty("FHFRN")
InMyArea("FHFRN")
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFTRMTOW04","GLOBAL",0)~ THEN TRMTOW04 FHFTRMTOW04
@1868
DO ~SetGlobal("FHFTRMTOW04","GLOBAL",1)~
== FHFRNJ @1869
EXIT

I_C_T TRNOBF01 6 FHFTRNOBF01
== FHFRNJ IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@1870
END

CHAIN IF WEIGHT #-1
~InParty("FHFRN")
InMyArea("FHFRN")
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFTRPLE02","GLOBAL",0)~ THEN TRPLE02 FHFTRPLE02
@1871
DO ~SetGlobal("FHFTRPLE02","GLOBAL",1)~
== FHFRNJ @1872
== TRPLE02 @1873
== FHFRNJ @1874
EXIT

CHAIN IF WEIGHT #-1
~InParty("FHFRN")
InMyArea("FHFRN")
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFAlenina","GLOBAL",0)~ THEN TRTAVP05 FHFAlenina
@1875
DO ~SetGlobal("FHFAlenina","GLOBAL",1)~
== FHFRNJ @1876
== TRTAVP05 @1877
== FHFRNJ @1878
== TRTAVP05 @1879
EXIT

EXTEND_BOTTOM TRGYP02 2
IF ~!InPartySlot(LastTalkedToBy,0) Name("FHFRN",LastTalkedToBy)~ EXTERN TRGYP02 FHFTRGYP02
END

CHAIN TRGYP02 FHFTRGYP02
@1880
== FHFRNJ @1881
EXIT

CHAIN IF WEIGHT #-1
~InParty("FHFRN")
InMyArea("FHFRN")
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFBusya","GLOBAL",0)~ THEN TRHMER01 FHFBusya
@1882
DO ~SetGlobal("FHFBusya","GLOBAL",1)~
== FHFRNJ @1883
== TRHMER01 @1884
== FHFRNJ @1885
EXIT

CHAIN IF WEIGHT #-1
~InParty("FHFRN")
InMyArea("FHFRN")
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFCop","GLOBAL",0)~ THEN CELOGAN FHFLOG
@1886
DO ~SetGlobal("FHFCop","GLOBAL",1)~
== FHFRNJ @1887
== CELOGAN @1888
EXIT

CHAIN IF WEIGHT #-1
~InParty("FHFRN")
InMyArea("FHFRN")
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFTRINNK01","GLOBAL",0)
OR(3)
Dead("cefald01")
!InParty("Cernd")
!See("Cernd")~ THEN TRINNK01 FHFTRINNK01
@1889
DO ~SetGlobal("FHFTRINNK01","GLOBAL",1)~
== FHFRNJ @1890
== TRINNK01 @1891
== FHFRNJ @1892
== TRINNK01 @1893
== FHFRNJ @1894
== TRINNK01 @1895
EXIT

I_C_T TRSKIN03 0 FHFTRSKIN03
== FHFRNJ IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@1896
END

INTERJECT UDDROW16 17 FHFUDDROW16a
== FHFRNJ IF ~InParty("FHFRN") InMyArea("FHFRN") Name("FHFRN",Player2)~ THEN
@1897
EXTERN UDDROW16 12

INTERJECT UDDROW16 18 FHFUDDROW16b
== FHFRNJ IF ~InParty("FHFRN") InMyArea("FHFRN") Name("FHFRN",Player3)~ THEN
@1897
EXTERN UDDROW16 12

INTERJECT UDDROW16 19 FHFUDDROW16c
== FHFRNJ IF ~InParty("FHFRN") InMyArea("FHFRN") Name("FHFRN",Player4)~ THEN
@1897
EXTERN UDDROW16 12

INTERJECT UDDROW16 20 FHFUDDROW16d
== FHFRNJ IF ~InParty("FHFRN") InMyArea("FHFRN") Name("FHFRN",Player5)~ THEN
@1898
EXTERN UDDROW16 12

INTERJECT UDDROW16 21 FHFUDDROW16e
== FHFRNJ IF ~InParty("FHFRN") InMyArea("FHFRN") Name("FHFRN",Player6)~ THEN
@1898
EXTERN UDDROW16 12

CHAIN IF WEIGHT #-1
~InParty("FHFRN")
InMyArea("FHFRN")
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFUHMAN01","GLOBAL",0)~ THEN UHMAN01 FHFUHMAN01
@1899
DO ~SetGlobal("FHFUHMAN01","GLOBAL",1)~
== FHFRNJ @1900
== UHMAN01 @1901
== FHFRNJ @1902
EXIT

EXTEND_BOTTOM UHMAY01 5
IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ EXTERN UHMAY01 FHFUhMay01
END

CHAIN UHMAY01 FHFUhMay01
@1903
== FHFRNJ @1904
== UHMAY01 @1905
== FHFRNJ @1906
== UHMAY01 @1907
END
COPY_TRANS UHMAY01 5

I_C_T VALYGAR 43 FHFVALYGAR
== FHFRNJ IF ~InParty("FHFRN") InMyArea("FHFRN") !StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@1908
END

I_C_T VICONI 2 FHFVICONIM
== FHFRNJ IF ~InParty("FHFRN") InMyArea("FHFRN")!StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@1909
END

CHAIN IF WEIGHT #-1
~InParty("FHFRN")
InMyArea("FHFRN")
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFWAYLANE","GLOBAL",0)~ THEN WAYLANE FHFWAYLANE
@1910
DO ~SetGlobal("FHFWAYLANE","GLOBAL",1)~
== FHFRNJ IF ~!InParty("Valygar")~ THEN @1911
== FHFRNJ IF ~InParty("Valygar")~ THEN @1912
== WAYLANE @1913
== FHFRNJ @1914
EXIT

I_C_T YOSHIMOX 1 FHFYoshiKill
== FHFRNJ IF ~InParty("FHFRN") InMyArea("FHFRN")!StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@1915
END

I_C_T YOSHIMOX 4 FHFYoshiKill
== FHFRNJ IF ~InParty("FHFRN") InMyArea("FHFRN")!StateCheck("FHFRN",CD_STATE_NOTVALID)~ THEN
@1915
END

//Bodhi abduction: graveyard

ADD_TRANS_TRIGGER BODHIAMB 5
~OR(2)
!InParty("FHFRN")
!Global("FHFarenRomanceActive","GLOBAL",2)~

EXTEND_BOTTOM BODHIAMB 5
IF ~InParty("FHFRN")
    Global("FHFarenRomanceActive","GLOBAL",2)~ EXTERN BODHIAMB FHFarenBodhi1
END

APPEND BODHIAMB
IF ~~ BEGIN FHFarenBodhi1
SAY @1916
IF ~OR(2)
!InPartyAllowDead("FHFRN")
Dead("FHFRN")~ + 6
IF ~InPartyAllowDead("FHFRN")
!Dead("FHFRN")~ + FHFarenBodhi2
END

IF ~~ BEGIN FHFarenBodhi2
SAY @1917
IF ~~ EXTERN FHFRNJ FHFarenBodhi3
END

IF ~~ FHFarenBodhi4
SAY @1918
IF ~~ DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("FHFCUT1")~
UNSOLVED_JOURNAL @3001
EXIT
END
END

APPEND FHFRNJ
IF ~~ BEGIN FHFarenBodhi3
SAY @1920
IF ~~ EXTERN BODHIAMB FHFarenBodhi4
END
END

//Bodhi abduction: monks of Oghma

ADD_TRANS_TRIGGER IMNBOOK1 0
~OR(2)
!Global("RevealUmar","GLOBAL",1)
!PartyHasItem("FHFBODY")~

EXTEND_BOTTOM IMNBOOK1 0
IF ~PartyHasItem("FHFBODY")
Global("RevealUmar","GLOBAL",1)~ THEN REPLY #59383 EXTERN IMNBOOK1 4
END

APPEND OGHMONK1
IF WEIGHT #-1
~Global("RevealUmar","GLOBAL",1)
PartyHasItem("FHFBODY")~ THEN BEGIN FHOghmaMonk
SAY @1921
++ @1922 EXTERN OGHMONK1 5
++ @1923 EXTERN OGHMONK1 6
END
END

//Bodhi abduction: talking to Elhan

EXTEND_BOTTOM C6ELHAN2 70
+ ~PartyHasItem("FHFBODY")~ + @1924 + 76
END

EXTEND_BOTTOM WARSAGE 0
+ ~!Dead("c6bodhi") Global("FHFarenVampire","GLOBAL",2)~ + @1925 + 6
END

EXTEND_BOTTOM WARSAGE 0
+ ~PartyHasItem("FHFBODY")~ + @1926 + 5
END

//Bodhi abduction: the final battle

ADD_TRANS_TRIGGER C6BODHI 21 ~!Global("FHFarenVampire","GLOBAL",2)~

EXTEND_BOTTOM C6BODHI 21
IF ~Global("FHFarenVampire","GLOBAL",2)~ THEN EXTERN C6BODHI 23
END

EXTEND_BOTTOM C6BODHI 23
+ ~Global("FHFarenVampire","GLOBAL",2)~ + @1927 EXTERN C6BODHI FHFVamp_taken
+ ~Global("FHFarenVampire","GLOBAL",2)~ + @1928 EXTERN C6BODHI FHFVamp_taken
+ ~Global("FHFarenVampire","GLOBAL",2)~ + @1929 EXTERN C6BODHI FHFVamp_sentiment
END

APPEND C6BODHI
IF ~~ BEGIN FHFVamp_taken
SAY @1930
IF ~~ UNSOLVED_JOURNAL @3002
EXTERN FHFVAMP FHFVamp_1
END

IF ~~ FHFVamp_sentiment
SAY @1932
IF ~~ + FHFVamp_taken
END

IF ~~ FHFVamp_2
SAY @1933
IF ~~ EXTERN C6BODHI 28
END
END

BEGIN ~FHFVAMP~

IF ~~ FHFVamp_1
SAY @1934
IF ~~ EXTERN C6BODHI FHFVamp_2
END

//Faren-initiated flirts

CHAIN IF ~Global("FHFFlirtsDisabled","GLOBAL",0)
Global("FHFarenRomanceActive","GLOBAL",1)
Global("FHFStartFlirt","GLOBAL",1)~ THEN FHFRNJ FHFFlirtMenu1
@1935
END
IF ~Global("FHFFlirtCounter","GLOBAL",1)~ DO ~SetGlobal("FHFStartFlirt","GLOBAL",0) IncrementGlobal("FHFFlirtCounter","GLOBAL",1) RealSetGlobalTimer("FHFFlirtTimer","GLOBAL",2500)~ + FHFFlirtMenu1_1
IF ~Global("FHFFlirtCounter","GLOBAL",2)~ DO ~SetGlobal("FHFStartFlirt","GLOBAL",0) IncrementGlobal("FHFFlirtCounter","GLOBAL",1) RealSetGlobalTimer("FHFFlirtTimer","GLOBAL",2500)~ + FHFFlirtMenu1_2
IF ~Global("FHFFlirtCounter","GLOBAL",3) Gender(Player1,MALE)~ DO ~SetGlobal("FHFStartFlirt","GLOBAL",0) IncrementGlobal("FHFFlirtCounter","GLOBAL",1) RealSetGlobalTimer("FHFFlirtTimer","GLOBAL",2500)~ + FHFFlirtMenu1_3a
IF ~Global("FHFFlirtCounter","GLOBAL",3) Gender(Player1,FEMALE)~ DO ~SetGlobal("FHFStartFlirt","GLOBAL",0) IncrementGlobal("FHFFlirtCounter","GLOBAL",1) RealSetGlobalTimer("FHFFlirtTimer","GLOBAL",2500)~ + FHFFlirtMenu1_3b
IF ~Global("FHFFlirtCounter","GLOBAL",4) Global("FHFNoAnnoy","GLOBAL",1)~ DO ~SetGlobal("FHFStartFlirt","GLOBAL",0) IncrementGlobal("FHFFlirtCounter","GLOBAL",1) RealSetGlobalTimer("FHFFlirtTimer","GLOBAL",2500)~ + FHFFlirtMenu1_4a
IF ~Global("FHFFlirtCounter","GLOBAL",4) Global("FHFNoAnnoy","GLOBAL",0)~ DO ~SetGlobal("FHFStartFlirt","GLOBAL",0) IncrementGlobal("FHFFlirtCounter","GLOBAL",1) RealSetGlobalTimer("FHFFlirtTimer","GLOBAL",2500)~ + FHFFlirtMenu1_4b
IF ~Global("FHFFlirtCounter","GLOBAL",5)~ DO ~SetGlobal("FHFStartFlirt","GLOBAL",0) IncrementGlobal("FHFFlirtCounter","GLOBAL",1) RealSetGlobalTimer("FHFFlirtTimer","GLOBAL",2500)~ + FHFFlirtMenu1_5
IF ~Global("FHFFlirtCounter","GLOBAL",6) CheckStatGT(Player1,10,STR)~ DO ~SetGlobal("FHFStartFlirt","GLOBAL",0) IncrementGlobal("FHFFlirtCounter","GLOBAL",1) RealSetGlobalTimer("FHFFlirtTimer","GLOBAL",2500)~ + FHFFlirtMenu1_6a
IF ~Global("FHFFlirtCounter","GLOBAL",6) CheckStatLT(Player1,11,STR)~ DO ~SetGlobal("FHFStartFlirt","GLOBAL",0) IncrementGlobal("FHFFlirtCounter","GLOBAL",1) RealSetGlobalTimer("FHFFlirtTimer","GLOBAL",2500)~ + FHFFlirtMenu1_6b
IF ~Global("FHFFlirtCounter","GLOBAL",7)~ DO ~SetGlobal("FHFStartFlirt","GLOBAL",0) IncrementGlobal("FHFFlirtCounter","GLOBAL",1) RealSetGlobalTimer("FHFFlirtTimer","GLOBAL",2500)~ + FHFFlirtMenu1_7
IF ~Global("FHFFlirtCounter","GLOBAL",8)~ DO ~SetGlobal("FHFStartFlirt","GLOBAL",0) IncrementGlobal("FHFFlirtCounter","GLOBAL",1) RealSetGlobalTimer("FHFFlirtTimer","GLOBAL",2500)~ + FHFFlirtMenu1_8
IF ~Global("FHFFlirtCounter","GLOBAL",9)~ DO ~SetGlobal("FHFStartFlirt","GLOBAL",0) IncrementGlobal("FHFFlirtCounter","GLOBAL",1) RealSetGlobalTimer("FHFFlirtTimer","GLOBAL",2500)~ + FHFFlirtMenu1_9
IF ~Global("FHFFlirtCounter","GLOBAL",10)~ DO ~SetGlobal("FHFStartFlirt","GLOBAL",0) IncrementGlobal("FHFFlirtCounter","GLOBAL",1) RealSetGlobalTimer("FHFFlirtTimer","GLOBAL",2500)~ + FHFFlirtMenu1_10
IF ~Global("FHFFlirtCounter","GLOBAL",11) HPPercentLT(Player1,75)~ DO ~SetGlobal("FHFStartFlirt","GLOBAL",0) IncrementGlobal("FHFFlirtCounter","GLOBAL",1) RealSetGlobalTimer("FHFFlirtTimer","GLOBAL",2500)~ + FHFFlirtMenu1_11a
IF ~Global("FHFFlirtCounter","GLOBAL",11) !HPPercentLT(Player1,75)~ DO ~SetGlobal("FHFStartFlirt","GLOBAL",0) IncrementGlobal("FHFFlirtCounter","GLOBAL",1) RealSetGlobalTimer("FHFFlirtTimer","GLOBAL",2500)~ + FHFFlirtMenu1_11b
IF ~Global("FHFFlirtCounter","GLOBAL",12) TimeGT(6) TimeLT(21)~ DO ~SetGlobal("FHFStartFlirt","GLOBAL",0) IncrementGlobal("FHFFlirtCounter","GLOBAL",1) RealSetGlobalTimer("FHFFlirtTimer","GLOBAL",2500)~ + FHFFlirtMenu1_12a
IF ~Global("FHFFlirtCounter","GLOBAL",12) OR(2) TimeGT(20) TimeLT(7)~ DO ~SetGlobal("FHFStartFlirt","GLOBAL",0) IncrementGlobal("FHFFlirtCounter","GLOBAL",1) RealSetGlobalTimer("FHFFlirtTimer","GLOBAL",2500)~ + FHFFlirtMenu1_12b
IF ~Global("FHFFlirtCounter","GLOBAL",13)~ DO ~SetGlobal("FHFStartFlirt","GLOBAL",0) IncrementGlobal("FHFFlirtCounter","GLOBAL",1) RealSetGlobalTimer("FHFFlirtTimer","GLOBAL",2500)~ + FHFFlirtMenu1_13
IF ~Global("FHFFlirtCounter","GLOBAL",14)~ DO ~SetGlobal("FHFStartFlirt","GLOBAL",0) IncrementGlobal("FHFFlirtCounter","GLOBAL",1) RealSetGlobalTimer("FHFFlirtTimer","GLOBAL",2500)~ + FHFFlirtMenu1_14
IF ~Global("FHFFlirtCounter","GLOBAL",15)~ DO ~SetGlobal("FHFStartFlirt","GLOBAL",0) IncrementGlobal("FHFFlirtCounter","GLOBAL",1) RealSetGlobalTimer("FHFFlirtTimer","GLOBAL",2500)~ + FHFFlirtMenu1_15
IF ~Global("FHFFlirtCounter","GLOBAL",16)~ DO ~SetGlobal("FHFStartFlirt","GLOBAL",0) IncrementGlobal("FHFFlirtCounter","GLOBAL",1) RealSetGlobalTimer("FHFFlirtTimer","GLOBAL",2500)~ + FHFFlirtMenu1_16
IF ~Global("FHFFlirtCounter","GLOBAL",17)~ DO ~SetGlobal("FHFStartFlirt","GLOBAL",0) IncrementGlobal("FHFFlirtCounter","GLOBAL",1) RealSetGlobalTimer("FHFFlirtTimer","GLOBAL",2500)~ + FHFFlirtMenu1_17
IF ~Global("FHFFlirtCounter","GLOBAL",18)~ DO ~SetGlobal("FHFStartFlirt","GLOBAL",0) IncrementGlobal("FHFFlirtCounter","GLOBAL",1) RealSetGlobalTimer("FHFFlirtTimer","GLOBAL",2500)~ + FHFFlirtMenu1_18
IF ~Global("FHFFlirtCounter","GLOBAL",19)~ DO ~SetGlobal("FHFStartFlirt","GLOBAL",0) IncrementGlobal("FHFFlirtCounter","GLOBAL",1) RealSetGlobalTimer("FHFFlirtTimer","GLOBAL",2500)~ + FHFFlirtMenu1_19
IF ~Global("FHFFlirtCounter","GLOBAL",20)~ DO ~SetGlobal("FHFStartFlirt","GLOBAL",0) IncrementGlobal("FHFFlirtCounter","GLOBAL",1) RealSetGlobalTimer("FHFFlirtTimer","GLOBAL",2500)~ + FHFFlirtMenu1_20
IF ~Global("FHFFlirtCounter","GLOBAL",21)~ DO ~SetGlobal("FHFStartFlirt","GLOBAL",0) IncrementGlobal("FHFFlirtCounter","GLOBAL",1) RealSetGlobalTimer("FHFFlirtTimer","GLOBAL",2500)~ + FHFFlirtMenu1_21
IF ~Global("FHFFlirtCounter","GLOBAL",22) HPPercentLT(Player1,50)~ DO ~SetGlobal("FHFStartFlirt","GLOBAL",0) IncrementGlobal("FHFFlirtCounter","GLOBAL",1) RealSetGlobalTimer("FHFFlirtTimer","GLOBAL",2500)~ + FHFFlirtMenu1_22a
IF ~Global("FHFFlirtCounter","GLOBAL",22) !HPPercentLT(Player1,50)~ DO ~SetGlobal("FHFStartFlirt","GLOBAL",0) IncrementGlobal("FHFFlirtCounter","GLOBAL",1) RealSetGlobalTimer("FHFFlirtTimer","GLOBAL",2500)~ + FHFFlirtMenu1_22b
IF ~Global("FHFFlirtCounter","GLOBAL",23)~ DO ~SetGlobal("FHFStartFlirt","GLOBAL",0) IncrementGlobal("FHFFlirtCounter","GLOBAL",1) RealSetGlobalTimer("FHFFlirtTimer","GLOBAL",2500)~ + FHFFlirtMenu1_23
IF ~Global("FHFFlirtCounter","GLOBAL",24)~ DO ~SetGlobal("FHFStartFlirt","GLOBAL",0) IncrementGlobal("FHFFlirtCounter","GLOBAL",1) RealSetGlobalTimer("FHFFlirtTimer","GLOBAL",2500)~ + FHFFlirtMenu1_24
IF ~Global("FHFFlirtCounter","GLOBAL",25)~ DO ~SetGlobal("FHFStartFlirt","GLOBAL",2) IncrementGlobal("FHFFlirtCounter","GLOBAL",1)~ + FHFFlirtMenu1_25

CHAIN FHFRNJ FHFFlirtMenu1_1
@1936
EXIT

CHAIN FHFRNJ FHFFlirtMenu1_2
@1937
=
@1938
=
@1939
EXIT

CHAIN FHFRNJ FHFFlirtMenu1_2thanks
@1940
EXIT

CHAIN FHFRNJ FHFFlirtMenu1_2return
@1941
EXIT

CHAIN FHFRNJ FHFFlirtMenu1_2think
@1942
EXIT

CHAIN FHFRNJ FHFFlirtMenu1_3a
@1943
EXIT

CHAIN FHFRNJ FHFFlirtMenu1_3b
@1944
END
++ @1945 + FHFFlirtMenu1_3hurt
++ @1946 + FHFFlirtMenu1_3mess
++ @1947 + FHFFlirtMenu1_3gentle
++ @1948 + FHFFlirtMenu1_3neck

CHAIN FHFRNJ FHFFlirtMenu1_3hurt
@1949
EXIT

CHAIN FHFRNJ FHFFlirtMenu1_3mess
@1950
EXIT

CHAIN FHFRNJ FHFFlirtMenu1_3gentle
@1951
EXIT

CHAIN FHFRNJ FHFFlirtMenu1_3neck
@1952
=
@1953
EXIT

CHAIN FHFRNJ FHFFlirtMenu1_4a
@1954
EXIT

CHAIN FHFRNJ FHFFlirtMenu1_4b
@1955
END
++ @1956 + FHFFlirtMenu1_4look
++ @1957 + FHFFlirtMenu1_4fool

CHAIN FHFRNJ FHFFlirtMenu1_4look
@1958
END
++ @1959 DO ~SetGlobal("FHFNoAnnoy","GLOBAL",1)~ + FHFFlirtMenu1_4hurt
++ @1960 + FHFFlirtMenu1_4flick

CHAIN FHFRNJ FHFFlirtMenu1_4fool
@1961
EXIT

CHAIN FHFRNJ FHFFlirtMenu1_4hurt
@1962
EXIT

CHAIN FHFRNJ FHFFlirtMenu1_4flick
@1963
EXIT

CHAIN FHFRNJ FHFFlirtMenu1_5
@1964
EXIT

CHAIN FHFRNJ FHFFlirtMenu1_6a
@1965
EXIT

CHAIN FHFRNJ FHFFlirtMenu1_6b
@1966
END
++ @1967 + FHFFlirtMenu1_6thanks
++ @1968 + FHFFlirtMenu1_6fine

CHAIN FHFRNJ FHFFlirtMenu1_6thanks
@1969
= @1970
EXIT

CHAIN FHFRNJ FHFFlirtMenu1_6fine
@1971
EXIT

CHAIN FHFRNJ FHFFlirtMenu1_7
@1972
=
@1973
EXIT

CHAIN FHFRNJ FHFFlirtMenu1_8
@1974
EXIT

CHAIN FHFRNJ FHFFlirtMenu1_9
@1975
EXIT

CHAIN FHFRNJ FHFFlirtMenu1_10
@1976
=
@1977
=
@1978
EXIT

CHAIN FHFRNJ FHFFlirtMenu1_11a
@1979
=
@1980
EXIT

CHAIN FHFRNJ FHFFlirtMenu1_11b
@1981
EXIT

CHAIN FHFRNJ FHFFlirtMenu1_12a
@1982
EXIT

CHAIN FHFRNJ FHFFlirtMenu1_12b
@1983
EXIT

CHAIN FHFRNJ FHFFlirtMenu1_13
@1984
EXIT

CHAIN FHFRNJ FHFFlirtMenu1_14
@1985
EXIT

CHAIN FHFRNJ FHFFlirtMenu1_15
@1986
EXIT

CHAIN FHFRNJ FHFFlirtMenu1_16
@1987
EXIT

CHAIN FHFRNJ FHFFlirtMenu1_17
@1988
EXIT

CHAIN FHFRNJ FHFFlirtMenu1_18
@1989
EXIT

CHAIN FHFRNJ FHFFlirtMenu1_19
@1990
= @1991
EXIT

CHAIN FHFRNJ FHFFlirtMenu1_20
@1992
= @1993
EXIT

CHAIN FHFRNJ FHFFlirtMenu1_21
@1994
EXIT

CHAIN FHFRNJ FHFFlirtMenu1_22a
@1995
EXIT

CHAIN FHFRNJ FHFFlirtMenu1_22b
@1996
EXIT

CHAIN FHFRNJ FHFFlirtMenu1_23
@1997
EXIT

CHAIN FHFRNJ FHFFlirtMenu1_24
@1998
EXIT

CHAIN FHFRNJ FHFFlirtMenu1_25
@1999
EXIT

//Flirt Menu 2

CHAIN IF ~Global("FHFFlirtsDisabled","GLOBAL",0)
Global("FHFarenRomanceActive","GLOBAL",2)
Global("FHFStartFlirt","GLOBAL",1)~ THEN FHFRNJ FHFFlirtMenu2
@2000
END
IF ~Global("FHFFlirtCounter2","GLOBAL",1)~ DO ~SetGlobal("FHFStartFlirt","GLOBAL",0) IncrementGlobal("FHFFlirtCounter2","GLOBAL",1) RealSetGlobalTimer("FHFFlirtTimer","GLOBAL",2500)~ + FHFFlirtMenu2_1
IF ~Global("FHFFlirtCounter2","GLOBAL",2)~ DO ~SetGlobal("FHFStartFlirt","GLOBAL",0) IncrementGlobal("FHFFlirtCounter2","GLOBAL",1) RealSetGlobalTimer("FHFFlirtTimer","GLOBAL",2500)~ + FHFFlirtMenu2_2
IF ~Global("FHFFlirtCounter2","GLOBAL",3)~ DO ~SetGlobal("FHFStartFlirt","GLOBAL",0) IncrementGlobal("FHFFlirtCounter2","GLOBAL",1) RealSetGlobalTimer("FHFFlirtTimer","GLOBAL",2500)~ + FHFFlirtMenu2_3
IF ~Global("FHFFlirtCounter2","GLOBAL",4)~ DO ~SetGlobal("FHFStartFlirt","GLOBAL",0) IncrementGlobal("FHFFlirtCounter2","GLOBAL",1) RealSetGlobalTimer("FHFFlirtTimer","GLOBAL",2500)~ + FHFFlirtMenu2_4
IF ~Global("FHFFlirtCounter2","GLOBAL",5)~ DO ~SetGlobal("FHFStartFlirt","GLOBAL",0) IncrementGlobal("FHFFlirtCounter2","GLOBAL",1) RealSetGlobalTimer("FHFFlirtTimer","GLOBAL",2500)~ + FHFFlirtMenu2_5
IF ~Global("FHFFlirtCounter2","GLOBAL",6)~ DO ~SetGlobal("FHFStartFlirt","GLOBAL",0) IncrementGlobal("FHFFlirtCounter2","GLOBAL",1) RealSetGlobalTimer("FHFFlirtTimer","GLOBAL",2500)~ + FHFFlirtMenu2_6
IF ~Global("FHFFlirtCounter2","GLOBAL",7)~ DO ~SetGlobal("FHFStartFlirt","GLOBAL",0) IncrementGlobal("FHFFlirtCounter2","GLOBAL",1) RealSetGlobalTimer("FHFFlirtTimer","GLOBAL",2500)~ + FHFFlirtMenu2_7
IF ~Global("FHFFlirtCounter2","GLOBAL",8)~ DO ~SetGlobal("FHFStartFlirt","GLOBAL",0) IncrementGlobal("FHFFlirtCounter2","GLOBAL",1) RealSetGlobalTimer("FHFFlirtTimer","GLOBAL",2500)~ + FHFFlirtMenu2_8
IF ~Global("FHFFlirtCounter2","GLOBAL",9)~ DO ~SetGlobal("FHFStartFlirt","GLOBAL",0) IncrementGlobal("FHFFlirtCounter2","GLOBAL",1) RealSetGlobalTimer("FHFFlirtTimer","GLOBAL",2500)~ + FHFFlirtMenu2_9
IF ~Global("FHFFlirtCounter2","GLOBAL",10)~ DO ~SetGlobal("FHFStartFlirt","GLOBAL",0) IncrementGlobal("FHFFlirtCounter2","GLOBAL",1) RealSetGlobalTimer("FHFFlirtTimer","GLOBAL",2500)~ + FHFFlirtMenu2_10
IF ~Global("FHFFlirtCounter2","GLOBAL",11)~ DO ~SetGlobal("FHFStartFlirt","GLOBAL",0) IncrementGlobal("FHFFlirtCounter2","GLOBAL",1) RealSetGlobalTimer("FHFFlirtTimer","GLOBAL",2500)~ + FHFFlirtMenu2_11
IF ~Global("FHFFlirtCounter2","GLOBAL",12)~ DO ~SetGlobal("FHFStartFlirt","GLOBAL",0) IncrementGlobal("FHFFlirtCounter2","GLOBAL",1) RealSetGlobalTimer("FHFFlirtTimer","GLOBAL",2500)~ + FHFFlirtMenu2_12
IF ~Global("FHFFlirtCounter2","GLOBAL",13)~ DO ~SetGlobal("FHFStartFlirt","GLOBAL",0) IncrementGlobal("FHFFlirtCounter2","GLOBAL",1) RealSetGlobalTimer("FHFFlirtTimer","GLOBAL",2500)~ + FHFFlirtMenu2_13
IF ~Global("FHFFlirtCounter2","GLOBAL",14)~ DO ~SetGlobal("FHFStartFlirt","GLOBAL",0) IncrementGlobal("FHFFlirtCounter2","GLOBAL",1) RealSetGlobalTimer("FHFFlirtTimer","GLOBAL",2500)~ + FHFFlirtMenu2_14
IF ~Global("FHFFlirtCounter2","GLOBAL",15)~ DO ~SetGlobal("FHFStartFlirt","GLOBAL",0) IncrementGlobal("FHFFlirtCounter2","GLOBAL",1) RealSetGlobalTimer("FHFFlirtTimer","GLOBAL",2500)~ + FHFFlirtMenu2_15
IF ~Global("FHFFlirtCounter2","GLOBAL",16)~ DO ~SetGlobal("FHFStartFlirt","GLOBAL",0) IncrementGlobal("FHFFlirtCounter2","GLOBAL",1) RealSetGlobalTimer("FHFFlirtTimer","GLOBAL",2500)~ + FHFFlirtMenu2_16
IF ~Global("FHFFlirtCounter2","GLOBAL",17)~ DO ~SetGlobal("FHFStartFlirt","GLOBAL",0) IncrementGlobal("FHFFlirtCounter2","GLOBAL",1) RealSetGlobalTimer("FHFFlirtTimer","GLOBAL",2500)~ + FHFFlirtMenu2_17
IF ~Global("FHFFlirtCounter2","GLOBAL",18)~ DO ~SetGlobal("FHFStartFlirt","GLOBAL",0) IncrementGlobal("FHFFlirtCounter2","GLOBAL",1) RealSetGlobalTimer("FHFFlirtTimer","GLOBAL",2500)~ + FHFFlirtMenu2_18
IF ~Global("FHFFlirtCounter2","GLOBAL",19)~ DO ~SetGlobal("FHFStartFlirt","GLOBAL",0) IncrementGlobal("FHFFlirtCounter2","GLOBAL",1) RealSetGlobalTimer("FHFFlirtTimer","GLOBAL",2500)~ + FHFFlirtMenu2_19
IF ~Global("FHFFlirtCounter2","GLOBAL",20)~ DO ~SetGlobal("FHFStartFlirt","GLOBAL",2) IncrementGlobal("FHFFlirtCounter2","GLOBAL",1)~ + FHFFlirtMenu2_20

CHAIN FHFRNJ FHFFlirtMenu2_1
@2001
EXIT

CHAIN FHFRNJ FHFFlirtMenu2_2
@2002
EXIT

CHAIN FHFRNJ FHFFlirtMenu2_3
@2003
=
@2004
EXIT

CHAIN FHFRNJ FHFFlirtMenu2_4
@2005
EXIT

CHAIN FHFRNJ FHFFlirtMenu2_5
@2006
EXIT

CHAIN FHFRNJ FHFFlirtMenu2_6
@2007
EXIT

CHAIN FHFRNJ FHFFlirtMenu2_7
@2008
EXIT

CHAIN FHFRNJ FHFFlirtMenu2_8
@2009
EXIT

CHAIN FHFRNJ FHFFlirtMenu2_9
@2010
EXIT

CHAIN FHFRNJ FHFFlirtMenu2_10
@2011
EXIT

CHAIN FHFRNJ FHFFlirtMenu2_11
@2012
EXIT

CHAIN FHFRNJ FHFFlirtMenu2_12
@2013
EXIT

CHAIN FHFRNJ FHFFlirtMenu2_13
@2014
EXIT

CHAIN FHFRNJ FHFFlirtMenu2_14
@2015
=
@2016
EXIT

CHAIN FHFRNJ FHFFlirtMenu2_15
@2017
EXIT

CHAIN FHFRNJ FHFFlirtMenu2_16
@2018
=
@2019
EXIT

CHAIN FHFRNJ FHFFlirtMenu2_17
@2020
EXIT

CHAIN FHFRNJ FHFFlirtMenu2_18
@2021
=
@2022
EXIT

CHAIN FHFRNJ FHFFlirtMenu2_19
@2023
EXIT

CHAIN FHFRNJ FHFFlirtMenu2_20
@2024
EXIT

//Post-vampire player-initiated dialogue

CHAIN IF ~IsGabber(Player1)
Global("FHFarenRomanceActive","GLOBAL",2)
Global("FHFarenVampire","GLOBAL",6)
Global("FHFPostVampire","GLOBAL",1)~ THEN FHFRNJ FHFarenVampPID
@2025
EXIT

//Underdark player-initiated dialogue

CHAIN IF
~IsGabber(Player1)
OR(17)
AreaCheck("AR2100")
AreaCheck("AR2101")
AreaCheck("AR2102")
AreaCheck("AR2200")
AreaCheck("AR2201")
AreaCheck("AR2202")
AreaCheck("AR2203")
AreaCheck("AR2204")
AreaCheck("AR2205")
AreaCheck("AR2206")
AreaCheck("AR2207")
AreaCheck("AR2208")
AreaCheck("AR2209")
AreaCheck("AR2210")
AreaCheck("AR2400")
AreaCheck("AR2401")
AreaCheck("AR2402")~ THEN FHFRNJ FHFUDPID
@2026
END
IF ~OR(2) !AreaCheck("AR2100") See([NEUTRAL])~ + FHFUDPID_danger
+ ~AreaCheck("AR2100") !See([NEUTRAL]) RandomNum(4,1)~ + @2027 + FHFUDPID_what1
+ ~AreaCheck("AR2100") !See([NEUTRAL]) RandomNum(4,2)~ + @2027 + FHFUDPID_what2
+ ~AreaCheck("AR2100") !See([NEUTRAL]) RandomNum(4,3)~ + @2027 + FHFUDPID_what3
+ ~AreaCheck("AR2100") !See([NEUTRAL]) RandomNum(4,4)~ + @2027 + FHFUDPID_what4
+ ~AreaCheck("AR2100") !See([NEUTRAL]) RandomNum(4,1)~ + @2028 + FHFUDPID_glad1
+ ~AreaCheck("AR2100") !See([NEUTRAL]) RandomNum(4,2)~ + @2028 + FHFUDPID_glad2
+ ~AreaCheck("AR2100") !See([NEUTRAL]) RandomNum(4,3)~ + @2028 + FHFUDPID_glad3
+ ~AreaCheck("AR2100") !See([NEUTRAL]) RandomNum(4,4)~ + @2028 + FHFUDPID_glad4
+ ~AreaCheck("AR2100") !See([NEUTRAL]) RandomNum(4,1)~ + @2029 + FHFUDPID_dark1
+ ~AreaCheck("AR2100") !See([NEUTRAL]) RandomNum(4,2)~ + @2029 + FHFUDPID_dark2
+ ~AreaCheck("AR2100") !See([NEUTRAL]) RandomNum(4,3)~ + @2029 + FHFUDPID_dark3
+ ~AreaCheck("AR2100") !See([NEUTRAL]) RandomNum(4,4)~ + @2029 + FHFUDPID_dark4
+ ~AreaCheck("AR2100") !See([NEUTRAL]) RandomNum(4,1) Global("PlayerLooksLikeDrow","GLOBAL",1) Global("FHFarenFriend","GLOBAL",1)~ + @2030 + FHFUDPID_back1a
+ ~AreaCheck("AR2100") !See([NEUTRAL]) RandomNum(4,2) Global("PlayerLooksLikeDrow","GLOBAL",1) Global("FHFarenFriend","GLOBAL",1)~ + @2030 + FHFUDPID_back2a
+ ~AreaCheck("AR2100") !See([NEUTRAL]) RandomNum(4,3) Global("PlayerLooksLikeDrow","GLOBAL",1) Global("FHFarenFriend","GLOBAL",1)~ + @2030 + FHFUDPID_back3a
+ ~AreaCheck("AR2100") !See([NEUTRAL]) RandomNum(4,4) Global("PlayerLooksLikeDrow","GLOBAL",1) Global("FHFarenFriend","GLOBAL",1)~ + @2030 + FHFUDPID_back4a
+ ~AreaCheck("AR2100") !See([NEUTRAL]) RandomNum(4,1) Global("PlayerLooksLikeDrow","GLOBAL",1) OR(2) Global("FHFarenRomanceActive","GLOBAL",1) Global("FHFarenRomanceActive","GLOBAL",2)~ + @2030 + FHFUDPID_back1b
+ ~AreaCheck("AR2100") !See([NEUTRAL]) RandomNum(4,2) Global("PlayerLooksLikeDrow","GLOBAL",1) OR(2) Global("FHFarenRomanceActive","GLOBAL",1) Global("FHFarenRomanceActive","GLOBAL",2)~ + @2030 + FHFUDPID_back2b
+ ~AreaCheck("AR2100") !See([NEUTRAL]) RandomNum(4,3) Global("PlayerLooksLikeDrow","GLOBAL",1) OR(2) Global("FHFarenRomanceActive","GLOBAL",1) Global("FHFarenRomanceActive","GLOBAL",2)~ + @2030 + FHFUDPID_back3b
+ ~AreaCheck("AR2100") !See([NEUTRAL]) RandomNum(4,4) Global("PlayerLooksLikeDrow","GLOBAL",1) OR(2) Global("FHFarenRomanceActive","GLOBAL",1) Global("FHFarenRomanceActive","GLOBAL",2)~ + @2030 + FHFUDPID_back4b
+ ~AreaCheck("AR2100") !See([NEUTRAL]) Global("PlayerLooksLikeDrow","GLOBAL",0) Global("FHFarenFriend","GLOBAL",1) RandomNum(4,1)~ + @2031 + FHFUDPID_study1a
+ ~AreaCheck("AR2100") !See([NEUTRAL]) Global("PlayerLooksLikeDrow","GLOBAL",0) Global("FHFarenFriend","GLOBAL",1) RandomNum(4,2)~ + @2031 + FHFUDPID_study2a
+ ~AreaCheck("AR2100") !See([NEUTRAL]) Global("PlayerLooksLikeDrow","GLOBAL",0) Global("FHFarenFriend","GLOBAL",1) RandomNum(4,3)~ + @2031 + FHFUDPID_study3a
+ ~AreaCheck("AR2100") !See([NEUTRAL]) Global("PlayerLooksLikeDrow","GLOBAL",0) Global("FHFarenFriend","GLOBAL",1) RandomNum(4,4)~ + @2031 + FHFUDPID_study4a
+ ~AreaCheck("AR2100") !See([NEUTRAL]) Global("PlayerLooksLikeDrow","GLOBAL",1) OR(2) Global("FHFarenRomanceActive","GLOBAL",1) Global("FHFarenRomanceActive","GLOBAL",2) RandomNum(4,1)~ + @2031 + FHFUDPID_study1b
+ ~AreaCheck("AR2100") !See([NEUTRAL]) Global("PlayerLooksLikeDrow","GLOBAL",1) OR(2) Global("FHFarenRomanceActive","GLOBAL",1) Global("FHFarenRomanceActive","GLOBAL",2) RandomNum(4,2)~ + @2031 + FHFUDPID_study2b
+ ~AreaCheck("AR2100") !See([NEUTRAL]) Global("PlayerLooksLikeDrow","GLOBAL",1) OR(2) Global("FHFarenRomanceActive","GLOBAL",1) Global("FHFarenRomanceActive","GLOBAL",2) RandomNum(4,3)~ + @2031 + FHFUDPID_study3b
+ ~AreaCheck("AR2100") !See([NEUTRAL]) Global("PlayerLooksLikeDrow","GLOBAL",1) OR(2) Global("FHFarenRomanceActive","GLOBAL",1) Global("FHFarenRomanceActive","GLOBAL",2) RandomNum(4,4)~ + @2031 + FHFUDPID_study4b
+ ~RandomNum(4,1) AreaCheck("AR2100") !See([NEUTRAL]) OR(2) Global("FHFarenRomanceActive","GLOBAL",1) Global("FHFarenRomanceActive","GLOBAL",2) Global("PlayerLooksLikeDrow","GLOBAL",1)~ + @549 + FHFUDPID_kiss1a
+ ~RandomNum(4,2) AreaCheck("AR2100") !See([NEUTRAL]) OR(2) Global("FHFarenRomanceActive","GLOBAL",1) Global("FHFarenRomanceActive","GLOBAL",2) Global("PlayerLooksLikeDrow","GLOBAL",1)~ + @549 + FHFUDPID_kiss2a
+ ~RandomNum(4,3) AreaCheck("AR2100") !See([NEUTRAL]) OR(2) Global("FHFarenRomanceActive","GLOBAL",1) Global("FHFarenRomanceActive","GLOBAL",2) Global("PlayerLooksLikeDrow","GLOBAL",1)~ + @549 + FHFUDPID_kiss3a
+ ~RandomNum(4,4) AreaCheck("AR2100") !See([NEUTRAL]) OR(2) Global("FHFarenRomanceActive","GLOBAL",1) Global("FHFarenRomanceActive","GLOBAL",2) Global("PlayerLooksLikeDrow","GLOBAL",1)~ + @549 + FHFUDPID_kiss4a
+ ~RandomNum(4,1) AreaCheck("AR2100") !See([NEUTRAL]) OR(2) Global("FHFarenRomanceActive","GLOBAL",1) Global("FHFarenRomanceActive","GLOBAL",2) Global("PlayerLooksLikeDrow","GLOBAL",0)~ + @549 + FHFUDPID_kiss1a
+ ~RandomNum(4,2) AreaCheck("AR2100") !See([NEUTRAL]) OR(2) Global("FHFarenRomanceActive","GLOBAL",1) Global("FHFarenRomanceActive","GLOBAL",2) Global("PlayerLooksLikeDrow","GLOBAL",0)~ + @549 + FHFUDPID_kiss2b
+ ~RandomNum(4,3) AreaCheck("AR2100") !See([NEUTRAL]) OR(2) Global("FHFarenRomanceActive","GLOBAL",1) Global("FHFarenRomanceActive","GLOBAL",2) Global("PlayerLooksLikeDrow","GLOBAL",0)~ + @549 + FHFUDPID_kiss3a
+ ~RandomNum(4,4) AreaCheck("AR2100") !See([NEUTRAL]) OR(2) Global("FHFarenRomanceActive","GLOBAL",1) Global("FHFarenRomanceActive","GLOBAL",2) Global("PlayerLooksLikeDrow","GLOBAL",0)~ + @549 + FHFUDPID_kiss4b
+ ~AreaCheck("AR2100") !See([NEUTRAL]) RandomNum(4,1)~ + @2032 + FHFUDPID_ok1
+ ~AreaCheck("AR2100") !See([NEUTRAL]) RandomNum(4,1)~ + @2032 + FHFUDPID_ok2
+ ~AreaCheck("AR2100") !See([NEUTRAL]) RandomNum(4,1)~ + @2032 + FHFUDPID_ok3
+ ~AreaCheck("AR2100") !See([NEUTRAL]) RandomNum(4,1)~ + @2032 + FHFUDPID_ok4
+ ~Global("FHFarenLoveTalk","GLOBAL",1)~ + @2033 DO ~SetGlobal("FHFarenRomanceActive","GLOBAL",3) SetGlobal("FHFarenFriend","GLOBAL",1) SetGlobal("FHFarenFriendTalk","GLOBAL",1)~ + FHFPID_friends1
+ ~Global("FHFarenLoveTalk","GLOBAL",3)~ + @2033 DO ~SetGlobal("FHFarenRomanceActive","GLOBAL",3) SetGlobal("FHFarenFriend","GLOBAL",1) SetGlobal("FHFarenFriendTalk","GLOBAL",3)~ + FHFPID_friends1
+ ~Global("FHFarenLoveTalk","GLOBAL",5)~ + @2033 DO ~SetGlobal("FHFarenRomanceActive","GLOBAL",3) SetGlobal("FHFarenFriend","GLOBAL",1) SetGlobal("FHFarenFriendTalk","GLOBAL",5)~ + FHFPID_friends1
+ ~Global("FHFarenLoveTalk","GLOBAL",7)~ + @2033 DO ~SetGlobal("FHFarenRomanceActive","GLOBAL",3) SetGlobal("FHFarenFriend","GLOBAL",1) SetGlobal("FHFarenFriendTalk","GLOBAL",7)~ + FHFPID_friends1
+ ~Global("FHFarenLoveTalk","GLOBAL",9)~ + @2033 DO ~SetGlobal("FHFarenRomanceActive","GLOBAL",3) SetGlobal("FHFarenFriend","GLOBAL",1) SetGlobal("FHFarenFriendTalk","GLOBAL",9)~ + FHFPID_friends1
+ ~Global("FHFarenLoveTalk","GLOBAL",11)~ + @2034 DO ~SetGlobal("FHFarenRomanceActive","GLOBAL",3) SetGlobal("FHFarenFriend","GLOBAL",1) SetGlobal("FHFarenFriendTalk","GLOBAL",11)~ + FHFPID_friends1
+ ~Global("FHFarenLoveTalk","GLOBAL",13)~ + @2034 DO ~SetGlobal("FHFarenRomanceActive","GLOBAL",3) SetGlobal("FHFarenFriend","GLOBAL",1) SetGlobal("FHFarenFriendTalk","GLOBAL",13)~ + FHFPID_friends1
+ ~Global("FHFarenLoveTalk","GLOBAL",15)~ + @2034 DO ~SetGlobal("FHFarenRomanceActive","GLOBAL",3) SetGlobal("FHFarenFriend","GLOBAL",1) SetGlobal("FHFarenFriendTalk","GLOBAL",13)~ + FHFPID_friends1
+ ~Global("FHFarenLoveTalk","GLOBAL",17)~ + @2034 DO ~SetGlobal("FHFarenRomanceActive","GLOBAL",3) SetGlobal("FHFarenFriend","GLOBAL",1) SetGlobal("FHFarenFriendTalk","GLOBAL",17)~ + FHFPID_friends1
+ ~GlobalGT("FHFarenLoveTalk","GLOBAL",17) GlobalLT("FHFarenLoveTalk","GLOBAL",29)~ + @2035 DO ~SetGlobal("FHFarenRomanceActive","GLOBAL",3) SetGlobal("FHFarenFriend","GLOBAL",1) SetGlobal("FHFarenFriendTalk","GLOBAL",17)~ + FHFPID_friends2
+ ~GlobalGT("FHFarenLoveTalk","GLOBAL",27)~ + @2036 DO ~SetGlobal("FHFarenRomanceActive","GLOBAL",3) SetGlobal("FHFarenFriend","GLOBAL",1)~ + FHFPID_friends3
++ @2037 EXIT

CHAIN FHFRNJ FHFUDPID_danger
@2038
EXIT

CHAIN FHFRNJ FHFUDPID_what1
@2039
EXIT

CHAIN FHFRNJ FHFUDPID_what2
@2040
EXIT

CHAIN FHFRNJ FHFUDPID_what3
@2041
EXIT

CHAIN FHFRNJ FHFUDPID_what4
@2042
EXIT

CHAIN FHFRNJ FHFUDPID_glad1
@2043
EXIT

CHAIN FHFRNJ FHFUDPID_glad2
@2044
EXIT

CHAIN FHFRNJ FHFUDPID_glad3
@2045
EXIT

CHAIN FHFRNJ FHFUDPID_glad4
@2046
EXIT

CHAIN FHFRNJ FHFUDPID_dark1
@2047
END
++ @2048 + FHFUDPID_dark1_1
++ @2049 + FHFUDPID_dark1_2
++ @2050 + FHFUDPID_dark1_3

CHAIN FHFRNJ FHFUDPID_dark1_1
@2051
EXIT

CHAIN FHFRNJ FHFUDPID_dark1_2
@2052
EXIT

CHAIN FHFRNJ FHFUDPID_dark1_3
@2053
EXIT

CHAIN FHFRNJ FHFUDPID_dark2
@2054
EXIT

CHAIN FHFRNJ FHFUDPID_dark3
@2055
EXIT

CHAIN FHFRNJ FHFUDPID_dark4
@2056
EXIT

CHAIN FHFRNJ FHFUDPID_back1a
@2057
EXIT

CHAIN FHFRNJ FHFUDPID_back2a
@2058
EXIT

CHAIN FHFRNJ FHFUDPID_back3a
@2059
EXIT

CHAIN FHFRNJ FHFUDPID_back4a
@2060
EXIT

CHAIN FHFRNJ FHFUDPID_back1b
@2061
EXIT

CHAIN FHFRNJ FHFUDPID_back2b
@2062
EXIT

CHAIN FHFRNJ FHFUDPID_back3b
@2063
EXIT

CHAIN FHFRNJ FHFUDPID_back4b
@2064
EXIT

CHAIN FHFRNJ FHFUDPID_study1a
@2065
EXIT

CHAIN FHFRNJ FHFUDPID_study2a
@2066
EXIT

CHAIN FHFRNJ FHFUDPID_study3a
@2067
=
@2068
EXIT

CHAIN FHFRNJ FHFUDPID_study4a
@2069
EXIT

CHAIN FHFRNJ FHFUDPID_study1b
@2070
=
@2071
EXIT

CHAIN FHFRNJ FHFUDPID_study2b
@2072
EXIT

CHAIN FHFRNJ FHFUDPID_study3b
@2073
EXIT

CHAIN FHFRNJ FHFUDPID_study4b
@2074
EXIT

CHAIN FHFRNJ FHFUDPID_kiss1a
@2075
EXIT

CHAIN FHFRNJ FHFUDPID_kiss2a
@2076
= @2077
EXIT

CHAIN FHFRNJ FHFUDPID_kiss3a
@2078
EXIT

CHAIN FHFRNJ FHFUDPID_kiss4a
@2079
= @2080
EXIT

CHAIN FHFRNJ FHFUDPID_kiss2b
@2076
=
@2081
EXIT

CHAIN FHFRNJ FHFUDPID_kiss4b
@2079
=
@2082
EXIT

CHAIN FHFRNJ FHFUDPID_ok1
@2083
EXIT

CHAIN FHFRNJ FHFUDPID_ok2
@2084
EXIT

CHAIN FHFRNJ FHFUDPID_ok3
@2085
EXIT

CHAIN FHFRNJ FHFUDPID_ok4
@2086
EXIT

CHAIN IF
~IsGabber(Player1)
Global("FHFarenFriend","GLOBAL",1)
!AreaCheck("AR2100")
!AreaCheck("AR2101")
!AreaCheck("AR2102")
!AreaCheck("AR2200")
!AreaCheck("AR2201")
!AreaCheck("AR2202")
!AreaCheck("AR2203")
!AreaCheck("AR2204")
!AreaCheck("AR2205")
!AreaCheck("AR2206")
!AreaCheck("AR2207")
!AreaCheck("AR2208")
!AreaCheck("AR2209")
!AreaCheck("AR2210")
!AreaCheck("AR2400")
!AreaCheck("AR2401")
!AreaCheck("AR2402")~ THEN FHFRNJ FHFFriend
@2087
END
+ ~Global("BodhiAppear","GLOBAL",1)
GlobalLT("WorkingForAran","GLOBAL",1)
GlobalLT("WorkingForBodhi","GLOBAL",1)~ + @2088 + FHFFriend_aranbodhi
+ ~GlobalGT("SelfTalk","GLOBAL",0)~ + @2452 + FHFFriend_soul
+ ~Global("Loganmantle","GLOBAL",1)~ + @2089 + FHFFriend_mantle
+ ~Global("GrovePoisoned","GLOBAL",1)~ + @2090 + FHFFriend_poison
+ ~Global("LoganMad","GLOBAL",1)~ + @2091 + FHFFriend_logan
+ ~Global("tirisjob","GLOBAL",1) GlobalLT("tannerplot2","GLOBAL",5)~ + @2092 + FHFFriend_rej
+ ~RandomNum(4,1)~ + @2093 + FHFFriend_decision1
+ ~RandomNum(4,2)~ + @2093 + FHFFriend_decision2
+ ~RandomNum(4,3)~ + @2093 + FHFFriend_decision3
+ ~RandomNum(4,4)~ + @2093 + FHFFriend_decision4
+ ~RandomNum(4,1)~ + @2094 + FHFFriend_miss1
+ ~RandomNum(4,2)~ + @2094 + FHFFriend_miss2
+ ~RandomNum(4,3)~ + @2094 + FHFFriend_miss3
+ ~RandomNum(4,4)~ + @2094 + FHFFriend_miss4
+ ~Global("Chapter","GLOBAL",2)~ + @2095 + FHFFriend_next1
+ ~Global("Chapter","GLOBAL",3)~ + @2095 + FHFFriend_next2
+ ~Global("Chapter","GLOBAL",4)~ + @2095 + FHFFriend_next3
+ ~Global("Chapter","GLOBAL",6) !Dead("C6Bodhi")~ + @2095 + FHFFriend_next4
+ ~Global("Chapter","GLOBAL",6) Dead("C6Bodhi")~ + @2095 + FHFFriend_next5
+ ~Global("Chapter","GLOBAL",7)~ + @2095 + FHFFriend_next6
+ ~OR(3) AreaCheck("AR1100") AreaCheck("AR1401") AreaCheck("AR1404")~ + @2096 + FHFFriend_umar
+ ~OR(2) Global("AerieRomanceActive","GLOBAL",1) Global("AerieRomanceActive","GLOBAL",2) InParty("Aerie")~ + @2097 + FHFFriend_aerie
+ ~OR(2) Global("AnomenRomanceActive","GLOBAL",1) Global("AnomenRomanceActive","GLOBAL",2) InParty("Anomen")~ + @2098 + FHFFriend_anomen
+ ~OR(2) Global("JaheiraRomanceActive","GLOBAL",1) Global("JaheiraRomanceActive","GLOBAL",2) InParty("Jaheira")~ + @2099 + FHFFriend_jaheira
+ ~OR(2) Global("ViconiaRomanceActive","GLOBAL",1) Global("ViconiaRomanceActive","GLOBAL",2) InParty("Viconia")~ + @2100 + FHFFriend_viconia
+ ~OR(2) Global("NathRomanceActive","GLOBAL",1) Global("NathRomanceActive","GLOBAL",2) InParty("Nath")~ + @2101 + FHFFriend_nathaniel
+ ~GlobalGT("FHLSebFlirt","GLOBAL",8) Global("FHLSebBrushOff","GLOBAL",0) !Global("FHLSebJustFriends","GLOBAL",1) InParty("FHLSEB")~ + @2102 + FHFFriend_seb
++ @2103 + FHFFriend_question
+ ~Global("FHFarenFriendTalk","GLOBAL",15)~ + @2104 + FHFFriend_need1
+ ~Global("FHFarenFriendTalk","GLOBAL",21) Global("FHSeenSeth","GLOBAL",0)~ + @2104 + FHFFriend_need2
+ ~CheckStatGT("FHFAREN",5,FATIGUE)~ + @2105 + FHFFriend_tired
+ ~RandomNum(4,1)~ + @2106 + FHFFriend_good1
+ ~RandomNum(4,2)~ + @2106 + FHFFriend_good2
+ ~RandomNum(4,3)~ + @2106 + FHFFriend_good3
+ ~RandomNum(4,4)~ + @2106 + FHFFriend_good4
+ ~Global("FHFTRPLE02","GLOBAL",1)~ + @2107 DO ~SetGlobal("FHFTRPLE02","GLOBAL",2)~ + FHFFriend_jeanne
+ ~Global("FHFHalFaren","GLOBAL",2) Global("FHFHalFarenPID","GLOBAL",0)~ + @2108 DO ~SetGlobal("FHFHalFarenPID","GLOBAL",1)~ + FHFFriend_hal
+ ~Global("FHFAR100Reveal","GLOBAL",0) Global("WainwrightJob","GLOBAL",0) Global("Acceptance","GLOBAL",0)~ + @2448 DO ~SetGlobal("FHFAR100Reveal","GLOBAL",1) RevealAreaOnMap("AR100")~ + FHFFriend_umar1
++ @2037 EXIT

CHAIN FHFRNJ FHFFriend_aranbodhi
@2109
= @2110
EXIT

CHAIN FHFRNJ FHFFriend_soul
@2453
== FHFRNJ IF ~Global("FHFarenRomanceActive","GLOBAL",2)~ THEN
@2454
EXIT

CHAIN FHFRNJ FHFFriend_mantle
@2111
EXIT

CHAIN FHFRNJ FHFFriend_poison
@2112
EXIT

CHAIN FHFRNJ FHFFriend_logan
@2113
EXIT

CHAIN FHFRNJ FHFFriend_rej
@2114
EXIT

CHAIN FHFRNJ FHFFriend_need1
@2115
EXIT

CHAIN FHFRNJ FHFFriend_need2
@2116
EXIT

CHAIN FHFRNJ FHFFriend_decision1
@2117
EXIT

CHAIN FHFRNJ FHFFriend_decision2
@2118
EXIT

CHAIN FHFRNJ FHFFriend_decision3
@2119
EXIT

CHAIN FHFRNJ FHFFriend_decision4
@2120
=
@2121
EXIT

CHAIN FHFRNJ FHFFriend_miss1
@2122
EXIT

CHAIN FHFRNJ FHFFriend_miss2
@2123
EXIT

CHAIN FHFRNJ FHFFriend_miss3
@2124
EXIT

CHAIN FHFRNJ FHFFriend_miss4
@2125
EXIT

CHAIN FHFRNJ FHFFriend_next1
@2126
EXIT

CHAIN FHFRNJ FHFFriend_next2
@2127
EXIT

CHAIN FHFRNJ FHFFriend_next3
@2128
EXIT

CHAIN FHFRNJ FHFFriend_next4
@2129
EXIT

CHAIN FHFRNJ FHFFriend_next5
@2130
EXIT

CHAIN FHFRNJ FHFFriend_next6
@2131
EXIT

CHAIN FHFRNJ FHFFriend_umar
@2132
END
IF ~!Dead("SHADEL")~ + FHFFriend_umar2
IF ~Dead("SHADEL")~ + FHFFriend_umar3

CHAIN FHFRNJ FHFFriend_umar2
@2133
EXIT

CHAIN FHFRNJ FHFFriend_umar3
@2134
EXIT 

CHAIN FHFRNJ FHFFriend_aerie
@2135
END
++ @2136 + FHFFriend_aeriebetter
++ @2137 + FHFFriend_problems
+ ~Global("FHFAerieShout","GLOBAL",1)~ + @2138 + FHFFriend_aerieshout
++ @2139 + FHFFriend_aerielove
++ @2140 + FHFFriend_aerietell

CHAIN FHFRNJ FHFFriend_anomen
@2141
END
+ ~Global("AnomenIsKnight","GLOBAL",0) Global("AnomenIsNotKnight","GLOBAL",0)~ + @2142 + FHFFriend_test
+ ~OR(2) Global("AnomenIsNotKnight","GLOBAL",0) Global("AnomenIsKnight","GLOBAL",1)~ + @2143 + FHFFriend_order
+ ~Global("AnomenIsNotKnight","GLOBAL",1)~ + @2144 + FHFFriend_failtest
++ @2145 + FHFFriend_anoshout
++ @2146 + FHFFriend_anolove
++ @2147 + FHFFriend_anotell

CHAIN FHFRNJ FHFFriend_jaheira
@2148
END
++ @2149 + FHFFriend_replace
++ @2150 + FHFFriend_grief
++ @2139 + FHFFriend_jahlove
++ @2140 + FHFFriend_jahtell

CHAIN FHFRNJ FHFFriend_viconia
@2151
END
++ @2152 + FHFFriend_signal
++ @2153 + FHFFriend_thinking
++ @2139 + FHFFriend_viclove
++ @2140 + FHFFriend_victell

CHAIN FHFRNJ FHFFriend_nathaniel
@2154
END
++ @2155 + FHFFriend_frustrate
++ @2156 + FHFFriend_confid
++ @2157 + FHFFriend_sure
++ @2146 + FHFFriend_nathlove
++ @2147 + FHFFriend_nathtell

CHAIN FHFRNJ FHFFriend_seb
@2158
END
++ @2159 + FHFFriend_xav
++ @2160 + FHFFriend_unhappy
++ @2161 + FHFFriend_advant
++ @2146 + FHFFriend_seblove
++ @2147 + FHFFriend_sebtell

CHAIN FHFRNJ FHFFriend_aeriebetter
@2162
EXIT

CHAIN FHFRNJ FHFFriend_problems
@2163
= @2164
EXIT

CHAIN FHFRNJ FHFFriend_aerieshout
@2165
EXIT

CHAIN FHFRNJ FHFFriend_aerielove
@2166
= @2167
EXIT

CHAIN FHFRNJ FHFFriend_aerietell
@2168
EXIT

CHAIN FHFRNJ FHFFriend_test
@2169
EXIT

CHAIN FHFRNJ FHFFriend_order
@2170
EXIT

CHAIN FHFRNJ FHFFriend_failtest
@2171
EXIT

CHAIN FHFRNJ FHFFriend_anoshout
@2172
EXIT

CHAIN FHFRNJ FHFFriend_anolove
@2173
= @2174
EXIT

CHAIN FHFRNJ FHFFriend_anotell
@2175
EXIT

CHAIN FHFRNJ FHFFriend_replace
@2176
= @2177
EXIT

CHAIN FHFRNJ FHFFriend_grief
@2178
EXIT

CHAIN FHFRNJ FHFFriend_jahlove
@2179
EXIT

CHAIN FHFRNJ FHFFriend_jahtell
@2180
EXIT

CHAIN FHFRNJ FHFFriend_signal
@2181
= @2182
EXIT

CHAIN FHFRNJ FHFFriend_thinking
@2183
EXIT

CHAIN FHFRNJ FHFFriend_viclove
@2184
EXIT

CHAIN FHFRNJ FHFFriend_victell
@2185
EXIT

CHAIN FHFRNJ FHFFriend_frustrate
@2186
EXIT

CHAIN FHFRNJ FHFFriend_confid
@2187
EXIT

CHAIN FHFRNJ FHFFriend_sure
@2188
EXIT

CHAIN FHFRNJ FHFFriend_nathlove
@2189
= @2190
EXIT

CHAIN FHFRNJ FHFFriend_nathtell
@2191
EXIT

CHAIN FHFRNJ FHFFriend_xav
@2192
EXIT

CHAIN FHFRNJ FHFFriend_unhappy
@2193
= @2194
EXIT

CHAIN FHFRNJ FHFFriend_advant
@2195
= @2196
EXIT

CHAIN FHFRNJ FHFFriend_seblove
@2197
= @2198
EXIT

CHAIN FHFRNJ FHFFriend_sebtell
@2199
= @2200
EXIT

CHAIN FHFRNJ FHFFriend_nothing
@2201
EXIT

CHAIN FHFRNJ FHFFriend_question
@2202
END
+ ~RandomNum(4,1)~ + @2203 + FHFFriend_think1
+ ~RandomNum(4,2)~ + @2203 + FHFFriend_think2
+ ~RandomNum(4,3)~ + @2203 + FHFFriend_think3
+ ~RandomNum(4,4)~ + @2203 + FHFFriend_think4
+ ~RandomNum(4,1)~ + @2204 + FHFFriend_how1
+ ~RandomNum(4,2)~ + @2204 + FHFFriend_how2
+ ~RandomNum(4,3)~ + @2204 + FHFFriend_how3
+ ~RandomNum(4,4)~ + @2204 + FHFFriend_how4
+ ~RandomNum(4,1)~ + @2205 + FHFFriend_love1
+ ~RandomNum(4,2)~ + @2205 + FHFFriend_love2
+ ~RandomNum(4,3)~ + @2205 + FHFFriend_love3
+ ~RandomNum(4,4)~ + @2205 + FHFFriend_love4
+ ~RandomNum(4,1)~ + @2206 + FHFFriend_thinkme1
+ ~RandomNum(4,2)~ + @2206 + FHFFriend_thinkme2
+ ~RandomNum(4,3)~ + @2206 + FHFFriend_thinkme3
+ ~RandomNum(4,4)~ + @2206 + FHFFriend_thinkme4
+ ~RandomNum(4,1)~ + @2207 + FHFFriend_herit1
+ ~RandomNum(4,2)~ + @2207 + FHFFriend_herit2
+ ~RandomNum(4,3)~ + @2207 + FHFFriend_herit3
+ ~RandomNum(4,4)~ + @2207 + FHFFriend_herit4
+ ~RandomNum(4,1)~ + @2208 + FHFFriend_give1
+ ~RandomNum(4,2)~ + @2208 + FHFFriend_give2
+ ~RandomNum(4,3)~ + @2208 + FHFFriend_give3
+ ~RandomNum(4,4)~ + @2208 + FHFFriend_give4
+ ~RandomNum(4,1)~ + @2209 + FHFFriend_little1
+ ~RandomNum(4,2)~ + @2209 + FHFFriend_little2
+ ~RandomNum(4,3)~ + @2209 + FHFFriend_little3
+ ~RandomNum(4,4)~ + @2209 + FHFFriend_little4
+ ~RandomNum(4,1)~ + @2210 + FHFFriend_children1
+ ~RandomNum(4,2)~ + @2210 + FHFFriend_children2
+ ~RandomNum(4,3)~ + @2210 + FHFFriend_children3
+ ~RandomNum(4,4)~ + @2210 + FHFFriend_children4
+ ~RandomNum(4,1)~ + @2211 + FHFFriend_dream1
+ ~RandomNum(4,2)~ + @2211 + FHFFriend_dream2
+ ~RandomNum(4,3)~ + @2211 + FHFFriend_dream3
+ ~RandomNum(4,4)~ + @2211 + FHFFriend_dream4
++ @2212 + FHFFriend_nothing

CHAIN FHFRNJ FHFFriend_jeanne
@2213
EXIT

CHAIN FHFRNJ FHFRom1_jeanne
@2214
EXIT

CHAIN FHFRNJ FHFRom2_jeanne
@2215
EXIT

CHAIN FHFRNJ FHFFriend_hal
@2216
EXIT

CHAIN FHFRNJ FHFFriend_umar1
@2449
= @2450
EXIT

CHAIN FHFRNJ FHFFriend_tired
@2217
EXIT

CHAIN FHFRNJ FHFFriend_good1
@2218
EXIT

CHAIN FHFRNJ FHFFriend_good2
@2219
EXIT

CHAIN FHFRNJ FHFFriend_good3
@2220
EXIT

CHAIN FHFRNJ FHFFriend_good4
@2221
EXIT

CHAIN FHFRNJ FHFFriend_notalk
@2222
EXIT

CHAIN FHFRNJ FHFFriend_think1
@2223
EXIT

CHAIN FHFRNJ FHFFriend_think2
@2224
EXIT

CHAIN FHFRNJ FHFFriend_think3
@2225
EXIT

CHAIN FHFRNJ FHFFriend_think4
@2226
EXIT

CHAIN FHFRNJ FHFFriend_how1
@2227
EXIT

CHAIN FHFRNJ FHFFriend_how2
@2228
EXIT

CHAIN FHFRNJ FHFFriend_how3
@2229
EXIT

CHAIN FHFRNJ FHFFriend_how4
@2230
EXIT

CHAIN FHFRNJ FHFFriend_love1
@2231
= @2232
EXIT

CHAIN FHFRNJ FHFFriend_love2
@2233
EXIT

CHAIN FHFRNJ FHFFriend_love3
@2234
EXIT

CHAIN FHFRNJ FHFFriend_love4
@2235
EXIT

CHAIN FHFRNJ FHFFriend_thinkme1
@2236
EXIT

CHAIN FHFRNJ FHFFriend_thinkme2
@2237
EXIT

CHAIN FHFRNJ FHFFriend_thinkme3
@2238
EXIT

CHAIN FHFRNJ FHFFriend_thinkme4
@2239
EXIT

CHAIN FHFRNJ FHFFriend_herit1
@2240
EXIT

CHAIN FHFRNJ FHFFriend_herit2
@2241
EXIT

CHAIN FHFRNJ FHFFriend_herit3
@2242
EXIT

CHAIN FHFRNJ FHFFriend_herit4
@2243
EXIT

CHAIN FHFRNJ FHFFriend_give1
@2244
EXIT

CHAIN FHFRNJ FHFFriend_give2
@2245
EXIT

CHAIN FHFRNJ FHFFriend_give3
@2246
EXIT

CHAIN FHFRNJ FHFFriend_give4
@2247
EXIT

CHAIN FHFRNJ FHFFriend_little1
@2248
EXIT

CHAIN FHFRNJ FHFFriend_little2
@2249
EXIT

CHAIN FHFRNJ FHFFriend_little3
@2250
EXIT

CHAIN FHFRNJ FHFFriend_little4
@2251
EXIT

CHAIN FHFRNJ FHFFriend_children1
@2252
EXIT

CHAIN FHFRNJ FHFFriend_children2
@2253
EXIT

CHAIN FHFRNJ FHFFriend_children3
@2254
EXIT

CHAIN FHFRNJ FHFFriend_children4
@2255
EXIT

CHAIN FHFRNJ FHFFriend_dream1
@2256
EXIT

CHAIN FHFRNJ FHFFriend_dream2
@2257
EXIT

CHAIN FHFRNJ FHFFriend_dream3
@2258
EXIT

CHAIN FHFRNJ FHFFriend_dream4
@2259
EXIT

//Player-initiated dialogue: Romance active 1 (non-serious romance)

CHAIN IF
~IsGabber(Player1)
CombatCounter(0)
Global("FHFarenRomanceActive","GLOBAL",1)
Global("FHFUncommit","GLOBAL",0)
!AreaCheck("AR2100")
!AreaCheck("AR2101")
!AreaCheck("AR2102")
!AreaCheck("AR2200")
!AreaCheck("AR2201")
!AreaCheck("AR2202")
!AreaCheck("AR2203")
!AreaCheck("AR2204")
!AreaCheck("AR2205")
!AreaCheck("AR2206")
!AreaCheck("AR2207")
!AreaCheck("AR2208")
!AreaCheck("AR2209")
!AreaCheck("AR2210")
!AreaCheck("AR2400")
!AreaCheck("AR2401")
!AreaCheck("AR2402")~ THEN FHFRNJ FHFRom1
@2087
END
+ ~Global("BodhiAppear","GLOBAL",1)
GlobalLT("WorkingForAran","GLOBAL",1)
GlobalLT("WorkingForBodhi","GLOBAL",1)~ + @2088 + FHFFriend_aranbodhi
+ ~GlobalGT("SelfTalk","GLOBAL",0)~ + @2452 + FHFFriend_soul
+ ~Global("Loganmantle","GLOBAL",1)~ + @2089 + FHFFriend_mantle
+ ~Global("GrovePoisoned","GLOBAL",1)~ + @2090 + FHFFriend_poison
+ ~Global("LoganMad","GLOBAL",1)~ + @2091 + FHFFriend_logan
+ ~Global("tirisjob","GLOBAL",1) GlobalLT("tannerplot2","GLOBAL",5)~ + @2092 + FHFFriend_rej
+ ~RandomNum(4,1)~ + @2093 + FHFRom1_decision1
+ ~RandomNum(4,2)~ + @2093 + FHFRom1_decision2
+ ~RandomNum(4,3)~ + @2093 + FHFRom1_decision3
+ ~RandomNum(4,4)~ + @2093 + FHFRom1_decision4
+ ~RandomNum(4,1)~ + @2094 + FHFFriend_miss1
+ ~RandomNum(4,2)~ + @2094 + FHFFriend_miss2
+ ~RandomNum(4,3)~ + @2094 + FHFFriend_miss3
+ ~RandomNum(4,4)~ + @2094 + FHFFriend_miss4
+ ~Global("Chapter","GLOBAL",2)~ + @2095 + FHFFriend_next1
+ ~Global("Chapter","GLOBAL",3)~ + @2095 + FHFFriend_next2
+ ~Global("Chapter","GLOBAL",4)~ + @2095 + FHFFriend_next3
+ ~Global("Chapter","GLOBAL",6) !Dead("C6Bodhi")~ + @2095 + FHFFriend_next4
+ ~Global("Chapter","GLOBAL",6) Dead("C6Bodhi")~ + @2095 + FHFFriend_next5
+ ~Global("Chapter","GLOBAL",7)~ + @2095 + FHFFriend_next6
+ ~OR(3) AreaCheck("AR1100") AreaCheck("AR1401") AreaCheck("AR1404")~ + @2096 + FHFFriend_umar
++ @2260 + FHFRom1_question
+ ~OR(2) Global("FHFarenLoveTalk","GLOBAL",15) Global("FHFarenLoveTalk","GLOBAL",17)~ + @2104 + FHFFriend_need1
+ ~CheckStatGT("FHFAREN",5,FATIGUE)~ + @2105 + FHFFriend_tired
+ ~RandomNum(4,1)~ + @2106 + FHFFriend_good1
+ ~RandomNum(4,2)~ + @2106 + FHFFriend_good2
+ ~RandomNum(4,3)~ + @2106 + FHFFriend_good3
+ ~RandomNum(4,4)~ + @2106 + FHFFriend_good4
+ ~Global("FHFTRPLE02","GLOBAL",1)~ + @2107 DO ~SetGlobal("FHFTRPLE02","GLOBAL",2)~ + FHFRom1_jeanne
+ ~Global("FHFHalFaren","GLOBAL",2) Global("FHFHalFarenPID","GLOBAL",0)~ + @2108 DO ~SetGlobal("FHFHalFarenPID","GLOBAL",1)~ + FHFFriend_hal
+ ~Global("FHFAR100Reveal","GLOBAL",0) Global("WainwrightJob","GLOBAL",0) Global("Acceptance","GLOBAL",0)~ + @2448 DO ~SetGlobal("FHFAR100Reveal","GLOBAL",1) RevealAreaOnMap("AR100")~ + FHFFriend_umar1
+ ~Global("FHFFlirtsDisabled","GLOBAL",0)~ + @2261 + FHFRom1_flirt
+ ~Global("FHFFlirtsDisabled","GLOBAL",0)~ + @2262 + FHFarenFlirtDisable
+ ~Global("FHFFlirtsDisabled","GLOBAL",1)~ + @2263 + FHFarenFlirtEnable
+ ~Global("FHFarenLoveTalk","GLOBAL",1)~ + @2033 DO ~SetGlobal("FHFarenRomanceActive","GLOBAL",3) SetGlobal("FHFarenFriend","GLOBAL",1) SetGlobal("FHFarenFriendTalk","GLOBAL",1)~ + FHFPID_friends1
+ ~Global("FHFarenLoveTalk","GLOBAL",3)~ + @2033 DO ~SetGlobal("FHFarenRomanceActive","GLOBAL",3) SetGlobal("FHFarenFriend","GLOBAL",1) SetGlobal("FHFarenFriendTalk","GLOBAL",3)~ + FHFPID_friends1
+ ~Global("FHFarenLoveTalk","GLOBAL",5)~ + @2033 DO ~SetGlobal("FHFarenRomanceActive","GLOBAL",3) SetGlobal("FHFarenFriend","GLOBAL",1) SetGlobal("FHFarenFriendTalk","GLOBAL",5)~ + FHFPID_friends1
+ ~Global("FHFarenLoveTalk","GLOBAL",7)~ + @2033 DO ~SetGlobal("FHFarenRomanceActive","GLOBAL",3) SetGlobal("FHFarenFriend","GLOBAL",1) SetGlobal("FHFarenFriendTalk","GLOBAL",7)~ + FHFPID_friends1
+ ~Global("FHFarenLoveTalk","GLOBAL",9)~ + @2033 DO ~SetGlobal("FHFarenRomanceActive","GLOBAL",3) SetGlobal("FHFarenFriend","GLOBAL",1) SetGlobal("FHFarenFriendTalk","GLOBAL",9)~ + FHFPID_friends1
+ ~Global("FHFarenLoveTalk","GLOBAL",11)~ + @2034 DO ~SetGlobal("FHFarenRomanceActive","GLOBAL",3) SetGlobal("FHFarenFriend","GLOBAL",1) SetGlobal("FHFarenFriendTalk","GLOBAL",11)~ + FHFPID_friends1
+ ~Global("FHFarenLoveTalk","GLOBAL",13)~ + @2034 DO ~SetGlobal("FHFarenRomanceActive","GLOBAL",3) SetGlobal("FHFarenFriend","GLOBAL",1) SetGlobal("FHFarenFriendTalk","GLOBAL",13)~ + FHFPID_friends1
+ ~Global("FHFarenLoveTalk","GLOBAL",15)~ + @2034 DO ~SetGlobal("FHFarenRomanceActive","GLOBAL",3) SetGlobal("FHFarenFriend","GLOBAL",1) SetGlobal("FHFarenFriendTalk","GLOBAL",13)~ + FHFPID_friends1
+ ~Global("FHFarenLoveTalk","GLOBAL",17)~ + @2034 DO ~SetGlobal("FHFarenRomanceActive","GLOBAL",3) SetGlobal("FHFarenFriend","GLOBAL",1) SetGlobal("FHFarenFriendTalk","GLOBAL",17)~ + FHFPID_friends1
+ ~GlobalGT("FHFarenLoveTalk","GLOBAL",17) GlobalLT("FHFarenLoveTalk","GLOBAL",29)~ + @2035 DO ~SetGlobal("FHFarenRomanceActive","GLOBAL",3) SetGlobal("FHFarenFriend","GLOBAL",1) SetGlobal("FHFarenFriendTalk","GLOBAL",17)~ + FHFPID_friends2
+ ~GlobalGT("FHFarenLoveTalk","GLOBAL",27)~ + @2036 DO ~SetGlobal("FHFarenRomanceActive","GLOBAL",3) SetGlobal("FHFarenFriend","GLOBAL",1)~ + FHFPID_friends3
++ @2037 EXIT

CHAIN FHFRNJ FHFRom1_decision1
@2264
EXIT

CHAIN FHFRNJ FHFRom1_decision2
@2265
EXIT

CHAIN FHFRNJ FHFRom1_decision3
@2266
EXIT

CHAIN FHFRNJ FHFRom1_decision4
@2267
EXIT

CHAIN FHFRNJ FHFRom1_question
@2202
END
+ ~RandomNum(4,1)~ + @2203 + FHFFriend_think1
+ ~RandomNum(4,2)~ + @2203 + FHFRom1_think1
+ ~RandomNum(4,3)~ + @2203 + FHFFriend_think3
+ ~RandomNum(4,4)~ + @2203 + FHFFriend_think4
+ ~RandomNum(4,1)~ + @2204 + FHFFriend_how1
+ ~RandomNum(4,2)~ + @2204 + FHFFriend_how2
+ ~RandomNum(4,3)~ + @2204 + FHFFriend_how3
+ ~RandomNum(4,4)~ + @2204 + FHFFriend_how4
+ ~RandomNum(4,1)~ + @2205 + FHFRom1_love1
+ ~RandomNum(4,2)~ + @2205 + FHFRom1_love2
+ ~RandomNum(4,3)~ + @2205 + FHFFriend_love3
+ ~RandomNum(4,4)~ + @2205 + FHFRom1_love3
+ ~RandomNum(4,1)~ + @2206 + FHFFriend_thinkme1
+ ~RandomNum(4,2)~ + @2206 + FHFFriend_thinkme2
+ ~RandomNum(4,3)~ + @2206 + FHFFriend_thinkme3
+ ~RandomNum(4,4)~ + @2206 + FHFFriend_thinkme4
+ ~GlobalGT("FHFarenLoveTalk","GLOBAL",3) RandomNum(4,1)~ + @2207 + FHFFriend_herit1
+ ~GlobalGT("FHFarenLoveTalk","GLOBAL",3) RandomNum(4,2)~ + @2207 + FHFFriend_herit2
+ ~GlobalGT("FHFarenLoveTalk","GLOBAL",3) RandomNum(4,3)~ + @2207 + FHFFriend_herit3
+ ~GlobalGT("FHFarenLoveTalk","GLOBAL",3) RandomNum(4,4)~ + @2207 + FHFFriend_herit4
+ ~RandomNum(4,1)~ + @2208 + FHFFriend_give1
+ ~RandomNum(4,2)~ + @2208 + FHFFriend_give2
+ ~RandomNum(4,3)~ + @2208 + FHFFriend_give3
+ ~RandomNum(4,4)~ + @2208 + FHFFriend_give4
+ ~RandomNum(4,1)~ + @2209 + FHFFriend_little1
+ ~RandomNum(4,2)~ + @2209 + FHFFriend_little2
+ ~RandomNum(4,3)~ + @2209 + FHFFriend_little3
+ ~RandomNum(4,4)~ + @2209 + FHFFriend_little4
+ ~RandomNum(4,1) Gender(Player1,FEMALE)~ + @2210 + FHFRom1_children1a
+ ~RandomNum(4,1) Gender(Player1,MALE)~ + @2210 + FHFRom1_children1b
+ ~RandomNum(4,2)~ + @2210 + FHFFriend_children1
+ ~RandomNum(4,3)~ + @2210 + FHFRom1_children2
+ ~RandomNum(4,4)~ + @2210 + FHFRom1_children3
+ ~RandomNum(4,1)~ + @2211 + FHFFriend_dream1
+ ~RandomNum(4,2)~ + @2211 + FHFFriend_dream2
+ ~RandomNum(4,3)~ + @2211 + FHFFriend_dream3
+ ~RandomNum(4,4)~ + @2211 + FHFFriend_dream4
++ @2268 + FHFFriend_nothing

CHAIN FHFRNJ FHFRom1_flirt
~~
END
+ ~RandomNum(4,1)~ + @2270 + FHFRom1_smile1
+ ~RandomNum(4,2)~ + @2270 + FHFRom1_smile2
+ ~RandomNum(4,3)~ + @2270 + FHFRom1_smile3
+ ~RandomNum(4,4)~ + @2270 + FHFRom1_smile4
+ ~RandomNum(6,1)~ + @2031 + FHFFriend_study1
+ ~RandomNum(6,2)~ + @2031 + FHFFriend_study2
+ ~RandomNum(6,3)~ + @2031 + FHFFriend_study3
+ ~RandomNum(6,4)~ + @2031 + FHFFriend_study4
+ ~RandomNum(6,5)~ + @2031 + FHFFriend_study5
+ ~RandomNum(6,6)~ + @2031 + FHFFriend_study6
+ ~RandomNum(4,1)~ + @2271 + FHFFriend_hair1
+ ~RandomNum(4,2)~ + @2271 + FHFFriend_hair2
+ ~RandomNum(4,3)~ + @2271 + FHFFriend_hair3
+ ~RandomNum(4,4)~ + @2271 + FHFFriend_hair4
+ ~RandomNum(4,1)~ + @2272 + FHFRom1_attract1
+ ~RandomNum(4,2)~ + @2272 + FHFRom1_attract2
+ ~RandomNum(4,3)~ + @2272 + FHFRom1_attract3
+ ~RandomNum(4,4)~ + @2272 + FHFRom1_attract4
+ ~RandomNum(4,1)~ + @2273 + FHFFriend_hug1
+ ~RandomNum(4,2)~ + @2273 + FHFFriend_hug2
+ ~RandomNum(4,3)~ + @2273 + FHFFriend_hug3
+ ~RandomNum(4,4)~ + @2273 + FHFFriend_hug4
+ ~RandomNum(4,1)~ + @2274 + FHFFriend_hand1
+ ~RandomNum(4,2)~ + @2274 + FHFFriend_hand2
+ ~RandomNum(4,3)~ + @2274 + FHFFriend_hand3
+ ~RandomNum(4,4)~ + @2274 + FHFFriend_hand4
+ ~RandomNum(4,1)~ + @2275 + FHFFriend_poke1
+ ~RandomNum(4,2)~ + @2275 + FHFFriend_poke2
+ ~RandomNum(4,3)~ + @2275 + FHFFriend_poke3
+ ~RandomNum(4,4)~ + @2275 + FHFFriend_poke4
+ ~Gender(Player1,FEMALE) RandomNum(4,1)~ + @2276 + FHFRom1_cleavage1a
+ ~Gender(Player1,FEMALE) RandomNum(4,2)~ + @2276 + FHFRom1_cleavage2a
+ ~Gender(Player1,FEMALE) RandomNum(4,3)~ + @2276 + FHFRom1_cleavage3a
+ ~Gender(Player1,FEMALE) RandomNum(4,4)~ + @2276 + FHFRom1_cleavage4a
+ ~Gender(Player1,MALE) RandomNum(4,1)~ + @2277 + FHFRom1_bend1a
+ ~Gender(Player1,MALE) RandomNum(4,2)~ + @2277 + FHFRom1_bend2a
+ ~Gender(Player1,MALE) RandomNum(4,3)~ + @2277 + FHFRom1_bend3a
+ ~Gender(Player1,MALE) RandomNum(4,4)~ + @2277 + FHFRom1_bend4a
+ ~RandomNum(4,1)~ + @2278 + FHFRom1_wolf1
+ ~RandomNum(4,2)~ + @2278 + FHFRom1_wolf2
+ ~RandomNum(4,3)~ + @2278 + FHFRom1_wolf3
+ ~RandomNum(4,4)~ + @2278 + FHFRom1_wolf4
+ ~RandomNum(4,1) GlobalGT("FHFarenLoveTalk","GLOBAL",20)~ + @2279 + FHFRom1_eyes1
+ ~RandomNum(4,2) GlobalGT("FHFarenLoveTalk","GLOBAL",20)~ + @2279 + FHFRom1_eyes2
+ ~RandomNum(4,3) GlobalGT("FHFarenLoveTalk","GLOBAL",20)~ + @2279 + FHFRom1_eyes3
+ ~RandomNum(4,4) GlobalGT("FHFarenLoveTalk","GLOBAL",20)~ + @2279 + FHFRom1_eyes4
+ ~RandomNum(4,1) GlobalGT("FHFarenLoveTalk","GLOBAL",20)~ + @2280 + FHFRom1_face1
+ ~RandomNum(4,2) GlobalGT("FHFarenLoveTalk","GLOBAL",20)~ + @2280 + FHFRom1_face2
+ ~RandomNum(4,3) GlobalGT("FHFarenLoveTalk","GLOBAL",20)~ + @2280 + FHFRom1_face3
+ ~RandomNum(4,4) GlobalGT("FHFarenLoveTalk","GLOBAL",20)~ + @2280 + FHFRom1_face4
+ ~Global("FHFarenKiss","GLOBAL",0) GlobalGT("FHFarenLoveTalk","GLOBAL",20) Global("FHFFarenSex","GLOBAL",0)~ + @549 DO ~SetGlobal("FHFarenKiss","GLOBAL",2)~ + FHFRom1_kissinit
+ ~Global("FHFarenKiss","GLOBAL",1) GlobalGT("FHFarenLoveTalk","GLOBAL",20) Global("FHFFarenSex","GLOBAL",0) RandomNum(4,1)~ + @549 + FHFRom1_kiss1a
+ ~Global("FHFarenKiss","GLOBAL",1) GlobalGT("FHFarenLoveTalk","GLOBAL",20) Global("FHFFarenSex","GLOBAL",0) RandomNum(4,2)~ + @549 + FHFRom1_kiss2a
+ ~Global("FHFarenKiss","GLOBAL",1) GlobalGT("FHFarenLoveTalk","GLOBAL",20) Global("FHFFarenSex","GLOBAL",0) RandomNum(4,3)~ + @549 + FHFRom1_kiss3a
+ ~Global("FHFarenKiss","GLOBAL",1) GlobalGT("FHFarenLoveTalk","GLOBAL",20) Global("FHFFarenSex","GLOBAL",0) RandomNum(4,4)~ + @549 + FHFRom1_kiss4a
+ ~RandomNum(4,1) Global("FHFarenKiss","GLOBAL",1) Global("FHFFarenSex","GLOBAL",1)~ + @549 + FHFRom1_kiss1b
+ ~RandomNum(4,2) Global("FHFarenKiss","GLOBAL",1) Global("FHFFarenSex","GLOBAL",1)~ + @549 + FHFRom1_kiss2b
+ ~RandomNum(4,3) Global("FHFarenKiss","GLOBAL",1) Global("FHFFarenSex","GLOBAL",1)~ + @549 + FHFRom1_kiss3b
+ ~RandomNum(4,4) Global("FHFarenKiss","GLOBAL",1) Global("FHFFarenSex","GLOBAL",1)~ + @549 + FHFRom1_kiss4b
+ ~GlobalGT("FHFarenLoveTalk","GLOBAL",20) RandomNum(4,1)~ + @2281 + FHFRom1_blowkiss1
+ ~GlobalGT("FHFarenLoveTalk","GLOBAL",20) RandomNum(4,2)~ + @2281 + FHFRom1_blowkiss2
+ ~GlobalGT("FHFarenLoveTalk","GLOBAL",20) RandomNum(4,3)~ + @2281 + FHFRom1_blowkiss3
+ ~GlobalGT("FHFarenLoveTalk","GLOBAL",20) RandomNum(4,4)~ + @2281 + FHFRom1_blowkiss4
+ ~GlobalGT("FHFarenLoveTalk","GLOBAL",22) RandomNum(4,1)~ + @2282 + FHFRom1_chest1
+ ~GlobalGT("FHFarenLoveTalk","GLOBAL",22) RandomNum(4,2)~ + @2282 + FHFRom1_chest2
+ ~GlobalGT("FHFarenLoveTalk","GLOBAL",22) RandomNum(4,3)~ + @2282 + FHFRom1_chest3
+ ~GlobalGT("FHFarenLoveTalk","GLOBAL",22) RandomNum(4,4)~ + @2282 + FHFRom1_chest4
+ ~Global("FHFFarenSex","GLOBAL",1) RandomNum(4,1)~ + @2283 + FHFRom1_thigh1
+ ~Global("FHFFarenSex","GLOBAL",1) RandomNum(4,2)~ + @2283 + FHFRom1_thigh2
+ ~Global("FHFFarenSex","GLOBAL",1) RandomNum(4,3)~ + @2283 + FHFRom1_thigh3
+ ~Global("FHFFarenSex","GLOBAL",1) RandomNum(4,4)~ + @2283 + FHFRom1_thigh4
+ ~Global("FHFarenSex","GLOBAL",0) Global("FHFAskSex","GLOBAL",0) GlobalGT("FHFarenLoveTalk","GLOBAL",22)~ + @2284 DO ~SetGlobal("FHFAskSex","GLOBAL",1)~ + FHFRom1_asksex
+ ~Global("FHFarenSex","GLOBAL",1) RandomNum(4,1)~ + @2285 + FHFRom1_action1
+ ~Global("FHFarenSex","GLOBAL",1) RandomNum(4,2)~ + @2285 + FHFRom1_action2
+ ~Global("FHFarenSex","GLOBAL",1) RandomNum(4,3)~ + @2285 + FHFRom1_action3
+ ~Global("FHFarenSex","GLOBAL",1) RandomNum(4,4)~ + @2285 + FHFRom1_action4
++ @2037 EXIT

CHAIN FHFRNJ FHFFriend_smile1
@2286
EXIT

CHAIN FHFRNJ FHFFriend_smile2
@2287
EXIT

CHAIN FHFRNJ FHFFriend_smile3
@2288
EXIT

CHAIN FHFRNJ FHFFriend_smile4
@2289
EXIT

CHAIN FHFRNJ FHFFriend_study1
@2290
=
@2291
EXIT

CHAIN FHFRNJ FHFFriend_study2
@2292
EXIT

CHAIN FHFRNJ FHFFriend_study3
@2293
EXIT

CHAIN FHFRNJ FHFFriend_study4
@2294
EXIT

CHAIN FHFRNJ FHFFriend_study5
@2295
EXIT

CHAIN FHFRNJ FHFFriend_study6
@2296
EXIT

CHAIN FHFRNJ FHFFriend_hair1
@2297
EXIT

CHAIN FHFRNJ FHFFriend_hair2
@2298
= @2299
EXIT

CHAIN FHFRNJ FHFFriend_hair3
@2300
EXIT

CHAIN FHFRNJ FHFFriend_hair4
@2301
EXIT

CHAIN FHFRNJ FHFFriend_attract1
@2302
EXIT

CHAIN FHFRNJ FHFFriend_attract2
@2303
EXIT

CHAIN FHFRNJ FHFFriend_attract3
@2304
EXIT

CHAIN FHFRNJ FHFFriend_attract4
@2305
EXIT

CHAIN FHFRNJ FHFFriend_poke1
@2306
EXIT

CHAIN FHFRNJ FHFFriend_poke2
@2307
EXIT

CHAIN FHFRNJ FHFFriend_poke3
@2308
EXIT

CHAIN FHFRNJ FHFFriend_poke4
@2309
EXIT

CHAIN FHFRNJ FHFFriend_hug1
@2310
EXIT

CHAIN FHFRNJ FHFFriend_hug2
@2311
EXIT

CHAIN FHFRNJ FHFFriend_hug3
@2312
EXIT

CHAIN FHFRNJ FHFFriend_hug4
@2313
EXIT

CHAIN FHFRNJ FHFFriend_hand1
@2314
EXIT

CHAIN FHFRNJ FHFFriend_hand2
@2315
EXIT

CHAIN FHFRNJ FHFFriend_hand3
@2316
EXIT

CHAIN FHFRNJ FHFFriend_hand4
@2317
EXIT

CHAIN FHFRNJ FHFRom1_children1a
@2318
EXIT

CHAIN FHFRNJ FHFRom1_children1b
@2319
EXIT

CHAIN FHFRNJ FHFRom1_children2
@2320
EXIT

CHAIN FHFRNJ FHFRom1_children3
@2321
EXIT

CHAIN FHFRNJ FHFRom1_smile1
@2322
EXIT

CHAIN FHFRNJ FHFRom1_smile2
@2323
EXIT

CHAIN FHFRNJ FHFRom1_smile3
@2324
EXIT

CHAIN FHFRNJ FHFRom1_smile4
@2325
EXIT

CHAIN FHFRNJ FHFRom1_think1
@2326
EXIT

CHAIN FHFRNJ FHFRom1_love1
@2327
EXIT

CHAIN FHFRNJ FHFRom1_love2
@2328
EXIT

CHAIN FHFRNJ FHFRom1_love3
@2329
EXIT

CHAIN FHFRNJ FHFRom1_wolf1
@2330
EXIT

CHAIN FHFRNJ FHFRom1_wolf2
@2331
EXIT

CHAIN FHFRNJ FHFRom1_wolf3
@2332
EXIT

CHAIN FHFRNJ FHFRom1_wolf4
@2333
= @2334
EXIT

CHAIN FHFRNJ FHFRom1_eyes1
@2335
EXIT

CHAIN FHFRNJ FHFRom1_eyes2
@2336
EXIT

CHAIN FHFRNJ FHFRom1_eyes3
@2337
EXIT

CHAIN FHFRNJ FHFRom1_eyes4
@2338
EXIT

CHAIN FHFRNJ FHFRom1_attract1
@2339
EXIT

CHAIN FHFRNJ FHFRom1_attract2
@2340
EXIT

CHAIN FHFRNJ FHFRom1_attract3
@2341
EXIT

CHAIN FHFRNJ FHFRom1_attract4
@2342
EXIT

CHAIN FHFRNJ FHFRom1_cleavage1a
@2343
EXIT

CHAIN FHFRNJ FHFRom1_cleavage2a
@2344
EXIT

CHAIN FHFRNJ FHFRom1_cleavage3a
@2345
EXIT

CHAIN FHFRNJ FHFRom1_cleavage4a
@2346
EXIT

CHAIN FHFRNJ FHFRom1_bend1a
@2347
EXIT

CHAIN FHFRNJ FHFRom1_bend2a
@2348
EXIT

CHAIN FHFRNJ FHFRom1_bend3a
@2349
EXIT

CHAIN FHFRNJ FHFRom1_bend4a
@2350
EXIT

CHAIN FHFRNJ FHFRom1_face1
@2351
EXIT

CHAIN FHFRNJ FHFRom1_face2
@2352
EXIT

CHAIN FHFRNJ FHFRom1_face3
@2353
EXIT

CHAIN FHFRNJ FHFRom1_face4
@2354
EXIT

CHAIN FHFRNJ FHFRom1_kissinit
@2355
=
@2356
=
@2357
EXIT

CHAIN FHFRNJ FHFRom1_kiss1a
@2358
EXIT

CHAIN FHFRNJ FHFRom1_kiss2a
@2359
= @2360
EXIT

CHAIN FHFRNJ FHFRom1_kiss3a
@2361
EXIT

CHAIN FHFRNJ FHFRom1_kiss4a
@2362
EXIT

CHAIN FHFRNJ FHFRom1_blowkiss1
@2363
= @2364
EXIT

CHAIN FHFRNJ FHFRom1_blowkiss2
@2365
EXIT

CHAIN FHFRNJ FHFRom1_blowkiss3
@2366
EXIT

CHAIN FHFRNJ FHFRom1_blowkiss4
@2367
EXIT

CHAIN FHFRNJ FHFRom1_chest1
@2368
EXIT

CHAIN FHFRNJ FHFRom1_chest2
@2369
= @2370
EXIT

CHAIN FHFRNJ FHFRom1_chest3
@2371
EXIT

CHAIN FHFRNJ FHFRom1_chest4
@2372
EXIT

CHAIN FHFRNJ FHFRom1_kiss1b
@2373
EXIT

CHAIN FHFRNJ FHFRom1_kiss2b
@2374
= @2375
EXIT

CHAIN FHFRNJ FHFRom1_kiss3b
@2376
= @2377
= @2378
EXIT

CHAIN FHFRNJ FHFRom1_kiss4b
@2379
EXIT

CHAIN FHFRNJ FHFRom1_asksex
@2380
EXIT

CHAIN FHFRNJ FHFRom1_action1
@2381
EXIT

CHAIN FHFRNJ FHFRom1_action2
@2382
EXIT

CHAIN FHFRNJ FHFRom1_action3
@2383
= @2384
EXIT

CHAIN FHFRNJ FHFRom1_action4
@2385
EXIT

CHAIN FHFRNJ FHFRom1_thigh1
@2386
EXIT

CHAIN FHFRNJ FHFRom1_thigh2
@2387
EXIT

CHAIN FHFRNJ FHFRom1_thigh3
@2388
EXIT

CHAIN FHFRNJ FHFRom1_thigh4
@2389
EXIT

//Romanceactive 2 or uncommitted (serious romance)

CHAIN IF
~IsGabber(Player1)
CombatCounter(0)
OR(2)
Global("FHFarenRomanceActive","GLOBAL",2)
Global("FHFUncommit","GLOBAL",1)
!AreaCheck("AR2100")
!AreaCheck("AR2101")
!AreaCheck("AR2102")
!AreaCheck("AR2200")
!AreaCheck("AR2201")
!AreaCheck("AR2202")
!AreaCheck("AR2203")
!AreaCheck("AR2204")
!AreaCheck("AR2205")
!AreaCheck("AR2206")
!AreaCheck("AR2207")
!AreaCheck("AR2208")
!AreaCheck("AR2209")
!AreaCheck("AR2210")
!AreaCheck("AR2400")
!AreaCheck("AR2401")
!AreaCheck("AR2402")~ THEN FHFRNJ FHFRom2
@2390
END
+ ~Global("BodhiAppear","GLOBAL",1)
GlobalLT("WorkingForAran","GLOBAL",1)
GlobalLT("WorkingForBodhi","GLOBAL",1)~ + @2088 + FHFFriend_aranbodhi
+ ~GlobalGT("SelfTalk","GLOBAL",0)~ + @2452 + FHFFriend_soul
+ ~Global("Loganmantle","GLOBAL",1)~ + @2089 + FHFFriend_mantle
+ ~Global("GrovePoisoned","GLOBAL",1)~ + @2090 + FHFFriend_poison
+ ~Global("LoganMad","GLOBAL",1)~ + @2091 + FHFFriend_logan
+ ~Global("tirisjob","GLOBAL",1) GlobalLT("tannerplot2","GLOBAL",5)~ + @2092 + FHFFriend_rej
+ ~RandomNum(4,1)~ + @2093 + FHFRom1_decision1
+ ~RandomNum(4,2)~ + @2093 + FHFRom1_decision2
+ ~RandomNum(4,3)~ + @2093 + FHFRom1_decision3
+ ~RandomNum(4,4)~ + @2093 + FHFRom1_decision4
+ ~RandomNum(4,1)~ + @2094 + FHFFriend_miss1
+ ~RandomNum(4,2)~ + @2094 + FHFFriend_miss2
+ ~RandomNum(4,3)~ + @2094 + FHFFriend_miss3
+ ~RandomNum(4,4)~ + @2094 + FHFFriend_miss4
+ ~Global("Chapter","GLOBAL",2)~ + @2095 + FHFFriend_next1
+ ~Global("Chapter","GLOBAL",3)~ + @2095 + FHFFriend_next2
+ ~Global("Chapter","GLOBAL",4)~ + @2095 + FHFFriend_next3
+ ~Global("Chapter","GLOBAL",6) !Dead("C6Bodhi")~ + @2095 + FHFFriend_next4
+ ~Global("Chapter","GLOBAL",6) Dead("C6Bodhi")~ + @2095 + FHFFriend_next5
+ ~Global("Chapter","GLOBAL",7)~ + @2095 + FHFFriend_next6
+ ~OR(3) AreaCheck("AR1100") AreaCheck("AR1401") AreaCheck("AR1404")~ + @2096 + FHFFriend_umar
++ @2260 + FHFRom2_question
+ ~Global("FHFarenLoveTalk","GLOBAL",41)~ + @2104 + FHFFriend_need1
+ ~CheckStatGT("FHFAREN",5,FATIGUE)~ + @2105 + FHFFriend_tired
+ ~RandomNum(4,1)~ + @2391 + FHFRom2_good1
+ ~RandomNum(4,2)~ + @2391 + FHFRom2_good2
+ ~RandomNum(4,3)~ + @2391 + FHFRom2_good3
+ ~RandomNum(4,4)~ + @2391 + FHFRom2_good4
+ ~Global("FHFarenLoveTalk","GLOBAL",43) RandomNum(4,1)~ + @1016 + FHFRom2_love1a
+ ~Global("FHFarenLoveTalk","GLOBAL",43) RandomNum(4,2)~ + @1016 + FHFRom2_love2a
+ ~Global("FHFarenLoveTalk","GLOBAL",43) RandomNum(4,3)~ + @1016 + FHFRom2_love3a
+ ~Global("FHFarenLoveTalk","GLOBAL",43) RandomNum(4,4)~ + @1016 + FHFRom2_love4a
+ ~GlobalLT("FHFarenLoveTalk","GLOBAL",43) RandomNum(4,1)~ + @1016 + FHFRom2_love1b
+ ~GlobalLT("FHFarenLoveTalk","GLOBAL",43) RandomNum(4,2)~ + @1016 + FHFRom2_love2b
+ ~GlobalLT("FHFarenLoveTalk","GLOBAL",43) RandomNum(4,3)~ + @1016 + FHFRom2_love3b
+ ~GlobalLT("FHFarenLoveTalk","GLOBAL",43) RandomNum(4,4)~ + @1016 + FHFRom2_love4b
+ ~Global("FHFTRPLE02","GLOBAL",1)~ + @2107 DO ~SetGlobal("FHFTRPLE02","GLOBAL",2)~ + FHFRom1_jeanne
+ ~Global("FHFHalFaren","GLOBAL",2) Global("FHFHalFarenPID","GLOBAL",0)~ + @2108 DO ~SetGlobal("FHFHalFarenPID","GLOBAL",1)~ + FHFFriend_hal
+ ~Global("FHFAR100Reveal","GLOBAL",0) Global("WainwrightJob","GLOBAL",0) Global("Acceptance","GLOBAL",0)~ + @2448 DO ~SetGlobal("FHFAR100Reveal","GLOBAL",1) RevealAreaOnMap("AR100")~ + FHFFriend_umar1
+ ~Global("FHFFlirtsDisabled","GLOBAL",0)~ + @2261 + FHFRom2_flirt
+ ~Global("FHFFlirtsDisabled","GLOBAL",0)~ + @2262 + FHFarenFlirtDisable
+ ~Global("FHFFlirtsDisabled","GLOBAL",1)~ + @2263 + FHFarenFlirtEnable
++ @2392 DO ~SetGlobal("FHFarenRomanceActive","GLOBAL",3)~ + FHFPID_friends4
++ @2037 EXIT

CHAIN FHFRNJ FHFRom2_question
@2202
END
+ ~RandomNum(4,1)~ + @2203 + FHFFriend_think1
+ ~RandomNum(4,2)~ + @2203 + FHFRom2_think1
+ ~RandomNum(4,3)~ + @2203 + FHFRom2_think2
+ ~RandomNum(4,4)~ + @2203 + FHFFriend_think4
+ ~RandomNum(5,1)~ + @2204 + FHFFriend_how1
+ ~RandomNum(5,2)~ + @2204 + FHFFriend_how2
+ ~RandomNum(5,3)~ + @2204 + FHFFriend_how3
+ ~RandomNum(5,4)~ + @2204 + FHFFriend_how4
+ ~RandomNum(5,5)~ + @2204 + FHFRom2_how1
+ ~RandomNum(4,1)~ + @2206 + FHFRom2_thinkme1
+ ~RandomNum(4,2)~ + @2206 + FHFRom2_thinkme2
+ ~RandomNum(4,3)~ + @2206 + FHFRom2_thinkme3
+ ~RandomNum(4,4)~ + @2206 + FHFRom2_thinkme4
+ ~RandomNum(4,1)~ + @2207 + FHFRom2_herit1
+ ~RandomNum(4,2)~ + @2207 + FHFRom2_herit2
+ ~RandomNum(4,3)~ + @2207 + FHFRom2_herit3
+ ~RandomNum(4,4)~ + @2207 + FHFRom2_herit4
+ ~RandomNum(4,1)~ + @2208 + FHFRom2_give1
+ ~RandomNum(4,2)~ + @2208 + FHFRom2_give2
+ ~RandomNum(4,3)~ + @2208 + FHFRom2_give3
+ ~RandomNum(4,4)~ + @2208 + FHFRom2_give4
+ ~RandomNum(4,1)~ + @2209 + FHFFriend_little1
+ ~RandomNum(4,2)~ + @2209 + FHFFriend_little2
+ ~RandomNum(4,3)~ + @2209 + FHFFriend_little3
+ ~RandomNum(4,4)~ + @2209 + FHFFriend_little4
+ ~RandomNum(4,1) Gender(Player1,FEMALE)~ + @2210 + FHFRom1_children1a
+ ~RandomNum(4,1) Gender(Player1,MALE)~ + @2210 + FHFRom1_children1b
+ ~RandomNum(4,2)~ + @2210 + FHFFriend_children1
+ ~RandomNum(4,3)~ + @2210 + FHFRom2_children1
+ ~RandomNum(4,4)~ + @2210 + FHFRom2_children2
+ ~RandomNum(4,1)~ + @2211 + FHFFriend_dream1
+ ~RandomNum(4,2)~ + @2211 + FHFFriend_dream2
+ ~RandomNum(4,3)~ + @2211 + FHFFriend_dream3
+ ~RandomNum(4,4)~ + @2211 + FHFFriend_dream4
+ ~Race(Player1,DWARF)~ + @2393 + FHFRom2_bother
+ ~Race(Player1,ELF)~ + @2394 + FHFRom2_bother
+ ~Race(Player1,GNOME)~ + @2395 + FHFRom2_bother
+ ~Race(Player1,HALFLING)~ + @2396 + FHFRom2_bother
+ ~Race(Player1,HALF_ELF)~ + @2397 + FHFRom2_bother2
+ ~Race(Player1,HALFORC)~ + @2398 + FHFRom2_bother2
++ @2268 + FHFFriend_nothing

CHAIN FHFRNJ FHFRom2_flirt
~~
END
+ ~RandomNum(4,1)~ + @2270 + FHFRom1_smile1
+ ~RandomNum(4,2)~ + @2270 + FHFRom1_smile2
+ ~RandomNum(4,3)~ + @2270 + FHFRom1_smile3
+ ~RandomNum(4,4)~ + @2270 + FHFRom1_smile4
+ ~RandomNum(6,1)~ + @2031 + FHFFriend_study1
+ ~RandomNum(6,2)~ + @2031 + FHFFriend_study2
+ ~RandomNum(6,3)~ + @2031 + FHFFriend_study3
+ ~RandomNum(6,4)~ + @2031 + FHFFriend_study4
+ ~RandomNum(6,5)~ + @2031 + FHFFriend_study5
+ ~RandomNum(6,6)~ + @2031 + FHFFriend_study6
+ ~RandomNum(4,1)~ + @2271 + FHFFriend_hair1
+ ~RandomNum(4,2)~ + @2271 + FHFFriend_hair2
+ ~RandomNum(4,3)~ + @2271 + FHFFriend_hair3
+ ~RandomNum(4,4)~ + @2271 + FHFFriend_hair4
+ ~RandomNum(4,1)~ + @2272 + FHFRom1_attract1
+ ~RandomNum(4,2)~ + @2272 + FHFRom1_attract2
+ ~RandomNum(4,3)~ + @2272 + FHFRom1_attract3
+ ~RandomNum(4,4)~ + @2272 + FHFRom1_attract4
+ ~RandomNum(4,1)~ + @2273 + FHFFriend_hug1
+ ~RandomNum(4,2)~ + @2273 + FHFFriend_hug2
+ ~RandomNum(4,3)~ + @2273 + FHFFriend_hug3
+ ~RandomNum(4,4)~ + @2273 + FHFFriend_hug4
+ ~RandomNum(4,1)~ + @2274 + FHFFriend_hand1
+ ~RandomNum(4,2)~ + @2274 + FHFFriend_hand2
+ ~RandomNum(4,3)~ + @2274 + FHFFriend_hand3
+ ~RandomNum(4,4)~ + @2274 + FHFFriend_hand4
+ ~RandomNum(4,1)~ + @2275 + FHFFriend_poke1
+ ~RandomNum(4,2)~ + @2275 + FHFFriend_poke2
+ ~RandomNum(4,3)~ + @2275 + FHFFriend_poke3
+ ~RandomNum(4,4)~ + @2275 + FHFFriend_poke4
+ ~Gender(Player1,FEMALE) RandomNum(4,1)~ + @2276 + FHFRom1_cleavage1a
+ ~Gender(Player1,FEMALE) RandomNum(4,2)~ + @2276 + FHFRom1_cleavage2a
+ ~Gender(Player1,FEMALE) RandomNum(4,3)~ + @2276 + FHFRom1_cleavage3a
+ ~Gender(Player1,FEMALE) RandomNum(4,4)~ + @2276 + FHFRom1_cleavage4a
+ ~Gender(Player1,MALE) RandomNum(4,1)~ + @2277 + FHFRom1_bend1a
+ ~Gender(Player1,MALE) RandomNum(4,2)~ + @2277 + FHFRom1_bend2a
+ ~Gender(Player1,MALE) RandomNum(4,3)~ + @2277 + FHFRom1_bend3a
+ ~Gender(Player1,MALE) RandomNum(4,4)~ + @2277 + FHFRom1_bend4a
+ ~RandomNum(4,1)~ + @2278 + FHFRom1_wolf1
+ ~RandomNum(4,2)~ + @2278 + FHFRom1_wolf2
+ ~RandomNum(4,3)~ + @2278 + FHFRom1_wolf3
+ ~RandomNum(4,4)~ + @2278 + FHFRom1_wolf4
+ ~RandomNum(4,1) GlobalGT("FHFarenLoveTalk","GLOBAL",20)~ + @2279 + FHFRom1_eyes1
+ ~RandomNum(4,2) GlobalGT("FHFarenLoveTalk","GLOBAL",20)~ + @2279 + FHFRom1_eyes2
+ ~RandomNum(4,3) GlobalGT("FHFarenLoveTalk","GLOBAL",20)~ + @2279 + FHFRom1_eyes3
+ ~RandomNum(4,4) GlobalGT("FHFarenLoveTalk","GLOBAL",20)~ + @2279 + FHFRom1_eyes4
+ ~RandomNum(4,1) GlobalGT("FHFarenLoveTalk","GLOBAL",20)~ + @2280 + FHFRom1_face1
+ ~RandomNum(4,2) GlobalGT("FHFarenLoveTalk","GLOBAL",20)~ + @2280 + FHFRom1_face2
+ ~RandomNum(4,3) GlobalGT("FHFarenLoveTalk","GLOBAL",20)~ + @2280 + FHFRom1_face3
+ ~RandomNum(4,4) GlobalGT("FHFarenLoveTalk","GLOBAL",20)~ + @2280 + FHFRom1_face4
+ ~Global("FHFarenKiss","GLOBAL",0) GlobalGT("FHFarenLoveTalk","GLOBAL",20) Global("FHFFarenSex","GLOBAL",0)~ + @549 DO ~SetGlobal("FHFarenKiss","GLOBAL",2)~ + FHFRom1_kissinit
+ ~Global("FHFarenKiss","GLOBAL",1) GlobalGT("FHFarenLoveTalk","GLOBAL",20) Global("FHFFarenSex","GLOBAL",0) RandomNum(4,1)~ + @549 + FHFRom1_kiss1a
+ ~Global("FHFarenKiss","GLOBAL",1) GlobalGT("FHFarenLoveTalk","GLOBAL",20) Global("FHFFarenSex","GLOBAL",0) RandomNum(4,2)~ + @549 + FHFRom1_kiss2a
+ ~Global("FHFarenKiss","GLOBAL",1) GlobalGT("FHFarenLoveTalk","GLOBAL",20) Global("FHFFarenSex","GLOBAL",0) RandomNum(4,3)~ + @549 + FHFRom1_kiss3a
+ ~Global("FHFarenKiss","GLOBAL",1) GlobalGT("FHFarenLoveTalk","GLOBAL",20) Global("FHFFarenSex","GLOBAL",0) RandomNum(4,4)~ + @549 + FHFRom1_kiss4a
+ ~RandomNum(4,1) Global("FHFarenKiss","GLOBAL",1) Global("FHFFarenSex","GLOBAL",1)~ + @549 + FHFRom1_kiss1b
+ ~RandomNum(4,2) Global("FHFarenKiss","GLOBAL",1) Global("FHFFarenSex","GLOBAL",1)~ + @549 + FHFRom1_kiss2b
+ ~RandomNum(4,3) Global("FHFarenKiss","GLOBAL",1) Global("FHFFarenSex","GLOBAL",1)~ + @549 + FHFRom1_kiss3b
+ ~RandomNum(4,4) Global("FHFarenKiss","GLOBAL",1) Global("FHFFarenSex","GLOBAL",1)~ + @549 + FHFRom1_kiss4b
+ ~GlobalGT("FHFarenLoveTalk","GLOBAL",20) RandomNum(4,1)~ + @2281 + FHFRom1_blowkiss1
+ ~GlobalGT("FHFarenLoveTalk","GLOBAL",20) RandomNum(4,2)~ + @2281 + FHFRom1_blowkiss2
+ ~GlobalGT("FHFarenLoveTalk","GLOBAL",20) RandomNum(4,3)~ + @2281 + FHFRom1_blowkiss3
+ ~GlobalGT("FHFarenLoveTalk","GLOBAL",20) RandomNum(4,4)~ + @2281 + FHFRom1_blowkiss4
+ ~GlobalGT("FHFarenLoveTalk","GLOBAL",22) RandomNum(4,1)~ + @2282 + FHFRom1_chest1
+ ~GlobalGT("FHFarenLoveTalk","GLOBAL",22) RandomNum(4,2)~ + @2282 + FHFRom1_chest2
+ ~GlobalGT("FHFarenLoveTalk","GLOBAL",22) RandomNum(4,3)~ + @2282 + FHFRom1_chest3
+ ~GlobalGT("FHFarenLoveTalk","GLOBAL",22) RandomNum(4,4)~ + @2282 + FHFRom1_chest4
+ ~Global("FHFFarenSex","GLOBAL",1) RandomNum(4,1)~ + @2283 + FHFRom1_thigh1
+ ~Global("FHFFarenSex","GLOBAL",1) RandomNum(4,2)~ + @2283 + FHFRom1_thigh2
+ ~Global("FHFFarenSex","GLOBAL",1) RandomNum(4,3)~ + @2283 + FHFRom1_thigh3
+ ~Global("FHFFarenSex","GLOBAL",1) RandomNum(4,4)~ + @2283 + FHFRom1_thigh4
+ ~Global("FHFarenSex","GLOBAL",0) Global("FHFAskSex","GLOBAL",0) GlobalGT("FHFFarenLoveTalk","GLOBAL",24)~ + @2284 DO ~SetGlobal("FHFAskSex","GLOBAL",1)~ + FHFRom1_asksex
+ ~Global("FHFarenSex","GLOBAL",1) RandomNum(4,1)~ + @2285 + FHFRom1_action1
+ ~Global("FHFarenSex","GLOBAL",1) RandomNum(4,2)~ + @2285 + FHFRom1_action2
+ ~Global("FHFarenSex","GLOBAL",1) RandomNum(4,3)~ + @2285 + FHFRom1_action3
+ ~Global("FHFarenSex","GLOBAL",1) RandomNum(4,4)~ + @2285 + FHFRom1_action4
++ @2037 EXIT

CHAIN FHFRNJ FHFarenFlirtDisable
@2399
DO ~SetGlobal("FHFFlirtsDisabled","GLOBAL",1)~ EXIT

CHAIN FHFRNJ FHFarenFlirtEnable
@2400
DO ~SetGlobal("FHFFlirtsDisabled","GLOBAL",0)~ EXIT

CHAIN FHFRNJ FHFRom2_good1
@2401
EXIT

CHAIN FHFRNJ FHFRom2_good2
@2402
EXIT

CHAIN FHFRNJ FHFRom2_good3
@2403
EXIT

CHAIN FHFRNJ FHFRom2_good4
@2404
EXIT

CHAIN FHFRNJ FHFRom2_love1a
@2405
= @2406
EXIT

CHAIN FHFRNJ FHFRom2_love2a
@2407
EXIT

CHAIN FHFRNJ FHFRom2_love3a
@2408
EXIT

CHAIN FHFRNJ FHFRom2_love4a
@2409
EXIT

CHAIN FHFRNJ FHFRom2_love1b
@2410
EXIT

CHAIN FHFRNJ FHFRom2_love2b
@2411
EXIT

CHAIN FHFRNJ FHFRom2_love3b
@2412
EXIT

CHAIN FHFRNJ FHFRom2_love4b
@2413
EXIT

CHAIN FHFRNJ FHFRom2_think1
@2414
EXIT

CHAIN FHFRNJ FHFRom2_think2
@2415
=
@2416
EXIT

CHAIN FHFRNJ FHFRom2_how1
@2417
EXIT

CHAIN FHFRNJ FHFRom2_thinkme1
@2418
EXIT

CHAIN FHFRNJ FHFRom2_thinkme2
@2419
EXIT

CHAIN FHFRNJ FHFRom2_thinkme3
@2420
EXIT

CHAIN FHFRNJ FHFRom2_thinkme4
@2421
= @2422
EXIT

CHAIN FHFRNJ FHFRom2_children1
@2423
EXIT

CHAIN FHFRNJ FHFRom2_children2
@2424
EXIT

CHAIN FHFRNJ FHFRom2_bother
@2425
EXIT

CHAIN FHFRNJ FHFRom2_bother2
@2426
EXIT

CHAIN FHFRNJ FHFRom2_herit1
@2427
= @2428
EXIT

CHAIN FHFRNJ FHFRom2_herit2
@2429
= @2430
EXIT

CHAIN FHFRNJ FHFRom2_herit3
@2431
EXIT

CHAIN FHFRNJ FHFRom2_herit4
@2432
EXIT

CHAIN FHFRNJ FHFRom2_give1
@2433
EXIT

CHAIN FHFRNJ FHFRom2_give2
@2434
EXIT

CHAIN FHFRNJ FHFRom2_give3
@2435
EXIT

CHAIN FHFRNJ FHFRom2_give4
@2436
EXIT

CHAIN FHFRNJ FHFRom2_attract1
@2437
EXIT

CHAIN FHFRNJ FHFRom2_attract2
@2438
EXIT

CHAIN FHFRNJ FHFRom2_attract3
@2439
EXIT

CHAIN FHFRNJ FHFRom2_attract4
@2440
EXIT

CHAIN FHFRNJ FHFPID_friends1
@2441
DO ~RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",1000)~
EXIT

CHAIN FHFRNJ FHFPID_friends2
@2442
DO ~RealSetGlobalTimer("FHFarenTalkTimer","GLOBAL",1000)~
EXIT

CHAIN FHFRNJ FHFPID_friends3
@2443
= @2444
EXIT

CHAIN FHFRNJ FHFPID_friends4
@2445
= @2446
EXIT

