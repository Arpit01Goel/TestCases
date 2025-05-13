mtype = { request, response };

chan c = [0] of { mtype };

active proctype dynamic_memory() {
    int *ptr;
    int size = 10;
    
    ptr = (int *)malloc(size * sizeof(int));
    if (ptr == NULL) {
        printf("Memory allocation failed\n");
        return;
    }

    for (int i = 0; i < size; i++) {
        ptr[i] = i * 2;
    }

    free(ptr);
}

init {
    run dynamic_memory();
}