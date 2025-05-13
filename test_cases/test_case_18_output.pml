int main() {
    FILE *file;
    char buffer[100];
    
    // Open a file for reading
    file = fopen("test.txt", "r");
    if (file == NULL) {
        return 1; // Error opening file
    }

    // Read and print each line from the file
    while (fgets(buffer, sizeof(buffer), file) != NULL) {
        printf("%s", buffer);
    }

    // Close the file
    fclose(file);
    return 0;
}

promela
mtype = { open, read, close };
chan file_io = [0] of { mtype };

active proctype file_operations() {
    file_io!open;
    file_io!read;
    file_io!close;
}

init {
    run file_operations();
}