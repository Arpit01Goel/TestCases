#include <stdio.h>

int main() {
    FILE* file = fopen("test.txt", "w");
    if (file == NULL) {
        printf("Error opening file\n");
        return 1;
    }

    fprintf(file, "Hello, World!\n");
    fclose(file);

    file = fopen("test.txt", "r");
    if (file == NULL) {
        printf("Error opening file\n");
        return 1;
    }

    char buffer[50];
    fgets(buffer, 50, file);
    printf("Read from file: %s", buffer);
    fclose(file);

    return 0;
}