

CHAIN 
IF WEIGHT #-1 ~Global("KKEdNavTOB","GLOBAL",2)~ THEN KKNav25J en1 
~你消失的时候我真的很怕。看到你平安，我非常高兴。~ 
DO ~SetGlobal("KKEdNavTOB","GLOBAL",3) RealSetGlobalTimer("KKEdNavToBTime","GLOBAL",900)~ 
== Edwin25J ~I was not happy, either. If I had not found you, that infuriating ape would have a fireball in the face.~ 
== ~KKNav25J~ ~别说了，你喜欢<CHARNAME>。我没事。<HE/SHE>那样做是有正当理由的。~ 
== Edwin25J ~Perhaps, we shall see.~ 
== ~KKNav25J~ ~一切都会好的，我保证。我爱你，埃德温。~ 
== Edwin25J ~I love you too.~ 
DO ~ChangeAlignment("Edwin", NEUTRAL)~
EXIT 

CHAIN 
IF WEIGHT #-1 ~Global("KKEdNavTOB","GLOBAL",4)~ THEN KKNav25J en2 
~现在又怎么了？~ 
DO ~SetGlobal("KKEdNavTOB","GLOBAL",5) RealSetGlobalTimer("KKEdNavToBTime","GLOBAL",900)~ 
== Edwin25J ~That psychotic ape is not only alive, but here! What was <CHARNAME> thinking?~ 
== ~KKNav25J~ ~如果<CHARNAME>觉得他是个威胁，我怀疑他还会在这里。~ 
== Edwin25J ~Do you know what that insufferable ape did?~ 
== ~KKNav25J~ ~我知道，虽然我跟你一样震惊，但我们得相信<CHARNAME>知道<he/she>在做什么。~ 
== Edwin25J ~Bah! Other than you, I am surrounded by fools!~  
EXIT 

CHAIN 
IF WEIGHT #-1 ~Global("KKEdNavTOB","GLOBAL",6)~ THEN KKNav25J en1 
~我们从没谈过这个，但你打算回塞伊吗？~ 
DO ~SetGlobal("KKEdNavTOB","GLOBAL",7) RealSetGlobalTimer("KKEdNavToBTime","GLOBAL",900)~ 
== Edwin25J ~Never. Degarden was proof that returning would not be a healthy decision.~ 
== ~KKNav25J~ ~我想是吧。这一切结束后你打算做什么？~ 
== Edwin25J ~You have a sword to return, do you not?~ 
== ~KKNav25J~ ~嗯，是的，我确实想过。只是我从没想过……我本来希望……~ 
== Edwin25J ~I will remain by your side until you tire of me.~  
== ~KKNav25J~ ~那，亲爱的，永远不会发生。~
EXIT 

CHAIN 
IF WEIGHT #-1 ~Global("KKEdNavTOB","GLOBAL",8)~ THEN KKNav25J en3 
~你想过要孩子吗？~ 
DO ~SetGlobal("KKEdNavTOB","GLOBAL",9) RealSetGlobalTimer("KKEdNavToBTime","GLOBAL",900)~ 
== Edwin25J ~WHAT! Er.. why do you ask?~ 
== ~KKNav25J~ ~只是好奇，看到一个小埃德温，或者小埃德温娜到处跑，是不是你想过的事。~ 
== Edwin25J ~Do not remind me of that hideous curse!~ 
== ~KKNav25J~ ~说真的，你想过吗？~ 
== Edwin25J ~No. Though it would not be a terrible idea, I suppose. Someday.~  
EXIT 