#include <stdio.h>

#define SQUARE(x) ((x) * (x))

int main() {
    int num = 5;
    printf("Square of %d is %d\n", num, SQUARE(num));
    return 0;
}