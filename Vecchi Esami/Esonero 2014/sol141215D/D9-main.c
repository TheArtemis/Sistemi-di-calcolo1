#include <stdio.h>

int f(int x);

int main(){
    printf("f(7)=%d\n", f(7));
    printf("f(-7)=%d\n", f(-7));
    printf("f(0)=%d\n", f(0));
    printf("f(1)=%d\n", f(1));
    printf("f(-3)=%d\n", f(-3));
    return 0;
}
