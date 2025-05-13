#include <stdio.h>
#include <stdlib.h>

#define MAX 100

typedef struct {
    int id;
    char name[50];
} Student;

void printStudent(Student s) {
    printf("ID: %d, Name: %s\n", s.id, s.name);
}

int main() {
    Student students[MAX];
    int count = 0;

    for (int i = 0; i < MAX; i++) {
        students[i].id = i + 1;
        snprintf(students[i].name, sizeof(students[i].name), "Student%d", i + 1);
        count++;
    }

    for (int i = 0; i < count; i++) {
        printStudent(students[i]);
    }

    return 0;
}