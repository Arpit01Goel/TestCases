#include <stdio.h>
#include <pthread.h>
#include <stdlib.h>
#include <unistd.h>

#define NUM_THREADS 2

pthread_mutex_t lock;
pthread_cond_t cond_var;
int shared_data = 0;

void* thread_function(void* arg) {
    int thread_id = *((int*)arg);
    free(arg);

    pthread_mutex_lock(&lock);
    shared_data += thread_id;
    printf("Thread %d: Updated shared_data to %d\n", thread_id, shared_data);
    pthread_cond_signal(&cond_var);
    pthread_mutex_unlock(&lock);

    return NULL;
}

int main() {
    pthread_t threads[NUM_THREADS];

    pthread_mutex_init(&lock, NULL);
    pthread_cond_init(&cond_var, NULL);

    for (int i = 0; i < NUM_THREADS; i++) {
        int* thread_id = malloc(sizeof(int));
        *thread_id = i + 1;
        pthread_create(&threads[i], NULL, thread_function, thread_id);
    }

    pthread_mutex_lock(&lock);
    while (shared_data < NUM_THREADS) {
        pthread_cond_wait(&cond_var, &lock);
    }
    pthread_mutex_unlock(&lock);

    for (int i = 0; i < NUM_THREADS; i++) {
        pthread_join(threads[i], NULL);
    }

    printf("Final shared_data: %d\n", shared_data);

    pthread_mutex_destroy(&lock);
    pthread_cond_destroy(&cond_var);
    return 0;
}