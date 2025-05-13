chan buffer = [1] of { int }; // Channel to simulate the buffer

proctype producer() {
    buffer!1; // Produce an item
    printf("Produced: %d\n", 1);
}

proctype consumer() {
    int item;
    buffer?item; // Consume the item
    printf("Consumed: %d\n", item);
}

init {
    run producer();
    run consumer();
}