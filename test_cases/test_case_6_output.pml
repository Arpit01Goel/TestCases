proctype array_example() {
    int arr[5];
    arr[0] = 1; arr[1] = 2; arr[2] = 3; arr[3] = 4; arr[4] = 5;

    int i = 0;
    do
    :: (i < 5) -> printf("arr[%d]: %d\n", i, arr[i]); i = i + 1;
    :: (i >= 5) -> break;
    od;
}

init {
    run array_example();
}