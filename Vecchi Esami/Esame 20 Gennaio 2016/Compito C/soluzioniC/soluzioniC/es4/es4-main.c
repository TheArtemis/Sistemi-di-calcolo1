#include <stdio.h>
#include <assert.h>
#include <stdlib.h>
#include "es4.h"

#define N 100000000

unsigned media(unsigned* v, int n) {
    int i, s = 0;
    for (i=0; i<n; i++) s += v[i];
    return s/n;
}

void init(unsigned* v, int n) {
    int i;
    for (i=0; i<N; i++) v[i] = i;
}

void scambia(unsigned** a, unsigned** b) {
    int* temp = *a;
    *a = *b;
    *b = temp;
}

void testa() {
    unsigned in[] = { 10, 20, 30, 40, 50, 60 };
    unsigned out[6];
    filtro4(in, out, 6);
    printf("Risultato: %u %u %u %u %u %u "
           "[corretto=25 35 45 40 50 60]\n", 
        out[0], out[1], out[2], out[3], out[4], out[5]);
}

int main() {
    int i;
    unsigned *in  = malloc(N*sizeof(unsigned));
    unsigned *out = malloc(N*sizeof(unsigned));
    assert(in != NULL && out != NULL);
    init(in, N);
    for (i=0; i<5; i++) {
        filtro4(in, out, N);
        scambia(&in, &out);
    }
    free(in);
    free(out);
    testa();
    return 0;
}
