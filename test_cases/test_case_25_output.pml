proctype client() {
    printf("Hello, Client!\n");
}

proctype server() {
    printf("Hello, Server!\n");
}

init {
    run client();
    run server();
}