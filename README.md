# simpleALU#
This an Arithmetic Logic Unit (ALU), which is a fundamental component in digital circuits and processors
The ALU is designed to perform various arithmetic and logical operations on two 32-bit input operands (A and B) based on a 3-bit operation code (Op_code),It produces a 32-bit output (Y)
Input Processing: this module takes two 32-bit inputs (A and B) and a 3-bit operation code (Op_code).

Operation Selection: The 3-bit Op_code allows for up to 8 different operations, which are:

000: Pass through A (output A unchanged)
001: Addition (A + B)
010: Subtraction (A - B)
011: Bitwise AND (A & B)
100: Bitwise OR (A | B)
101: Increment A (A + 1)
110: Decrement A (A - 1)
111: Pass through B (output B unchanged)
Combinational Logic: always @(*), means the output Y is updated immediately whenever any input changes.

#Finite State Machine#
Design  a state machine for the module definition below 
![Module Diagram] (https://github.com/Hussam424/VERILOG/blob/main/FiniteMachine-Module%20Diagram.PNG))
 RST signal is active low.