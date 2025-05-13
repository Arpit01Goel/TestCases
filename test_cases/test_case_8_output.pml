int global_var = 10; // Global variable

proctype increment() {
    global_var = global_var + 1;
}

init {
    printf("Before increment: %d\n", global_var);
    run increment();
    printf("After increment: %d\n", global_var);
}