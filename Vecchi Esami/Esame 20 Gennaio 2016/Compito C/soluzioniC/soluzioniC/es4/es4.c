#include "es4.h"

void filtro4(unsigned* in, unsigned* out, int n) {
    int i;
    for (i=0; i+3 < n; i++) out[i] = media(in+i, 4);
    for (;i<n; i++) out[i] = in[i];
}
