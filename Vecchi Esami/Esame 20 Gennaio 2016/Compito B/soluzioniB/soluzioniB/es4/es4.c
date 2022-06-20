#include "es4.h"

// calcola le somme degli elementi di "in" a distanza "stride"
// fra loro a partire da "from" fino a "to"
static int sum_stride(const int* in, int from, int to, 
                      int* out, int stride) {
    int i, sum = 0;
    for (i=from; i<to; i+=stride) sum += in[i];
    return sum;
}

// calcola in "out[i]" le somme degli elementi di "in" a distanza 
// "stride" fra loro a partire da "i", per ogni i in [0,stride-1]
void stat(const int* in, int n, int* out, int stride) {
    int i;
    for (i=0; i<stride; i++) 
        out[i] = sum_stride(in, i, n, out, stride);
}
