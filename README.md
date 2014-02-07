ECE281_CE2  
========== 
##The Decoder

####Structural

The first part of this exercise was done as a strucutural implementation. This meaans that I described the individual parts used: _and3_ and _inverter_. I then wrote instructions on how to connect these parts.
The benefit of this was that I did not have to look at internal signals and could efficiently reuse parts that I had already deffined. This "lego block" approach was about the same difficutly as the Behavioral approach for this specific circuit, but for ones with more going on eternally structural architecture woudld almost certainly be better.

This is the structural simulation from the test bench.
![alt text](https://github.com/byarbrough/ECE281_CE2/blob/master/Decoder_Structural_sim.PNG?raw=true "Structural Simulation")

####Behavioral

The behavioral approach, unlike structural, describes... behavior. To use it I have to keep track of internal signals and there isn't a great way to modify the circuit if somethign major changes. On the plus side, for simple circuits behavioral does not require defining components which are only used once. 
Most importantly, this test bench produced the exact same result as the structural implementation. This shows that either method works great; it is up to the designer which one is more appropriate to use.
![alt text](https://github.com/byarbrough/ECE281_CE2/blob/master/Decoder_Behavioral_sim.PNG?raw=true "Behavioral Simulation")

####Research
***What exactly are we doing here?***

So I took this schematic and made it work both structurally and behaviorally....

![alt text] (https://github.com/byarbrough/ECE281_CE2/blob/master/Schematic.png?raw=true "Schematic")

_But what does it do???_

This device is called a "decoder."
First, notice a few things:
    1. There are more outputs than inputs.
    2. Any time EN (short for enable) is zero, all outputs are zero.

According to my handy-dandy ECE text - or figured out by a glance at the simulation results - only one of the outputs is ever HIGH at a time (aka "one-hot"). And speaking of outputs, there are actually 2^(# of inputs) of them. This is getting interesting...
Basically, this all means two things.
First, depending on which output is HIGH, I know exactly what the input was. That could be pretty handy with logic.
Second, 
Do some research and figure out what-the-heck we just created. How does a decoder work and how can that functionality be useful in the context of computer memory? 
