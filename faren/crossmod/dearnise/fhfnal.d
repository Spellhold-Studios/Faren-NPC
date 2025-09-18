//Conflict 1

CHAIN IF WEIGHT #-1 ~Global("FHFNalConflict1","GLOBAL",1)~ THEN NALIAJ FHFConf1
@0
DO ~SetGlobal("FHFNalConflict1","GLOBAL",2)~
== FHFRNJ @1
== NALIAJ @2
== FHFRNJ @3
== NALIAJ @4
EXIT

//Conflict 2

CHAIN IF WEIGHT #-1 ~Global("FHFNalConflict2","GLOBAL",1)~ THEN NALIAJ FHFConf2
@5
DO ~SetGlobal("FHFNalConflict2","GLOBAL",2)~
== FHFRNJ @6
== NALIAJ @7
== FHFRNJ @8
== NALIAJ @9
== FHFRNJ @10
== NALIAJ @11
= @12
END
++ @13 EXTERN FHFRNJ FHFConf2_farfriend
++ @14 EXTERN FHFRNJ FHFConf2_farfriend
++ @15 + FHFConf2_nalfriend
++ @16 + FHFConf2_nalfriend

CHAIN FHFRNJ FHFConf2_farfriend
@17
== NALIAJ @18
EXIT

CHAIN NALIAJ FHFConf2_nalfriend
@19
== FHFRNJ @20
EXIT
