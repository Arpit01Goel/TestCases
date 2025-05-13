#include <stdio.h>

void readFile(const char *filename) {
    FILE *file = fopen(filename, "r");
    if (file == NULL) {
        printf("Error opening file %s\n", filename);
        return;
    }
    
    char ch;
    while ((ch = fgetc(file)) != EOF) {
        putchar(ch);
    }
    
    fclose(file);
}

void writeFile(const char *filename, const char *content) {
    FILE *file = fopen(filename, "w");
    if (file == NULL) {
        printf("Error creating file %s\n", filename);
        return;
    }
    
    fprintf(file, "%s", content);
    fclose(file);
}

int main() {
    const char *inputFile = "input.txt";
    const char *outputFile = "output.txt";
    
    writeFile(inputFile, "This is a test file.");
    readFile(inputFile);
    
    return 0;
}