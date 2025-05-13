chan file_channel = [1] of { mtype, byte[50] }; // Simulating file operations

mtype = { WRITE, READ };

proctype file_operations() {
    byte buffer[50];

    // Simulate writing to a file
    file_channel!WRITE, "Hello, World!\n";

    // Simulate reading from a file
    file_channel?READ, buffer;
    printf("Read from file: %s", buffer);
}

init {
    run file_operations();
}