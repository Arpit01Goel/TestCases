int main() {
    int i;
    int count = 0;

    // Create threads
    thread t1() {
        for (i = 0; i < 10; i++) {
            count++;
        }
    }

    thread t2() {
        for (i = 0; i < 10; i++) {
            count--;
        }
    }

    // Start threads
    run t1;
    run t2;

    // Wait for threads to finish
    wait t1;
    wait t2;

    // Final count
    assert(count == 0);
    return 0;
}