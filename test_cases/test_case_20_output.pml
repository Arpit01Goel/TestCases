typedef struct {
    int id;
    char name[20];
} Person;

void printPerson(Person p) {
    printf("ID: %d, Name: %s\n", p.id, p.name);
}

int main() {
    Person p1;
    p1.id = 1;
    strcpy(p1.name, "Alice");
    
    printPerson(p1);
    
    return 0;
}

mtype = { ID, NAME };

active proctype Person() {
    Person p1;
    p1.id = 1;
    p1.name = "Alice";
    
    printf("ID: %d, Name: %s\n", p1.id, p1.name);
}