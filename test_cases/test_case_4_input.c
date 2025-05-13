#include <stdio.h>

int main() {
    int x = 10, y = 20;
    if (x > y) {
        printf("x is greater\n");
    } else if (x == y) {
        printf("x is equal to y\n");
    } else {
        printf("y is greater\n");
    }
    return 0;
}