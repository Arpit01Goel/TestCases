mtype = { GREATER, LESS_EQUAL };

typedef Point {
    int x;
    int y;
}

proctype print_point(Point p) {
    if
    :: (p.x > p.y) -> printf("x is greater than y\n");
    :: else -> printf("y is greater or equal to x\n");
    fi;
}

init {
    Point p1;
    p1.x = 3;
    p1.y = 5;
    run print_point(p1);
}