# Digital_Lab

This repository contains Verilog implementations of various digital logic circuits and components as part of the BTech S4 CSE Syllabus (2019 Scheme). Each file includes both the module implementation and a testbench for verification.

## Contents

- [Basic Logic Gates](#basic-logic-gates)
  - [AND Gate](#and-gate)
  - [OR Gate](#or-gate)
  - [NOT Gate](#not-gate)
- [Adders and Subtractors](#adders-and-subtractors)
  - [Half Adder](#half-adder)
  - [Full Adder](#full-adder)
  - [Half Subtractor](#half-subtractor)
  - [Full Subtractor](#full-subtractor)
- [Binary Code Converters](#binary-code-converters)
  - [Binary to Gray Code](#binary-to-gray-code)
  - [Gray to Binary Code](#gray-to-binary-code)
- [Comparators](#comparators)
  - [4-bit Comparator](#4-bit-comparator)

## Basic Logic Gates

### AND Gate
[and.v](and.v) - Implementation of a basic AND logic gate with a testbench that validates its truth table.
```
A | B | Y
--|---|--
0 | 0 | 0
0 | 1 | 0
1 | 0 | 0
1 | 1 | 1
```

### OR Gate
[or.v](or.v) - Implementation of a basic OR logic gate with a testbench that validates its truth table.
```
A | B | Y
--|---|--
0 | 0 | 0
0 | 1 | 1
1 | 0 | 1
1 | 1 | 1
```

### NOT Gate
[not.v](not.v) - Implementation of a basic NOT (inverter) logic gate with a testbench that validates its truth table.
```
A | Y
--|--
0 | 1
1 | 0
```

## Adders and Subtractors

### Half Adder
[halfadder.v](halfadder.v) - Implementation of a half adder circuit that adds two bits and produces a sum and carry output.
```
A | B | Sum | Carry
--|---|-----|------
0 | 0 |  0  |   0
0 | 1 |  1  |   0
1 | 0 |  1  |   0
1 | 1 |  0  |   1
```

### Full Adder
[fulladder.v](fulladder.v) - Implementation of a full adder circuit that adds three bits (two inputs and a carry-in) and produces a sum and carry output.
```
X | Y | Z | Sum | Carry
--|---|---|-----|------
0 | 0 | 0 |  0  |   0
0 | 0 | 1 |  1  |   0
0 | 1 | 0 |  1  |   0
0 | 1 | 1 |  0  |   1
1 | 0 | 0 |  1  |   0
1 | 0 | 1 |  0  |   1
1 | 1 | 0 |  0  |   1
1 | 1 | 1 |  1  |   1
```

### Half Subtractor
[halfsub.v](halfsub.v) - Implementation of a half subtractor circuit that subtracts one bit from another and produces a difference and borrow output.
```
A | B | Diff | Borrow
--|---|------|-------
0 | 0 |  0   |   0
0 | 1 |  1   |   1
1 | 0 |  1   |   0
1 | 1 |  0   |   0
```

### Full Subtractor
[fullsub.v](fullsub.v) - Implementation of a full subtractor circuit that performs subtraction with borrow-in and produces a difference and borrow-out.
```
X | Y | Z | Diff | Borrow
--|---|---|------|-------
0 | 0 | 0 |  0   |   0
0 | 0 | 1 |  1   |   1
0 | 1 | 0 |  1   |   1
0 | 1 | 1 |  0   |   1
1 | 0 | 0 |  1   |   0
1 | 0 | 1 |  0   |   0
1 | 1 | 0 |  0   |   0
1 | 1 | 1 |  1   |   1
```

## Binary Code Converters

### Binary to Gray Code
[binary2gray.v](binary2gray.v) - Implementation of a 4-bit binary to Gray code converter. Gray code is a binary numeral system where two consecutive values differ in only one bit.
```
The module converts a 4-bit binary input to its corresponding Gray code representation.
```

### Gray to Binary Code
[gray2binary.v](gray2binary.v) - Implementation of a 4-bit Gray code to binary converter, performing the reverse operation of binary2gray.
```
The module converts a 4-bit Gray code input to its corresponding binary representation.
```

## Comparators

### 4-bit Comparator
[comparator.v](comparator.v) - Implementation of a 4-bit magnitude comparator that compares two 4-bit numbers and indicates whether they are equal, less than, or greater than each other.
```
The module has three outputs:
- eq: Set to 1 when inputs are equal
- lt: Set to 1 when first input is less than second input
- gt: Set to 1 when first input is greater than second input