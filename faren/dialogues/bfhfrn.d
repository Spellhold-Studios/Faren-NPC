//Interparty banters alphabetically organised

BEGIN BFHFRN

//Aerie

CHAIN
IF ~CombatCounter(0)
!Detect([ENEMY])
InParty(Myself)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty("FHFRN")
See("FHFRN")
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFAer1","GLOBAL",0)
TimeOfDay(DAY)~ THEN BAERIE FHFAer1
@0
DO ~SetGlobal("FHFAer1","GLOBAL",1)~
== BFHFRN @1
== BAERIE @2
== BFHFRN @3
== BAERIE @4
== BFHFRN @5
== BAERIE @6
== BFHFRN @7
== BAERIE @8
EXIT

CHAIN
IF ~CombatCounter(0)
!Detect([ENEMY])
InParty(Myself)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty("Aerie")
See("Aerie")
!StateCheck("Aerie",CD_STATE_NOTVALID)
Global("FHFAer2","GLOBAL",0)~ THEN BFHFRN FHFAer2
@9
DO ~SetGlobal("FHFAer2","GLOBAL",1)~
== BAERIE @10
== BFHFRN @11
== BAERIE @12
== BFHFRN @13
== BAERIE @14
== BFHFRN @15
== BAERIE @16
== BFHFRN @17
== BAERIE @18
== BFHFRN @19
== BAERIE @20
== BFHFRN @21
== BAERIE @22
== BFHFRN @23
EXIT

CHAIN
IF ~CombatCounter(0)
!Detect([ENEMY])
InParty(Myself)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty("FHFRN")
See("FHFRN")
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFAer3","GLOBAL",0)~ THEN BAERIE FHFAer3
@24
DO ~SetGlobal("FHFAer3","GLOBAL",1)~
== BFHFRN @25
== BAERIE @26
== BFHFRN @27
== BAERIE @28
== BFHFRN @29
== BAERIE @30
== BFHFRN @31
== BAERIE @32
== BFHFRN @33
== BAERIE @34
EXIT

//Anomen

CHAIN
IF ~CombatCounter(0)
!Detect([ENEMY])
InParty(Myself)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)
GlobalGT("SaerkPlot","GLOBAL",0)
Global("FHFAno1","GLOBAL",0)~ THEN BFHFRN FHFAno1
@35
DO ~SetGlobal("FHFAno1","GLOBAL",1)~
== BANOMEN @36
== BFHFRN @37
= @38
== BANOMEN @39
= @40
EXIT

CHAIN
IF ~CombatCounter(0)
!Detect([ENEMY])
InParty(Myself)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)
Global("FHFAno2","GLOBAL",0)~ THEN BFHFRN FHFAno2
@41
DO ~SetGlobal("FHFAno2","GLOBAL",1)~
== BANOMEN @42
== BFHFRN @43
== BANOMEN @44
== BFHFRN IF ~Global("AnomenIsNotKnight","GLOBAL",0)~ THEN @45
== BANOMEN IF ~Global("AnomenIsNotKnight","GLOBAL",0)~ @46

== BFHFRN IF ~Global("AnomenIsNotKnight","GLOBAL",1)~ THEN @47
== BANOMEN IF ~Global("AnomenIsNotKnight","GLOBAL",1)~ THEN @48
EXIT

CHAIN
IF ~CombatCounter(0)
!Detect([ENEMY])
InParty(Myself)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty("FHFRN")
See("FHFRN")
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFAno3","GLOBAL",0)
Global("AnomenIsNotKnight","GLOBAL",0)
PartyRested()~ THEN BANOMEN FHFAno3
@49
DO ~SetGlobal("FHFAno3","GLOBAL",1)~
== BFHFRN @50
= @51
== BANOMEN @52
== BFHFRN @53
== BANOMEN @54
== BFHFRN @55
== BANOMEN @56
EXIT

//Cernd

CHAIN
IF ~CombatCounter(0)
!Detect([ENEMY])
InParty(Myself)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty("Cernd")
See("Cernd")
!StateCheck("Cernd",CD_STATE_NOTVALID)
Global("FHFCernd1","GLOBAL",0)~ THEN BFHFRN FHFCernd1
@57
DO ~SetGlobal("FHFCernd1","GLOBAL",1)~
== BCERND @58
== BFHFRN @59
== BCERND @60
== BFHFRN @61
== BCERND @62
== BFHFRN @63
== BCERND @64
EXIT

CHAIN
IF ~CombatCounter(0)
!Detect([ENEMY])
InParty(Myself)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty("Cernd")
See("Cernd")
!StateCheck("Cernd",CD_STATE_NOTVALID)
Global("FHFCernd2","GLOBAL",0)~ THEN BFHFRN FHFCernd2
@65
DO ~SetGlobal("FHFCernd2","GLOBAL",1)~
== BCERND @66
== BFHFRN @67
== BCERND @68
== BFHFRN @69
== BCERND @70
== BFHFRN @71
== BCERND @72
EXIT

CHAIN
IF ~CombatCounter(0)
!Detect([ENEMY])
InParty(Myself)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty("Cernd")
See("Cernd")
!StateCheck("Cernd",CD_STATE_NOTVALID)
Global("FHFCernd3","GLOBAL",0)~ THEN BFHFRN FHFCernd3
@73
DO ~SetGlobal("FHFCernd3","GLOBAL",1)~
== BCERND @74
== BFHFRN @75
== BCERND @76
== BFHFRN @77
== BCERND @78
== BFHFRN @79
== BCERND @80
== BFHFRN @81
== BCERND @82
== BFHFRN @83
== BCERND @84
EXIT

//Edwin

CHAIN
IF ~CombatCounter(0)
!Detect([ENEMY])
InParty(Myself)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty("FHFRN")
See("FHFRN")
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFEd1","GLOBAL",0)~ THEN BEDWIN FHFEd1
@85
= @86
DO ~SetGlobal("FHFEd1","GLOBAL",1)~
== BFHFRN @87
== BEDWIN @88
== BFHFRN @89
== BEDWIN @90
== BFHFRN @91
== BEDWIN @92
== BFHFRN @93
== BEDWIN @94
== BFHFRN @95
EXIT

CHAIN
IF ~CombatCounter(0)
!Detect([ENEMY])
InParty(Myself)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty("Edwin")
See("Edwin")
!StateCheck("Edwin",CD_STATE_NOTVALID)
Global("FHFEd2","GLOBAL",0)~ THEN BFHFRN FHFEd2
@96
DO ~SetGlobal("FHFEd2","GLOBAL",1)~
== BEDWIN @97
== BFHFRN @98
== BEDWIN @99
== BFHFRN @100
== BEDWIN @101
= @102
== BFHFRN @103
EXIT

CHAIN
IF ~CombatCounter(0)
!Detect([ENEMY])
InParty(Myself)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty("Edwin")
See("Edwin")
!StateCheck("Edwin",CD_STATE_NOTVALID)
Gender("Edwin",FEMALE)
Global("FHFEd3","GLOBAL",0)~ THEN BFHFRN FHFEd3
@104
DO ~SetGlobal("FHFEd3","GLOBAL",1)~
== BEDWIN @105
== BFHFRN @106
== BEDWIN @107
== BFHFRN @108
== BEDWIN @109
EXIT

//Haer'dalis

CHAIN
IF ~CombatCounter(0)
!Detect([ENEMY])
InParty(Myself)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty("Haerdalis")
See("Haerdalis")
!StateCheck("Haerdalis",CD_STATE_NOTVALID)
Global("FHFHaer1","GLOBAL",0)~ THEN BFHFRN FHFHaer1
@110
DO ~SetGlobal("FHFHaer1","GLOBAL",1)~
== BHAERDA @111
== BFHFRN @112
== BHAERDA @113
== BFHFRN @114
== BHAERDA @115
== BFHFRN @116
== BHAERDA @117
EXIT

CHAIN
IF ~CombatCounter(0)
!Detect([ENEMY])
InParty(Myself)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty("Haerdalis")
See("Haerdalis")
!StateCheck("Haerdalis",CD_STATE_NOTVALID)
Global("FHFHaer2","GLOBAL",0)~ THEN BFHFRN FHFHaer2
@118
DO ~SetGlobal("FHFHaer2","GLOBAL",1)~
== BHAERDA @119
== BFHFRN  @120
== BHAERDA @121
== BFHFRN  @122
           = @123
           = @124
== BHAERDA @125
== BFHFRN  @126
== BHAERDA @127
== BFHFRN  @128
EXIT

CHAIN
IF ~CombatCounter(0)
!Detect([ENEMY])
InParty(Myself)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty("FHFRN")
See("FHFRN")
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFHaer3","GLOBAL",0)~ THEN BHAERDA FHFHaer3
@129
DO ~SetGlobal("FHFHaer3","GLOBAL",1)~
== BFHFRN  @130
== BHAERDA @131
== BFHFRN  @132
== BHAERDA @133
== BFHFRN  @134
== BHAERDA @135
== BFHFRN  @136
== BHAERDA @137
EXIT

//Imoen

CHAIN
IF ~CombatCounter(0)
!Detect([ENEMY])
InParty(Myself)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty("Imoen2")
See("Imoen2")
!StateCheck("Imoen2",CD_STATE_NOTVALID)
Global("FHFIm1","GLOBAL",0)~ THEN BFHFRN FHFImoen1
@138
DO ~SetGlobal("FHFIm1","GLOBAL",1)~
== BIMOEN2 @139
== BFHFRN IF ~!Global("FHFFarenRomanceActive","GLOBAL",2)~ THEN @140
== BIMOEN2 IF ~!Global("FHFFarenRomanceActive","GLOBAL",2)~ THEN @141
== BFHFRN IF ~Global("FHFFarenRomanceActive","GLOBAL",2)~ THEN @142
== BIMOEN2 IF ~Global("FHFFarenRomanceActive","GLOBAL",2)~ THEN @143
== BIMOEN2 @144
== BFHFRN @145
== BIMOEN2 @146
EXIT

CHAIN
IF ~CombatCounter(0)
!Detect([ENEMY])
InParty(Myself)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty("Imoen2")
See("Imoen2")
!StateCheck("Imoen2",CD_STATE_NOTVALID)
Global("FHFIm2","GLOBAL",0)~ THEN BFHFRN FHFImoen2
@147
DO ~SetGlobal("FHFIm2","GLOBAL",1)~
== BIMOEN2 @148
== BFHFRN @149
== BIMOEN2 IF ~Dead("c6bodhi")~ THEN @150
== BIMOEN2 IF ~!Dead("c6bodhi")~ THEN @151
== BFHFRN @152
== BIMOEN2 @153
EXIT

//Jaheira

CHAIN IF ~CombatCounter(0)
!Detect([ENEMY])
InParty(Myself)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty("Jaheira")
See("Jaheira")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
Global("FHFJah1","GLOBAL",0)~ THEN BFHFRN FHFJah1
@154
DO ~SetGlobal("FHFJah1","GLOBAL",1)~
== BJAHEIR @155
= @156
EXIT

CHAIN IF ~CombatCounter(0)
!Detect([ENEMY])
InParty(Myself)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty("Jaheira")
See("Jaheira")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
Global("FHFJah2","GLOBAL",0)~ THEN BFHFRN FHFJah2
@157
DO ~SetGlobal("FHFJah2","GLOBAL",1)~
== BJAHEIR @158
== BFHFRN  @159
== BJAHEIR @160
== BFHFRN  @161
== BJAHEIR @162
== BFHFRN   @163
== BJAHEIR @164
EXIT

CHAIN IF ~CombatCounter(0)
!Detect([ENEMY])
InParty(Myself)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty("FHFRN")
See("FHFRN")
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFJah3","GLOBAL",0)~ THEN BJAHEIR FHFJah3
@165
DO ~SetGlobal("FHFJah3","GLOBAL",1)~
== BFHFRN  @166
== BJAHEIR @167
== BFHFRN  @168
== BJAHEIR @169
== BFHFRN  @170
== BJAHEIR @171
== BFHFRN  @172
== BJAHEIR @173
== BFHFRN  @174
== BJAHEIR @175
EXIT

//Jan

CHAIN IF ~CombatCounter(0)
!Detect([ENEMY])
InParty(Myself)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty("Jan")
See("Jan")
!StateCheck("Jan",CD_STATE_NOTVALID)
Global("FHFJan1","GLOBAL",0)~ THEN BFHFRN FHFJan1
@176
DO ~SetGlobal("FHFJan1","GLOBAL",1)~
== BJAN   @177
== BFHFRN @178
== BJAN   @179
== BFHFRN @180
== BJAN   @181
== BFHFRN @182
== BJAN   @183
== BFHFRN @184
== BJAN   @185
== BFHFRN @186
== BJAN   @187
= @188
EXIT

CHAIN IF ~CombatCounter(0)
!Detect([ENEMY])
InParty(Myself)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty("Jan")
See("Jan")
!StateCheck("Jan",CD_STATE_NOTVALID)
Global("FHFJan2","GLOBAL",0)~ THEN BFHFRN FHFJan2
@189
DO ~SetGlobal("FHFJan2","GLOBAL",1)~
== BJAN   @190
== BFHFRN @191
== BJAN   @192
== BFHFRN @193
== BJAN   @194
== BFHFRN @195
= @196
== BJAN   @197
== BFHFRN @198
== BJAN   @199
EXIT

CHAIN
IF ~CombatCounter(0)
!Detect([ENEMY])
InParty(Myself)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty("FHFRN")
See("FHFRN")
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFJan3","GLOBAL",0)~ THEN BJAN FHFJan3
@200
DO ~SetGlobal("FHFJan3","GLOBAL",1)~
== BJAN IF ~GlobalGT("FHFHalFaren","GLOBAL",0)~ THEN
@201
== BJAN IF ~Global("FHFHalFaren","GLOBAL",0)~ THEN
@202
== BFHFRN @203
== BJAN @204
== BFHFRN @205
== BJAN   @206
== BFHFRN @207
== BJAN   @208
EXIT

//Keldorn

CHAIN IF ~CombatCounter(0)
!Detect([ENEMY])
InParty(Myself)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty("Keldorn")
See("Keldorn")
!StateCheck("Keldorn",CD_STATE_NOTVALID)
Global("FHFKel1","GLOBAL",0)~ THEN BFHFRN FHFKel1
@209
= @210
== BKELDOR @211
== BFHFRN  @212
== BKELDOR @213
== BFHFRN  @214
== BKELDOR @215
== BFHFRN  @216
EXIT

CHAIN IF ~CombatCounter(0)
!Detect([ENEMY])
InParty(Myself)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty("FHFRN")
See("FHFRN")
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFKel2","GLOBAL",0)~ THEN BKELDOR FHFKel2
@217
DO ~SetGlobal("FHFKel2","GLOBAL",1)~
== BFHFRN  @218
== BKELDOR @219
== BFHFRN IF ~Global("FHFarenRomanceActive","GLOBAL",2)~ THEN @220
== BFHFRN IF ~!Global("FHFarenRomanceActive","GLOBAL",2)~ THEN @221
== BKELDOR @222
== BFHFRN  @223
== BKELDOR @224
== BFHFRN  @225
== BKELDOR @226
== BFHFRN IF ~Global("FHFarenRomanceActive","GLOBAL",2)~ THEN @227
== BFHFRN IF ~!Global("FHFarenRomanceActive","GLOBAL",2)~ THEN @228
== BKELDOR @229
== BFHFRN  @230
EXIT

CHAIN IF ~CombatCounter(0)
!Detect([ENEMY])
InParty(Myself)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty("FHFRN")
See("FHFRN")
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFKel2","GLOBAL",1)~ THEN BKELDOR FHFKel3
@231
DO ~SetGlobal("FHFKel2","GLOBAL",2)~
== BFHFRN  @232
== BKELDOR @233
== BFHFRN  @234
== BKELDOR @235
== BFHFRN  @236
== BKELDOR @237
== BFHFRN IF ~!Global("FHFarenRomanceActive","GLOBAL",2)~ THEN @238
== BFHFRN IF ~!Global("FHFarenRomanceActive","GLOBAL",2)~ THEN @239
== BFHFRN IF ~Global("FHFarenRomanceActive","GLOBAL",2)~ THEN @240
== BKELDOR @241
== BFHFRN  @242
EXIT

//Korgan

CHAIN
IF ~CombatCounter(0)
!Detect([ENEMY])
InParty(Myself)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty("Korgan")
See("Korgan")
!StateCheck("Korgan",CD_STATE_NOTVALID)
Global("FHFKorg1","GLOBAL",0)~ THEN BFHFRN FHFKorg1
@243
DO ~SetGlobal("FHFKorg1","GLOBAL",1)~
== BKORGAN @244
== BFHFRN @245
== BKORGAN @246
== BFHFRN @247
== BKORGAN @248
EXIT

CHAIN
IF ~CombatCounter(0)
!Detect([ENEMY])
InParty(Myself)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty("Korgan")
See("Korgan")
!StateCheck("Korgan",CD_STATE_NOTVALID)
Global("FHFKorg2","GLOBAL",0)~ THEN BFHFRN FHFKorg2
@249
DO ~SetGlobal("FHFKorg2","GLOBAL",1)~
== BKORGAN @250
== BFHFRN @251
== BKORGAN @252
== BFHFRN @253
== BKORGAN @254
== BFHFRN @255
== BKORGAN @256
== BFHFRN @257
== BKORGAN @258
== BFHFRN @259
== BKORGAN @260
== BFHFRN @261
== BKORGAN @262
EXIT

CHAIN
IF ~CombatCounter(0)
!Detect([ENEMY])
InParty(Myself)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty("FHFRN")
See("FHFRN")
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFKorg3","GLOBAL",0)~ THEN BKORGAN FHFKorg3
@263
DO ~SetGlobal("FHFKorg3","GLOBAL",1)~
== BFHFRN  @264
== BKORGAN @265
== BFHFRN  @266
== BKORGAN @267
== BFHFRN  @268
== BKORGAN @269
EXIT

//Mazzy

CHAIN
IF ~CombatCounter(0)
!Detect([ENEMY])
InParty(Myself)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty("Mazzy")
See("Mazzy")
!StateCheck("Mazzy",CD_STATE_NOTVALID)
Global("FHFMazzy1","GLOBAL",0)
Global("MazzyAltar","GLOBAL",1)~ THEN BFHFRN FHFMazzy1
@270
DO ~SetGlobal("FHFMazzy1","GLOBAL",1)~
== BMAZZY @271
== BFHFRN @272
== BMAZZY @273
== BFHFRN @274
== BMAZZY @275
== BFHFRN @276
== BMAZZY @277
EXIT

CHAIN
IF ~CombatCounter(0)
!Detect([ENEMY])
InParty(Myself)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty("Mazzy")
See("Mazzy")
!StateCheck("Mazzy",CD_STATE_NOTVALID)
Global("FHFMazzy2","GLOBAL",0)~ THEN BFHFRN FHFMazzy2
@278
DO ~SetGlobal("FHFMazzy2","GLOBAL",1)~
== BMAZZY @279
== BFHFRN @280
== BMAZZY @281
== BFHFRN @282
== BMAZZY @283
== BFHFRN @284
== BMAZZY @285
== BFHFRN @286
== BMAZZY @287
== BFHFRN @288
= @289
== BMAZZY @290
== BFHFRN @291
== BMAZZY @292
== BFHFRN @293
EXIT

CHAIN
IF ~CombatCounter(0)
!Detect([ENEMY])
InParty(Myself)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty("Mazzy")
See("Mazzy")
!StateCheck("Mazzy",CD_STATE_NOTVALID)
Global("FHFMazzy3","GLOBAL",0)~ THEN BFHFRN FHFMazzy3
@294
DO ~SetGlobal("FHFMazzy3","GLOBAL",1)~
== BMAZZY @295
== BFHFRN @296
== BMAZZY @297
== BFHFRN @298
== BMAZZY @299
== BFHFRN @300
== BMAZZY @301
== BFHFRN @302
== BMAZZY @303
== BFHFRN @304
== BMAZZY @305
== BFHFRN @306
== BMAZZY @307
== BFHFRN @308
== BMAZZY @309
== BFHFRN @310
== BMAZZY @311
== BFHFRN @312
== BMAZZY @313
== BFHFRN @314
== BMAZZY @315
EXIT

//Minsc

CHAIN IF ~CombatCounter(0)
!Detect([ENEMY])
InParty(Myself)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty("FHFRN")
See("FHFRN")
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFMin1","GLOBAL",0)~ THEN BMINSC FHFMin1
@316
DO ~SetGlobal("FHFMin1","GLOBAL",1)~
== BFHFRN @317
== BMINSC @318
== BFHFRN @319
== BMINSC @320
== BFHFRN @321
== BMINSC @322
== BFHFRN @323
== BMINSC @324
== BFHFRN @325
== BMINSC @326
== BFHFRN @327
EXIT

CHAIN IF ~CombatCounter(0)
!Detect([ENEMY])
InParty(Myself)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty("MINSC")
See("MINSC")
!StateCheck("MINSC",CD_STATE_NOTVALID)
AreaType(DUNGEON)
Global("FHFMin2","GLOBAL",0)~ THEN BFHFRN FHFMin2
@328
DO ~SetGlobal("FHFMin2","GLOBAL",1)~
== BMINSC @329
== BFHFRN @330
== BMINSC @331
== BFHFRN @332
== BMINSC @333
== BFHFRN @334
= @335
== BMINSC @336
== BFHFRN @337
== BMINSC @338
== BFHFRN @339
== BMINSC @340
EXIT

CHAIN IF ~CombatCounter(0)
!Detect([ENEMY])
InParty(Myself)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty("MINSC")
See("MINSC")
!StateCheck("MINSC",CD_STATE_NOTVALID)
Global("FHFMin3","GLOBAL",0)~ THEN BFHFRN FHFMin3
@341
DO ~SetGlobal("FHFMin3","GLOBAL",1)~
== BMINSC @342
= @343
== BFHFRN @344
== BMINSC @345
== BFHFRN @346
== BMINSC @347
== BFHFRN @348
EXIT

//Nalia

CHAIN
IF ~CombatCounter(0)
!Detect([ENEMY])
InParty(Myself)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty("FHFRN")
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFNal","GLOBAL",0)~ THEN BNALIA FHFNal2
@349
DO ~SetGlobal("FHFNal","GLOBAL",1)~
== BFHFRN @350
== BNALIA @351
== BFHFRN @352
== BNALIA @353
EXIT

CHAIN
IF ~CombatCounter(0)
!Detect([ENEMY])
InParty(Myself)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty("FHFRN")
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFNal","GLOBAL",1)~ THEN BNALIA FHFNal1
@354
DO ~SetGlobal("FHFNal","GLOBAL",2)~
== BFHFRN @355
== BNALIA @356
=         @357
== BFHFRN @358
== BNALIA @359
== BFHFRN @360
== BNALIA @361
== BFHFRN @362
== BNALIA @363
== BFHFRN @364
== BNALIA @365
EXIT

CHAIN
IF ~CombatCounter(0)
!Detect([ENEMY])
InParty(Myself)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty("FHFRN")
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFNal","GLOBAL",2)~ THEN BNALIA FHFNal3
@366
DO ~SetGlobal("FHFNal","GLOBAL",3)~
== BFHFRN @367
== BNALIA @368
== BFHFRN @369
== BNALIA IF ~OR(3) GlobalGT("K#BanterO","GLOBAL", 7) Global("PGNaliaRomanceActive","GLOBAL",1) Global("PGNaliaRomanceActive","GLOBAL",2)~ THEN @370
== BNALIA IF ~GlobalLT("K#BanterO","GLOBAL",7) !Global("PGNaliaRomanceActive","GLOBAL",1) !Global("PGNaliaRomanceActive","GLOBAL",2)~ THEN @371
== BFHFRN @372
== BNALIA @373
== BFHFRN IF ~OR(3) Global("K#AurenNaliaDecision","GLOBAL",1) Global("PGNaliaRomanceActive","GLOBAL",1) Global("PGNaliaRomanceActive","GLOBAL",2) OR(2) Global("FHFarenRomanceActive","GLOBAL",1) Global("FHFarenRomanceActive","GLOBAL",2)~ THEN @374
== BFHFRN IF ~Global("K#AurenNaliaDecision","GLOBAL",0) !Global("PGNaliaRomanceActive","GLOBAL",1) !Global("PGNaliaRomanceActive","GLOBAL",2) Global("FHFarenRomanceActive","GLOBAL",1)~ THEN @375
== BFHFRN IF ~Global("K#AurenNaliaDecision","GLOBAL",0) !Global("PGNaliaRomanceActive","GLOBAL",1) !Global("PGNaliaRomanceActive","GLOBAL",2) !Global("FHFarenRomanceActive","GLOBAL",1)~ THEN @376
== BNALIA @377
== BFHFRN @378
== BNALIA @379
== BFHFRN @380
EXIT

//Valygar

CHAIN
IF ~CombatCounter(0)
!Detect([ENEMY])
InParty(Myself)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty("Valygar")
See("Valygar")
!StateCheck("Valygar",CD_STATE_NOTVALID)
Global("FHFVal1","GLOBAL",0)~ THEN BFHFRN FHFVal1
@381
DO ~SetGlobal("FHFVal1","GLOBAL",1)~
== BVALYGA @382
== BFHFRN @383
== BVALYGA @384
== BFHFRN @385
== BVALYGA @386
== BFHFRN @387
EXIT

CHAIN
IF ~CombatCounter(0)
!Detect([ENEMY])
InParty(Myself)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty("Valygar")
See("Valygar")
!StateCheck("Valygar",CD_STATE_NOTVALID)
Global("FHFVal2","GLOBAL",0)~ THEN BFHFRN FHFVal2
@388
DO ~SetGlobal("FHFVal2","GLOBAL",1)~
== BVALYGA @389
== BFHFRN @390
== BVALYGA @391
== BFHFRN @392
== BVALYGA @393
== BFHFRN @394
== BVALYGA @395
== BFHFRN @396
== BVALYGA @397
== BFHFRN @398
EXIT

CHAIN
IF ~CombatCounter(0)
!Detect([ENEMY])
InParty(Myself)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty("Valygar")
See("Valygar")
!StateCheck("Valygar",CD_STATE_NOTVALID)
Global("FHFVal3","GLOBAL",0)~ THEN BFHFRN FHFVal3
@399
DO ~SetGlobal("FHFVal3","GLOBAL",1)~
== BVALYGA @400
== BFHFRN @401
== BVALYGA @402
== BFHFRN @403
== BVALYGA @404
== BFHFRN @405
= @406
== BVALYGA @407
EXIT

//Viconia

CHAIN
IF ~CombatCounter(0)
!Detect([ENEMY])
InParty(Myself)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty("FHFRN")
See("FHFRN")
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFVic1","GLOBAL",0)~ THEN BVICONI FHFVic1
@408
DO ~SetGlobal("FHFVic1","GLOBAL",1)~
== BFHFRN @409
== BVICONI @410
EXIT

CHAIN
IF ~CombatCounter(0)
!Detect([ENEMY])
InParty(Myself)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty("FHFRN")
See("FHFRN")
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFVic2","GLOBAL",0)~ THEN BVICONI FHFVic2
@411
DO ~SetGlobal("FHFVic2","GLOBAL",1)~
== BFHFRN @412
== BVICONI @413
== BFHFRN @414
== BVICONI @415
== BFHFRN @416
= @417
EXIT

CHAIN
IF ~CombatCounter(0)
!Detect([ENEMY])
InParty(Myself)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty("FHFRN")
See("FHFRN")
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFVic3","GLOBAL",0)
AreaType(OUTDOOR)
GlobalGT("Chapter","GLOBAL",4)~ THEN BVICONI FHFVic3
@418
DO ~SetGlobal("FHFVic3","GLOBAL",1)~
== BFHFRN @419
= @420
= @421
== BVICONI @422
== BFHFRN @423
== BVICONI @424
EXIT

//Yoshimo

CHAIN
IF ~CombatCounter(0)
!Detect([ENEMY])
InParty(Myself)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty("FHFRN")
See("FHFRN")
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFYosh1","GLOBAL",0)~ THEN BYOSHIM FHFYosh1
@425
DO ~SetGlobal("FHFYosh1","GLOBAL",1)~
== BFHFRN @426
== BYOSHIM @427
== BFHFRN @428
== BYOSHIM @429
EXIT

CHAIN
IF ~CombatCounter(0)
!Detect([ENEMY])
InParty(Myself)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty("Yoshimo")
See("Yoshimo")
!StateCheck("Yoshimo",CD_STATE_NOTVALID)
Global("FHFYoshi2","GLOBAL",0)
PartyRested()~ THEN BFHFRN FHFYosh2
@430
DO ~SetGlobal("FHFYoshi2","GLOBAL",1)~
== BYOSHIM @431
== BFHFRN @432
== BYOSHIM @433
== BFHFRN @434
= @435
== BYOSHIM @436
== BFHFRN @437
== BYOSHIM @438
EXIT
