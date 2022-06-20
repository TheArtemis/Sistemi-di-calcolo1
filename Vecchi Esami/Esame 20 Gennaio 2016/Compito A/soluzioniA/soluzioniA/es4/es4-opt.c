#include "es4.h"

// conta punti inclusi nella circonferenza passante per l'origine e
// centrata nel punto p
int count(int* x, int* y, int p, int n) {
    int i, c;
    int d = distsqr(x[p], y[p], 0, 0); // hoisting
    for (i = c = 0; i < n; i++)
        // function inlining
        if ((x[p]-x[i])*(x[p]-x[i])+(y[p]-y[i])*(y[p]-y[i]) < d) c++;
    return c;
}

// conta il massimo numero di punti che sono inclusi nella circonferenza
// passante per l'origine e centrata in uno dei punti dell'insieme
int count_max(int* x, int* y, int n) {
    int i, max = 0;
    for (i=0; i<n; i++) {
        int c = count(x, y, i, n); // common subexpression elimination
        if (c > max) max = c;
    }
    return max;
}
