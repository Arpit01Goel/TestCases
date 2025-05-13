proctype dynamic_memory() {
    int arr[3];
    arr[0] = 1;
    arr[1] = 2;
    arr[2] = 3;

    int i = 0;
    do
    :: (i < 3) -> printf("arr[%d]: %d\n", i, arr[i]); i = i + 1;
    :: (i >= 3) -> break;
    od;
}

init {
    run dynamic_memory();
}