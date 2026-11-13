BEGIN ~KKNav25B~

CHAIN 
IF ~ 
    InParty("Navarra") 
    InParty(Myself) 
    !AreaCheck("AR5500") 
    !AreaCheck("AR5000") 
    LOCALS("KKNavMinscToB","LOCALS",0) 
    !StateCheck("KKNavar",CD_STATE_NOTVALID) 
    !StateCheck(Myself,CD_STATE_NOTVALID) 
    See("KKNavar") 
    CombatCounter(0) 
~ THEN ~BMINSC25~ NavMinscToB
~好剑，纳瓦拉朋友。~  
DO ~SetGlobal("KKNavMinscToB","LOCALS",1)~ 
== ~KKNav25B~ ~确实，谢谢你。不过我们的敌人可不这么想。~ 
== BMINSC25 ~Boo says, the bigger the sword, the bigger the slap on evil's backside.~ 
== ~KKNav25B~ ~这正是重点。~ 
== BMINSC25 ~Right you are! Evil will get a righteous butt-kicking!~ 
EXIT

CHAIN 
IF ~ 
    InParty("Aerie") 
    InParty(Myself) 
    LOCALS("KKNavAerieToB","LOCALS",0) 
    !StateCheck("Aerie",CD_STATE_NOTVALID) 
    !StateCheck(Myself,CD_STATE_NOTVALID) 
    See("Aerie") 
    CombatCounter(0) 
~ THEN ~KKNav25B~ KKNavAerieToB
~你身上有些不一样了。~ 
DO ~SetGlobal("KKNavAerieToB","LOCALS",1)~ 
== BAERIE25 ~What do you mean?~ 
== ~KKNav25B~ ~你现在身上有股力量。你成长了许多。~ 
== BAERIE25 ~I suppose I have. Is it that obvious?~ 
== ~KKNav25B~ ~确实如此。~ 
EXIT 

CHAIN 
IF ~ 
    InParty("Navarra") 
    InParty(Myself) 
    LOCALS("KKNavAerieToB1","LOCALS",0)
     LOCALS("KKEDRomanceActive","LOCALS",2) 
    !StateCheck("KKNavar",CD_STATE_NOTVALID) 
    !StateCheck(Myself,CD_STATE_NOTVALID) 
    See("KKNavar") 
    CombatCounter(0) 
~ THEN ~BAERIE25~ KKNavAerieToB1
~你和埃德温在一起了？~ 
DO ~SetGlobal("KKNavAerieToB1","LOCALS",1)~ 
== ~KKNav25B~ ~是的，怎么了？~ 
== BAERIE25 ~I have never liked him, he was always mean.~ 
== ~KKNav25B~ ~起初是。但他正努力不再如此。~ 
== BAERIE25 ~I hope you are right.~
EXIT 

CHAIN 

IF ~
InParty("KKNavar") 
    InParty(Myself) 
LOCALS("KKNavAnomenToB","LOCALS",1)
!StateCheck("KKNavar",CD_STATE_NOTVALID) 
   !StateCheck(Myself,CD_STATE_NOTVALID) 
    See("KKNavar") 
    CombatCounter(0)
~ THEN ~ANOME25J~ KKNavAnomenToB
~我看你对男人的态度变了。~ 
DO ~SetGlobal("KKNavAnomenToB","LOCALS",2)~ 
== ~KKNav25B~ ~不是所有男人……~ 
== BANOME25 ~And what, pray tell, does that mean?~ 
== ~KKNav25B~ ~恶棍、罪犯……那些欺凌弱者的渣滓。他们不配得到尊重。~ 
EXIT 

IF ~
InParty("KKNavar") 
    InParty(Myself) 
LOCALS("KKNavAnomenToB2","LOCALS",1)
 LOCALS("KKEDRomanceActive","GLOBAL",2) 
!StateCheck("KKNavar",CD_STATE_NOTVALID) 
   !StateCheck(Myself,CD_STATE_NOTVALID) 
    See("KKNavar") 
    CombatCounter(0)
~ THEN ~ANOME25J~ KKNavAnomenToB2
~恕我必须与你谈谈，女士。你与那个法师的往来，风险太大。~
DO ~SetGlobal("KKNavAnomenToB2","LOCALS",2)~ 
== ~KKNav25B~ ~我猜你说的是埃德温，那就不是什么随便的往来。我爱他。~
== BANOME25 ~Have you taken leave of your senses? That evil villain is incapable of love.~ 
== ~KKNav25B~ ~这方面你错了，阿诺门。我毫不怀疑他的所作所为会证明你错了。~
== ~KKNav25B~ ~而且，你无权决定我爱谁。除非……你是在嫉妒？~
== BANOME25 ~Most assuredly not!~
EXIT 


CHAIN 
IF ~ 
    InParty("KKNavar") 
    InParty(Myself) 
    LOCALS("KKNavHaerDalisToB","LOCALS",0) 
    !StateCheck("KKNavar",CD_STATE_NOTVALID) 
    !StateCheck(Myself,CD_STATE_NOTVALID) 
    See("HaerDalis") 
    CombatCounter(0) 
~ THEN ~BHAERD25~ KKNavHaerDalisToB 
~我美丽的蜂鸟，我看你已经取回了那把失落的剑。~
DO ~SetGlobal("KKNavHaerDalisToB","LOCALS",1)~ 
== ~KKNav25B~ ~确实，但代价很高。~ 
EXIT 

CHAIN 
IF ~ 
    InParty("Keldorn") 
    InParty(Myself) 
    LOCALS("KKNavKeldornToB","LOCALS",0) 
    !StateCheck("Keldorn",CD_STATE_NOTVALID) 
    !StateCheck(Myself,CD_STATE_NOTVALID) 
    See("Keldorn") 
    CombatCounter(0) 
~ THEN ~KKNav25B~ KKNavKeldornToB 
~你是个出色的战士，凯尔登。~
DO ~SetGlobal("KKNavKeldornToB","LOCALS",1)~ 
== BKeldo25 ~My thanks, I have been training since childhood.~ 
== BKeldo25 ~There is a barbaric savagery in you, but you only kill the deserving. 'Tis unexpected.~
== ~KKNav25B~ ~这为什么会让你惊讶？~
== BKeldo25 ~I passed judgement upon you because of your god, 'twas wrong of me to do so.~
EXIT 

CHAIN 
IF ~ 
    InParty("Jaheira") 
    InParty(Myself) 
    LOCALS("KKNavJahToB","LOCALS",0) 
    !StateCheck("Jaheira",CD_STATE_NOTVALID) 
    !StateCheck(Myself,CD_STATE_NOTVALID) 
    See("Jaheira") 
    CombatCounter(0) 
~ THEN ~KKNav25B~ KKNavJahToB
~Ouch!~
DO ~SetGlobal("KKNavJahToB","LOCALS",1)~ 
== BJahei25 ~Let me see, I have bandages.~ 
== ~KKNav25B~ ~我会没事的，只是擦伤。~
== BJahei25 ~Until you suffer from an infection. Just be still.~
EXIT 