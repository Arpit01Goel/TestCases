#include <stdio.h>

void gameLoop() {
    int playerScore = 0;
    int enemyScore = 0;
    char input;

    while (1) {
        printf("Press 'p' to play, 'q' to quit: ");
        scanf(" %c", &input);

        if (input == 'q') {
            printf("Exiting game. Final Score - Player: %d, Enemy: %d\n", playerScore, enemyScore);
            break;
        } else if (input == 'p') {
            // Simulate a round of the game
            playerScore += 1; // Assume player wins this round
            enemyScore += 0;  // Enemy score remains the same
            printf("Round played. Current Score - Player: %d, Enemy: %d\n", playerScore, enemyScore);
        } else {
            printf("Invalid input. Please try again.\n");
        }
    }
}

int main() {
    gameLoop();
    return 0;
}