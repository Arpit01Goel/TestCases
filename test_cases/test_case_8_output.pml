channel c = [0] of { int };

active proctype PointerManipulation() {
    int a = 10;
    int *p;
    p = &a;

    if
    :: *p == 10 -> c!1; // Send signal if value pointed to is 10
    :: *p != 10 -> c!0; // Send signal if value pointed to is not 10
    fi;

    // Change value through pointer
    *p = 20;

    if
    :: *p == 20 -> c!2; // Send signal if value pointed to is now 20
    :: *p != 20 -> c!3; // Send signal if value pointed to is not 20
    fi;
}