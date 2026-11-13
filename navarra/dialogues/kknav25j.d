BEGIN ~KKNav25J~

I_C_T  SARMEL01 44 KKNMEL
== ~KKNav25J~ IF ~InParty("KKNavar") InMyArea("KKNavar") !StateCheck("KKNavar",CD_STATE_NOTVALID) Global("KKNavarRomanceActive","GLOBAL",2)~ THEN ~<CHARNAME> is no abomination! There is nothing evil about her.~
END

I_C_T Marlowe 10 KKNmarl
== KKNav25J IF ~InParty("KKNavar") InMyArea("KKNavar") !StateCheck("KKNavar",CD_STATE_NOTVALID)~ THEN ~这事感觉不太对劲。~
END

I_C_T Marlowe 19 KKNmarl2
== KKNav25J IF ~InParty("KKNavar") InMyArea("KKNavar") !StateCheck("KKNavar",CD_STATE_NOTVALID)~ THEN ~这一切都说不通。~
END

I_C_T Marlowe 28 KKNmarl3
== KKNav25J IF ~InParty("KKNavar") InMyArea("KKNavar") !StateCheck("KKNavar",CD_STATE_NOTVALID)~ THEN ~我不确定这宝藏值不值得，巫妖可不好对付。~
END

I_C_T Marlowe 35 KKNmarl4
== KKNav25J IF ~InParty("KKNavar") InMyArea("KKNavar") !StateCheck("KKNavar",CD_STATE_NOTVALID)~ THEN ~他做过那种事，不配得到帮助；该死的是他而不是他妻子。她不该为他的罪行付出代价。~
END

I_C_T AMLICH01 10 KKNlich
== KKNav25J IF ~InParty("KKNavar") InMyArea("KKNavar") !StateCheck("KKNavar",CD_STATE_NOTVALID)~ THEN ~I knew he was lying! He needs to be held accountable for what he did to his family.~
END

I_C_T AMASANA 1 KKNamas
== KKNav25J IF ~InParty("KKNavar") InMyArea("KKNavar") !StateCheck("KKNavar",CD_STATE_NOTVALID)~ THEN ~不管她是不是贼，她都不该遭受那种事。我很高兴你救了她的命。~
END

I_C_T AMMERC02 0 KKNmerc
== KKNav25J IF ~InParty("KKNavar") InMyArea("KKNavar") !StateCheck("KKNavar",CD_STATE_NOTVALID)~ THEN ~我希望他选择死亡，我会很享受杀了他。~
END

I_C_T GORODR1 8 KKNodr
== KKNav25J IF ~InParty("KKNavar") InMyArea("KKNavar") !StateCheck("KKNavar",CD_STATE_NOTVALID)~ THEN ~这地方很大，而且看起来相当凶险。~
END

I_C_T GORODR1 9 KKNodr1
== KKNav25J IF ~InParty("KKNavar") InMyArea("KKNavar") !StateCheck("KKNavar",CD_STATE_NOTVALID)~ THEN ~巨大的邪恶？我可不爱听这种说法……~
END

I_C_T GORODR1 21 KKNodr2
== KKNav25J IF ~InParty("KKNavar") InMyArea("KKNavar") !StateCheck("KKNavar",CD_STATE_NOTVALID)~ THEN ~听上去，这会是非常危险的任务。~
END

I_C_T GORARC1 7 KKNodr2
== KKNav25J IF ~InParty("KKNavar") InMyArea("KKNavar") !StateCheck("KKNavar",CD_STATE_NOTVALID)~ THEN ~这话听起来可不太让人安心。~
END

I_C_T GORCHR 2 KKNchr
== KKNav25J IF ~InParty("KKNavar") InMyArea("KKNavar") !StateCheck("KKNavar",CD_STATE_NOTVALID)~ THEN ~当然，毕竟龙以前可帮了大忙。~
END

I_C_T GORIMP01 7 KKNimp
== KKNav25J IF ~InParty("KKNavar") InMyArea("KKNavar") !StateCheck("KKNavar",CD_STATE_NOTVALID)~ THEN ~看来这里发生过许多可怕的事。~
END

I_C_T GORCAMB 22 KKNcamb
== KKNav25J IF ~InParty("KKNavar") InMyArea("KKNavar") !StateCheck("KKNavar",CD_STATE_NOTVALID)~ THEN ~我不喜欢你去冒这个险。~
END

I_C_T FSSPIR2 3 KKNspir
== KKNav25J IF ~InParty("KKNavar") InMyArea("KKNavar") !StateCheck("KKNavar",CD_STATE_NOTVALID)~ THEN ~我知道你能做到，但我不喜欢你不得不这么做。~
END

I_C_T GORDEMO 24 KKNdemo
== KKNav25J IF ~InParty("KKNavar") InMyArea("KKNavar") !StateCheck("KKNavar",CD_STATE_NOTVALID)~ THEN ~They planned on trapping you here! We need to seal them in here and rid this place of their evil ways.~
END

I_C_T GORAPP1 15 KKNapp1
== KKNav25J IF ~InParty("KKNavar") InMyArea("KKNavar") !StateCheck("KKNavar",CD_STATE_NOTVALID)~ ~你做得对，封印这地方是最好的选择。~
END

BEGIN KKAmana

EXTEND_BOTTOM HGWRA01 18 
IF ~InParty("KKNavar") !Dead("KKNavar") Global("KKNavarRomanceActive","GLOBAL",2)~ EXTERN HGWRA01 kkan1
END

EXTEND_BOTTOM HGWRA01 24
IF ~Global("KKNavarLovedOne","GLOBAL",1)~ 
DO ~ClearAllActions() StartCutSceneMode() StartCutScene("KKAma01")~ EXIT
END

CHAIN HGWRA01 kkan1
~那你必须给你所爱之人带来的痛苦呢？就是那个你称作纳瓦拉的蛮族女人？~
== KKNav25J ~He has brought me nothing but joy.~
== HGWRA01 ~You know nothing of what you speak, you are as much a murderer as my failed ward.~
DO ~SetGlobal("KKNavarLovedOne","GLOBAL",1) ClearAllActions() StartCutSceneMode() StartCutScene("KKAma01")~ EXIT

CHAIN
IF ~NumTimesTalkedTo(0)~ THEN KKAma kkan2
~纳瓦拉……~ DO ~SetGlobal("KKNavAma","GLOBAL",1)~ 
== KKNav25J ~Amana? How can this be real...~
== KKAmana ~Why Navarra? You killed me, you killed us all! I hate you for what you've done~
== KKNav25J ~I didn't want to! You made me! You had Shaelah lie to me, for your own ambitions!~
== KKAmana ~You may as well have killed our mother! She will never forgive you for this, ever! She will hate you too.~ 
== KKNav25J ~No! You did this, sister! I wanted to save you, all of you. No one had to die.~
== KKAmana ~You lie! You wanted us all dead, even mother, so you could take over the tribe.~
== KKNav25J ~NO! NO! NO!~

END
++ ~Don't listen, Navarra! It's a trick!~ EXTERN KKNav25J kkan3
++ ~You can't possibly believe this demon, it lies!~ EXTERN KKNav25J kkan3
++ ~No! Stop this, what are doing to her?~ EXTERN KKNav25J kkan3

APPEND KKNav25J

IF ~~ kkan3 
SAY ~This can't be real! It can't be happening!~  
IF ~~ THEN EXTERN HGWRA01 25
END

IF ~Global("KKAmaTalk","LOCALS",1)~ THEN BEGIN KKAmatlk
SAY ~How could that thing do that! How could it know about Amana?~
++ ~我不知道，但现在已经结束了。~ DO ~SetGlobal("KKAmaTalk","LOCALS",2)~ + KKAmatlka
++ ~你需要冷静下来，纳瓦拉。无论它是怎么发生、为何发生，都已经结束了。~ DO ~SetGlobal("KKAmaTalk","LOCALS",2)~ + KKAmatlkd
++ ~现在不重要了，我们走吧。~ DO ~SetGlobal("KKAmaTalk","LOCALS",2)~ EXIT
END

IF ~~ THEN KKAmatlka
SAY ~没错，但那东西确实达到了它的目的。~
= ~It got to me, and brought back all the pain, the anguish I suffered when they died. By my hand!~ 
++ ~你得原谅自己，你做了必须做的事。是他们逼你做的。~ + KKAmatlkb
++ ~振作起来，亲爱的。事情只会更糟，我需要你。~ + KKAmatlkc
++ ~接受它，然后往前走。我们还有事要做。~ EXIT
END

IF ~~ THEN KKAmatlkb 
SAY ~我知道，我以为我已经放下了。但看到她……我会没事的。~
IF ~~ THEN EXIT
END

IF ~~ THEN KKAmatlkc
SAY ~我知道，你说得对。我只需要一点时间。~
IF ~~ THEN EXIT
END

IF ~~ THEN KKAmatlkd
SAY ~说得容易，亲爱的。那东西想让你怀疑我，或者让我怀疑自己。~
++ ~而且它部分得逞了。因为你现在又在为这事自责，这可不健康。~ + KKAmatlke
++ ~你得原谅自己，你做了必须做的事。是他们逼你做的。~ + KKAmatlkb
++ ~振作起来，亲爱的。事情只会更糟，我需要你。~ + KKAmatlkc
++ ~接受它，然后往前走。我们还有事要做。~ EXIT
END

IF ~~ THEN KKAmatlke
SAY ~说得也是。我不会让那东西影响我。给我时间，我会没事的。~
IF ~~ THEN EXIT
END

IF ~Global("KKNavThroneTalk","LOCALS",1)~ THEN BEGIN KKNavThrtlk
SAY ~看来我们遇到的每个巴尔之子都在觊觎王座。~
= ~那也是你的渴望吗？~
++ ~我一点都不想碰它，我只想这一切赶紧结束。你为什么问这个？~ DO ~SetGlobal("KKNavThroneTalk","LOCALS",2)~ + KKNavThrtlka
++ ~一开始不是。但现在，我想是的。~ DO ~SetGlobal("KKNavThroneTalk","LOCALS",2)~ + KKNavThrtlki
++ ~当然，那一直都是目标。你知道的。~ DO ~SetGlobal("KKNavThroneTalk","LOCALS",2)~ + KKNavThrtlki
++ ~这不关你的事，我们走吧。~ DO ~SetGlobal("KKNavThroneTalk","LOCALS",2)~ EXIT
END

IF ~~ THEN KKNavThrtlka
SAY ~发生了这么多事，我忍不住想你是否改变了主意。~
+ ~Global("KKNavarRomanceActive","GLOBAL",2)~ + ~我最近想了很多。我觉得我能做很多好事。~ + KKNavThrtlkb
+ ~Global("KKNavarRomanceActive","GLOBAL",2)~ + ~绝不。我一点都不想碰它，永远不想。~ + KKNavThrtlkd
+ ~Global("KKNavarRomanceActive","GLOBAL",2)~ + ~我从没动过这个念头，我无法想象没有你的生活。我爱你，纳瓦拉。~ + KKNavThrtlke
+ ~!Global("KKNavarRomanceActive","GLOBAL",2)~ + ~我最近想了很多。我觉得我能做很多好事。~ + KKNavThrtlkf
+ ~!Global("KKNavarRomanceActive","GLOBAL",2)~ + ~绝不。我一点都不想碰它，永远不想。~ + KKNavThrtlkh
++ ~我还没决定。眼下我们还有事要做。~ EXIT
END

IF ~~ THEN KKNavThrtlkb
SAY ~这点我毫不怀疑。若像你这样善良的人登上王座，许多人的命运会更好。~
= ~那意味着我再也见不到你了。我爱你，会想念你，但你必须做你认为对的事。~
++ ~我也爱你，纳瓦拉。可我们甚至不知道那会不会发生。~ + KKNavThrtlkc
++ ~我知道，所以才考虑过。我也爱你，但没有什么事是确定的。~ + KKNavThrtlkc
++ ~我现在没法考虑这件事。它甚至可能不会发生。~ + KKNavThrtlkc
++ ~等真到那一天再说吧。我们该走了吗？~ EXIT
END

IF ~~ THEN KKNavThrtlkc
SAY ~不管它会不会发生，你需要我时我都在。~
IF ~~ THEN EXIT
END

IF ~~ THEN KKNavThrtlkd
SAY ~我就希望你会这么说，亲爱的。我只希望你不必做出选择。~
IF ~~ THEN EXIT
END

IF ~~ THEN KKNavThrtlke
SAY ~我也爱你，言语无法表达。无论发生什么，永远别忘记这一点。~
IF ~~ THEN EXIT
END

IF ~~ THEN KKNavThrtlkf
SAY ~这点我毫不怀疑。若像你这样善良的人登上王座，许多人的命运会更好。~
++ ~正是。但我无从知道那会不会真的发生。~ + KKNavThrtlkg
++ ~我现在没法考虑这件事。它甚至可能不会发生。~ + KKNavThrtlkc
++ ~等真到那一天再说吧。我们该走了吗？~ EXIT
END

IF ~~ THEN KKNavThrtlkg
SAY ~说得也是。只要知道，你想谈的时候我都在。~
IF ~~ THEN EXIT
END

IF ~~ THEN KKNavThrtlkh
SAY ~听你这么说我很高兴。我只希望你不必做出选择。~
IF ~~ THEN EXIT
END

IF ~~ THEN KKNavThrtlki
SAY ~我猜也是。你为什么会想呢？~
+ ~Global("KKNavarraRomanceActive","GLOBAL",2)~ + ~我相信我能做很多好事。~ + KKNavThrtlkb
+ ~Global("KKNavarraRomanceActive","GLOBAL",2)~ + ~那个王座伴随着巨大的力量。非常诱人。~ + KKNavThrtlkj
+ ~Global("KKNavarraRomanceActive","GLOBAL",2)~ + ~这是我的血脉传承，纳瓦拉。~ + KKNavThrtlkj
+ ~!Global("KKNavarraRomanceActive","GLOBAL",2)~ + ~我相信我能做很多好事。~ + KKNavThrtlkf
+ ~!Global("KKNavarraRomanceActive","GLOBAL",2)~ + ~那个王座伴随着巨大的力量。非常诱人。~ + KKNavThrtlkl
+ ~!Global("KKNavarraRomanceActive","GLOBAL",2)~ + ~这是我的血脉传承，纳瓦拉。~ + KKNavThrtlkl
++ ~我还没下定决心，先走吧。~ EXIT
END

IF ~~ THEN KKNavThrtlkj
SAY ~我看得出那份诱惑，可如果它腐化了你呢？那意味着我们之间就完了。~
++ ~我清楚后果，但我必须做我认为最好的事。~ + KKNavThrtlkc
++ ~不管发生什么，我绝不会让任何东西介入我们之间。~ + KKNavThrtlkd
++ ~我明白要付出什么代价。我爱你，但我不会因此放弃夺回属于我的东西。~ + KKNavThrtlkk
++ ~到时候再看吧。~ EXIT
END

IF ~~ THEN KKNavThrtlkk
SAY ~听你这么说我很痛苦。我也许不理解，但我不会挡你的路。~
IF ~~ THEN DO ~SetGlobal("KKNavarraRomanceActive","GLOBAL",3)~  EXIT
END

IF ~~ THEN KKNavThrtlkl
SAY ~我看得出那份诱惑，可如果它腐化了你呢？~
++ ~我清楚后果，但我必须做我认为最好的事。~ + KKNavThrtlkg
++ ~我明白要付出什么代价，但我不会因此放弃夺回属于我的东西。~ + KKNavThrtlkg
++ ~到时候再看吧。~ EXIT
END

IF ~Global("KKNavSaradushTalk","LOCALS",1)~ THEN BEGIN KKNSDT
SAY ~你似乎对刚才那里发生的事很难受。~
++ ~我还是不敢相信发生的事。那么多人……我忍不住觉得自己有责任。~ DO ~SetGlobal("KKNavSaradushTalk","LOCALS",2)~ + KKNSDTa
++ ~我当然难受。那么多无谓的死亡……本不该那样的。~ DO ~SetGlobal("KKNavSaradushTalk","LOCALS",2)~ + KKNSDTd
++ ~雅加苏拉……那些毁灭……我脑子里挥不去那些画面。~ DO ~SetGlobal("KKNavSaradushTalk","LOCALS",2)~ + KKNSDTa
++ ~我现在不想谈这个。~ DO ~SetGlobal("KKNavSaradushTalk","LOCALS",2)~ EXIT
END

IF ~~ THEN  KKNSDTa
SAY ~那些都不是你的错，你已经尽力了。~
++ ~我知道，但这并不能让我好受些。~ + KKNSDTb
++ ~我知道你说得对，但已经有太多死亡和惨剧……我不知道自己还能承受多少。~ + KKNSDTc
++ ~没错，但还是让人不安。我很庆幸有你陪我撑过去。~ + KKNSDTe
++ ~也许是吧。虽然我很想留在这里，我们最好还是回到队伍去。~ EXIT
END

IF ~~ THEN  KKNSDTb
SAY ~不，并不能。但你必须想办法撑过去，我感觉事情只会更糟。~
IF ~~ THEN EXIT
END

IF ~~ THEN  KKNSDTc
SAY ~你有能力应对任何事。~ 
= ~你需要我时我就在这里，亲爱的。~
IF ~~ THEN EXIT
END

IF ~~ THEN  KKNSDTd
SAY ~不，并不是。但那些事你无法掌控，也都不是你的错。~
++ ~我知道，但这并不能让我好受些。~ + KKNSDTb
++ ~我知道你说得对，但已经有太多死亡和惨剧……我不知道自己还能承受多少。~ + KKNSDTc
++ ~没错，但还是让人不安。我很庆幸有你陪我撑过去。~ + KKNSDTe
++ ~也许是吧。虽然我很想留在这里，我们最好还是回到队伍去。~ EXIT
END

IF ~~ THEN  KKNSDTe
SAY ~我会一直陪着你，亲爱的。~
IF ~~ THEN EXIT
END