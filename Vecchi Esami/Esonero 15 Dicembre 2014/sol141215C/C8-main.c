#include <stdio.h>

short f(short x);

int main(){
    printf("f(7)=%d\n", f(7));
    printf("f(-7)=%d\n", f(-7));
    printf("f(0)=%d\n", f(0));
    printf("f(-1)=%d\n", f(-1));
    printf("f(9)=%d\n", f(9));
    return 0;
}
