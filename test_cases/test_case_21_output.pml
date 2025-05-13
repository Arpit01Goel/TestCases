int main() {
    int running = 1;
    while (running) {
        // Game logic here
        // For example, check for user input to continue or exit
        int userInput;
        printf("Enter 1 to continue, 0 to exit: ");
        scanf("%d", &userInput);
        if (userInput == 0) {
            running = 0; // Exit the loop
        }
    }
    return 0;
}

promela
proctype GameLoop() {
    int running = 1;
    do
    :: running == 1 ->
        // Game logic here
        // For example, simulate user input
        int userInput = 1; // Simulating user input for demonstration
        if
        :: userInput == 0 -> running = 0 // Exit the loop
        :: else -> skip
        fi
    od
}