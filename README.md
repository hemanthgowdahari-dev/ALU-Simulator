ALU SIM: 8-Bit Arithmetic Logic Unit 

An interactive, web-based architectural simulation of a functional 8-Bit Arithmetic Logic Unit (ALU). This project serves as an educational bridge between high-level programming and low-level digital logic.

Overview

The ALU SIM allows users to manipulate binary data at the bit level and observe how a processor's "brain" computes results. It visualizes the flow of data through logic gates and demonstrates the setting of status flags—the foundation of conditional branching in modern CPUs.

Key Features

Live 8-Bit Input: Toggle individual bits for Operands A and B with real-time Hex/Decimal conversion.

12 Operation Suites: Includes Arithmetic (ADD, SUB), Bitwise Logic (AND, OR, XOR, NOT), and Bit-Shifting (SHL, SHR).

Status Flag Register: Real-time computation of Z (Zero), C (Carry), V (Overflow), and N (Negative) flags.

Interactive Full Adder: A dedicated sandbox to visualize how a 1-bit Full Adder computes Sum and Carry-out.

Multi-Language Source: Reference implementations provided in Python, C, JavaScript, and VHDL.

Technical Architecture 

The Logic Stack

The ALU is built using a "Bottom-Up" approach to computer science education:

Logic Gates: The atomic level (NAND, NOR, XOR).

Full Adder: Combining gates to handle arithmetic carry-in/out.

8-Bit Ripple Carry: Chaining adders to process byte-sized data.

Control Unit: Using Opcodes to multiplex between different operation results.

Status Flag Logic

The simulator implements hardware-accurate flag detection:

Zero (Z): $\text{Result} == 0$

Negative (N): $\text{Bit}_7 == 1$

Carry (C): Set if addition result $> 255$ or subtraction requires a borrow.

Overflow (V): Set if the operation results in a sign-bit error (e.g., adding two positives and getting a negative).

Design Aesthetic 

The interface utilizes a "High-Contrast Terminal" theme inspired by retro-futuristic heads-up displays (HUDs).

Typography: Space Mono & Orbitron for a mechanical feel. 

Visuals: CSS scanline overlays and SVG-based datapath visualizations.

UX: Responsive grid layout that adapts from widescreen monitors to mobile tablets.

Usage

Select Inputs: Click the bit-toggles in the Inputs panel to set your 8-bit values.

Choose Operation: Select a mathematical or logical operation from the grid.

Execute: Hit the ▶ EXECUTE button to process the data through the virtual logic gates.

Analyze: Observe the Status Flags to see how the result would influence a CPU's next instruction.
