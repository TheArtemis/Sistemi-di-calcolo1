#include <stdio.h>

char f(char* d,int c);

int main(){
	char v[]={-1,-2,-3,-4};
    printf("%d\n", f(v,0));
    printf("%d\n", f(v,1));
    printf("%d\n", f(v,2));
    printf("%d\n", f(v,3));
    return 0;
}
