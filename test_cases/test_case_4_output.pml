proctype if_else_example() {
    int x = 10;
    int y = 20;

    if
    :: (x > y) -> printf("x is greater\n");
    :: (x == y) -> printf("x is equal to y\n");
    :: else -> printf("y is greater\n");
    fi;
}

init {
    run if_else_example();
}