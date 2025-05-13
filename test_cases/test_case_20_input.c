#include <stdio.h>

typedef struct {
    int id;
    char name[50];
} Student;

void printStudent(Student s) {
    printf("Student ID: %d\n", s.id);
    printf("Student Name: %s\n", s.name);
}

int main() {
    Student student1;
    student1.id = 1;
    snprintf(student1.name, sizeof(student1.name), "Alice");

    Student student2;
    student2.id = 2;
    snprintf(student2.name, sizeof(student2.name), "Bob");

    printStudent(student1);
    printStudent(student2);

    return 0;
}