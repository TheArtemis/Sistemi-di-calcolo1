#include "es4.h"

// conta punti inclusi nella circonferenza passante per l'origine e
// centrata nel punto p
int count(int* x, int* y, int p, int n) {
    int i, c;
    for (i = c = 0; i < n; i++)
        if (distsqr(x[p], y[p], x[i], y[i]) < 
            distsqr(x[p], y[p], 0, 0)) c++;
    return c;
}

// conta il massimo numero di punti che sono inclusi nella circonferenza
// passante per l'origine e centrata in uno dei punti dell'insieme
int count_max(int* x, int* y, int n) {
    int i, max = 0;
    for (i=0; i<n; i++)
        if (count(x, y, i, n) > max) 
            max = count(x, y, i, n);
    return max;
}
