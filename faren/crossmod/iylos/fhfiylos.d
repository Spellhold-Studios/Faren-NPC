CHAIN
IF ~InParty("FHFRN")
See("FHFRN")
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFIylos","GLOBAL",0)~ THEN BLK#IYL FHFIylos
@0
DO ~SetGlobal("FHFIylos","GLOBAL",1)~
== BFHF25 @1
== BFHF25 IF ~Global("FHFarenRomanceActive","GLOBAL",2)~ THEN @2
== BLK#IYL @3
== BFHF25 @4
== BLK#IYL @5
== BFHF25 IF ~Global("FHFarenRomanceActive","GLOBAL",2)~ THEN @6
== BLK#IYL IF ~Global("FHFarenRomanceActive","GLOBAL",2)~ THEN @7
== BFHF25 IF ~Global("FHFarenRomanceActive","GLOBAL",2)~ THEN @8
== BLK#IYL IF ~Global("FHFarenRomanceActive","GLOBAL",2)~ THEN @9
== BFHF25 IF ~Global("FHFarenRomanceActive","GLOBAL",2)~ THEN @10
== BFHF25 IF ~!Global("FHFarenRomanceActive","GLOBAL",2)~ THEN @11
= @12
== BLK#IYL IF ~!Global("FHFarenRomanceActive","GLOBAL",2)~ THEN @13
== BFHF25 IF ~!Global("FHFarenRomanceActive","GLOBAL",2)~ THEN @14
EXIT