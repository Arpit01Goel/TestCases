proctype bitwise_operations() {
    int a = 10;
    int b = 20;

    printf("Bitwise AND: %d\n", a & b);
    printf("Bitwise OR: %d\n", a | b);
    printf("Bitwise XOR: %d\n", a ^ b);
}

init {
    run bitwise_operations();
}