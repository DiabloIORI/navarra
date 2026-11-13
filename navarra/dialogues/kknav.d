BEGIN ~KKNAVAR~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN FirstMeeting
SAY ~你找我有什么事，陌生人？~
+ ~Gender(Player1,FEMALE)~ + ~抱歉，你看起来像个战士，我以为你是在找活干。~ + KKFM1a
+ ~Gender(Player1,MALE)~ + ~抱歉，你看起来像个战士，我以为你是在找活干。~ + KKFM1e
+ ~Gender(Player1,MALE)~ + ~没必要这么无礼，我只是想表示友好。~ + KKFM1h
+ ~Gender(Player1,MALE)~ + ~只是好奇，像你这样漂亮的姑娘在这破地方做什么。~ + KKFM1i
++ ~没有，抱歉打扰你了。~ DO ~SetGlobal("KKNavarraJoined","LOCALS",0)~ EXIT
END

IF ~~ KKFM1a
SAY ~我自己也有任务要办，不过也许我们可以互相帮忙。~
= ~我在找我部落里几个失踪的女人，尤其是一个偷了我们族长之剑的人。~
++ ~我也在找一个人，一个叫艾瑞尼卡斯的强大法师，我和他有很多账要算。~ + KKFM1c
++ ~我愿意帮你找她们，但我首先要找到一位被斗篷法师抓走的朋友。~ + KKFM1b
END

IF ~~ THEN BEGIN KKFM1b
SAY ~啊，是啊，我见过那些戴兜帽的蠢货四处晃荡。典型的男性白痴，炫耀自己的权力。~ 
= ~如果他们抓了你的朋友，我猜是因为她施法却没付贿赂钱。~
++ ~她不懂这些，我们刚到这一带。我们是从一座关押我们的地牢里逃出来的。~ + KKFM1c
++ ~差不多吧。但这不是她的错，我必须救她。~ + KKFM1c
++ ~那你就明白我要面对什么了。~ + KKFM1c
END

IF ~~ THEN BEGIN KKFM1c
SAY ~事情越来越有意思了。顺便说，我叫纳瓦拉，你是？~
++ ~我叫<CHARNAME>，很高兴认识你，纳瓦拉。有兴趣加入我吗？~ + KKFM1d
++ ~我叫<CHARNAME>，如果你非要知道的话。有兴趣加入我吗？~ + KKFM1d
END

IF ~~ THEN BEGIN KKFM1d
SAY ~当然。找我族人的同时，我很乐意帮你。~
++ ~好，那就这么定了。欢迎。~ DO ~SetGlobal("KKNavarraJoined","LOCALS",1) JoinParty()~ EXIT
++ ~你就在这里等着。需要你时我会回来。~ DO ~SetGlobal("KKNavarraJoined","LOCALS",0)~ EXIT
++ ~我改主意了，我不需要你帮忙。再见。~ DO ~SetGlobal("KKNavarraJoined","LOCALS",0)~ EXIT
END

IF ~~ THEN BEGIN KKFM1e
SAY ~我是战士，是蛮族战士，蠢货。我自己有任务要办，而且非常重要。~ 
= ~给我一个像样的理由，说明我为什么要替一个男人干活，更别说听他的命令。~
++ ~理由就是：我的朋友被斗篷法师抓走，我必须救她。这理由够吗？~ + KKFM1f
++ ~我在追一个叫艾瑞尼卡斯的法师。他是个强大的法师，我打算杀了他，如果你有兴趣，我需要帮手。~ + KKFM1f
++ ~我在追一个叫艾瑞尼卡斯的强大法师，我和他有很多账要算。如果你有兴趣，我需要帮手。~ + KKFM1f
++ ~不管你需不需要办什么事，我都愿意帮你。有时候一群人比一个人更容易成功。~ + KKFM1j
++ ~当我没说，我可不想队里有个不听命令的人。~ DO ~SetGlobal("KKNavarraJoined","LOCALS",0)~ EXIT
END

IF ~~ THEN BEGIN KKFM1f
SAY ~看得出你确实需要帮助……好吧。这违背我部落的每一条规矩，也违背我自己的原则，但我帮你。~
= ~但是，如果你试图干扰我的任务……我就走。我在找我部落里几个失踪的女人，尤其是一个偷了我们族长之剑的人，我有严令要取回那把剑。~
++ ~好，那就这么定了。欢迎。~ DO ~SetGlobal("KKNavarraJoined","LOCALS",1) JoinParty()~ EXIT
++ ~你就在这里等着。需要你时我会回来。~ DO ~SetGlobal("KKNavarraJoined","LOCALS",0)~ EXIT
++ ~我改主意了，我不需要你帮忙。再见。~ DO ~SetGlobal("KKNavarraJoined","LOCALS",0)~ EXIT
END

IF ~~ THEN BEGIN KKFM1h
SAY ~我对交朋友没兴趣。你想要什么？~
++ ~抱歉，你看起来像个战士，我以为你是在找活干。~ + KKFM1e
++ ~只是好奇，像你这样漂亮的姑娘在这破地方做什么。~ + KKFM1i
++ ~没什么，当我没说。今天我受够那些讨厌的人了。~ DO ~SetGlobal("KKNavarraJoined","LOCALS",0)~ EXIT
END

IF ~~ THEN BEGIN KKFM1i
SAY ~我在躲那些带着蠢话搭讪的白痴男人。不过我今天我还没杀过人……你可能就是第一个。~
++ ~抱歉，你看起来像个战士，我以为你是在找活干。~ + KKFM1e
++ ~我可没你想的那么好杀。算你走运，我不是来打架的。我以为你是在找活干。~ + KKFM1e
++ ~我明白了……好吧，抱歉打扰你。~ DO ~SetGlobal("KKNavarraJoined","LOCALS",0)~ EXIT
END

IF ~~ THEN BEGIN KKFM1j
SAY ~你说得有道理……好吧。这违背我部落的每一条规矩，也违背我自己的原则，但我帮你。~
= ~但是，如果你试图干扰我的任务……我就走。我在找我部落里几个失踪的女人，尤其是一个偷了我们族长之剑的人，我有严令要取回那把剑。~
++ ~好，那就这么定了。欢迎。~ DO ~SetGlobal("KKNavarraJoined","LOCALS",1) JoinParty()~ EXIT
++ ~你就在这里等着。需要你时我会回来。~ DO ~SetGlobal("KKNavarraJoined","LOCALS",0)~ EXIT
++ ~我改主意了，我不需要你帮忙。再见。~ DO ~SetGlobal("KKNavarraJoined","LOCALS",0)~ EXIT
END


BEGIN KKNavP

IF ~Global("KKNavarraJoined","LOCALS",1)~ THEN BEGIN KickOut
SAY ~你确定不再需要我帮忙了？~
++ ~其实，请你留下，纳瓦拉。~ DO ~JoinParty()~ EXIT
++ ~抱歉，我现在不需要你。~ + Goodbye
++ ~请就在这里等着，我很快回来找你。~ + Wait
END

IF ~~ THEN BEGIN Goodbye
SAY ~好吧。如果你改变主意，我就在七谷客栈。~ 
IF ~~ THEN DO ~EscapeAreaMove("AR0709",607,509,3)~ EXIT 
END

IF ~~ THEN BEGIN Wait
SAY ~好吧，但如果你让我在这儿站太久，我就走。~ 
IF ~~ THEN DO ~SetGlobal("KKNavarraJoined","LOCALS",0)~ EXIT
END

IF ~Global("KKNavarraJoined","LOCALS",0)~ THEN BEGIN NavarRejoin
SAY ~要我重新归队吗？~
++ ~请重新加入队伍。~ DO ~SetGlobal("KKNavarraJoined","LOCALS",1) JoinParty()~ EXIT
++ ~不，我改主意了。再见。~ DO ~SetGlobal("KKNavarraJoined","LOCALS",0)~ EXIT
END