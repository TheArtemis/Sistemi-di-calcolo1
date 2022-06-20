#include <stdio.h>
#include <assert.h>
#include <stdlib.h>
#include "es4.h"

#define N 20000

int distsqr(int x1, int y1, int x2, int y2) {
    return (x1-x2)*(x1-x2)+(y1-y2)*(y1-y2);
}

void init(int* x, int* y, int n) {
    int i;
    for (i=0; i<N; i+=2) x[i] = i, y[i] = 0;
    for (i=1; i<N; i+=2) x[i] = 0, y[i] = i;
}

int main() {
    int c, *x = malloc(N*sizeof(int)), *y = malloc(N*sizeof(int));
    assert(x != NULL && y != NULL);
    init(x, y, N);
    c = count_max(x, y, N);
    printf("Risultato %d\n", c);
    free(x);
    free(y);
    return 0;
}
