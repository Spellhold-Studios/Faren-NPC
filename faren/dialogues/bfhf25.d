//Interparty banters alphabetically organised

BEGIN BFHF25

//Aerie

CHAIN IF ~CombatCounter(0)
!Detect([ENEMY])
InParty(Myself)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty("FHFRN")
See("FHFRN")
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFAerie25","GLOBAL",0)~ THEN BAERIE25 FHFAerie25
@0
DO ~SetGlobal("FHFAerie25","GLOBAL",1)~
== BFHF25   @1
== BAERIE25 @2
=           @3
== BFHF25   @4
== BAERIE25 @5
== BFHF25   @6
== BAERIE25 @7
== BFHF25   @8
== BAERIE25 @9
== BFHF25   @10
== BAERIE25 @11
== BFHF25   @12
== BAERIE25 @13
EXIT

//Anomen

CHAIN IF ~CombatCounter(0)
!Detect([ENEMY])
InParty(Myself)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty("ANOMEN")
See("ANOMEN")
!StateCheck("ANOMEN",CD_STATE_NOTVALID)
Global("FHFNiceAno25","GLOBAL",0)
OR(2)
Alignment("ANOMEN",LAWFUL_NEUTRAL)
Alignment("ANOMEN",LAWFUL_GOOD)~ THEN BFHF25 FHFNiceAno25
@14
DO ~SetGlobal("FHFNiceAno25","GLOBAL",1)~
== BANOME25 @15
== BFHF25   @16
== BANOME25 @17

== BFHF25 IF ~Global("FHFarenRomanceActive","GLOBAL",2)~ THEN @18
= @19
== BANOME25 IF ~Global("FHFarenRomanceActive","GLOBAL",2)~ THEN @20

== BFHF25 IF ~!Global("FHFarenRomanceActive","GLOBAL",2)~ THEN @18
= @21
== BANOME25 IF ~!Global("FHFarenRomanceActive","GLOBAL",2)~ THEN @22

== BFHF25   @23
== BANOME25 @24
== BFHF25   @25
EXIT

CHAIN IF ~CombatCounter(0)
!Detect([ENEMY])
InParty(Myself)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty("ANOMEN")
See("ANOMEN")
!StateCheck("ANOMEN",CD_STATE_NOTVALID)
Global("FHFAno25","GLOBAL",0)
Alignment("ANOMEN",CHAOTIC_NEUTRAL)~ THEN BFHF25 FHFAnoCN25
@26
DO ~SetGlobal("FHFAno25","GLOBAL",1)~
== BANOME25 @27
== BFHF25   @28
== BANOME25 @29
== BFHF25   @10

== BANOME25 IF ~Global("FHFarenRomanceActive","GLOBAL",2)~ THEN @30
== BFHF25 IF ~Global("FHFarenRomanceActive","GLOBAL",2)~ THEN @31

== BANOME25 IF ~!Global("FHFarenRomanceActive","GLOBAL",2)~ THEN @32
== BFHF25 IF ~!Global("FHFarenRomanceActive","GLOBAL",2)~ THEN @33

== BANOME25 IF ~Global("FHFarenRomanceActive","GLOBAL",2)~ THEN @34
EXIT

//Cernd

CHAIN IF ~CombatCounter(0)
!Detect([ENEMY])
InParty(Myself)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty("CERND")
See("CERND")
!StateCheck("CERND",CD_STATE_NOTVALID)
Global("FHFCernd25","GLOBAL",0)~ THEN BFHF25 FHFCernd25
@35
DO ~ SetGlobal("FHFCernd25","GLOBAL",1)~
== BCERND25
@36

== BFHF25 IF ~AreaType(FOREST)~ THEN
@37
== BCERND25 IF ~AreaType(FOREST)~ THEN
@38

== BFHF25 IF ~AreaType(CITY)~ THEN
@39
== BCERND25 IF ~AreaType(CITY)~ THEN
@40

== BFHF25   @41
== BCERND25 @42
== BFHF25   @43
=           @44
== BCERND25 @45
== BFHF25   @46
=           @47
== BCERND25 @48
== BFHF25   @49
== BCERND25 @50
== BFHF25   @51
EXIT

//Edwin

CHAIN IF ~CombatCounter(0)
!Detect([ENEMY])
InParty(Myself)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty("EDWIN")
See("EDWIN")
!StateCheck("EDWIN",CD_STATE_NOTVALID)
Global("FHFEd25","GLOBAL",0)~ THEN BFHF25 FHFEd25
@52
DO ~SetGlobal("FHFEd25","GLOBAL",1)~
== BEDWIN25 @53
== BFHF25   @54
== BEDWIN25 @55
== BFHF25   @56
== BEDWIN25 @57
== BFHF25   @58
== BEDWIN25 @59
== BFHF25   @60
== BEDWIN25 @61
== BFHF25   @62
EXIT

//Haer'dalis

CHAIN IF ~CombatCounter(0)
!Detect([ENEMY])
InParty(Myself)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty("FHFRN")
See("FHFRN")
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFHaer25","GLOBAL",0)~ THEN BHAERD25 FHFHaer25
@63
DO ~SetGlobal("FHFHaer25","GLOBAL",1)~
== BFHF25 @64
== BHAERD25 @65
== BFHF25 @66
= @67
== BHAERD25 @68
== BFHF25 @69
== BHAERD25 @70
== BFHF25 @71
== BHAERD25 @72
EXIT

//Imoen

CHAIN IF ~CombatCounter(0)
!Detect([ENEMY])
InParty(Myself)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty("FHFRN")
See("FHFRN")
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFIm25","GLOBAL",0)~ THEN BIMOEN25 FHFIm25
@73
DO ~SetGlobal("FHFIm25","GLOBAL",1)~
= @74
= @75
= @76
= @77
= @78
== BFHF25   @79
== BIMOEN25 @80
== BFHF25   @81
== BIMOEN25 @82
EXIT

//Jaheira

CHAIN IF ~CombatCounter(0)
!Detect([ENEMY])
InParty(Myself)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty("JAHEIRA")
See("Jaheira")
!StateCheck("JAHEIRA",CD_STATE_NOTVALID)
Global("FHFJah25","GLOBAL",0)~ THEN BFHF25 FHFJah25
@83
DO ~SetGlobal("FHFJah25","GLOBAL",1)~
== BJAHEI25 @84
== BFHF25   @85
== BJAHEI25 @86
== BFHF25   @87
=           @88
== BJAHEI25 @89
== BFHF25   @90
== BJAHEI25 @91
== BFHF25   @92
EXIT

//Jan

CHAIN
IF ~CombatCounter(0)
!Detect([ENEMY])
InParty(Myself)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty("JAN")
See("JAN")
!StateCheck("JAN",CD_STATE_NOTVALID)
Global("FHFJan25","GLOBAL",0)~ THEN BFHF25 FHFJan25
@93
DO ~SetGlobal("FHFJan25","GLOBAL",1)~
== BJAN25 @94
== BFHF25 @95
== BJAN25 @96
== BFHF25 @97
== BJAN25 @98
== BFHF25 @99
== BJAN25 @100
== BFHF25 @101
== BJAN25 @102
== BFHF25 @103
== BJAN25 @104
== BFHF25 @105
== BJAN25 @106
== BFHF25 @107
== BJAN25 @108
EXIT

//Keldorn

CHAIN IF ~CombatCounter(0)
!Detect([ENEMY])
InParty(Myself)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty("Keldorn")
See("Keldorn")
!StateCheck("Keldorn",CD_STATE_NOTVALID)
Global("FHFKel25","GLOBAL",0)~ THEN BFHF25 FHFKel25
@109
DO ~SetGlobal("FHFKel25","GLOBAL",1)~
== BKELDO25 @110
== BFHF25   @111
== BKELDO25 @112
== BJAN25 IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ @113
== BFHF25   @114
== BKELDO25 @115
== BFHF25   @116
EXIT

//Korgan

CHAIN
IF ~CombatCounter(0)
!Detect([ENEMY])
InParty(Myself)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty("FHFRN")
See("FHFRN")
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFKorg25","GLOBAL",0)~ THEN BKORGA25 FHFKorg25
@117
DO ~SetGlobal("FHFKorg25","GLOBAL",1)~
== BFHF25   @118
== BKORGA25 @119
== BFHF25   @120
=           @121
== BKORGA25 @122
== BFHF25   @123
== BKORGA25 @124
== BFHF25   @125
== BKORGA25 @126
== BFHF25   @127
EXIT

//Mazzy

CHAIN IF ~CombatCounter(0)
!Detect([ENEMY])
InParty(Myself)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty("Mazzy")
See("Mazzy")
!StateCheck("Mazzy",CD_STATE_NOTVALID)
Global("FHFMaz25","GLOBAL",0)~ THEN BFHF25 FHFMaz25
@128
DO ~SetGlobal("FHFMaz25","GLOBAL",1)~
== BMAZZY25 @129
== BFHF25   @130
== BMAZZY25 @131
== BFHF25   @132
== BMAZZY25 @133
== BFHF25   @134
EXIT

//Minsc

CHAIN IF ~CombatCounter(0)
!Detect([ENEMY])
InParty(Myself)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty("FHFRN")
See("FHFRN")
!StateCheck("FHFRN",CD_STATE_NOTVALID)
PartyHasItem("FHFFEL")
Global("FHFMin25","GLOBAL",0)~ THEN BMINSC25 FHFMinsc25a
@135
DO ~SetGlobal("FHFMin25","GLOBAL",1)~
== BFHF25   @136
== BMINSC25 @137
== BFHF25   @138
== BMINSC25 @139
=           @140
== BFHF25   @141
== BMINSC25 @142
== BFHF25   @143
EXIT

CHAIN IF ~CombatCounter(0)
!Detect([ENEMY])
InParty(Myself)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty("MINSC")
See("MINSC")
!StateCheck("MINSC",CD_STATE_NOTVALID)
!PartyHasItem("FHFFEL")
Global("FHFMin25","GLOBAL",0)~ THEN BFHF25 FHFMinsc25b
@144
DO ~SetGlobal("FHFMin25","GLOBAL",1)~
== BMINSC25 @145
== BFHF25   @146
== BMINSC25 @147
== BFHF25   @148
== BMINSC25 @149
== BFHF25   @150
== BMINSC25 @151
== BFHF25   @152
EXIT

//Nalia

CHAIN
IF ~CombatCounter(0)
!Detect([ENEMY])
InParty(Myself)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty("Nalia")
See("Nalia")
!StateCheck("Nalia",CD_STATE_NOTVALID)
Global("FHFNal25","GLOBAL",0)~ THEN BFHF25 FHFNalia25
@153
= @154
DO ~SetGlobal("FHFNal25","GLOBAL",1)~
== BNALIA25 @155
== BFHF25   @156
== BNALIA25 @157
== BFHF25   @158
=           @159
== BNALIA25 @160
== BFHF25   @161
== BNALIA25 @162
=           @163
== BFHF25   @164
== BNALIA25 @165
EXIT

//Sarevok

CHAIN IF ~CombatCounter(0)
!Detect([ENEMY])
InParty(Myself)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty("FHFRN")
See("FHFRN")
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFSarev","GLOBAL",0)~ THEN BSAREV25 FHFSarev
@166
DO ~SetGlobal("FHFSarev","GLOBAL",1)~
== BFHF25 @167
= @168
== BSAREV25 @169
== BFHF25 @170
== BSAREV25 @171
== BFHF25 @172
EXIT

//Valygar

CHAIN IF ~CombatCounter(0)
!Detect([ENEMY])
InParty(Myself)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty("FHFRN")
See("FHFRN")
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFVal25","GLOBAL",0)~ THEN BVALYG25 FHFVal25
@173
== BFHF25   @174
== BVALYG25 @175
== BFHF25   @176
== BVALYG25 @177
== BFHF25   @178
== BVALYG25 @179
== BFHF25   @180
== BVALYG25 @181
== BFHF25   @182
EXIT

//Viconia

CHAIN IF ~CombatCounter(0)
!Detect([ENEMY])
InParty(Myself)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty("Viconia")
See("Viconia")
!StateCheck("Viconia",CD_STATE_NOTVALID)
Global("FHFVic25","GLOBAL",0)~ THEN BFHF25 FHFVic25
@183
DO ~SetGlobal("FHFVic25","GLOBAL",1)~
== BVICON25 @184
== BFHF25 @185
== BVICON25 @186
== BFHF25 @187
== BVICON25 @188
== BFHF25 @189
== BVICON25 @190
EXIT
