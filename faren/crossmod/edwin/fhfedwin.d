//Edwin Romance

CHAIN IF WEIGHT #-1 ~Global("FHFEdwinConflict1","GLOBAL",1)~ THEN FHFRNJ FHFLaufEdwin
@0
DO ~SetGlobal("FHFEdwinConflict1","GLOBAL",2)~
== EDWINJ @1
== FHFRNJ @2
== EDWINJ @3
END
++ @4 DO ~SetGlobal("FHFarenRomanceActive","GLOBAL",3) SetGlobal("FHFarenFriend","GLOBAL",1) SetGlobal("FHFEdwinConflict1","GLOBAL",2)~ + FHFLaufEdwin_farfriend
++ @5 DO ~SetGlobal("FHFarenRomanceActive","GLOBAL",3) SetGlobal("FHFEdwinConflict1","GLOBAL",2)~ + FHFLaufEdwin_farfriend
++ @6 DO ~SetGlobal("EdwinRomanceActive","GLOBAL",3) SetGlobal("FHFEdwinConflict1","GLOBAL",2)~ EXTERN EDWINJ FHFLaufEdwin_edfriend

CHAIN FHFRNJ FHFLaufEdwin_farfriend
@7
EXIT

CHAIN EDWINJ FHFLaufEdwin_edfriend
@8
EXIT
