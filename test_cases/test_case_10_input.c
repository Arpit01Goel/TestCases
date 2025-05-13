#include <stdio.h>

#define SIZE 5

void manipulateArray(int arr[], int size) {
    for (int i = 0; i < size; i++) {
        arr[i] *= 2; // Double each element
    }
}

int main() {
    int numbers[SIZE] = {1, 2, 3, 4, 5};

    printf("Original array: ");
    for (int i = 0; i < SIZE; i++) {
        printf("%d ", numbers[i]);
    }
    printf("\n");

    manipulateArray(numbers, SIZE);

    printf("Manipulated array: ");
    for (int i = 0; i < SIZE; i++) {
        printf("%d ", numbers[i]);
    }
    printf("\n");

    return 0;
}