chan result_channel = [1] of { int }; // Channel to pass the result

proctype add(int a, int b) {
    int result;
    result = a + b;
    result_channel!result; // Send the result through the channel
}

init {
    int result;
    run add(5, 10);
    result_channel?result; // Receive the result from the channel
    printf("Result: %d\n", result);
}