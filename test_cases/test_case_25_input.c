#include <stdio.h>
#include <signal.h>
#include <stdlib.h>

void signal_handler(int signal) {
    if (signal == SIGINT) {
        printf("Caught SIGINT! Exiting gracefully...\n");
        exit(0);
    }
}

int main() {
    signal(SIGINT, signal_handler);

    while (1) {
        printf("Running... Press Ctrl+C to exit.\n");
        sleep(1);
    }

    return 0;
}