#include <stdio.h>

enum State { IDLE, RUNNING, STOPPED };

int main() {
    enum State current_state = IDLE;

    if (current_state == IDLE) {
        printf("System is idle\n");
        current_state = RUNNING;
    }

    if (current_state == RUNNING) {
        printf("System is running\n");
        current_state = STOPPED;
    }

    if (current_state == STOPPED) {
        printf("System is stopped\n");
    }

    return 0;
}