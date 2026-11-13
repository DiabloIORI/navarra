BEGIN ~KKNavB~

CHAIN
IF 
~InParty("Minsc")
Global("KKNMinstalk","LOCALS",0)
!StateCheck(Myself,CD_STATE_NOTVALID)
!StateCheck("Minsc",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
See("Minsc")
~ THEN ~KKNavB~ NMinstalk
~You! Simple-minded fool!~ DO ~SetGlobal("KKNMinstalk","LOCALS",1)~
== BMINSC ~Speaking to Minsc that way is not nice! We are both mighty warriors, are we not?~
== ~KKNavB~ ~Do not compare yourself to me, Rasheman swine. I demand to know what that thing is! I caught it scurrying about in my pack this morn.~
== BMINSC ~Boo says lady barbarian deserves a righteous butt-kicking, for speaking to us this way!~
== ~KKNavB~ ~虽然看你去试我倒会有点兴致，但我现在没这个心情。再说，那东西到底是什么？你叫它布？~
== BMINSC ~Boo is a miniature giant space hamster and smart too!~
== ~KKNavB~ ~比你聪明得多，远远超过。~
EXIT

CHAIN
IF 
~InParty("Minsc")
Global("KKNMinstalk2","LOCALS",0)
!StateCheck(Myself,CD_STATE_NOTVALID)
!StateCheck("Minsc",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
See("Minsc")
~ THEN ~KKNavB~ NMinstalk2
~我一直在观察你，明斯克，看来我错看了你。~ DO ~SetGlobal("KKNMinstalk2","LOCALS",1)~
== BMINSC ~Oh? Boo thinks Navarra feels bad for insulting Minsc.~
== ~KKNavB~ ~我觉得，尽管你脑子不太灵光，你对<CHARNAME>非常忠诚，战斗也很在行。我……尊重这一点。~
== BMINSC ~<CHARNAME> is friend to Minsc and Boo! Boo says Navarra is fierce warrior also, and together we will stab evil in it's black heart!~
== ~KKNavB~ ~That we will Minsc, and leave nothing but corpses in our wake!~
EXIT

CHAIN IF 
~Global("NavAnoTalk","LOCALS",0)
!StateCheck(Myself,CD_STATE_NOTVALID)
!StateCheck("Anomen",CD_STATE_NOTVALID)
CombatCounter(0)
!AreaType(DUNGEON)
InParty("Navarra")
See("Navarra")
~ THEN BANOMEN NavAno
~看得出你是位战士，女士。你可曾听说过海姆？~ DO ~SetGlobal("NavAnoTalk","LOCALS",1)~
== ~KKNavB~ ~海姆？海姆是什么？~
== BANOMEN ~I fear you feign ignorance of Helm, simply to mock me! I find it insulting.~
== ~KKNavB~ ~Arrogant male! It is you who insults me because I do not know. I am from Narfell and only Lathander, Tempus and Waukeen are worshiped there.~
== ~KKNavB~ ~直到最近，我从未离开过家乡。我还在了解这里的生活和文化。~
== BANOMEN ~Then I am sorry, my lady. I truly meant no offense. Would you like to learn more of Helm?~
== ~KKNavB~ ~没有。我的部落信奉坦帕斯，我是最虔诚的一个。~
EXIT

CHAIN IF 
~Global("NavAnoTalk2","LOCALS",0)
!StateCheck(Myself,CD_STATE_NOTVALID)
!StateCheck("Anomen",CD_STATE_NOTVALID)
CombatCounter(0)
!AreaType(DUNGEON)
InParty("Navarra")
See("Navarra")
~ THEN BANOMEN NavAno2
~女士，能借你片刻耳朵吗？有件事我必须问你。~ DO ~SetGlobal("NavAnoTalk2","LOCALS",1)~
== ~KKNavB~ ~如果你非问不可，男人。你想知道什么？~
== BANOMEN ~I have heard, though I am loathe to believe it, that your tribe regards men as slaves and treats them as such.~
== ~KKNavB~ ~确实，我从没对任何人隐瞒过。我猜知道这点让你很不舒服。~
== BANOMEN ~Indeed it does! Slavery is illegal, immoral and cannot be tolerated!~
== ~KKNavB~ ~你的问题是……？~
== BANOMEN ~How is it that you can commit such immoral acts against men, yet worship Tempus? Is he not a man?~
== ~KKNavB~ ~我的部落一直信奉坦帕斯。~ 
== ~KKNavB~ ~坦帕斯是战争之神，而我的族人永远在打仗。不是对抗天气，就是对抗祸害大地的怪物。~
== ~KKNavB~ ~他只在意荣誉之战，憎恶怯懦。蛮族绝不是懦夫。~
EXIT

CHAIN IF 
~Global("NavVictalk","LOCALS",0)
!StateCheck(Myself,CD_STATE_NOTVALID)
!StateCheck("Viconia",CD_STATE_NOTVALID)
CombatCounter(0)
!AreaType(DUNGEON)
See("Viconia")
~ THEN ~KKNavB~ NVictalk
~那些肮脏的男人为什么会那样对你，就因为你是卓尔？~ DO ~SetGlobal("NavVictalk","LOCALS",1)~
== BVICONI  ~That is the only reason, foolish woman!~
== ~KKNavB~ ~没必要因为一句提问就侮辱我。我以前见过卓尔。~
== ~KKNavB~ ~纳尔费尔没有卓尔。无论如何，他们竟敢伤害一个女人，就该死。~
== BVICONI  ~I have heard of the tribes, fierce warriors.~
== ~KKNavB~ ~我猜你自己也是个凶猛的战士。我想我们会相处得很好。~
EXIT

CHAIN IF 
~Global("KKNVictalk2","LOCALS",0)
!StateCheck(Myself,CD_STATE_NOTVALID)
!StateCheck("Viconia",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
See("Viconia")
~ THEN ~KKNavB~ NVictalk2
~你从哪里来，维康妮亚？~ DO ~SetGlobal("KKNVictalk2","LOCALS",1)~
== BVICONI  ~Ust Natha.~
== ~KKNavB~ ~那里是什么样子？我很想去看看。~
== BVICONI  ~You would not want to be there. It is evil.~
== BVICONI  ~From what I have heard, the slave pens might interest you.~
== ~KKNavB~ ~奴隶围栏？能给我一个吗？~
== BVICONI  ~No.~
== ~KKNavB~ ~买一个？~
== BVICONI  ~No.~
EXIT

CHAIN
IF 
~InParty("KKNavar")
Global("KKNVictalk3","LOCALS",0)
!StateCheck(Myself,CD_STATE_NOTVALID)
!StateCheck("Viconia",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
See("Viconia")
~ THEN ~BVICONI~ NVictalk3
~这肮脏的污水坑里当然有奴隶。你为什么想要我们的？~ DO ~SetGlobal("KKNVictalk3","LOCALS",1)~
== ~KKNavB~ ~Global("FreeSlaves","GLOBAL",1)~ ~以前有，直到<CHARNAME>把他们放了。我不习惯什么事都自己动手。~
== ~KKNavB~ ~!Global("FreeSlaves","GLOBAL",1)~ ~如果有，我也不知道在哪。我不习惯什么事都自己动手。~
== BVICONI ~Drow males are trained in the erotic arts, for sex.~
== ~KKNavB~ ~Global("KKEDSex","GLOBAL",1)~ ~那种东西我可不需要。~
== ~KKNavB~ ~!Global("KKEDSex","GLOBAL",1)~ ~听起来太完美了。你确定不能给我一个？~
== BVICONI  ~Global("KKEDSex","GLOBAL",1)~ ~卓尔男人技艺高超，不像那个你拿来消遣的塞伊男人。~
== BVICONI  ~!Global("KKEDSex","GLOBAL",1)~ ~确实。~
== BEDWIN IF ~InParty("Edwin") See("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ ~There is no match for my prowness, simian, No one pleases the ladies beeter than Edwin Odesseiron!~
EXIT

CHAIN
IF 
~InParty("KKNavar")
Global("KKNKortalk","LOCALS",0)
!StateCheck(Myself,CD_STATE_NOTVALID)
!StateCheck("KORGAN",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
See("KKNavar")
~ THEN ~BKORGAN~ NKortalk
~你长得真不赖，姑娘。~ DO ~SetGlobal("KKNKortalk","LOCALS",1)~
== ~KKNavB~ ~你竟敢跟我说话，矮子？~
== BKORGAN ~Ye cannae take a compliment?~
== ~KKNavB~ ~要那样，我得先自降到跟一个男人说话的地步。~
EXIT

CHAIN
IF 
~InParty("KKNavar")
Global("KKNKortalk2","LOCALS",0)
!StateCheck(Myself,CD_STATE_NOTVALID)
!StateCheck("KORGAN",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
See("KKNavar")
~ THEN ~BKORGAN~ NKortalk2
~你是在浪费时间跟那个法师甜言蜜语，姑娘。~ DO ~SetGlobal("KKNKortalk2","LOCALS",1)~
== ~KKNavB~ ~我看不出这跟你有任何关系，男人。~
== BKORGAN ~Ye must know he only loves himself. Now, if ye wan' a real man.~
== ~KKNavB~ ~做梦都别想，矮子。~
EXIT

CHAIN
IF 
~InParty("KKNavar")
Global("KKNJahtalk","LOCALS",0)
!StateCheck(Myself,CD_STATE_NOTVALID)
!StateCheck("Jaheira",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
See("KKNavar")
~ THEN ~BJAHEIR~ NJahtalk
~你把男人说成可以随意使用和虐待的财产，胆子不小。~ DO ~SetGlobal("KKNJahtalk","LOCALS",1)~
== ~KKNavB~ ~因为他们本来就是。他们没有别的用处。~
== BJAHEIR ~Gender(Player1,MALE)~ ~我对<CHARNAME>负有责任，我不会让你那样对待他。~
== BJAHEIR ~!Gender(Player1,MALE)~ ~Hmf! Foolish girl! You have no idea what your a talking about.~
EXIT

CHAIN
IF 
~InParty("KKNavar")
Global("KKNJahtalk2","LOCALS",0)
!StateCheck(Myself,CD_STATE_NOTVALID)
!StateCheck("Jaheira",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
See("KKNavar")
~ THEN ~BJAHEIR~ NJahtalk2
~我知道你蠢，但埃德温？你就没有一点自尊吗？~ DO ~SetGlobal("KKNJahtalk2","LOCALS",1)~
== ~KKNavB~ ~你管这做什么？你根本不喜欢他。~
== BJAHEIR ~Edwin is evil and cares for no one. You could have chosen someone more appropriate?~
== ~KKNavB~ ~Gender(Player1,MALE)~ ~更合适？比如说<CHARNAME>？埃德温容易操纵。~
== ~KKNavB~ ~Gender(Player1,MALE)~ ~<CHARNAME>可不容易。~
EXIT

CHAIN
IF 
~InParty("MAZZY")
Global("KKNMaztalk","LOCALS",0)
!StateCheck(Myself,CD_STATE_NOTVALID)
!StateCheck("MAZZY",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
See("MAZZY")
~ THEN ~KKNavB~ NMaztalk
~你是个非常出色的战士，玛兹。令人印象深刻。~ DO ~SetGlobal("KKNMaztalk","LOCALS",1)~
== BMAZZY ~Thank you. I have had a lifetime to train.~
== ~KKNavB~ ~是什么让你决定成为圣武士的？~
== BMAZZY ~It is calling, Navarra. My God required my service, and I answered.~
EXIT

CHAIN
IF 
~InParty("KKNavar")
Global("KKNMaztalk2","LOCALS",0)
Global("NavHasSword","LOCALS",1)
!StateCheck(Myself,CD_STATE_NOTVALID)
!StateCheck("KKNavar",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
See("KKNavar")
~ THEN ~BMAZZY~ NMaztalk2
~取回了那把剑，你一定很高兴。~ DO ~SetGlobal("KKNMaztalk2","LOCALS",1)~
== ~KKNavB~ ~非常高兴，这一路找得太久了。~
== BMAZZY ~It is a fine blade, to be sure.~
== ~KKNavB~ ~确实。剑能平安归还，族长奥萨雷娜会很高兴。~
== BMAZZY  ~You will be returning to Narfell then?~
== ~KKNavB~ ~Global("KKNavarRomanceActive","GLOBAL",2) !Global("KKEDRomanceActive","GLOBAL",1) !Global("KKEDRomanceActive","GLOBAL",2)~ ~是的，为了还剑。那之后做什么，我和<CHARNAME>还没决定要在哪里生活。~
== ~KKNavB~ ~Global("KKNavarRomanceActive","GLOBAL",1) Global("KKEDRomanceActive","GLOBAL",1)~ ~是的，为了还剑。那之后做什么，我还没决定。~
== ~KKNavB~ ~Global("KKEDRomanceActive","GLOBAL",1) !Global("KKNavarRomanceActive","GLOBAL",2) !Global("KKNavarRomanceActive","GLOBAL",1)~ ~是的，为了还剑。那之后做什么，我还没决定。~
== ~KKNavB~ ~Global("KKEDRomanceActive","GLOBAL",2) !Global("KKEDRomanceActive","GLOBAL",2) !Global("KKNavarRomanceActive","GLOBAL",1) !Global("KKNavarRomanceActive","GLOBAL",2)~ ~是的，为了还剑。那之后做什么，我还得和埃德温商量。~
EXIT

CHAIN
IF 
~InParty("Valygar")
Global("KKNValtalk","LOCALS",0)
!StateCheck(Myself,CD_STATE_NOTVALID)
!StateCheck("Valygar",CD_STATE_NOTVALID)
AreaType(OUTDOOR)
AreaType(FOREST)
CombatCounter(0)
!See([ENEMY])
See("Valygar")
~ THEN ~KKNavB~ NValtalk
~你干嘛在土里刨来刨去？~ DO ~SetGlobal("KKNValtalk","LOCALS",1)~
== BVALYGA ~There are some nice mushrooms here, for the stew.~
== ~KKNavB~ ~你怎么知道哪些能吃？~
== BVALYGA ~I would make a poor ranger if I did not.~
EXIT

CHAIN
IF 
~InParty("Valygar")
Global("KKNValtalk2","LOCALS",0)
!StateCheck(Myself,CD_STATE_NOTVALID)
!StateCheck("Valygar",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
See("Valygar")
~ THEN ~KKNavB~ NValtalk2
~我前阵子捡到这个，看起来像燧石。~ DO ~SetGlobal("KKNValtalk2","LOCALS",1)~
== BVALYGA ~Indeed it is, a fine piece too.~
== ~KKNavB~ ~我猜也是。我捡起来的时候想着你可能还需要更多。~
== BVALYGA ~That I do. Thank you.~
EXIT

CHAIN
IF 
~InParty("Cernd")
Global("KKNCertalk","LOCALS",0)
!StateCheck(Myself,CD_STATE_NOTVALID)
!StateCheck("Cernd",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
See("Cernd")
~ THEN ~KKNavB~ NCertalk2
~你做得对，把那孩子送走了。~ DO ~SetGlobal("KKNCertalk","LOCALS",1)~
== BCERND ~I placed Ahsdale where he can grow up protected.~
== ~KKNavB~ ~免得被一个不负责任的男人养大。~
EXIT

CHAIN
IF 
~InParty("Aerie")
Global("KKNAertalk","LOCALS",0)
!StateCheck(Myself,CD_STATE_NOTVALID)
!StateCheck("Aerie",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
See("Aerie")
~ THEN ~KKNavB~ NAertalk
~你怎么了？~ DO ~SetGlobal("KKNAertalk","LOCALS",1)~
== BAERIE ~What do you mean?.~
== ~KKNavB~ ~我从没见过这么爱抱怨的女人。你简直是一个人演一场自怜戏。~
== BAERIE ~T-that's not fair! I have been though a lot.~
== ~KKNavB~ ~那本该让你变得坚强，而不是把你变成个哭哭啼啼的娃娃。~
EXIT

CHAIN
IF 
~InParty("KKNavar")
Global("KKNAertalk2","LOCALS",0)
!StateCheck(Myself,CD_STATE_NOTVALID)
!StateCheck("KKNavar",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
See("KKNavar")
~ THEN ~BAERIE~ NAertalk2
~你为什么对我这么刻薄？~ DO ~SetGlobal("KKNAertalk2","LOCALS",1)~
== ~KKNavB~ ~我从没想刻薄。我知道你受过折磨，失去了翅膀。~
== ~KKNavB~ ~我知道我说的话听起来很刺耳。没有哪个女人该遭受那些。~
== BAERIE ~No one does, not just women.~
== ~KKNavB~ ~这可以争论，但我为惹你不快而抱歉。~
EXIT

CHAIN
IF 
~InParty("NALIA")
Global("KKNNaltalk","LOCALS",0)
!StateCheck(Myself,CD_STATE_NOTVALID)
!StateCheck("NALIA",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
See("NALIA")
~ THEN ~KKNavB~ NNaltalk
~你竟敢自恃高过那些不如你的人？~ DO ~SetGlobal("KKNNaltalk","LOCALS",1)~
== ~KKNavB~ ~我的族人有句格言：看功业，不看血统。~
== ~KKNavB~ ~是功业让我们高于他人，而不是某人的出身。~
== BNALIA ~I don't think I'm better, just better off than those who are poor.~
== BNALIA ~And, I have helped some of them before. Isn't that a good deed?~
== ~KKNavB~ ~怎么？给他们钱，然后拿你的出身往他们脸上抹？~
== ~KKNavB~ ~给谁？这些肮脏的男人？他们会坐到最后一枚钱币花光为止。~
== ~KKNavB~ ~只有女人才有足够的头脑好好利用它。~
== BNALIA ~Of course I gave them coin. They have to eat.~
== BNALIA ~And furthermore, women are no better then men. Why would you say such a thing?~
== ~KKNavB~ ~因为我们确实如此。嗯，也许不包括你。~
EXIT

CHAIN
IF 
~InParty("NALIA")
Global("KKNNaltalk2","LOCALS",0)
!StateCheck(Myself,CD_STATE_NOTVALID)
!StateCheck("NALIA",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
See("NALIA")
~ THEN ~KKNavB~ NNaltalk2
~我渐渐明白了，你之所以这样，是因为你受的教育。~ DO ~SetGlobal("KKNNaltalk2","LOCALS",1)~
== ~KKNavB~ ~你从小被教导，高贵与财富让你高于他人。~
== ~KKNavB~ ~对我而言也是一样。我从小被教导，男人除了做奴隶别无用处。~
== BNALIA ~In my case, it is true. But for you, that is just wrong. No one deserves to be a slave.~
== ~KKNavB~ ~本来我打算为之前说的话道歉。现在不了。~
EXIT

CHAIN
IF 
~InParty("KKNavar")
Global("KKNYostalk","LOCALS",0)
!StateCheck(Myself,CD_STATE_NOTVALID)
!StateCheck("KKNavar",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
See("KKNavar")
~ THEN ~BYOSHIM~ NYostalk
~Friend Navarra! How do you fair, this fine day?~ DO ~SetGlobal("KKNYostalk","LOCALS",1)~
== ~KKNavB~ ~我不是你的朋友，男人。~
== BYOSHIM ~Such a harsh welcome! What is it I have done to cause such offense?~
== ~KKNavB~ ~除了你是个男人这一点，没有别的原因。~
EXIT

CHAIN
IF 
~InParty("Yoshimo")
Global("KKNYostalk2","LOCALS",0)
!StateCheck(Myself,CD_STATE_NOTVALID)
!StateCheck("Yoshimo",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
See("Yoshimo")
~ THEN ~KKNavar~ NYostalk2
~看来我错看了你，吉斯莫。~ DO ~SetGlobal("KKNYostalk2","LOCALS",1)~
== ~KKNavB~ ~身为盗贼，你倒是个有荣誉感的。~
== BYOSHIM ~What brings you to this conclusion?~
== ~KKNavB~ ~你没偷我们任何人的东西。我只是看见你在铜冠酒馆里偷了别人。~
== BYOSHIM ~You have a very keen eye, friend Navarra, not many can catch me.~
== ~KKNavB~ ~我们纳人必须对任何事都有准备。要活下来得有一双锐利的眼睛。~
EXIT

CHAIN
IF 
~InParty("Imoen2")
Global("KKNImotalk","LOCALS",0)
!StateCheck(Myself,CD_STATE_NOTVALID)
!StateCheck("Imoen2",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
See("Imoen2")
~ THEN ~KKNavar~ NImotalk
~终于见到你真是荣幸，爱蒙。我听过很多关于你的事。~ DO ~SetGlobal("KKNImotalk","LOCALS",1)~
== BIMOEN2 ~Don't believe everything you hear.~
== ~KKNavB~ ~我相信的是，你经历过一场可怕的遭遇。~
== ~KKNavB~ ~而且即便如此仍然坚强。顺便说，我叫纳瓦拉。~
== BIMOEN2 ~It's nice to meet you, Navarra. And thank you, though I don't feel very strong right now.~
== ~KKNavB~ ~现在一切都会好起来的，你看着吧。~
EXIT

CHAIN
IF 
~InParty("Jan")
Global("KKNJantalk","LOCALS",0)
!StateCheck(Myself,CD_STATE_NOTVALID)
!StateCheck("Jan",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
See("Jan")
~ THEN ~KKNavar~ NJantalk
~那股恶臭是什么？~ DO ~SetGlobal("KKNJantalk","LOCALS",1)~
== BJAN ~You don't like the smell of turnips?~
== ~KKNavB~ ~Turnips? You smell like mud and dung!~
== BJAN ~Dung makes an excellent fertilizer, you know. My grandaunt..~
== ~KKNavB~ ~Stop right there! One more of your stories and I will flay you alive.~
EXIT

CHAIN
IF 
~InParty("KKNavar")
Global("KKNKeltalk","LOCALS",0)
!StateCheck(Myself,CD_STATE_NOTVALID)
!StateCheck("Keldorn",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
See("KKNavar")
~ THEN ~KKNavar~ NKeltalk
~你身上那个符号是什么？~ DO ~SetGlobal("KKNKeltalk","LOCALS",1)~
== ~KKNavB~ ~血红色盾牌上的一把燃烧的银剑。~ 
== BKELDOR ~What does it represent? It seems I should know, somehow.~
== ~KKNavB~ ~那是坦帕斯的象征。~
== BKELDOR ~Tempus! How could you worship such a bloodthirsty God?~
== ~KKNavB~ ~我是蛮族战士，你这个自以为是的东西。~
== ~KKNavB~ ~坦帕斯不在乎血统。他赞扬荣誉之战，憎恶怯懦。~
== ~KKNavB~ ~用我的剑来解决争端，并不能说明我嗜血。~
EXIT

CHAIN
IF 
~InParty("KKNavar")
Global("KKNHaetalk","LOCALS",0)
!StateCheck(Myself,CD_STATE_NOTVALID)
!StateCheck("HaerDalis",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
See("KKNavar")
~ THEN ~BHAERDA~ NHaetalk
~你是个凶猛的战士，我亲爱的小鹪鹩。~ DO ~SetGlobal("KKNHaetalk","LOCALS",1)~
== ~KKNavB~ ~谢谢，我从小就一直在训练。~ 
== ~KKNavB~ ~这就是你一直盯着我看的原因？~
== BHAERDA ~This sparrow stands in awe of your beauty, my hummingbird.~
== ~KKNavB~ ~我相信你能活下来。别再盯着我就行。~
EXIT