#include <stdio.h>

void manipulateData(int *ptr) {
    *ptr += 10; // Increment the value pointed to by ptr
}

int main() {
    int value = 5;
    printf("Original value: %d\n", value);
    
    manipulateData(&value); // Pass the address of value to the function
    
    printf("Modified value: %d\n", value);
    return 0;
}