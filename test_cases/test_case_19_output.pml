chan semaphore = [1] of { int }; // Semaphore channel

proctype thread_function(int id) {
    int token;
    semaphore?token; // Wait for semaphore
    printf("Thread %d is running\n", id);
    semaphore!1; // Release semaphore
}

init {
    semaphore!1; // Initialize semaphore with 1 token

    run thread_function(1);
    run thread_function(2);
    run thread_function(3);
}