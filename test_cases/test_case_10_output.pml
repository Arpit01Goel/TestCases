mtype = {msg1, msg2};

chan c = [0] of {mtype};

active proctype Sender() {
    c!msg1;
}

active proctype Receiver() {
    mtype m;
    c?m;
    if
    :: m == msg1 -> /* Handle msg1 */
    :: else -> /* Handle other messages */
    fi;
}

init {
    run Sender();
    run Receiver();
}