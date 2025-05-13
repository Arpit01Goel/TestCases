int main() {
    int error_code = 0;

    // Simulate some operations
    error_code = performOperation();

    // Error handling
    if (error_code != 0) {
        printf("Error occurred: %d\n", error_code);
        return error_code;
    }

    return 0;
}

int performOperation() {
    // Simulate an operation that may fail
    return -1; // Simulating an error
}