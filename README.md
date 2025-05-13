# c-to-promela-project

This project is designed to convert C code into Promela code, facilitating the verification of C programs using the Spin model checker. The project contains a series of test cases that demonstrate various features of the C programming language and their corresponding Promela representations.

## Test Cases

The `test_cases` directory contains 25 test cases, each consisting of an input C file and an output Promela file. Each test case covers different aspects of C programming, including but not limited to:

1. **Structs and Functions**: Demonstrates the use of structs and functions in C.
2. **Control Flow**: Utilizes if-else statements to control program execution.
3. **Loops**: Implements for and while loops for iteration.
4. **Nested Structures**: Shows the use of nested if-else statements.
5. **Multiple Structs**: Demonstrates the definition and usage of multiple structs.
6. **Function Prototypes**: Illustrates the use of function prototypes.
7. **Pointers**: Manipulates data using pointers.
8. **State Machines**: Implements a simple state machine using switch-case statements.
9. **Arrays**: Demonstrates array manipulation.
10. **Inter-process Communication**: Uses channels for communication between processes.
11. **Recursion**: Shows how recursion works in C.
12. **Dynamic Memory**: Demonstrates dynamic memory allocation.
13. **Linked Lists**: Implements basic linked list operations.
14. **Error Handling**: Demonstrates error handling using return codes.
15. **Macros**: Shows the use of macros for simplifying code.
16. **Calculator**: Implements a simple calculator using functions.
17. **File I/O**: Demonstrates file input/output operations.
18. **Enums**: Uses enums for state representation.
19. **Typedefs**: Demonstrates the use of typedefs.
20. **Game Loop**: Implements a simple game loop.
21. **Multi-threading**: Shows how to use multi-threading in C.
22. **Condition Variables**: Demonstrates the use of condition variables.
23. **Producer-Consumer Problem**: Implements a simple producer-consumer problem.
24. **Signal Handling**: Shows how to handle signals in C.

## Running the Promela Code

To run the Promela code generated from the C programs, you will need to have Spin installed. Follow these steps:

1. Navigate to the directory containing the Promela files.
2. Use the Spin command line tool to verify the Promela code. For example:
   ```
   spin -g test_case_1_output.pml
   ```
3. Analyze the output for verification results.

## Conclusion

This project serves as a comprehensive resource for converting C code to Promela, allowing for the verification of C programs through model checking. Each test case is designed to highlight specific features of C and their corresponding representations in Promela.