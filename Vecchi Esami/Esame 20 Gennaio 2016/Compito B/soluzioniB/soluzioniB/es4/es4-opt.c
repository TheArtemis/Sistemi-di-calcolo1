#include <string.h>
#include "es4.h"

void stat(const int* in, int n, int* out, int stride) {
    int i;
    memset(out, 0, stride*sizeof(int));
    for (i=0; i<n; i++) 
        out[i%stride] += in[i];
}
