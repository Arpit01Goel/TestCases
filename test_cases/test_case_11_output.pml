channel c_channel = [0] of {int};

active proctype sender() {
    int msg;
    msg = 42; // Example message
    c_channel!msg; // Send message
}

active proctype receiver() {
    int msg;
    c_channel?msg; // Receive message
    // Process the received message
}

init {
    run sender();
    run receiver();
}