mtype = {STATE1, STATE2, STATE3};

active proctype StateMachine() {
    mtype current_state;
    current_state = STATE1;

    do
    :: current_state == STATE1 ->
        printf("Current State: STATE1\n");
        current_state = STATE2;
    :: current_state == STATE2 ->
        printf("Current State: STATE2\n");
        current_state = STATE3;
    :: current_state == STATE3 ->
        printf("Current State: STATE3\n");
        current_state = STATE1;
    od;
}