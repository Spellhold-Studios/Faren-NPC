//Adrian ToB

CHAIN IF ~InParty("rh#Adrian")
See("rh#Adrian")
!StateCheck("FHFRN",CD_STATE_NOTVALID)
!StateCheck("rh#Adrian",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("G#XB.AdrianFarenBanterToB","GLOBAL",0)~ THEN BFHF25 FHADR25
~I'd say it's got an oaky flavour to it. Some kind of tree, anyway.~
DO ~SetGlobal("G#XB.AdrianFarenBanterToB","GLOBAL",0)~
== BRH#AD25 ~Some kind of tree, hmmm? Let me try.~
== BFHF25 ~Make sure you sniff before you sip!~
== BRH#AD25 ~I would say chestnut, myself, but you did almost sound like you knew what you were talking about.~
= ~Where did you learn about wine-tasting? Don't tell me Trademeet. Those merchants wouldn't know quality if it hit them in the face.~
== BFHF25 ~Maybe I've just got a talent. You never know...~
= ~Oh, don't look at me like that. There was a guy in Athkatla I was seeing for a while. He basically knew everything about wines and spirits.~
== BRH#AD25 ~Smuggling?~
== BFHF25 ~A bit of this, a bit of that.~
== BRH#AD25 ~Ah, your stories are always so delightfully squalid.~
EXIT