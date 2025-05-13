proctype thread_function() {
    printf("Thread running\n");
}

init {
    run thread_function();
}