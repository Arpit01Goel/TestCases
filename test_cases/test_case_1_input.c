#include <stdio.h>

struct Point {
    int x;
    int y;
};

void print_point(struct Point p) {
    if (p.x > p.y) {
        printf("x is greater than y\n");
    } else {
        printf("y is greater or equal to x\n");
    }
}

int main() {
    struct Point p1 = {3, 5};
    print_point(p1);
    return 0;
}