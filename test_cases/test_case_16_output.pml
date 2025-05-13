typedef Node {
    int data;
    int next; // Simulating a pointer with an index
}

Node list[3]; // Simulating a linked list with an array

proctype print_list() {
    int i = 0;
    do
    :: (i < 3) -> printf("%d -> ", list[i].data); i = list[i].next;
    :: (i == -1) -> printf("NULL\n"); break;
    od;
}

init {
    list[0].data = 1; list[0].next = 1;
    list[1].data = 2; list[1].next = 2;
    list[2].data = 3; list[2].next = -1;

    run print_list();
}