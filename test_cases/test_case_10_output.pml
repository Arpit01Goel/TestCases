proctype factorial(int n, int result) {
    if
    :: (n == 0) -> result = 1;
    :: else -> 
        int temp;
        run factorial(n - 1, temp); // Recursive call
        result = n * temp;
    fi;
}

init {
    int result;
    run factorial(5, result);
    printf("Factorial: %d\n", result);
}