mtype = { produce, consume };

chan buffer = [0] of { mtype };

active proctype producer() {
    do
    :: buffer!produce; // Produce an item
    od
}

active proctype consumer() {
    do
    :: buffer?consume; // Consume an item
    od
}

init {
    run producer();
    run consumer();
}