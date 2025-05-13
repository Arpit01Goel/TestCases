#include <stdio.h>
#include <pthread.h>

int buffer = 0;

void *producer(void *arg) {
    buffer = 1; // Produce an item
    printf("Produced: %d\n", buffer);
    return NULL;
}

void *consumer(void *arg) {
    printf("Consumed: %d\n", buffer);
    buffer = 0; // Consume the item
    return NULL;
}

int main() {
    pthread_t prod, cons;

    pthread_create(&prod, NULL, producer, NULL);
    pthread_join(prod, NULL);

    pthread_create(&cons, NULL, consumer, NULL);
    pthread_join(cons, NULL);

    return 0;
}