//Banters

CHAIN
IF ~InParty("FWKeto")
See("FWKeto")
!StateCheck("FWKeto",CD_STATE_NOTVALID)
Global("FHFKeto1","GLOBAL",0)
AreaType(DUNGEON)~ THEN BFHFRN FHFKeto1
@0
DO ~SetGlobal("FHFKeto1","GLOBAL",1)~
== BFWKETO @1
== BFHFRN @2
== BFWKETO @3
== BFHFRN @4
== BFWKETO @5
== BFHFRN @6
== BFWKETO @7
== BFHFRN @8
= @9
== BFWKETO @10
EXIT

CHAIN
IF ~InParty("FHFRN")
See("FHFRN")
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFKeto2","GLOBAL",0)
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
AreaCheck("AR1602")~ THEN BFWKETO FHFKeto2
@11
DO ~SetGlobal("FHFKeto2","GLOBAL",1)~
== BFHFRN @12
== BFWKETO @13
== BFHFRN @14
== BFWKETO @15
EXIT

CHAIN
IF ~InParty("FHFRN")
See("FHFRN")
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFKeto3","GLOBAL",0)~ THEN BFWKETO FHFKeto3
@16
DO ~SetGlobal("FHFKeto3","GLOBAL",1)~
== BFHFRN @17
== BFWKETO @18
== BFHFRN @19
== BFWKETO @20
== BFHFRN @21
== BFWKETO @22
== BFHFRN @23
== BFWKETO @24
== BFHFRN @25
EXIT
