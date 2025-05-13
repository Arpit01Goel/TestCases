proctype nested_loops() {
    int i = 0;
    int j;

    do
    :: (i < 3) ->
        j = 0;
        do
        :: (j < 3) -> printf("i: %d, j: %d\n", i, j); j = j + 1;
        :: (j >= 3) -> break;
        od;
        i = i + 1;
    :: (i >= 3) -> break;
    od;
}

init {
    run nested_loops();
}