BEGIN KKVMPNAV

EXTEND_BOTTOM BODHIAMB 5
IF ~Global("KKNavBodhiAbduction","GLOBAL",0)
      Global("KKNavarRomanceActive","GLOBAL",2) 
      InParty("KKNavar")~ THEN DO ~SetGlobal("KKNavBodhiAbduction","GLOBAL",1)~ + KKNBA
END

APPEND BODHIAMB
IF ~~ THEN KKNBA
SAY ~你一路追来，是想找回对你珍贵的东西。我说，你这样坚持越久，失去的就越多。~ 
IF ~OR(2)
      !InPartyAllowDead("KKNavar")
      Dead("KKNavar")~ THEN GOTO 6
IF ~InPartyAllowDead("KKNavar")
      !Dead("KKNavar")~ THEN GOTO KKNBAa
END

END

CHAIN
IF ~~ THEN BODHIAMB KKNBAa
~想想这里的年轻纳瓦拉。可怕的小战士，可惜走错了路。我觉得她为我而战会更有用。~
== ~KKNavJ~ IF ~InMyArea("KKNavar") !StateCheck("KKNavar",CD_STATE_NOTVALID)~ THEN ~I will never do your bidding, foul creature!~
== BODHIAMB ~I don't think you understand, you barbaric fool, you have no choice! Pay attention <CHARNAME>.  Follow me further and you will lose more than you can imagine!  Starting now!~
END
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("KKNCUT01")
~ UNSOLVED_JOURNAL ~The Final Battle with Bodhi.

Bodhi appeared in an ambush shortly before I reached her haven, warning me that she was aware of my pursuit and stealing from me the one person that is dearest to my heart: Navarra. Before she vanished and unleashed more of her undead creations upon me, Bodhi warned me that if I continue I will lose even more than I thought possible. I cannot give up on the Rhynn Lanthorn... but now the life and immortal soul of the one I love is at stake, as well!~ EXIT

EXTEND_BOTTOM C6BODHI 21
IF ~Global("KKNavarVampire","GLOBAL",2)~ THEN GOTO 23
END

EXTEND_BOTTOM C6BODHI 23
IF ~Global("KKNavarVampire","GLOBAL",2)~ THEN REPLY ~You have taken too much already!  You will return both Imoen's soul and Navarra!~ + KKNBAb
IF ~Global("KKNavarVampire","GLOBAL",2)~ THEN REPLY ~而你履行了那个承诺。把纳瓦拉还回来，也许我会宽恕你。~ + KKNBAb
IF ~Global("KKNavarVampire","GLOBAL",2)~ THEN REPLY ~单是你偷走纳瓦拉，我就会追杀你。她对我非常重要。~ + KKNBAb
IF ~Global("KKNavarVampire","GLOBAL",2)~ THEN REPLY ~你对感情寄予太多信心。偷走纳瓦拉救不了你。~ + KKNBAc
END

APPEND C6BODHI 

IF ~~ THEN KKNBAb
  SAY ~她对你来说已经失去了，<CHARNAME>。纳瓦拉对我的调教相当受用。我怀疑你笨拙的手法能激起我用一咬一瞥换来的那种忠诚。~
IF ~~ THEN UNSOLVED_JOURNAL ~The Final Battle with Bodhi.

Bodhi has turned Navarra into a vampire!  Or... or very nearly. The process may not have been completed in the short time Bodhi has had her. Hopefully something can be done or I will have lost her. Perhaps the elven war sage might know some way of restoration... or Elhan... ~ EXTERN KKVMPNAV KKNBAd
END

IF ~~ THEN KKNBAc
SAY ~有趣的花招，不过我确信他的命运仍会成为警示，不管你想不想让她回来。~
IF ~~ THEN + KKNBAb
END

END //APPEND C6BODHI

CHAIN KKVMPNAV KKNBAd
~我来听候您的吩咐，女主人。~
== C6BODHI ~Don't you see, <CHARNAME>? She is not even fully turned and she has betrayed you.  Prepare to die at your lover's hand!~
END C6BODHI 28

EXTEND_BOTTOM C6ELHAN2 70
+ ~PartyHasItem("KKNavBDY")~ + ~Elhan!  I've the half vampire body of Navarra here because of you!  You'll tell me now!~ GOTO 76
END

EXTEND_BOTTOM DOGHMA 0 #5
+ ~Global("RevealUmar","GLOBAL",1)
PartyHasItem("KKNavBDY")~ + ~有个朋友中了吸血鬼之症。一本古书提到，欧格玛的信徒也许知道些什么。~ GOTO 10
END

EXTEND_BOTTOM DOGHMA 3 7 9 #4
+ ~Global("RevealUmar","GLOBAL",1)
PartyHasItem("KKNavBDY")~ + ~有个朋友中了吸血鬼之症。一本古书提到，欧格玛的信徒也许知道些什么。~ GOTO 10
END

EXTEND_BOTTOM IMNBOOK1 0
+ ~Global("RevealUmar","GLOBAL",1)
PartyHasItem("KKNavBDY")~ + ~我在找一本详述如何治愈吸血鬼症的书。~ GOTO 4
END

ADD_STATE_TRIGGER OGHMONK1 0 ~!PartyHasItem("KKNavBDY")~ 1 2 3

APPEND OGHMONK1

IF WEIGHT #-1 ~Global("RevealUmar","GLOBAL",1)
PartyHasItem("KKNavBDY")~ THEN BEGIN OghmaMonk#1.1
SAY ~你是来向「已知之物的编纂者」求取智慧吗？智慧之神随时准备着。~
++ ~不，谢谢，我暂时不需要帮助。~ GOTO 5
++ ~有个朋友中了吸血鬼之症。一本古书提到，欧格玛的信徒也许知道些什么。~ GOTO 6
END

END

EXTEND_BOTTOM SUDEMIN 2
+ ~PartyHasItem("KKNavBDY")~ + ~我在与他妹妹波迪的战斗中失去了所爱之人。我在寻找治愈她的办法。~ GOTO 3
END

EXTEND_BOTTOM WARSAGE 0
+ ~!Dead("c6bodhi")
Global("KKNavarVampire","GLOBAL",2)~ + ~所爱之人被吸血鬼抓走了。找到他们时我该预期什么？~ GOTO 6
+ ~PartyHasItem("KKNavBDY")~ + ~我在乎的人落入了吸血鬼之手。有办法救他们吗？~ GOTO 5
END

APPEND ~KKNavP~

IF WEIGHT #-1 ~Global("KKNavarVampireTalk","GLOBAL",1)~ THEN BEGIN KKNBA2
SAY ~发生……什么了？~
= ~（纳瓦拉的眼神重新聚焦，看着你，显然还在发抖。）~
= ~I...was dead, no much worse than dead. Sshe turned me into one of them, a disgusting vampire and I tried to kill you! I tried to fight sher <CHARNAME> and I'm ashamed of myself because I couldn't.~
= ~而尽管如此，你还是救了我。~
++ ~没事了，纳瓦拉。都结束了。~ DO ~EraseJournalEntry(32084)
EraseJournalEntry(32085)
EraseJournalEntry(16351)
EraseJournalEntry(%The Final Battle with Bodhi.

Bodhi appeared in an ambush shortly before I reached her haven, warning me that she was aware of my pursuit and stealing from me the one person that is dearest to my heart: Navarra. Before she vanished and unleashed more of her undead creations upon me, Bodhi warned me that if I continue I will lose even more than I thought possible. I cannot give up on the Rhynn Lanthorn... but now the life and immortal soul of the one I love is at stake, as well!%)
EraseJournalEntry(15710)
EraseJournalEntry(6589)
EraseJournalEntry(%The Final Battle with Bodhi.

Bodhi has turned Navarra into a vampire!  Or... or very nearly. The process may not have been completed in the short time Bodhi has had her. Hopefully something can be done or I will have lost her. Perhaps the elven war sage might know some way of restoration... or Elhan...%)
SetGlobal("KKNavarVampire","GLOBAL",5) SetGlobal("KKNavarVampireTalk","GLOBAL",2)~ SOLVED_JOURNAL ~与波迪的最终决战。

我曾担心波迪对我的最终报复就是永远夺走纳瓦拉，看来那本传说书的记载是对的……阿曼纳托的神像不仅让纳瓦拉复活，还驱除了她身上的吸血鬼诅咒。我很高兴她回来了。~ + KKNBA2a
++ ~Of course I did! I couldn't....wouldn't lose you! I was so worried....so afraid but I had to save you.~ DO ~EraseJournalEntry(32084)
EraseJournalEntry(32085)
EraseJournalEntry(16351)
EraseJournalEntry(%The Final Battle with Bodhi.

Bodhi appeared in an ambush shortly before I reached her haven, warning me that she was aware of my pursuit and stealing from me the one person that is dearest to my heart: Navarra. Before she vanished and unleashed more of her undead creations upon me, Bodhi warned me that if I continue I will lose even more than I thought possible. I cannot give up on the Rhynn Lanthorn... but now the life and immortal soul of the one I love is at stake, as well!%)
EraseJournalEntry(15710)
EraseJournalEntry(6589)
EraseJournalEntry(%The Final Battle with Bodhi.

Bodhi has turned Navarra into a vampire!  Or... or very nearly. The process may not have been completed in the short time Bodhi has had her. Hopefully something can be done or I will have lost her. Perhaps the elven war sage might know some way of restoration... or Elhan...%)
SetGlobal("KKNavarVampire","GLOBAL",5)~ SOLVED_JOURNAL ~与波迪的最终决战。

我曾担心波迪对我的最终报复就是永远夺走纳瓦拉，看来那本传说书的记载是对的……阿曼纳托的神像不仅让纳瓦拉复活，还驱除了她身上的吸血鬼诅咒。我很高兴她回来了。~ + KKNBA2d
++ ~好了，都结束了，你活着。我拿到了灯笼，那才是最重要的。~ DO ~EraseJournalEntry(32084)
EraseJournalEntry(32085)
EraseJournalEntry(16351)
EraseJournalEntry(%The Final Battle with Bodhi.

Bodhi appeared in an ambush shortly before I reached her haven, warning me that she was aware of my pursuit and stealing from me the one person that is dearest to my heart: Navarra. Before she vanished and unleashed more of her undead creations upon me, Bodhi warned me that if I continue I will lose even more than I thought possible. I cannot give up on the Rhynn Lanthorn... but now the life and immortal soul of the one I love is at stake, as well!%)
EraseJournalEntry(15710)
EraseJournalEntry(6589)
EraseJournalEntry(%The Final Battle with Bodhi.

Bodhi has turned Navarra into a vampire!  Or... or very nearly. The process may not have been completed in the short time Bodhi has had her. Hopefully something can be done or I will have lost her. Perhaps the elven war sage might know some way of restoration... or Elhan...%)
SetGlobal("KKNavarVampire","GLOBAL",5)~
SOLVED_JOURNAL ~与波迪的最终决战。

我曾担心波迪对我的最终报复就是永远夺走纳瓦拉，看来那本传说书的记载是对的……阿曼纳托的神像不仅让纳瓦拉复活，还驱除了她身上的吸血鬼诅咒。我很高兴她回来了。~ + KKNBA2e
END

IF ~~ THEN BEGIN KKNBA2a
SAY ~也许是结束了，但这不能掩盖我试图……想要伤害你的事实。~
= ~我看见你时，满脑子只有血。我真的很抱歉，亲爱的。~
++ ~不必道歉，那不是你的错。我只高兴你没事。~ + KKNBA2b
++ ~抱歉，但我现在队里没有位置给你。~ + KKNBA2c
END

IF ~~ THEN BEGIN KKNBA2b
SAY ~也许不是，但这并不能减轻我的愧疚。我只庆幸自己没有伤到你，亲爱的。~
IF ~~ THEN DO ~JoinParty()~ EXIT
END

IF ~~ THEN BEGIN KKNBA2c
SAY ~You....you don't have *room* for me? After everything we've been through you now choose to throw that all away? So be it!~
IF ~~ THEN DO ~SetGlobal("KKNavarRomanceActive","GLOBAL",3) SetGlobal("NavarraJoined","LOCALS",0) LeaveParty() EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN KKNBA2d
SAY ~我也一样害怕，亲爱的。如果你因为我出了什么事……~
= ~我受不了这个念头。我们离开这里吧，求你。~
IF ~~ THEN DO ~JoinParty()~ EXIT
END

IF ~~ THEN BEGIN KKNBA2e
SAY ~你在说什么？经历了这么多，你更在意的居然是那个，而不是我？~
++ ~Of course not! If I didn't love you, I wouldn't have saved you. But the Lanthorn is important, Irenicus must be stopped.~ + KKNBA2f
++ ~当然，灯笼才是最重要的。必须阻止艾瑞尼卡斯，夺回我的灵魂。~ + KKNBA2g
END

IF ~~ THEN BEGIN KKNBA2f
SAY ~我也爱你。我完全同意，艾瑞尼卡斯会被阻止的。有机会的话，我要亲手割开他的喉咙。~
IF ~~ THEN DO ~JoinParty()~ EXIT
END

IF ~~ THEN BEGIN KKNBA2g
SAY ~I can't believe what I'm hearing, after all we've been through. Fine, if that's the way you want it! Goodbye, <CHARNAME>.~
IF ~~ THEN DO ~SetGlobal("KKNavarRomanceActive","GLOBAL",3) SetGlobal("NavarraJoined","LOCALS",0) LeaveParty() EscapeArea()~ EXIT
END

END