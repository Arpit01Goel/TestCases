#include <stdio.h>

enum Color { RED, GREEN, BLUE };

int main() {
    enum Color c = GREEN;

    switch (c) {
        case RED:
            printf("Color is Red\n");
            break;
        case GREEN:
            printf("Color is Green\n");
            break;
        case BLUE:
            printf("Color is Blue\n");
            break;
    }

    return 0;
}