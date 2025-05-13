#include <stdio.h>
#include <semaphore.h>
#include <pthread.h>

sem_t semaphore;

void *thread_function(void *arg) {
    sem_wait(&semaphore);
    printf("Thread %d is running\n", *(int *)arg);
    sem_post(&semaphore);
    return NULL;
}

int main() {
    pthread_t threads[3];
    int thread_ids[3] = {1, 2, 3};

    sem_init(&semaphore, 0, 1);

    for (int i = 0; i < 3; i++) {
        pthread_create(&threads[i], NULL, thread_function, &thread_ids[i]);
    }

    for (int i = 0; i < 3; i++) {
        pthread_join(threads[i], NULL);
    }

    sem_destroy(&semaphore);
    return 0;
}