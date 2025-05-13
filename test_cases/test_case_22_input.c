#include <stdio.h>
#include <stdlib.h>

int main() {
    int *arr = (int *)malloc(3 * sizeof(int));
    arr[0] = 1;
    arr[1] = 2;
    arr[2] = 3;

    for (int i = 0; i < 3; i++) {
        printf("arr[%d]: %d\n", i, arr[i]);
    }

    free(arr);
    return 0;
}