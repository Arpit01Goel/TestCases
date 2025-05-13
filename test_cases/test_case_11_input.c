#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>

#define BUFFER_SIZE 5

// Channel for inter-process communication
int buffer[BUFFER_SIZE];
int count = 0;

// Producer function
void* producer(void* arg) {
    for (int i = 0; i < 10; i++) {
        while (count == BUFFER_SIZE); // Wait if buffer is full
        buffer[count++] = i; // Produce an item
        printf("Produced: %d\n", i);
    }
    return NULL;
}

// Consumer function
void* consumer(void* arg) {
    for (int i = 0; i < 10; i++) {
        while (count == 0); // Wait if buffer is empty
        int item = buffer[--count]; // Consume an item
        printf("Consumed: %d\n", item);
    }
    return NULL;
}

int main() {
    pthread_t prod, cons;

    // Create producer and consumer threads
    pthread_create(&prod, NULL, producer, NULL);
    pthread_create(&cons, NULL, consumer, NULL);

    // Wait for threads to finish
    pthread_join(prod, NULL);
    pthread_join(cons, NULL);

    return 0;
}