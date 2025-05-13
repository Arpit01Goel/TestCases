mtype = { ADD, SUB, MUL, DIV };

chan request = [0] of { mtype, int, int };
chan response = [0] of { int };

active proctype calculator() {
    mtype op;
    int a, b, result;

    do
    :: request?op, a, b ->
        if
        :: op == ADD -> result = a + b
        :: op == SUB -> result = a - b
        :: op == MUL -> result = a * b
        :: op == DIV -> 
            if
            :: b != 0 -> result = a / b
            :: else -> result = -1 // Error case for division by zero
            fi
        fi;
        response!result
    od;
}