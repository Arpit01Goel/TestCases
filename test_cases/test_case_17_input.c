#include <stdio.h>

struct Operation {
    char operator;
    int operand1;
    int operand2;
};

int calculate(struct Operation op) {
    switch (op.operator) {
        case '+':
            return op.operand1 + op.operand2;
        case '-':
            return op.operand1 - op.operand2;
        case '*':
            return op.operand1 * op.operand2;
        case '/':
            if (op.operand2 != 0) {
                return op.operand1 / op.operand2;
            } else {
                printf("Error: Division by zero\n");
                return 0;
            }
        default:
            printf("Error: Unknown operator\n");
            return 0;
    }
}

int main() {
    struct Operation op1 = {'+', 5, 3};
    struct Operation op2 = {'-', 10, 4};
    
    printf("Result of 5 + 3 = %d\n", calculate(op1));
    printf("Result of 10 - 4 = %d\n", calculate(op2));
    
    return 0;
}