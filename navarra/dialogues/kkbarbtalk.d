APPEND ~KKNavJ~

IF ~Global("KKBarbTalk","LOCALS",1)~ THEN KKBT1
SAY ~那确实是个好消息，我还怕她们又离开了这一带。~
++ ~那个人是谁？~ DO ~SetGlobal("KKBarbTalk","LOCALS",2)~ + KKBT1a
++ ~我看现在正好可以解释一下你的任务。~ DO ~SetGlobal("KKBarbTalk","LOCALS",2)~ + KKBT1i
+ ~Gender(Player1,MALE)~ + ~她挺可爱的，你的朋友？~ DO ~SetGlobal("KKBarbTalk","LOCALS",2)~ + KKBT1j
++ ~你怎么能确定她们没有？两天时间足够她们搭上船远远离开了。~ DO ~SetGlobal("KKBarbTalk","LOCALS",2)~ + KKBT1k
++ ~我为你高兴，走吧。~ DO ~SetGlobal("KKBarbTalk","LOCALS",2)~ EXIT
END

IF ~~ KKBT1a
SAY ~那是莎伊拉。~ 
IF ~~ THEN + KKBT1i
END

IF ~~ KKBT1i
SAY ~莎伊拉和特蕾莎被派去寻找我们三个战士，他们偷了族长的一样东西，然后逃离了纳尔费尔。~
= ~四个十日过去仍无消息，族长便派我来搜寻他们。~
++ ~既然她已经派人在找，为什么还要派你？她应该明白，要找到不想被找到的人是需要时间的。~ + KKBT1b
++ ~她是怕他们出了什么事，还是她同样不信任他们？~ + KKBT1b
++ ~他们偷了什么？~ + KKBT1e
++ ~我不确定那是不是明智的决定。以一敌五，胜算对你不利。~ + KKBT1c
++ ~那就祝你好运了。~ EXIT
END

IF ~~ KKBT1b
SAY ~她担心他们可能出了事。那些人有可能发现被跟踪，然后把她们杀了。~
= ~我感觉事情不止如此，但她拒绝谈这件事。~
++ ~也许因为另一种可能是，她派去的两个人已经和那三个人联手了？~  + KKBT1c
++ ~他们偷了什么？~ + KKBT1e
++ ~她让你独自前来，也许已经把你置于险境。~ + KKBT1h
++ ~若真是如此，她凭什么认为他们不会杀你？~ + KKBT1h
++ ~这倒会很有意思。~ EXIT
END

IF ~~ KKBT1c
SAY ~我不信。阿玛娜已经背叛了部落，她被塞瑞克腐化了。跟着她的那两个人无疑也一样，但莎伊拉和特蕾莎不会做出这种事。~
= ~她们忠于我们的部落，也忠于坦帕斯。~
++ ~但愿你说得对，但要保持警惕。不管你要面对的是三个人还是五个人，我都答应帮你。~ + KKBT1d
++ ~他们偷了什么？~ + KKBT1e
++ ~有塞瑞克插手，什么都可能发生。为了你自己，我希望他们不是你的敌人。~ + KKBT1g
++ ~我们追上去吧。~ EXIT
END

IF ~~ KKBT1d
SAY ~我很感激。三个还是五个都一样，我只想完成任务。~
IF ~~ THEN + KKBT1e
END

IF ~~ KKBT1e
SAY ~阿玛娜偷了族长的剑。若是别人这么做，惩罚就是死。自己人做出这种事，简直不可想象。~
++ ~一把剑？这一切就为了一把剑？~ + KKBT1f
++ ~就算我能理解有人为一把剑去杀人，你也不会真以为她会心甘情愿回去吧？~ + KKBT1f
++ ~这把剑有什么特别之处，让你族长宁肯杀掉窃贼，也不干脆另铸一把？~ + KKBT1f
++ ~当我没问，我不想再听了。~ EXIT
END

IF ~~ KKBT1f
SAY ~乍看之下，它像北方部落常用的任何一把双手剑，但这一把附有魔法。它是在一场大战中由蛮族诸神锻造，并浸过阵亡勇者的血。~ 
= ~自那以后，它因蕴含的惊人力量而代代相传于历任族长之间。必须把它取回，哪怕为此要让阿玛娜和其他人送命。~
IF ~~ EXIT
END

IF ~~ KKBT1g
SAY ~但愿你说得对，要杀她们我会很难过。但若她们逼我动手，我会毫不犹豫，我的任务就是这么重要。~
IF ~~ THEN + KKBT1e
END

IF ~~ KKBT1h
SAY ~我不信族长会派我来送死。她知道必要时我会寻求援手，也信任我的判断。~ 
= ~我明白你的意思，我很可能正走进一个陷阱。不过这无所谓，我的任务太重要了。~
IF ~~ THEN + KKBT1e
END

IF ~~ KKBT1j
SAY ~那是莎伊拉，她对你的看法可不会一样。在她眼里，你只是个男人，若她需要，还是个现成的奴隶。~ 
IF ~~ THEN + KKBT1i
END

IF ~~ KKBT1k
SAY ~除了他们绝不会上船这一点，我什么都无法确定。我们没有人会坐船，从来不会。~
= ~我只能希望他们已经跑累了，被人找到。现在正好把详情告诉你，我就从莎伊拉说起。~
IF ~~ THEN + KKBT1i
END

IF ~Global("KKNWarriors","LOCALS",1)~ THEN KKW1
SAY ~如果我们能去莎伊拉提到的那处隘口，我会非常感激。~
++ ~当然，我们会尽快赶过去。~ DO ~SetGlobal("KKNWarriors","LOCALS",2)~ + KKW1a
++ ~等我们有时间再去，我现在顾不上这件事。~ DO ~SetGlobal("KKNWarriors","LOCALS",2)~ + KKW1b
+ ~Global("KKNavarRomanceActive","GLOBAL",2)~ + ~我改主意了，我不关心你的麻烦，也不会帮你。~ DO ~SetGlobal("KKNWarriors","LOCALS",2)~ + KKW1c
+ ~Global("KKNavarFriendActive","GLOBAL",1)~ + ~我改主意了，我不关心你的麻烦，也不会帮你。~ DO ~SetGlobal("KKNWarriors","LOCALS",2)~ + KKW1d
+ ~!Global("KKNavarFriendActive","GLOBAL",1) !Global("KKNavarRomanceActive","GLOBAL",2)~ + ~我改主意了，我不关心你的麻烦，也不会帮你。~ DO ~SetGlobal("KKNWarriors","LOCALS",2)~ + KKW1e
END

IF ~~ KKW1a
SAY ~谢谢你，<CHARNAME>。这堆麻烦能了结就好。~
IF ~~ EXIT
END

IF ~~ KKW1b
SAY ~我明白，这一定让你很难受。~
= ~但请尽量不要等太久，我不想让她们再跑掉。~
IF ~~ EXIT
END

IF ~~ KKW1c
SAY ~How could you do this to me? I cannot believe I was foolish enough to trust a man, much less give my heart to one!~ 
= ~You are a vile creature and I am glad to be rid of you!~
IF ~~ DO ~SetGlobal("KKNavarRomanceActive","GLOBAL",3) LeaveParty() EscapeArea()~ EXIT
END

IF ~~ KKW1d
SAY ~你怎么能这样对我？我以为我们是朋友，看来我错了。~
= ~我自己能了结这件事。~
IF ~~ DO ~SetGlobal("KKNavarFriendActive","GLOBAL",3) LeaveParty() EscapeArea()~ EXIT
END

IF ~~ KKW1e
SAY ~好吧，我不需要你帮忙。我自己能了结这件事。~
IF ~~ DO ~LeaveParty() EscapeArea()~ EXIT
END

IF ~Global("KKWarriors2","LOCALS",1)~ THEN KKW2
SAY ~我们还得去小齿隘口，<CHARNAME>。也许现在正合适？~
++ ~当然。抱歉，我把这事忘了。我们这就去。~ + KKW2a
+ ~Global("KKNavarRomanceActive","GLOBAL",2)~ + ~我改主意了，我不关心你的麻烦，也不会帮你。~ DO ~SetGlobal("KKWarriors2","LOCALS",2)~ + KKW2b
+ ~Global("KKNavarFriendActive","GLOBAL",1)~ + ~我改主意了，我不关心你的麻烦，也不会帮你。~ DO ~SetGlobal("KKWarriors2","LOCALS",2)~ + KKW2c
+ ~!Global("KKNavarFriendActive","GLOBAL",1) !Global("KKNavarRomanceActive","GLOBAL",2)~ + ~我改主意了，我不关心你的麻烦，也不会帮你。~ DO ~SetGlobal("KKWarriors2","LOCALS",2)~ + KKW2d
END

IF ~~ KKW2a
SAY ~谢谢你。我希望她们还在那里，这件事能尽快了结。~
IF ~~ EXIT
END

IF ~~ KKW2b
SAY ~How could you do this to me? I cannot believe I was foolish enough to trust a man, much less give my heart to one!~ 
= ~You are a vile creature and I am glad to be rid of you!~
IF ~~ DO ~SetGlobal("KKNavarRomanceActive","GLOBAL",3) LeaveParty() EscapeArea()~ EXIT
END

IF ~~ KKW2c
SAY ~你怎么能这样对我？我以为我们是朋友，看来我错了。~
= ~我自己能了结这件事。~
IF ~~ DO ~SetGlobal("KKNavarFriendActive","GLOBAL",3) LeaveParty() EscapeArea()~ EXIT
END

IF ~~ KKW2d
SAY ~好吧，我不需要你帮忙。我自己能了结这件事。~
IF ~~ DO ~LeaveParty() EscapeArea()~ EXIT
END

IF ~Global("KKWarriors3","LOCALS",1)~ THEN KKW3
SAY ~You lied to me <CHARNAME>! You should have told me you did not want to help me instead of misleading me.~
+ ~Global("KKNavarRomanceActive","GLOBAL",2)~ + ~抱歉，我忘了。等我们帮完这些人，可以再回去。~ DO ~SetGlobal("KKWarriors3","LOCALS",2)~ + KKW3a
+ ~Global("KKNavarRomanceActive","GLOBAL",2)~ + ~Excuse me for having more important things on my mind, like my soul!~ DO ~SetGlobal("KKWarriors3","LOCALS",2)~ + KKW3a
+ ~Global("KKNavarRomanceActive","GLOBAL",2)~ + ~你说得对，我该早点告诉你。我不想帮你，也不关心你的麻烦。~ DO ~SetGlobal("KKWarriors3","LOCALS",2)~ + KKW3b
+ ~Global("KKNavarFriendActive","GLOBAL",1)~ + ~抱歉，我忘了。等我们帮完这些人，可以再回去。~ DO ~SetGlobal("KKWarriors3","LOCALS",2)~ + KKW3c
+ ~Global("KKNavarFriendActive","GLOBAL",1)~ + ~Excuse me for having more important things on my mind, like my soul!~ DO ~SetGlobal("KKWarriors3","LOCALS",2)~ + KKW3c
+ ~Global("KKNavarFriendActive","GLOBAL",1)~ + ~你说得对，我该早点告诉你。我不想帮你，也不关心你的麻烦。~ DO ~SetGlobal("KKWarriors3","LOCALS",2)~ + KKW3d
+ ~!Global("KKNavarFriendActive","GLOBAL",1) Global("KKNavarFriendActive","GLOBAL",2)~ + ~抱歉，我忘了。等我们帮完这些人，可以再回去。~ DO ~SetGlobal("KKWarriors3","LOCALS",2)~ + KKW3e
+ ~!Global("KKNavarFriendActive","GLOBAL",1) Global("KKNavarFriendActive","GLOBAL",2)~ + ~Excuse me for having more important things on my mind, like my soul!~ DO ~SetGlobal("KKWarriors3","LOCALS",2)~ + KKW3e
+ ~!Global("KKNavarFriendActive","GLOBAL",1) Global("KKNavarFriendActive","GLOBAL",2)~ + ~你说得对，我该早点告诉你。我不想帮你，也不关心你的麻烦。~ DO ~SetGlobal("KKWarriors3","LOCALS",2)~ + KKW3f
END

IF ~~ KKW3a
SAY ~Enough of your excuses! I cannot believe I was foolish enough to trust a man, much less give my heart to one!~ 
= ~You are a vile creature and I am glad to be rid of you!~
IF ~~ DO ~SetGlobal("KKNavarRomanceActive","GLOBAL",3) LeaveParty() EscapeArea()~ EXIT
END

IF ~~ KKW3b
SAY ~I should have known you would seek to use me for your own gain. I cannot believe I was foolish enough to trust a man, much less give my heart to one!~ 
= ~You are a vile creature and I am glad to be rid of you!~
IF ~~ DO ~SetGlobal("KKNavarRomanceActive","GLOBAL",3) LeaveParty() EscapeArea()~ EXIT
END

IF ~~ KKW3c
SAY ~Enough of your excuses! I thought we were friends, but I see I was mistaken.~
= ~我自己能了结这件事。~
IF ~~ DO ~SetGlobal("KKNavarFriendActive","GLOBAL",3) LeaveParty() EscapeArea()~ EXIT
END

IF ~~ KKW3d
SAY ~你怎么能这样对我？我以为我们是朋友，看来我错了。~
= ~我自己能了结这件事。~
IF ~~ DO ~SetGlobal("KKNavarFriendActive","GLOBAL",3) LeaveParty() EscapeArea()~ EXIT
END

IF ~~ KKW3e
SAY ~Enough of your excuses! I cannot believe I trusted you, I will not make that mistake again.~
= ~我自己能了结这件事。~
IF ~~ DO ~LeaveParty() EscapeArea()~ EXIT
END

IF ~~ KKW3f
SAY ~好吧，我不需要你帮忙。我自己能了结这件事。~
IF ~~ DO ~LeaveParty() EscapeArea()~ EXIT
END
END