#include <stdio.h>

short f(short* d,int c);

int main(){
	short v[]={-1,-2,-3,-4};
    printf("%d\n", f(v,0));
    printf("%d\n", f(v,1));
    printf("%d\n", f(v,2));
    printf("%d\n", f(v,3));
    return 0;
}
