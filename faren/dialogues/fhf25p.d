BEGIN FHF25P

IF ~!InParty("FHFRN") Global("FHFKicked25","GLOBAL",0) !Global("FHFarenRomanceActive","GLOBAL",2)~ FHFKicked25
SAY @0
++ @1 DO ~JoinParty()~ EXIT
+ ~AreaCheck("AR4500")~ + @2 DO ~SetGlobal("FHFKicked25","GLOBAL",1)~ + FHFKicked25_pocket
+ ~!AreaCheck("AR4500") !AreaCheck("AR4000") !AreaCheck("AR6200")~ + @2 DO ~SetGlobal("FHFKicked25","GLOBAL",1)~ + FHFReturn25_wait
+ ~!AreaCheck("AR4500") !AreaCheck("AR4000") !AreaCheck("AR6200")~ + @3 DO ~SetGlobal("FHFKicked25","GLOBAL",1)~ + FHFKicked25_sendpocket
END

IF ~!InParty("FHFRN") Global("FHFKicked25","GLOBAL",0) Global("FHFarenRomanceActive","GLOBAL",2)~ FHFKickedRom25
SAY @4
++ @1 DO ~JoinParty()~ EXIT
+ ~AreaCheck("AR4500")~ + @2 DO ~SetGlobal("FHFKicked25","GLOBAL",1)~ + FHFKicked25_pocket
+ ~!AreaCheck("AR4500") !AreaCheck("AR4000") !AreaCheck("AR6200")~ + @2 DO ~SetGlobal("FHFKicked25","GLOBAL",1)~ + FHFKicked25_wait
+ ~!AreaCheck("AR4500") !AreaCheck("AR4000") !AreaCheck("AR6200")~ + @3 DO ~SetGlobal("FHFKicked25","GLOBAL",1)~ + FHFKicked25_sendpocket
END

IF ~~ FHFKicked25_pocket
SAY @5
IF ~~ DO ~MoveToPointNoInterrupt([1690.1664]) Face(0)~ EXIT
END

IF ~~ FHFKicked25_wait
SAY @5
END

IF ~~ FHFKicked25_sendpocket
SAY @6
IF ~~ DO ~CreateVisualEffectObject("spdimndr",Myself) Wait(2) MoveBetweenAreas("AR4500",[1690.1664],0)~ EXIT
END

IF ~Global("FHFKicked25","GLOBAL",1) Global("FHFarenRomanceActive","GLOBAL",2)~ FHFReturn25Rom
SAY @7
++ @8 + FHFKicked25_wait
++ @9 DO ~JoinParty()~ EXIT
END

IF ~Global("FHFKicked25","GLOBAL",1) !Global("FHFarenRomanceActive","GLOBAL",2)~ FHFReturn25
SAY @10
++ @8 + FHFReturn25_wait
++ @11 DO ~JoinParty()~ EXIT
END

IF ~~ FHFReturn25_wait
SAY @12
IF ~~ EXIT
END
