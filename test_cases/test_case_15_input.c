#include <stdio.h>

int divide(int a, int b) {
    if (b == 0) {
        return -1; // Error code for division by zero
    }
    return a / b;
}

int main() {
    int result;

    result = divide(10, 2);
    if (result == -1) {
        printf("Error: Division by zero\n");
    } else {
        printf("Result: %d\n", result);
    }

    result = divide(10, 0);
    if (result == -1) {
        printf("Error: Division by zero\n");
    } else {
        printf("Result: %d\n", result);
    }

    return 0;
}