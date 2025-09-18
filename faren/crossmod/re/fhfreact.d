//Romantic Encounters reactions

//Ada

APPEND FHFRNJ

IF WEIGHT #-1 ~Global("FHF_RE_Ada","GLOBAL",1)~ FHFREAda
SAY @0
++ @1 DO ~SetGlobal("FHF_RE_Ada","GLOBAL",2)~ + FHFAda_teach
+ ~Global("FHFarenRomanceActive","GLOBAL",1)~ + @2 DO ~SetGlobal("FHF_RE_Ada","GLOBAL",2)~ + FHFAda_amazing1
+ ~Global("FHFarenRomanceActive","GLOBAL",2)~ + @2 DO ~SetGlobal("FHFarenRomanceActive","GLOBAL",3) SetGlobal("FHF_RE_Ada","GLOBAL",2)~ + FHFAda_amazing2
+ ~Global("RE_AdaSex","GLOBAL",1)~ + @3 DO ~SetGlobal("FHF_RE_Ada","GLOBAL",2)~ + FHFAda_sleep1
+ ~!Global("RE_AdaSex","GLOBAL",1)~ + @3 DO ~SetGlobal("FHF_RE_Ada","GLOBAL",2)~ + FHFAda_sleep2
END

IF ~~ FHFAda_teach
SAY @4
++ @5 + FHFAda_sleep1
+ ~Global("FHFarenRomanceActive","GLOBAL",1)~ + @6 + FHFAda_amazing1
+ ~Global("FHFarenRomanceActive","GLOBAL",2)~ + @6 DO ~SetGlobal("FHFarenRomanceActive","GLOBAL",3)~ + FHFAda_amazing2
END

IF ~~ FHFAda_amazing1
SAY @7
IF ~~ EXIT
END

IF ~~ FHFAda_amazing2
SAY @8
= @9
IF ~~ EXIT
END

IF ~~ FHFAda_sleep1
SAY @10
IF ~~ EXIT
END

IF ~~ FHFAda_sleep2
SAY @11
IF ~~ EXIT
END

//Aimi

IF WEIGHT #-1 ~Global("FHF_RE_Aimi","GLOBAL",1)~ FHFREAimi
SAY @12
+ ~Global("FHFarenRomanceActive","GLOBAL",1)~ + @13 DO ~SetGlobal("FHF_RE_Aimi","GLOBAL",2)~ + FHFAimi_innu1
+ ~Global("FHFarenRomanceActive","GLOBAL",2)~ + @13 DO ~SetGlobal("FHF_RE_Aimi","GLOBAL",2)~ + FHFAimi_innu2
++ @14 DO ~SetGlobal("FHF_RE_Aimi","GLOBAL",2)~ + FHFAimi_talk
++ @15 DO ~SetGlobal("FHF_RE_Aimi","GLOBAL",2)~ + FHFAimi_ever
END

IF ~~ FHFAimi_innu1
SAY @16
= @17
IF ~~ EXIT
END

IF ~~ FHFAimi_innu2
SAY @18
++ @19 + FHFAimi_slip
++ @20 DO ~SetGlobal("FHFarenRomanceActive","GLOBAL",3)~ + FHFAimi_wrong
END

IF ~~ FHFAimi_talk
SAY @21
IF ~~ EXIT
END

IF ~~ FHFAimi_ever
SAY @22
IF ~~ EXIT
END

IF ~~ FHFAimi_slip
SAY @23
IF ~~ EXIT
END

IF ~~ FHFAimi_wrong
SAY @24
IF ~~ EXIT
END

//Anishai

IF WEIGHT #-1 ~Global("FHF_RE_Anishai","GLOBAL",1)~ FHFREAnishai
SAY @25
+ ~Global("RE_AnishaiSex","GLOBAL",0)~ + @26 DO ~SetGlobal("FHF_RE_Anishai","GLOBAL",2)~ + FHFAnishai_prac1
+ ~Global("RE_AnishaiSex","GLOBAL",1)~ + @26 DO ~SetGlobal("FHF_RE_Anishai","GLOBAL",2) SetGlobal("FHFarenRomanceActive","GLOBAL",2)~ + FHFAnishai_prac2
+ ~Global("RE_AnishaiSex","GLOBAL",0)~ + @27 DO ~SetGlobal("FHF_RE_Anishai","GLOBAL",2)~ + FHFAnishai_danger
++ @28 DO ~SetGlobal("FHF_RE_Anishai","GLOBAL",2)~ + FHFAnishai_fun
++ @29 DO ~SetGlobal("FHF_RE_Anishai","GLOBAL",2)~ + FHFAnishai_danger
END

IF ~~ FHFAnishai_prac1
SAY @30
IF ~~ + FHFAnishai_danger
END

IF ~~ FHFAnishai_prac2
SAY @31
IF ~~ + FHFAnishai_fun
END

IF ~~ FHFAnishai_danger
SAY @32
IF ~~ EXIT
END

IF ~~ FHFAnishai_fun
SAY @33
IF ~~ EXIT
END

//Bjornin

IF WEIGHT #-1 ~Global("FHF_RE_Bjornin","GLOBAL",1)~ FHFREBjornin
SAY @34
= @35
IF ~~ DO ~SetGlobal("FHF_RE_Bjornin","GLOBAL",2)~ EXIT
END

//Bodhi

IF WEIGHT #-1 ~Global("FHF_RE_Bodhi","GLOBAL",1)~ FHFREBodhi
SAY @36
++ @37 DO ~SetGlobal("FHF_RE_Bodhi","GLOBAL",2)~ + FHFREBodhi_control
+ ~Global("FHFarenRomanceActive","GLOBAL",1)~ + @38 DO ~SetGlobal("FHF_RE_Bodhi","GLOBAL",2) SetGlobal("FHFarenRomanceActive","GLOBAL",3)~ + FHFREBodhi_want1
+ ~Global("FHFarenRomanceActive","GLOBAL",2)~ + @38 DO ~SetGlobal("FHF_RE_Bodhi","GLOBAL",2)~ + FHFREBodhi_want2
++ @39 DO ~SetGlobal("FHF_RE_Bodhi","GLOBAL",2)~ + FHFREBodhi_ally
END

IF ~~ FHFREBodhi_control
SAY @40
IF ~~ + FHFREBodhi_end
END

IF ~~ FHFREBodhi_want1
SAY @41
IF ~~ EXIT
END

IF ~~ FHFREBodhi_want2
SAY @42
++ @43 + FHFREBodhi_want1
++ @44 + FHFREBodhi_control
END

IF ~~ FHFREBodhi_ally
SAY @45
IF ~~ EXIT
END

IF ~~ FHFREBodhi_end
SAY @46
IF ~~ EXIT
END

//Chandra

IF WEIGHT #-1 ~Global("FHF_RE_Chandra","GLOBAL",1) Global("FHFarenRomanceActive","GLOBAL",1)~ FHFREChandra
SAY @47
IF ~~ DO ~SetGlobal("FHF_RE_Chandra","GLOBAL",2)~ EXIT
END

IF WEIGHT #-1 ~Global("FHF_RE_Chandra","GLOBAL",1) Global("FHFarenRomanceActive","GLOBAL",2)~ FHFREChandra2
SAY @48
IF ~~ DO ~SetGlobal("FHF_RE_Chandra","GLOBAL",2)~ EXIT
END

//Chanelle

IF WEIGHT #-1 ~Global("FHF_RE_Chanelle","GLOBAL",1)~ FHFREChanelle
SAY @49
= @50
IF ~~ DO ~SetGlobal("FHF_RE_Chanelle","GLOBAL",2)~ EXIT
END

//Coran

IF WEIGHT #-1 ~Global("FHF_RE_Coran","GLOBAL",1)~ FHFRECoran
SAY @51
++ @52 DO ~SetGlobal("FHF_RE_Coran","GLOBAL",2)~ + FHFRECoran_fool
++ @53 DO ~SetGlobal("FHF_RE_Coran","GLOBAL",2)~ + FHFRECoran_fool
++ @54 DO ~SetGlobal("FHF_RE_Coran","GLOBAL",2) SetGlobal("FHFarenRomanceActive","GLOBAL",3)~ + FHFRECoran_time
END

IF ~~ FHFRECoran_fool
SAY @55
IF ~~ EXIT
END

IF ~~ FHFRECoran_time
SAY @56
= @57
IF ~~ EXIT
END

//Desharik

IF WEIGHT #-1 ~Global("FHF_RE_Desharik","GLOBAL",1)~ FHFREDesh
SAY @58
IF ~~ DO ~SetGlobal("FHF_RE_Desharik","GLOBAL",2)~ EXIT
END

//Edwin

IF WEIGHT #-1 ~Global("FHF_RE_Edwin","GLOBAL",1)~ FHFREEd
SAY @59
++ @60 DO ~SetGlobal("FHF_RE_Edwin","GLOBAL",2)~ + FHFREEd_feel
++ @61 DO ~SetGlobal("FHF_RE_Edwin","GLOBAL",2)~ + FHFREEd_nonsense
+ ~Global("FHFarenRomanceActive","GLOBAL",1)~ + @62 DO ~SetGlobal("FHF_RE_Edwin","GLOBAL",2)~ + FHFREEd_amazing1
+ ~Global("FHFarenRomanceActive","GLOBAL",2)~ + @62 DO ~SetGlobal("FHF_RE_Edwin","GLOBAL",2) SetGlobal("FHFarenRomanceActive","GLOBAL",3)~ + FHFREEd_amazing2
END

IF ~~ FHFREEd_feel
SAY @63
= @64
IF ~~ EXIT
END

IF ~~ FHFREEd_nonsense
SAY @65
IF ~~ EXIT
END

IF ~~ FHFREEd_amazing1
SAY @66
IF ~~ EXIT
END

IF ~~ FHFREEd_amazing2
SAY @67
= @68
IF ~~ EXIT
END

//Eldoth

IF WEIGHT #-1 ~Global("FHF_RE_Eldoth","GLOBAL",1)~ FHFREEldoth
SAY @69
= @70
IF ~~ DO ~SetGlobal("FHF_RE_Eldoth","GLOBAL",2)~ EXIT
END

//Gaelan

IF WEIGHT #-1 ~Global("FHF_RE_Gaelan","GLOBAL",1)~ FHFREGaelan
SAY @71
++ @72 DO ~SetGlobal("FHF_RE_Gaelan","GLOBAL",2)~ + FHFREGaelan_trick
++ @73 DO ~SetGlobal("FHF_RE_Gaelan","GLOBAL",2)~ + FHFREGaelan_nothing
++ @74 DO ~SetGlobal("FHF_RE_Gaelan","GLOBAL",2)~ + FHFREGaelan_nothing
++ @75 DO ~SetGlobal("FHF_RE_Gaelan","GLOBAL",2)~ + FHFREGaelan_enjoy
END

IF ~~ FHFREGaelan_trick
SAY @76
IF ~~ + FHFREGaelan_kill
END

IF ~~ FHFREGaelan_nothing
SAY @77
IF ~~ + FHFREGaelan_hero
END

IF ~~ FHFREGaelan_enjoy
SAY @78
IF ~~ EXIT
END

IF ~~ FHFREGaelan_kill
SAY @79
++ @80 + FHFREGaelan_seen
++ @81 + FHFREGaelan_hero
END

IF ~~ FHFREGaelan_hero
SAY @82
IF ~~ EXIT
END

IF ~~ FHFREGaelan_seen
SAY @83
= @84
IF ~~ EXIT
END

//Ilona

IF WEIGHT #-1 ~Global("FHF_RE_Ilona","GLOBAL",1)~ FHFREIlona
SAY @85
IF ~~ DO ~SetGlobal("FHF_RE_Ilona","GLOBAL",2)~ EXIT
END

//Isabelle

IF WEIGHT #-1 ~Global("FHF_RE_Isabelle","GLOBAL",1)~ FHFREIsabelle
SAY @86
++ @87 DO ~SetGlobal("FHF_RE_Isabelle","GLOBAL",2)~ + FHFREIsabelle_mean
++ @88 DO ~SetGlobal("FHF_RE_Isabelle","GLOBAL",2)~ + FHFREIsabelle_mean
++ @89 DO ~SetGlobal("FHF_RE_Isabelle","GLOBAL",2)~ + FHFREIsabelle_dawn
END

IF ~~ FHFREIsabelle_mean
SAY @90
IF ~~ EXIT
END

IF ~~ FHFREIsabelle_dawn
SAY @91
= @92
IF ~~ EXIT
END

//Jarlaxle

IF WEIGHT #-1 ~Global("FHF_RE_Jarlaxle","GLOBAL",1)~ FHFREJarlaxle
SAY @93
++ @94 DO ~SetGlobal("FHF_RE_Jarlaxle","GLOBAL",2)~ + FHFREJarlaxle_cont
++ @95 DO ~SetGlobal("FHF_RE_Jarlaxle","GLOBAL",2)~ + FHFREJarlaxle_cont
++ @96 DO ~SetGlobal("FHF_RE_Jarlaxle","GLOBAL",2)~ + FHFREJarlaxle_capt
END

IF ~~ FHFREJarlaxle_cont
SAY @97
IF ~~ EXIT
END

IF ~~ FHFREJarlaxle_capt
SAY @98
IF ~~ EXIT
END

//Lais

IF WEIGHT #-1 ~Global("FHF_RE_Lais","GLOBAL",1)~ FHFRELais
SAY @99
IF ~Dead("SHADEL")~ DO ~SetGlobal("FHF_RE_Lais","GLOBAL",2)~ + FHFRELais_1
IF ~!Dead("SHADEL")~ DO ~SetGlobal("FHF_RE_Lais","GLOBAL",2)~ + FHFRELais_2
END

IF ~~ FHFRELais_1
SAY @100
IF ~~ + FHFRELais_3
END

IF ~~ FHFRELais_2
SAY @101
IF ~~ + FHFRELais_3
END

IF ~~ FHFRELais_3
SAY @102
IF ~~ EXIT
END

//Laran

IF WEIGHT #-1 ~Global("FHF_RE_Laran","GLOBAL",1)~ FHFRELaran
SAY @103
++ @104 DO ~SetGlobal("FHF_RE_Laran","GLOBAL",2)~ + FHFRELaran_quick
++ @105 DO ~SetGlobal("FHF_RE_Laran","GLOBAL",2)~ + FHFRELaran_jeal
++ @106 DO ~SetGlobal("FHF_RE_Laran","GLOBAL",2)~ + FHFRELaran_take
++ @107 DO ~SetGlobal("FHF_RE_Laran","GLOBAL",2)~ + FHFRELaran_take
END

IF ~~ FHFRELaran_quick
SAY @108
IF ~~ + FHFRELaran_enough
END

IF ~~ FHFRELaran_jeal
SAY @109
IF ~~ + FHFRELaran_enough
END

IF ~~ FHFRELaran_take
SAY @110
IF ~~ EXIT
END

IF ~~ FHFRELaran_enough
SAY @111
++ @112 DO ~SetGlobal("FHFarenRomanceActive","GLOBAL",3)~ + FHFRELaran_end
++ @106 + FHFRELaran_take
++ @107 + FHFRELaran_take
END

IF ~~ FHFRELaran_end
SAY @113
IF ~~ EXIT
END

//Mekrath

IF WEIGHT #-1 ~Global("FHF_RE_Mekrath","GLOBAL",1)~ FHFREMekrath
SAY @114
= @115
IF ~~ DO ~SetGlobal("FHF_RE_Mekrath","GLOBAL",2)~ EXIT
END

//Mira

IF WEIGHT #-1 ~Global("FHF_RE_Mira","GLOBAL",1)~ FHFREMira
SAY @116
IF ~~ DO ~SetGlobal("FHF_RE_Mira","GLOBAL",2)~ EXIT
END

//Saemon

IF WEIGHT #-1 ~Global("FHF_RE_Saemon","GLOBAL",1)~ FHFRESaem
SAY @117
+ ~Global("FHFarenRomanceActive","GLOBAL",1)~ + @118 DO ~SetGlobal("FHF_RE_Saemon","GLOBAL",2)~ + FHFRESaem_fun1
+ ~Global("FHFarenRomanceActive","GLOBAL",2)~ + @118 DO ~SetGlobal("FHF_RE_Saemon","GLOBAL",2)~ + FHFRESaem_fun2
++ @119 DO ~SetGlobal("FHF_RE_Saemon","GLOBAL",2)~ + FHFRESaem_break
++ @120 DO ~SetGlobal("FHF_RE_Saemon","GLOBAL",2)~ + FHFRESaem_fun2
END

IF ~~ FHFRESaem_fun1
SAY @121
++ @122 + FHFRESaem_like
++ @123 + FHFRESaem_break
END

IF ~~ FHFRESaem_fun2
SAY @124
IF ~~ EXIT
END

IF ~~ FHFRESaem_break
SAY @125
IF ~~ + FHFRESaem_fun2
END

IF ~~ FHFRESaem_like
SAY @126
++ @127 + FHFRESaem_share
++ @128 + FHFRESaem_fun2
END

IF ~~ FHFRESaem_share
SAY @129
= @130
IF ~~ EXIT
END

//Sendai

IF WEIGHT #-1 ~Global("FHF_RE_Sendai","GLOBAL",1)~ FHFRESendai
SAY @131
++ @132 DO ~SetGlobal("FHF_RE_Sendai","GLOBAL",2)~ + FHFRESendai_fine
++ @133 DO ~SetGlobal("FHF_RE_Sendai","GLOBAL",2)~ + FHFRESendai_disturb
++ @134 DO ~SetGlobal("FHF_RE_Sendai","GLOBAL",2)~ + FHFRESendai_here
END

IF ~~ FHFRESendai_fine
SAY @135
++ @136 + FHFRESendai_here
++ @137 + FHFRESendai_go
END

IF ~~ FHFRESendai_disturb
SAY @138
IF ~~ + FHFRESendai_fine
END

IF ~~ FHFRESendai_here
SAY @139
IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ FHFRESendai_go
SAY @140
IF ~~ EXIT
END

//Sheri

IF WEIGHT #-1 ~Global("FHF_RE_Sheri","GLOBAL",1)~ FHFRESheri
SAY @141
= @142
IF ~~ DO ~SetGlobal("FHF_RE_Sheri","GLOBAL",2)~ EXIT
END

//Solaufein

IF WEIGHT #-1 ~Global("FHF_RE_Solaufein","GLOBAL",1)~ FHFRESolaufein
SAY @143
++ @144 DO ~SetGlobal("FHF_RE_Solaufein","GLOBAL",2) SetGlobal("FHFarenRomanceActive","GLOBAL",3)~ + FHFRESolaufein_adv
++ @145 DO ~SetGlobal("FHF_RE_Solaufein","GLOBAL",2)~ + FHFRESolaufein_disguise
++ @146 DO ~SetGlobal("FHF_RE_Solaufein","GLOBAL",2)~ + FHFRESolaufein_nothing
END

IF ~~ FHFRESolaufein_adv
SAY @147
= @148
IF ~~ EXIT
END

IF ~~ FHFRESolaufein_disguise
SAY @149
= @150
IF ~~ EXIT
END

IF ~~ FHFRESolaufein_nothing
SAY @151
IF ~~ EXIT
END

//Talak

IF WEIGHT #-1 ~Global("FHF_RE_Talak","GLOBAL",1)~ FHFRETalak
SAY @152
IF ~~ DO ~SetGlobal("FHF_RE_Talak","GLOBAL",2)~ EXIT
END

END

//Valygar

CHAIN IF WEIGHT #-1 ~Global("FHF_RE_ValConf","GLOBAL",2)~ THEN FHFRNJ FHFREValy
@153
DO ~SetGlobal("FHF_RE_ValConf","GLOBAL",3)~
== VALYGARJ @154
== FHFRNJ IF ~Global("FHFarenRomanceActive","GLOBAL",1)~ THEN @155
== VALYGARJ IF ~Global("FHFarenRomanceActive","GLOBAL",1)~ THEN @156
== FHFRNJ IF ~Global("FHFarenRomanceActive","GLOBAL",1)~ THEN @157
== FHFRNJ IF ~Global("FHFarenRomanceActive","GLOBAL",2)~ THEN @158
= @159
EXIT
