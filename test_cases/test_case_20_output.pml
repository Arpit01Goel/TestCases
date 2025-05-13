mtype = { IDLE, RUNNING, STOPPED }; // Enum equivalent

proctype state_machine() {
    mtype current_state = IDLE;

    if
    :: (current_state == IDLE) -> printf("System is idle\n"); current_state = RUNNING;
    :: (current_state == RUNNING) -> printf("System is running\n"); current_state = STOPPED;
    :: (current_state == STOPPED) -> printf("System is stopped\n");
    fi;
}

init {
    run state_machine();
}