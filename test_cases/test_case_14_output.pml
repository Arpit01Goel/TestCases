mtype = { request, response };

chan c = [0] of { mtype };

active proctype Node() {
    int value;
    Node* next;

    // Initialize the linked list
    value = 0;
    next = NULL;

    // Simulate linked list operations
    do
    :: c!request; // Request to add a node
       // Logic to add a node
       value++;
       printf("Node added with value: %d\n", value);
    :: c!response; // Response after adding a node
       // Logic to respond
       printf("Node response sent for value: %d\n", value);
    od;
}

init {
    run Node();
}