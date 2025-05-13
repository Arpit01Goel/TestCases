mtype = { RED, GREEN, BLUE }; // Enum equivalent

proctype color_example() {
    mtype c = GREEN;

    if
    :: (c == RED) -> printf("Color is Red\n");
    :: (c == GREEN) -> printf("Color is Green\n");
    :: (c == BLUE) -> printf("Color is Blue\n");
    fi;
}

init {
    run color_example();
}