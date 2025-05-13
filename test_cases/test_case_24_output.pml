proctype arithmetic_operations() {
    int a = 5;
    int b = 10;

    printf("Sum: %d\n", a + b);
    printf("Difference: %d\n", a - b);
    printf("Product: %d\n", a * b);
    printf("Quotient: %d\n", a / b);
}

init {
    run arithmetic_operations();
}