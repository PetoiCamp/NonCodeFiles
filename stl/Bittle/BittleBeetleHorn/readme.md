# Instruction
Refer to the assembling image:![pic](https://github.com/PetoiCamp/NonCodeFiles/blob/ca1551d3b0845f3b4d12ef8c8dfee985ebc6849c/stl/BittleBeetleHorn/assemble.png)

1. Insert the base in the front of Bittle. 
2. Install the servo inside the base and fix it with screws. Plug the wire to the slot where you originally plug in the neck servo. 
3. Install the horn. Note that you must move the robot to calibration posture before attaching the horn.
4. Install the cover, which can be omitted. 

You can control the horn by ‘m’ or ‘i‘ command. For example, "m0 30", "m0 -10", where 0 is the servo index and the 30 or -10 is any angle allowed by the structure. The command can be sent through the serial port or the mobile phone app.  ‘m’ command will interrupt the walking while ‘i’ will not. 

You can add more joints to the structure and connect the servos to more unused joints, such as joint index 1, 2, 3.

[DEMO](https://youtu.be/NK2nt39-sFc)
