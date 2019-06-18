#include "es4.h"

void filtro4(unsigned* in, unsigned* out, int n) {
    int i, max = 0;
    for (i=0; i+3 < n; i++) 
        out[i] = (in[i]+in[i+1]+in[i+2]+in[i+3]) / 4;
    for (;i<n; i++) out[i] = in[i];
}
