CHAIN IF WEIGHT #-1 ~Global("KKMissingWarriors","GLOBAL",2) Global("KKWarriors","LOCALS",1)~ THEN ~KKShael~ Barbs03
~纳瓦拉？你在这里做什么？~ DO ~SetGlobal("KKMissingWarriors","GLOBAL",3) SetGlobal("KKWarriors","LOCALS",2)~ 
== ~KKNavJ~ ~特蕾莎呢，你的任务为什么还没完成？~
== ~KKShael~ ~她在休息，我们整晚都在找阿玛娜和其他人。~
== ~KKNavJ~ ~你确定她就在安姆？~
== ~KKShael~ ~两天前有人在码头看见德莉娅。她们就在这里的某处，找到她们只是时间问题。~
== ~KKNavJ~ ~如果你找到她们，没有我在就别靠近。我会尽量让人知道我的行踪，你打听一下应该不难找到我。~
== ~KKShael~ ~我会告诉特蕾莎，小心点。阿玛娜见到你绝不会高兴。~ DO ~EscapeAreaMove("AR2401",253,751,14)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("KKMissingWarriors","GLOBAL",4) Global("KKNAWarriors","LOCALS",1)~ THEN ~KKShael~ Barbs04
~Navarra! I am so glad I was able to find you. Deliah and I found out where Amana and the others are hiding.~ DO ~SetGlobal("KKMissingWarriors","GLOBAL",5) SetGlobal("KKNAWarriors","LOCALS",2)~ 
= ~那地方叫小齿隘口。~ 
== ~KKNavJ~ ~他们知道你找到她们了吗？~
== ~KKShael~ ~幸好不知道。昨天有支商队经过那里，我碰巧听见他们说起路过三个女人。~
= ~他们说的那些恶心话足以让我确信就是她们。~
== ~KKNavJ~ ~我会尽快赶过去。谢谢你，莎伊拉，来告诉我。~
== ~KKShael~ ~德莉娅和我也去，在你到之前先藏起来。~ DO ~EscapeAreaMove("AR1700",3330,241,3)~ EXIT