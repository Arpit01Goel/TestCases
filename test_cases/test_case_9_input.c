#include <stdio.h>

enum State { START, PROCESS, END };

int main() {
    enum State currentState = START;
    int input;

    while (1) {
        switch (currentState) {
            case START:
                printf("Enter a number (1 to process, 0 to exit): ");
                scanf("%d", &input);
                if (input == 1) {
                    currentState = PROCESS;
                } else {
                    currentState = END;
                }
                break;

            case PROCESS:
                printf("Processing...\n");
                // Simulate some processing
                currentState = START;
                break;

            case END:
                printf("Exiting...\n");
                return 0;
        }
    }
}