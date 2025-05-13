proctype loop_example() {
    int i = 0;
    do
    :: (i < 5) -> printf("i: %d\n", i); i = i + 1;
    :: (i >= 5) -> break;
    od;
}

init {
    run loop_example();
}