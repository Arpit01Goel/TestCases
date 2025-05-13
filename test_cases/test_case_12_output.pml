int x = 5;
int y = 10;

proctype swap() {
    int temp;
    temp = x;
    x = y;
    y = temp;
    printf("After swap: x = %d, y = %d\n", x, y);
}

init {
    printf("Before swap: x = %d, y = %d\n", x, y);
    run swap();
}