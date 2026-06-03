# FPGA-Based-8-bit-Signed-ALU

## 1. Introduction

An Arithmetic Logic Unit (ALU) is one of the most important components of any digital processor. It performs arithmetic operations such as addition, subtraction, multiplication and division, as well as logical operations such as AND, OR, XOR, shifting and comparison.
In a processor, the ALU acts as the computational engine. Every mathematical calculation or logical decision performed by a CPU eventually passes through the ALU.
This project implements an 8-bit signed ALU using Verilog HDL and deploys it on an Edge Artix-7 FPGA board. The design supports multiple arithmetic, logical, shift, rotate and comparison operations. Input operands are loaded through FPGA switches and push buttons, while results are displayed on LEDs and a 4-digit seven-segment display.
________________________________________

## 2. Project Objective

The objectives of this project are:
1.	Design an 8-bit signed ALU using Verilog HDL.
2.	Implement arithmetic and logical operations.
3.	Generate status flags such as Carry, Zero, Overflow and Negative.
4.	Interface the design with FPGA hardware.
5.	Display results using LEDs and seven-segment displays.
6.	Understand how processor datapaths operate in real systems.
________________________________________

## 3. Why This Project?

Modern digital systems constantly perform calculations and logical decisions. Whether it is a computer executing software, a mobile phone processing data, or an embedded system controlling a device, arithmetic and logical operations are required at every stage.
The Arithmetic Logic Unit (ALU) is the hardware block responsible for performing these operations. It acts as the computational core of a processor and executes instructions such as addition, subtraction, comparisons, logical operations, and data shifting.
The purpose of this project is to understand how these operations are implemented at the hardware level using digital logic. By designing an ALU in Verilog HDL and implementing it on an FPGA, it becomes possible to observe how processors perform calculations internally rather than treating them as software-level operations.
This project also provides practical exposure to digital design, FPGA implementation, hardware verification, status flag generation, and processor datapath concepts, which are fundamental topics in VLSI, FPGA, and Computer Architecture.

________________________________________

## 4. System Architecture

  
________________________________________

## 5. Input Loading Mechanism

Two internal registers are used:

reg_a

reg_b

The same 8 switches are reused to load both operands.

Procedure:

Step 1: Set switch value.

Step 2: Press load_a button.

Result: Value is stored in reg_a.

Step 3: Change switch value.

Step 4: Press load_b button.

Result: Value is stored in reg_b.

This method reduces required FPGA input pins and demonstrates register-based data loading.
________________________________________

## 6. ALU Operations

The ALU supports 27 operations.

Arithmetic Operations:

Addition

Subtraction

Multiplication

Division

Modulo

Logical Operations:

AND

OR

XOR

XNOR

NOT

NAND

NOR

Logical AND

Logical OR

Logical NOT

Shift Operations:

Left Shift

Right Shift

Arithmetic Left Shift

Arithmetic Right Shift

Rotate Operations:

Left Rotate

Right Rotate

Comparison Operations:

Equal To

Not Equal To

Greater Than

Less Than

Greater Than or Equal To

Less Than or Equal To
________________________________________

## 7. Understanding Signed Numbers

The ALU uses signed 8-bit operands.

Range:

-128 to +127

Signed representation uses Two’s Complement.

Example:

5

Binary:

00000101

-5

Binary:

11111011

This allows arithmetic operations on positive and negative numbers using the same hardware.
________________________________________

## 8. ALU Status Flags
The ALU generates four flags.

8.1 Carry Flag (CF)

Indicates carry generation during addition.

Example:

255 + 1

Generates carry.

CF = 1
________________________________________

## 8.2 Zero Flag (ZF)
Indicates result equals zero.

Example:

5 - 5 = 0

ZF = 1
________________________________________

## 8.3 Overflow Flag (OF)

Indicates signed arithmetic overflow.

Example:

127 + 1

Expected:

128

Cannot be represented in 8-bit signed format.

OF = 1
________________________________________

## 8.4 Negative Flag (NF)
Indicates negative result.

Example:

5 - 10

Result:

-5

NF = 1
________________________________________

## 9. Why Result is 16 Bits

Inputs:

A = 8 bits

B = 8 bits

Output:

Result = 16 bits

Reason:

Multiplication can generate larger results.

Example:

127 × 127

= 16129

Requires 15 bits.

Therefore a 16-bit result bus was chosen.
________________________________________

## 10. FPGA Interface
Inputs:

SW[7:0] → data_in

SW[12:8] → opcode

PB0 → load_a

PB1 → load_b

Clock → Onboard Oscillator

Outputs:

LED[15:0] → result

7 Segment Display → hexadecimal result
________________________________________

## 11. Seven Segment Display Logic
The FPGA board contains four seven-segment digits.

All digits share segment lines:

A B C D E F G DP

Therefore multiplexing is used.

The FPGA enables only one digit at a time:

Digit0

Digit1

Digit2

Digit3

The switching occurs thousands of times per second.

Human eyes perceive all digits as continuously illuminated.
________________________________________

## 12. Clock Divider

The FPGA oscillator operates at a very high frequency.

The seven-segment display requires a slower refresh signal.

A clock divider is used to generate a refresh clock.

Purpose:

Reduce clock frequency.

Enable display multiplexing.

Prevent flickering.
________________________________________

## 13. Why LEDs Are Useful
LEDs display the raw binary result.

Example:

Result = 10

Binary:

0000000000001010

LED3 = ON

LED1 = ON

All others OFF.

LEDs help verify hardware operation and debug FPGA designs.
________________________________________

## 14. FPGA Design Flow
Step 1: Write Verilog modules.

Step 2: Create testbench.

Step 3: Run behavioral simulation.

Step 4: Verify waveforms.

Step 5: Add XDC constraints.

Step 6: Synthesize design.

Step 7: Implement design.

Step 8: Generate bitstream.

Step 9: Program FPGA.

Step 10: Verify hardware outputs.
________________________________________

## 15. Real World Applications
1.	Microprocessors
Every processor contains one or more ALUs.
2.	Digital Signal Processing
Audio processing
Image processing
Filtering
3.	Embedded Systems
Industrial controllers
Automotive electronics
IoT devices
4.	FPGA Accelerators
Custom computation engines
AI accelerators
Hardware coprocessors
5.	Educational Platforms
Teaching computer architecture and digital design.
________________________________________

## 16. Advantages of the Project
Supports multiple operations.

Demonstrates processor datapath concepts.

Uses efficient FPGA resources.

Introduces register-based operand loading.

Generates status flags.

Provides real-time hardware visualization.

Developed using industry-standard HDL.
________________________________________

## 17. Limitations
No pipelining.

No instruction memory.

No dedicated exception handling.

No accumulator register.

No processor control unit.

No interrupt support.
________________________________________

## 18. Future Improvements
1.Add LCD display.
2.Add debouncing logic.
3.Add reset logic.
4.Add accumulator register.
5.Add UART interface.
6.Add instruction memory.
7.Convert ALU into a simple processor core.
8.Implement a RISC-V compatible ALU.
________________________________________

## 19. Key Learning Outcomes
Verilog HDL coding.

Combinational logic design.

Sequential logic design.

FPGA implementation.

Constraint file creation.

Simulation and verification.

Hardware debugging.

Processor architecture fundamentals.
________________________________________
## 20. Simulation Results


