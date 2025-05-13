channel c = [0] of {int};

#define SQUARE(x) (x * x)

active proctype Test() {
    int result;
    int value = 5;

    result = SQUARE(value);
    
    c!result;
}

init {
    int received;
    c?received;
}