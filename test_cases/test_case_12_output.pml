proctype swap(int a, int b) {
    int temp;
    temp = a;
    a = b;
    b = temp;
    printf("After swap: a = %d, b = %d\n", a, b);
}

init {
    int x = 5;
    int y = 10;
    printf("Before swap: x = %d, y = %d\n", x, y);
    run swap(x, y);
}