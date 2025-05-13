#include <stdio.h>

int global_var = 10;

void increment() {
    global_var++;
}

int main() {
    printf("Before increment: %d\n", global_var);
    increment();
    printf("After increment: %d\n", global_var);
    return 0;
}