proctype switch_example() {
    int x = 2;

    if
    :: (x == 1) -> printf("One\n");
    :: (x == 2) -> printf("Two\n");
    :: else -> printf("Other\n");
    fi;
}

init {
    run switch_example();
}