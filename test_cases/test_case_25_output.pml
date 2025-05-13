int main() {
    // Signal handling example
    signal(SIGINT, signal_handler);
    while (1) {
        printf("Running... Press Ctrl+C to trigger signal.\n");
        sleep(1);
    }
    return 0;
}

void signal_handler(int signal) {
    printf("Signal %d received. Exiting...\n", signal);
    exit(0);
}

mtype = { SIGINT };

active proctype SignalHandler() {
    do
    :: receive -> printf("Signal received, handling...\n");
    od
}

init {
    run SignalHandler();
}