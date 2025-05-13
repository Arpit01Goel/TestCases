#include <stdio.h>

enum State { START, PROCESSING, END };

void processState(enum State state) {
    switch (state) {
        case START:
            printf("Starting process...\n");
            break;
        case PROCESSING:
            printf("Processing...\n");
            break;
        case END:
            printf("Ending process...\n");
            break;
        default:
            printf("Unknown state!\n");
    }
}

int main() {
    enum State currentState = START;

    processState(currentState);
    currentState = PROCESSING;
    processState(currentState);
    currentState = END;
    processState(currentState);

    return 0;
}