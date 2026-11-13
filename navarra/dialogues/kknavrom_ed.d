
CHAIN
IF WEIGHT #-1 ~Global("KKEDRomTalk","GLOBAL",2)~ THEN ~KKNavJ~ NE1
~我听说塞伊人对肉欲之欢胃口很好，还以自己的技巧为傲。是这样吗？~ 
DO ~SetGlobal("KKEDRomTalk","GLOBAL",3) RealSetGlobalTimer("KKNavEdTimer","GLOBAL",900)~ 
== EDWINJ ~No one can match the prowess of Edwin Odesseiron! (Stupid girl! Why bother me with such nonsense!)~
== ~KKNavJ~ ~也许下次我们扎营时，你愿意证明一下。~
== EDWINJ ~WHAT! No! Well...No! I would not lower myself with the likes of a barbaric simian! (The wench is comely in a brutish sort of way... it could be pleasing.. No!)~  
== ~KKNavJ~ ~我们扎营时，我要看到证明。~
EXIT 

CHAIN
IF WEIGHT #-1 ~Global("KKEDRomTalk","GLOBAL",4)~ THEN ~KKNavJ~ NE2
~给我变一匹马出来。我想骑马。~
DO ~SetGlobal("KKEDRomTalk","GLOBAL",5) RealSetGlobalTimer("KKNavEdTimer","GLOBAL",900)~ 
== EDWINJ ~A horse! You can... wait, you must be from Narfell.~
== ~KKNavJ~ ~是的，我是纳人，也是个熟练的骑手。我发现自己不喜欢处处靠走。~
== EDWINJ ~I have seen Nar horses in Thay. They are quite impressive beasts, in spite of being bred by barbaric monkeys.~
== ~KKNavJ~ ~你想侮辱就侮辱吧，我不在乎了。只管给我变一匹马。~
== EDWINJ ~I do not have the spell to do so, and walking is good for you.~ 
EXIT

CHAIN
IF WEIGHT #-1 ~Global("KKEDRomTalk","GLOBAL",6)~ THEN ~KKNavJ~ NE3
~（掀开埃德温帐篷的门帘，走了进去。）~
DO ~SetGlobal("KKEDRomTalk","GLOBAL",7) RealSetGlobalTimer("KKNavEdTimer","GLOBAL",900)~ 
== EDWINJ ~What are doing in my tent, you barbaric ape!~
== ~KKNavJ~ ~你现在就跟我上床，法师。~
== EDWINJ ~I will WHAT!? You, stupid girl, haven't the smallest hope of me doing such a thing.~
== ~KKNavJ~ ~我的奴隶死了，不能再伺候我了。~
== ~KKNavJ~ ~你吹嘘过自己技艺超群，我也确实告诉过你，要你在我们扎营时证明一下。~
== ~KKNavJ~ ~所以，你来伺候我，跟我上床。我没耐心容忍违抗。~
== EDWINJ ~I will do no such thing! Now go away, you irritating simian, before I make you with a fireball.~
DO ~RestParty()~
EXIT

CHAIN
IF WEIGHT #-1 ~Global("KKEDRomTalk","GLOBAL",8)~ THEN ~KKNavJ~ NE4
~你去过纳尔费尔吗，埃德温？~
DO ~SetGlobal("KKEDRomTalk","GLOBAL",9) RealSetGlobalTimer("KKNavEdTimer","GLOBAL",900)~ 
== EDWINJ ~Only twice.~
== ~KKNavJ~ ~我猜是为了交易会？~
== EDWINJ ~Well of course, stupid girl! Why else would anyone in their right mind go there.~
EXIT

CHAIN
IF WEIGHT #-1 ~Global("KKEDRomTalk","GLOBAL",10)~ THEN ~KKNavJ~ NE5
~你为什么离开塞伊，埃德温？~
DO ~SetGlobal("KKEDRomTalk","GLOBAL",11) RealSetGlobalTimer("KKNavEdTimer","GLOBAL",900)~ 
== EDWINJ ~I fail to see how that is any of your business.~
== ~KKNavJ~ ~也许你是被迫离开的？因为你那张尖刻的嘴，或者被人撞见跟别人的妻子在一起？~
== EDWINJ ~There are those that appreciate my tongue, vile woman!~
== EDWINJ ~And, I have plenty of women begging me for attention. I do not need someone else's!~ 
== ~KKNavJ~ ~我没看到任何证据表明有人求过你什么。~
== ~KKNavJ~ ~你投奔盗贼公会是另有原因。~
== EDWINJ ~That is my business, go annoy someone else.~
EXIT

CHAIN
IF WEIGHT #-1 ~Global("KKEDRomTalk","GLOBAL",12)~ THEN ~KKNavJ~ NE6
~有心事？你看起来想得很深。~
DO ~SetGlobal("KKEDRomTalk","GLOBAL",13) RealSetGlobalTimer("KKNavEdTimer","GLOBAL",900)~ 
== EDWINJ ~Someone with my superior intellect is always deep in thought. It alleviates the boredom of being surrounded by simpletons.~
== ~KKNavJ~ ~又来了。你能不能把那份巨大的自负放一边，好好聊几句？~
== EDWINJ ~I do not have a giant ego, silly girl. I am merely pointing out that I am smarter than this group of misfits.~
== ~KKNavJ~ ~我看我们得回到我的问题，免得这场谈话失控。~
== EDWINJ ~You asked me why I left Thay... do you still want to know?~
== ~KKNavJ~ ~当然，否则我就不会问了。请告诉我。~
== EDWINJ ~I was sent to find and kill a witch from Rashemen. I ended up in Nashkel, and that is where I met <CHARNAME>. Happy now?!~
== ~KKNavJ~ ~你成没成功是你自己的事。但这不能解释你为什么会自贬身价去替那些盗贼干活。~
== EDWINJ ~And that, is also my business.~
EXIT

CHAIN
IF WEIGHT #-1 ~Global("KKEDRomTalk","GLOBAL",14)~ THEN ~KKNavJ~ NE7
~埃德温？我好像需要点帮助。~ 
DO ~SetGlobal("KKEDRomTalk","GLOBAL",15) RealSetGlobalTimer("KKNavEdTimer","GLOBAL",900)~ 
== EDWINJ ~Have you nothing else to do but bother me?~ [EDWIN25] 
== ~KKNavJ~ ~说真的，埃德温。你非得装得这么难相处吗？我只是想让你教我怎么搭帐篷。~ 
== EDWINJ ~I am not pretending! There are others here who can do these trivial things for you, why must it always be me?~
== ~KKNavJ~ ~因为你的巨大自负爱受关注，而且你看起来反正也替我做了。~
== EDWINJ ~You tricked me into doing it for you, by distracting me!~
== ~KKNavJ~ ~承认吧，埃德温。你喜欢为我做事。~ 
== EDWINJ ~ONE DAY...ONE DAY~ [EDWIN29]  
DO ~RestParty()~
EXIT

CHAIN
IF WEIGHT #-1 ~Global("KKEDRomTalk","GLOBAL",16)~ THEN ~KKNavJ~ NE8
~（轻笑）~ 
DO ~SetGlobal("KKEDRomTalk","GLOBAL",17) RealSetGlobalTimer("KKNavEdTimer","GLOBAL",900)~ 
== EDWINJ ~What is so amusing?~ 
== ~KKNavJ~ ~你说梦话。~
== EDWINJ ~Edwin Odesseiron never talks in his sleep! Go prattle elsewhere barbarian.~
== ~KKNavJ~ ~好吧。可我昨晚走过你帐篷时，听见了。~
== EDWINJ ~While I am quite certain you were obviously hearing things, what is it your limited imagination heard?~
== ~KKNavJ~ ~你想怎么侮辱就怎么侮辱吧，法师，我们都知道你那番话相当……火热。~
== EDWINJ ~I know nothing of the sort! A wizard of my greatness can not be bothered by such nonsense. (She did not hear me... of course she did, that nosy ape!)~
== ~KKNavJ~ ~随你怎么说，埃德温。你的秘密我替你保密……暂时。~
EXIT

CHAIN
IF WEIGHT #-1 ~Global("KKEDRomTalk","GLOBAL",18)~ THEN ~KKNavJ~ NE9
~谢谢你帮我生火，埃德温。你真好心。~
DO ~SetGlobal("KKEDRomTalk","GLOBAL",19) RealSetGlobalTimer("KKNavEdTimer","GLOBAL",900)~ 
== BEDWIN ~SWEET! I am not sweet, you insolent fool!~
== ~KKNavB~ ~哦，我明白了。那你做这事，是因为想当我的奴隶？~
== BEDWIN ~Slave!? You are clearly insane, woman. Your barbaric ways have caused too many injuries to your already limited intelligence.~
== ~KKNavB~ ~那你是出于好意才做的，你真贴心。~
== BEDWIN ~No! You are twisting my words! (One fireball would shut this idiot girl up. But she may have a point... why did I do it?)~
== ~KKNavB~ ~你想骗自己就骗吧，埃德温。但我知道，在那份巨大自负底下，你是个温柔的人。~
EXIT

CHAIN
IF WEIGHT #-1 ~Global("KKEDRomTalk","GLOBAL",20)~ THEN ~KKNavJ~ NE10
~你为什么瞪着我？我牙上粘了东西吗？~
DO ~SetGlobal("KKEDRomTalk","GLOBAL",21) RealSetGlobalTimer("KKNavEdTimer","GLOBAL",900)~ 
== EDWINJ ~You take great pleasure in provoking me, woman!~
== ~KKNavJ~ ~现在又怎么了？~
== EDWINJ ~Someone heard you! Do not deny it!~
== ~KKNavJ~ ~你在说什么？~
== EDWINJ ~Have you not seen the way these vile simians look at me? Do you deny hearing the snickering?~
== ~KKNavJ~ ~这些我都不否认，可那怎么能怪我？~
== EDWINJ ~Someone heard you call me sweet! Take it back, right now.~
== ~KKNavJ~ ~我不会做这种事。你要他们停，就自己去说。~
== ~KKNavJ~ ~或者试试你从没做过的事，好好请求。~
EXIT

CHAIN
IF WEIGHT #-1 ~Global("KKEDRomTalk","GLOBAL",22)~ THEN ~KKNavJ~ NE11
~你知道，你该多那样做。~
DO ~SetGlobal("KKEDRomTalk","GLOBAL",23)  RealSetGlobalTimer("KKNavEdTimer","GLOBAL",900)~ 
== EDWINJ ~What are you prattling on about now, woman. I have done nothing.~
== ~KKNavJ~ ~我看见你笑了，我从没见你那样过。~
== EDWINJ ~Nonsense. Edwin Odesseiron does not smile, it was merely my usual scowl.~
== ~KKNavJ~ ~这皱眉很好看，我很喜欢。~
EXIT

CHAIN
IF WEIGHT #-1 ~Global("KKEDRomTalk","GLOBAL",24)~ THEN ~KKNavJ~ NE12
~我渐渐发现了你的一些事，埃德温。~
DO ~SetGlobal("KKEDRomTalk","GLOBAL",25) SetGlobal("KKEDSex","GLOBAL",1) RealSetGlobalTimer("KKNavEdTimer","GLOBAL",900)~ 
== EDWINJ ~Hard for me to imagine, given your limited intelligence, but what have you realized?~
== ~KKNavJ~ ~虽然你经常吹嘘自己的床上功夫，但我渐渐明白，那不过是吹嘘。~
== ~KKNavJ~ ~你那样做只是为了让自己好受些。为了掩盖你在那方面缺乏技巧。~
== EDWINJ ~WHAT!? Woman, you know nothing about my skill. I assure you, they are superior compared to any others.~
== ~KKNavJ~ ~随你怎么说，你的秘密我替你保密。我不会告诉任何人你没法让女人满足。~
== ~KKNavJ~ ~（她意识到自己激怒埃德温冒了很大风险，屏住呼吸等他的反应。埃德温平静地握住她的手，在她耳边低语：「跟我来。」纳瓦拉感到埃德温的气息拂过肌肤，呼吸一滞。她像在梦中一样跟着他走。脑中一片混乱，她的身体从未对任何男人有过这样的反应。可这些感觉又难以忽视。她忽然发现自己已站在埃德温的帐篷里。）~
== EDWINJ ~Now you will get the proof you demanded, woman.~
DO ~RestParty()~
EXIT

CHAIN
IF WEIGHT #-1 ~Global("KKEDRomTalk","GLOBAL",26)~ THEN ~KKNavJ~ NE13
~你最近常来我帐篷，法师。~
DO ~SetGlobal("KKEDRomTalk","GLOBAL",27) RealSetGlobalTimer("KKNavEdTimer","GLOBAL",900)~ 
== EDWINJ ~Are you complaining? Women usually beg me to bed them, as I am highly skilled in that area.~
== ~KKNavJ~ ~不，我没有，但我也没看到任何证据表明有女人求你什么。~
== ~KKNavJ~ ~也许乞求只发生在你梦里。~
== EDWINJ ~Say what you wish, but you are pleased with my skills.~
== ~KKNavJ~ ~我承认，你的技巧还算过得去。~
== EDWINJ ~Adequate! You know nothing of skill, simian. Those slaves you normally bed, must be clueless in the art of pleasing women.~
EXIT

CHAIN
IF WEIGHT #-1 ~Global("KKNavarEDDrow","LOCALS",1)~ THEN ~KKNavJ~ NEDrow1
~我得说，你看起来很性感。~ DO ~SetGlobal("KKNavarEDDrow","LOCALS",2)~
== EDWINJ ~I most certainly do not! This is unacceptable.~ 
== ~KKNavJ~ ~我也不喜欢这副模样，但你不如好好利用它。~
== ~KKNavJ~ ~也许我们可以在那里的时候，找时间溜进欢愉室。~
== EDWINJ ~That would make this dreadful experience worth it.~
EXIT 

CHAIN
IF WEIGHT #-1 ~Global("KKEdwina","GLOBAL",2)~ THEN ~KKNavJ~ NED1
~嗯，这倒是个有趣的转折。~
DO ~SetGlobal("KKEdwina","GLOBAL",3) RealSetGlobalTimer("KKNavEdTimer","GLOBAL",300)~ 
== EDWINJ ~This is terrible!~
== ~KKNavJ~ ~我想我更喜欢你这个样子。~
== EDWINJ ~How dare you say such a thing! I am a woman!~
== ~KKNavJ~ ~毕竟我们才是更优越的性别。而且那件袍子现在穿在你身上好看多了。~
== EDWINJ ~You think so? NO! I can not be a woman!~
== ~KKNavJ~ ~哦，是的，你有曲线。胸部也填得很饱满。~
EXIT

CHAIN
IF WEIGHT #-1 ~Global("KKEdwina","GLOBAL",4)~ THEN ~KKNavJ~ NED2
~你怎么了？~
DO ~SetGlobal("KKEdwina","GLOBAL",5) RealSetGlobalTimer("KKNavEdTimer","GLOBAL",300)~
== EDWINJ ~Why is that man staring at me like that?~
== ~KKNavJ~ ~跟你每次看到自以为有魅力的女人就盯着看，是同样的理由。~
== EDWINJ ~I will gouge out his eyes!~
== ~KKNavJ~ ~你现在是女人了，埃德温娜，他只是在做每个男人对女人都会做的事。~
== EDWINJ ~He thinks I am attractive? What am I saying! And do not call me that, my name is Edwin!~
EXIT

CHAIN
IF WEIGHT #-1 ~Global("KKEdwina","GLOBAL",6)~ THEN ~KKNavJ~ NED3
~（埃德温娜抓住你的手臂，把你拉近她。）~
DO ~SetGlobal("KKEdwina","GLOBAL",7) RealSetGlobalTimer("KKNavEdTimer","GLOBAL",300)~
== EDWINJ ~Navarra...~
== ~KKNavJ~ ~怎么了，埃德温娜，你为什么这么小声说话？~
== EDWINJ ~What do you do when you have to er.. relieve yourself out here in woods?~
== ~KKNavJ~ ~Oh this is too funny! You do not know what to do, now that you do not have a...~
== EDWINJ ~STOP! Do not say it! It is humiliating! Just tell me what to do.~
== ~KKNavJ~ ~把袍子撩起来，免得弄脏，然后蹲下。~
== EDWINJ ~Oh this is too much!~
EXIT

CHAIN
IF WEIGHT #-1 ~Global("KKEdwina","GLOBAL",8)~ THEN ~KKNavJ~ NED4
~你适应新生活了吗？~
DO ~SetGlobal("KKEdwina","GLOBAL",9) RealSetGlobalTimer("KKNavEdTimer","GLOBAL",300)~
== EDWINJ ~How do think, imbecile! I soiled my robe trying not to be humiliated!~ 
== EDWINJ ~My backside was exposed just trying to relieve myself. Someone could have seen me.~
== ~KKNavJ~ ~白痴，是吗？好，你自己处理吧。我懒得跟你说了。~
EXIT

CHAIN
IF WEIGHT #-1 ~Global("KKEdwina","GLOBAL",10)~ THEN ~KKNavJ~ NED5
~（你停下来从靴子里取出一块石头，感觉有人拍了拍你的肩膀。）~
DO ~SetGlobal("KKEdwina","GLOBAL",11) RealSetGlobalTimer("KKNavEdTimer","GLOBAL",300)~
== EDWINJ ~Navarra...~
== ~KKNavJ~ ~（翻了个白眼，不理埃德温。）~
== EDWINJ ~Navarra, please... I... I am sorry for speaking to you like that.~
== EDWINJ ~I can not take this anymore, I have to fix this. I despise being a woman.~
== ~KKNavJ~ ~是的，我想你会。我一想到自己是个男人就受不了。~
== ~KKNavJ~ ~好吧，我原谅你。但别再这样，否则我永远不理你。~
== EDWINJ ~Thank you. I never apologize for anything, ever. That was difficult, but I meant it.~
== ~KKNavJ~ ~这一点我毫不怀疑。我得说，我挺喜欢你这一面。~
== ~KKNavJ~ ~当女人改善了你的行为和对待女人的方式。~
EXIT

CHAIN
IF WEIGHT #-1 ~Global("KKEdwina","GLOBAL",12)~ THEN ~KKNavJ~ NED6
~高兴回到原来的自己了？~
DO ~SetGlobal("KKEdwina","GLOBAL",13) RealSetGlobalTimer("KKNavEdTimer","GLOBAL",300)~
== EDWINJ ~Of course! My superior manly frame has returned, no traces of that hideous body remain.~
== ~KKNavJ~ ~很高兴听你这么说，你的哭哭啼啼我实在受不了更多了。~
== EDWINJ ~Edwin Odesseiron never weeps, you sim..er.. woman! I was merely distressed by my dilemma.~
== ~KKNavJ~ ~如果你这么说，我只高兴现在一切都好了。我得承认，我确实想念那张英俊的脸。~
== EDWINJ ~How could you not?~
== ~KKNavJ~ ~确实。我看你还是那份过大的自负。~
== EDWINJ ~There is a matter I wish to discuss with you. Tonight when we make camp?~
== ~KKNavJ~ ~我会在我帐篷里等你。~
EXIT

CHAIN
IF WEIGHT #-1 ~Global("KKEdwina","GLOBAL",14)~ THEN ~KKNavJ~ NED7
~你想跟我谈什么？~
DO ~SetGlobal("KKEdwina","GLOBAL",13) SetGlobal("KKEDSex","GLOBAL",1) RealSetGlobalTimer("KKNavEdTimer","GLOBAL",300)~
== EDWINJ ~I would like to have your assistance in conducting an er.. experiment.~
== ~KKNavJ~ ~请告诉我你没又找到一张卷轴。~
== EDWINJ ~No, nothing of the sort. An experiment to see if I am fully recovered.~
== EDWINJ ~To make sure everything is... working properly.~
== ~KKNavJ~ ~我明白了……好吧，我确信你恢复正常了，我来帮你做你的「实验」。~
== ~KKNavJ~ ~把那件袍子脱了，帅哥。~
DO ~RestParty()~
EXIT

CHAIN
IF WEIGHT #-1 ~Global("KKEdwina","GLOBAL",16)~ THEN ~KKNavJ~ NED8
~有件事我们必须谈谈。~
DO ~SetGlobal("KKEDRomanceActive","GLOBAL",2) SetGlobal("KKEdwina","GLOBAL",17) RealSetGlobalTimer("KKNavEdTimer","GLOBAL",300)~
== ~KKNavJ~ ~我们一起经历了那么多。你变成女人……~
== ~KKNavJ~ ~不过我想，那次经历对你的影响比你预料的更大。~
== ~KKNavJ~ ~它影响了我，以我无法想象的方式。我当时真的害怕。怕你会永远那样下去。~
== EDWINJ ~The thought had crossed my mind, briefly. But yes, it bothered me.~
== ~KKNavJ~ ~Bothered you? You act as if it was minor inconvience! I was afraid I had lost you forever.~ 
== EDWINJ ~What are saying?~
== ~KKNavJ~ ~我爱你，埃德温。老实告诉我，你对我有感情吗？~
== EDWINJ ~If you must know, yes. I realized it when I thought you were going to bed that filthy ape.~
== EDWINJ ~I have never been a nice person. Yes yes I know, you say otherwise. But I want to try, for you.~
DO ~ChangeAlignment("Edwin",NEUTRAL)~
EXIT

CHAIN
IF WEIGHT #-1 ~Global("KKEDWoman","GLOBAL",2)~ THEN ~KKNavJ~ NAEDW1
~Now look what you have done to yourself! So greedy for power, it blew up in your face.~
DO ~SetGlobal("KKEDWoman","GLOBAL",3) RealSetGlobalTimer("KKNavEdTimer","GLOBAL",300)~ 
== EDWINJ ~You think this is funny, do you not! Look at me, I am a woman!.~
== ~KKNavJ~ ~你活该，玩弄你自己一窍不通的魔法。~
== ~KKNavJ~ ~永远不满足于已有的力量，总想要更多。却又没脑子知道该怎么用。~
== EDWINJ ~Insult me if you must, but this is terrible! I can not be a woman!~
== ~KKNavJ~ ~为什么不？至少现在你是更优越的性别。不过你现在得找个男人上床了，我不跟女人上床。~
EXIT

CHAIN
IF WEIGHT #-1 ~Global("KKEDWoman","GLOBAL",4)~ THEN ~KKNavJ~ NED2
~你怎么了？~
DO ~SetGlobal("KKEDWoman","GLOBAL",5) RealSetGlobalTimer("KKNavEdTimer","GLOBAL",300)~
== EDWINJ ~Why is that man staring at me like that?~
== ~KKNavJ~ ~跟你每次看到自以为有魅力的女人就盯着看，是同样的理由。~
== EDWINJ ~I will gouge out his eyes!~
== ~KKNavJ~ ~你现在是女人了，埃德温娜，他只是在做每个男人对女人都会做的事。~
== EDWINJ ~He thinks I am attractive? What am I saying! And do not call me that, my name is Edwin!~
EXIT

CHAIN
IF WEIGHT #-1 ~Global("KKEDWoman","GLOBAL",6)~ THEN ~KKNavJ~ NED3
~（埃德温娜抓住你的手臂，把你拉近她。）~
DO ~SetGlobal("KKEDWoman","GLOBAL",7) RealSetGlobalTimer("KKNavEdTimer","GLOBAL",300)~
== EDWINJ ~Navarra...~
== ~KKNavJ~ ~怎么了，埃德温娜，你为什么这么小声说话？~
== EDWINJ ~What do you do when you have to er.. relieve yourself out here in woods?~
== ~KKNavJ~ ~Oh this is too funny! You do not know what to do, now that you do not have a...~
== EDWINJ ~STOP! Do not say it! It is humiliating! Just tell me what to do.~
== ~KKNavJ~ ~把袍子撩起来，免得弄脏，然后蹲下。~
== EDWINJ ~Oh this is too much!~
EXIT

CHAIN
IF WEIGHT #-1 ~Global("KKEDWoman","GLOBAL",8)~ THEN ~KKNavJ~ NED4
~你适应新生活了吗？~
DO ~SetGlobal("KKEDWoman","GLOBAL",9) RealSetGlobalTimer("KKNavEdTimer","GLOBAL",300)~
== EDWINJ ~How do think, imbecile! I soiled my robe trying not to be humiliated!~ 
== EDWINJ ~My backside was exposed just trying to relieve myself. Someone could have seen me.~
== ~KKNavJ~ ~白痴，是吗？好，你自己处理吧。我懒得跟你说了。~
EXIT

CHAIN
IF WEIGHT #-1 ~Global("KKEDWoman","GLOBAL",10)~ THEN ~KKNavJ~ NAEDW2
~（埃德温娜冲到你面前，抓住你的手臂。）~
DO ~SetGlobal("KKEDWoman","GLOBAL",11) RealSetGlobalTimer("KKNavEdTimer","GLOBAL",300)~
== EDWINJ ~Navarra, what are you doing?~
== ~KKNavJ~ ~现在不行。埃德温娜，我很忙。~
== EDWINJ ~You are not seriously going upstairs with that filthy ape, are you?~
== EDWINJ ~And stop calling me that, you barbaric simian! My name is Edwin!~
== ~KKNavJ~ ~他不是最好看的男人。但至少干净。是的，为什么问？~
== EDWINJ ~That is precisely what I want to know, why?~
== ~KKNavJ~ ~我去一个男人的房间只有一个理由，你知道的。~
== ~KKNavJ~ ~你怎么了，你是在吃醋吗？~
== EDWINJ ~Edwin Odesseiron does not get jealous! (I am NOT jealous... am I?)~
== ~KKNavJ~ ~非得骗自己，那就骗吧。早上见。~
DO ~RestParty()~
EXIT

CHAIN
IF WEIGHT #-1 ~Global("KKEDWoman","GLOBAL",12)~ THEN ~KKNavJ~ NAEDW3
~早上好，埃德温娜。~
DO ~SetGlobal("KKEDWoman","GLOBAL",13) RealSetGlobalTimer("KKNavEdTimer","GLOBAL",300)~
== EDWINJ ~Did your monkey perform well, last night?~
== ~KKNavJ~ ~那男人还算过得去，为什么问？你要的话今晚可以给你，我对他没别的用了。~
== EDWINJ ~I knew he would never measure up to my superior prowess. (No one pleases the ladies as well as Edwin Odesseiron!)~
== ~KKNavJ~ ~I knew it! You are jealous!~
== EDWINJ ~No! I do not get jealous. I am merely stating that he could never please you as well as I do.~
== ~KKNavJ~ ~这点你错了。以你现在的状况，你根本没法让我满足。~
== EDWINJ ~I will not be like this forever, woman! When I am myself again, you will eat those words!~
EXIT

CHAIN
IF WEIGHT #-1 ~Global("KKEDWoman","GLOBAL",14)~ THEN ~KKNavJ~ NAEDW4
~不管是什么，你自己留着吧。~
DO ~SetGlobal("KKEDWoman","GLOBAL",15) RealSetGlobalTimer("KKNavEdTimer","GLOBAL",300)~
== EDWINJ ~I suppose you intend to find some other ape to attend to you tonight.~
== ~KKNavJ~ ~我没怎么想过，但看来你想过。~
== EDWINJ ~I am merely concerned for <CHARNAME>. If you choose the wrong one, you could end up with a dagger in your back.~
== ~KKNavJ~ ~那跟<CHARNAME>有什么关系，具体说说？~
== EDWINJ ~<PRO_HESHE> will have to find someone else to replace you. I shutter think what kind of idiot could infect this group of miscreants.~
== ~KKNavJ~ ~理由编得很有创意，可惜是谎话。你就不能承认自己在吃醋吗？~
== EDWINJ ~I am not jealous!~
EXIT

CHAIN
IF WEIGHT #-1 ~Global("KKEDWoman","GLOBAL",16)~ THEN ~KKNavJ~ NED5
~（你停下来从靴子里取出一块石头，感觉有人拍了拍你的肩膀。）~
DO ~SetGlobal("KKEDWoman","GLOBAL",17) RealSetGlobalTimer("KKNavEdTimer","GLOBAL",300)~
== EDWINJ ~Navarra...~
== ~KKNavJ~ ~（翻了个白眼，不理埃德温。）~
== EDWINJ ~Navarra, please... I... I am sorry for speaking to you like that.~
== EDWINJ ~I can not take this anymore, I have to fix this. I despise being a woman.~
== ~KKNavJ~ ~是的，我想你会。我一想到自己是个男人就受不了。~
== ~KKNavJ~ ~好吧，我原谅你。但别再这样，否则我永远不理你。~
== EDWINJ ~Thank you. I never apologize for anything, ever. That was difficult, but I meant it.~
== ~KKNavJ~ ~这一点我毫不怀疑。我得说，我挺喜欢你这一面。~
== ~KKNavJ~ ~当女人改善了你的行为和对待女人的方式。~
EXIT

CHAIN
IF WEIGHT #-1 ~Global("KKEDWoman","GLOBAL",18)~ THEN ~KKNavJ~ NAEDW5
~（埃德温娜粗暴地抓住你的手臂，想把你拉到外面。）~
DO ~SetGlobal("KKEDWoman","GLOBAL",19) RealSetGlobalTimer("KKNavEdTimer","GLOBAL",300)~
== EDWINJ ~Stop right there, woman!~
== ~KKNavJ~ ~Edwina, what are you doing? Let go of me, everyone is staring at us!~
== EDWINJ ~I will not allow you to do this!~
== ~KKNavJ~ ~你「不允许」我？~
== EDWINJ ~Insolent woman! Do not do this. I do not want you bedding another one of these wretched apes.~
== ~KKNavJ~ ~你为什么在意？~
== EDWINJ ~Because... why do I care? I must have taken leave of my senses!~
== ~KKNavJ~ ~我在等一个正当理由，否则让开。~
== EDWINJ ~OH ALL RIGHT! I admit it, are you happy now? I am jealous!~ [EDWIN27]
== ~KKNavJ~ ~我知道，我也不是真打算那么做。我只是想逼你承认自己的感觉。~
DO ~RestParty()~
EXIT

CHAIN
IF WEIGHT #-1 ~Global("KKEDWoman","GLOBAL",20)~ THEN ~KKNavJ~ NAEDW6
~高兴回到原来的自己了？~
DO ~SetGlobal("KKEDRomanceActive","GLOBAL",2) SetGlobal("KKEDWoman","GLOBAL",21)~
== EDWINJ ~Of course! My superior manly frame has returned, no traces of that hideous body remain.~
== ~KKNavJ~ ~很高兴听你这么说，你的哭哭啼啼我实在受不了更多了。~
== EDWINJ ~Edwin Odesseiron never weeps, you sim..er.. woman! I was merely distressed by my dilemma.~
== ~KKNavJ~ ~如果你这么说，我只高兴现在一切都好了。我得承认，我确实想念那张英俊的脸。~
== EDWINJ ~How could you not?~
== ~KKNavJ~ ~确实。有件事我们必须谈谈。~
== ~KKNavJ~ ~我们一起经历了那么多。你变成女人……~
== ~KKNavJ~ ~不过我想，那次经历对你的影响比你预料的更大。~
== ~KKNavJ~ ~它影响了我，以我无法想象的方式。我当时真的害怕。怕你会永远那样下去。~
== EDWINJ ~The thought had crossed my mind, briefly. But yes, it bothered me.~
== ~KKNavJ~ ~Bothered you? You act as if it was minor inconvience! I was afraid I had lost you forever.~ 
== EDWINJ ~What are saying?~
== ~KKNavJ~ ~我爱你，埃德温。老实告诉我，你对我有感情吗？~
== EDWINJ ~If you must know, yes. I realized it when I thought you were going to bed that filthy ape.~
== EDWINJ ~I have never been a nice person. Yes yes I know, you say otherwise. But I want to try, for you.~
DO ~ChangeAlignment("Edwin", NEUTRAL)~
EXIT

CHAIN
IF WEIGHT #-1 ~Global("KKNavarEdwinaDrow","LOCALS",1)~ THEN ~KKNavJ~ NEDrow2
~我得说，你看起来很性感。~ DO ~SetGlobal("KKNavarEdwinaDrow","LOCALS",2)~
== EDWINJ ~You think so? I have more curv... NO! This is worse! How much more do I have to endure?~
== ~KKNavJ~ ~这是你自己造成的，所以你不如好好利用它。~
== ~KKNavJ~ ~也没那么糟，我们在这里的时候，你随时可以去欢愉室。~
== EDWINJ ~You think we would have time? NO! NO! What am I saying?~
== ~KKNavJ~ ~也许他们能教你几手，万一你变回原样。~
EXIT 