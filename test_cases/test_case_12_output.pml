mtype = { REQUEST, RESPONSE };

chan c = [0] of { mtype };

active proctype RecursiveFunction(int n) {
    if
    :: n <= 0 -> c!RESPONSE; // Base case
    :: else -> 
        RecursiveFunction(n - 1); // Recursive call
    fi;
}

init {
    c!REQUEST; // Initial request
    RecursiveFunction(5); // Start recursion with a sample value
}