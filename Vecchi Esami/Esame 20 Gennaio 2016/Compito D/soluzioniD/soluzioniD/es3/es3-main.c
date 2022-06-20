#include <stdio.h>

int fun(int* x, int* y);

int main() {
    int x, y, res;
    x = -1, y = 2, res = fun(&x, &y);
    printf("fun(%d,%d)=%d [corretto=-21]\n", x, y, res);

    x = 5, y = 1, res = fun(&x, &y);
    printf("fun(%d,%d)=%d  [corretto=28]\n", x, y, res);

    x = 7, y = 9, res = fun(&x, &y);
    printf("fun(%d,%d)=%d  [corretto=-14]\n", x, y, res);

    return 0;
}
