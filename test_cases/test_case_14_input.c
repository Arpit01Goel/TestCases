#include <stdio.h>

int balance = 1000;

void deposit(int amount) {
    balance += amount;
    printf("Deposited: %d, Balance: %d\n", amount, balance);
}

void withdraw(int amount) {
    if (balance >= amount) {
        balance -= amount;
        printf("Withdrawn: %d, Balance: %d\n", amount, balance);
    } else {
        printf("Insufficient balance\n");
    }
}

int main() {
    deposit(500);
    withdraw(300);
    withdraw(1500);
    return 0;
}