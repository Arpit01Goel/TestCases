typedef Point {
    int x;
    int y;
}

typedef Rectangle {
    Point top_left;
    Point bottom_right;
}

init {
    Rectangle rect;
    rect.top_left.x = 0; rect.top_left.y = 10;
    rect.bottom_right.x = 10; rect.bottom_right.y = 0;

    printf("Top-left: (%d, %d)\n", rect.top_left.x, rect.top_left.y);
    printf("Bottom-right: (%d, %d)\n", rect.bottom_right.x, rect.bottom_right.y);
}