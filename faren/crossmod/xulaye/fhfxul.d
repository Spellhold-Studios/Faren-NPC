CHAIN
IF ~InParty("FHFRN")
See("FHFRN")
!StateCheck("FHFRN",CD_STATE_NOTVALID)
Global("FHFXul1","GLOBAL",0)
Global("LK#XulKnows","GLOBAL",0)~ THEN BLK#XUL FHFXul1
@0
DO ~SetGlobal("FHFXul1","GLOBAL",1)~
== BFHFRN @1
== BLK#XUL @2
EXIT

CHAIN
IF ~InParty("Xulaye")
See("Xulaye")
!StateCheck("Xulaye",CD_STATE_NOTVALID)
Global("FHFXul2","GLOBAL",0)
Global("LK#XulKnows","GLOBAL",1)~ THEN BFHFRN FHFXul2
@3
DO ~SetGlobal("FHFXul2","GLOBAL",2)~
== BLK#XUL @4
== BFHFRN @5
== BLK#XUL @6
== BFHFRN @7
== BLK#XUL @8
= @9
== BFHFRN @10
EXIT
