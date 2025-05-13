inline SQUARE(x) (x * x) // Macro equivalent

proctype square_example() {
    int num = 5;
    int result = SQUARE(num);
    printf("Square of %d is %d\n", num, result);
}

init {
    run square_example();
}