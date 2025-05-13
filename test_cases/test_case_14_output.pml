int balance = 1000; // Global balance variable

proctype deposit(int amount) {
    balance = balance + amount;
    printf("Deposited: %d, Balance: %d\n", amount, balance);
}

proctype withdraw(int amount) {
    if
    :: (balance >= amount) -> balance = balance - amount;
       printf("Withdrawn: %d, Balance: %d\n", amount, balance);
    :: else -> printf("Insufficient balance\n");
    fi;
}

init {
    run deposit(500);
    run withdraw(300);
    run withdraw(1500);
}