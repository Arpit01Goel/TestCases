int condition_var = 0;

active proctype Producer() {
    do
    :: condition_var == 0 -> 
        condition_var = 1; // Signal that the condition is met
        printf("Produced\n");
    od
}

active proctype Consumer() {
    do
    :: condition_var == 1 -> 
        condition_var = 0; // Reset the condition
        printf("Consumed\n");
    od
}