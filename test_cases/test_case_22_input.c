#include <stdio.h>
#include <pthread.h>

#define NUM_THREADS 5

void* threadFunction(void* arg) {
    int threadID = *((int*)arg);
    printf("Thread %d is running\n", threadID);
    return NULL;
}

int main() {
    pthread_t threads[NUM_THREADS];
    int threadIDs[NUM_THREADS];

    for (int i = 0; i < NUM_THREADS; i++) {
        threadIDs[i] = i;
        pthread_create(&threads[i], NULL, threadFunction, (void*)&threadIDs[i]);
    }

    for (int i = 0; i < NUM_THREADS; i++) {
        pthread_join(threads[i], NULL);
    }

    return 0;
}