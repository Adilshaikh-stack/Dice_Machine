# Dice_Machine
The project report focuses on the design of a DICE game simulated on using the Simulink software to be implemented on the FPGA platform. A detailed design of how the VHDL code was implemented with the results shown. State diagram to determine how the code uses states to reach the target goal in the DICE game. Test benches and the optimization strategy is also detailed with results taken in the form of screenshots.

The project main aim is to create a DICE game in VHDL and the implementation to be for an FPGA platform. There are set guidelines that need to be followed whilst implementing this project as the target. We are required to simulate the Dice machine through ModelSim. The DICE game also follows set constraints to win, lose and draw which will be further elaborated in the Design section.

The implementation of the number DICE game enables us to further the understanding of RTL design, system level optimization, input & output interfaces, and digital hardware development. The objective is to provide a design flow chart and state machine schematic for the DICE game which is provided later in the report however this enables us to gain insight as to how these designs can be translated into hardware implementation or in our case hardware implementation via simulation

# Test

There is project in the folder named DiceGame which has all the component files. After compiling the project in ModelSim. 
Following commands can used to simulate the components and Controller. This step is only if you want to preload the file with all parametrs 
defined before running it.


For full dice machine simlation 
Type command: do Controller_wave.do

For other separate components simulation

If adder_TB needs to be simulated:
Type command: do adderTB_wave.do

If counter_TB needs to be simulated:
Type command: do counterTB_wave.do

If datapath_TB needs to be simulated:
Type command: do dataPathTB_wave.do

If Point_TB needs to be simulated:
Type command: do PointTB_wave.do

If comparator_TB needs to be simulated:
Type command: do ComparatorTB_wave.do

If Testlogic_TB needs to be simulated:
Type command: do TestLogicTB_wave.do

