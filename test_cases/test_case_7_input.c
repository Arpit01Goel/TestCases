#include <stdio.h>

struct Point {
    int x;
    int y;
};

struct Rectangle {
    struct Point top_left;
    struct Point bottom_right;
};

int main() {
    struct Rectangle rect = {{0, 10}, {10, 0}};
    printf("Top-left: (%d, %d)\n", rect.top_left.x, rect.top_left.y);
    printf("Bottom-right: (%d, %d)\n", rect.bottom_right.x, rect.bottom_right.y);
    return 0;
}