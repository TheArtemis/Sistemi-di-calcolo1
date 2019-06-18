#include <stdio.h>
#include <assert.h>
#include <stdlib.h>
#include "es4.h"

#define N 100000000
#define S 100

void init(int* v, int n, int s) {
    int i;
    for (i=0; i<n; i++) v[i] = i % s;
}

void print_array(int* v, int n) {
    int i;
    for (i=0; i<n; i++) {
        printf("%10d ", v[i]);
        if ((i+1)%10 == 0) printf("\n");
    }
}

int main() {
    int *in =  malloc(N*sizeof(int));
    int *out = malloc(S*sizeof(int));
    assert(in != NULL && out != NULL);
    init(in, N, S);
    stat(in, N, out, S);
    printf("Risultato: \n");
    print_array(out, S);
    free(in);
    free(out);
    return 0;
}
