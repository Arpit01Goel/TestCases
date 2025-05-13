mtype = {STATE1, STATE2, STATE3};

active proctype StateMachine() {
    mtype state = STATE1;

    do
    :: state == STATE1 ->
        printf("State 1\n");
        state = STATE2;

    :: state == STATE2 ->
        printf("State 2\n");
        state = STATE3;

    :: state == STATE3 ->
        printf("State 3\n");
        state = STATE1;

    od
}