// Fatespirit //

EXTEND_TOP FATESP 6
+ ~!Dead("KKNavar")
     !InMyArea("KKNavar")
     Global("KKNavarSummoned","GLOBAL",0)~ + ~把那个蛮族战士纳瓦拉带来见我。~ DO ~CreateVisualEffect("SPPORTAL",[1999.1218])
         Wait(2)
         CreateCreature("KKNav25",[1999.1218],0)
         SetGlobal("KKNavarSummoned","GLOBAL",1)~ + 8
+ ~!Dead("KKNavar")
   !InMyArea("KKNavar")
   Gender(Player1,MALE)
  !Alignment(Player1,MASK_EVIL)
  OR(3)
  Race(Player1,HUMAN)
  Race(Player1,HALF_ELF)
  Race(Player1,ELF)
  Global("KKNavarSummoned","GLOBAL",0)~ + ~把我的爱人纳瓦拉带来见我。~ DO ~CreateVisualEffect("SPPORTAL",[1999.1218])
         Wait(2)
         CreateCreature("KKNav25",[1999.1218],0)
         SetGlobal("KKNavarSummoned","GLOBAL",1)
         SetGlobal("KKNavarMatch", "GLOBAL",1)~ + 8
END
         
BEGIN KKNav25

IF ~Global("KKNavarMatch","GLOBAL",1) Global("KKNavarSummoned","GLOBAL",1)~ THEN KKNav25_0a
SAY ~<CHARNAME>! It is so good to see you, my love, I was worried.~
++ ~我也很高兴见到你，我想你了。~  DO ~SetGlobal("KKNavarSummoned","GLOBAL",2)
      SetGlobal("KKNavarRomanceActive","GLOBAL",2)
      RealSetGlobalTimer("KKNLovTalkTimeTOB","GLOBAL",Nav_TIME)~ GOTO KKNav25_1
++ ~我召你来，是因为我觉得可能需要你的帮助。我现在暂时改主意了，但你别走远，好吗？~ + KKNav25_2      
++ ~我需要你的帮助，如果你愿意。~ DO ~SetGlobal("KKNavarSummoned","GLOBAL",2)
      SetGlobal("KKNavarRomanceActive","GLOBAL",2)
      RealSetGlobalTimer("KKNLovTalkTimeTOB","GLOBAL",Nav_TIME)
      SetGlobal("KKNavarJoined","LOCALS",1)
      JoinParty()~ EXIT
END

IF ~Global("KKNavarMatch","GLOBAL",0) Global("KKNavarSummoned","GLOBAL",1)~ THEN KKNav25_0b
SAY ~你好，<CHARNAME>。见到你真好，但你为什么把我召来？我差点就到纳尔费尔了……~
++ ~见到你我也很高兴，朋友。我召你来，是因为我需要你的帮助。~ DO ~SetGlobal("KKNavarSummoned","GLOBAL",2)
      RealSetGlobalTimer("KKNFriendTalkTimeTOB","GLOBAL",2500)~ GOTO KKNav25_3
++ ~我召你来，是因为我以为可能需要你的帮助。我改主意了，但你别走远，好吗？~ + KKNav25_2  
++ ~你真的要回去了？真抱歉，要是我早知道……~ DO ~SetGlobal("KKNavarSummoned","GLOBAL",2)
      RealSetGlobalTimer("KKCFriendTalkTimeTOB","GLOBAL",Nav_TIME)~ + KKNav25_4
++ ~我需要你的帮助，如果你愿意的话。~ DO ~SetGlobal("KKNavarSummoned","GLOBAL",2)
      RealSetGlobalTimer("KKNFriendTalkTimeTOB","GLOBAL",Nav_TIME)
      SetGlobal("KKNavarJoined","LOCALS",1)
      JoinParty()~ EXIT
END

IF ~~ KKNav25_1
SAY ~我也想你，亲爱的。走吧？~
++ ~当然。我们有很多事要聊。~ DO ~SetGlobal("KKNavarJoined","LOCALS",1) JoinParty()~ EXIT
++ ~我改主意了，但你别走远，好吗？~ + KKNav25_2  
END


IF ~~ KKNav25_3
SAY ~那好吧，我当然会帮你，朋友。~
++ ~谢谢，我就希望你能靠得住。~ DO ~SetGlobal("KKNavarJoined","LOCALS",1) JoinParty()~ EXIT
++ ~我改主意了，但你别走远，好吗？~ + KKNav25_2  
END

IF ~~ KKNav25_2
SAY ~看来我别无选择，但请别让我在这儿站太久。~
IF ~~ THEN DO ~MoveToPointNoInterrupt([1450.1405])~ EXIT
END

IF ~~ KKNav25_4
SAY ~我明白。你可以指望我。~
++ ~谢谢，我就希望你能靠得住。~ DO ~SetGlobal("KKNavarJoined","LOCALS",1) JoinParty()~ EXIT
END

BEGIN KKNav25P

IF ~Global("KKNavarKicked","LOCALS",0) Global("KKNavarJoined","LOCALS",1)~ KKNav25P_0
SAY ~你确定要我走吗？~ 
++ ~不，请留下。~ DO ~JoinParty()~ EXIT
IF ~~ GOTO KKNav25P_1
END

IF ~~ KKNav25P_1
SAY ~看来我别无选择，但请别让我在这儿站太久。~
IF ~~ THEN DO ~MoveToPointNoInterrupt([1450.1405])~ EXIT
END