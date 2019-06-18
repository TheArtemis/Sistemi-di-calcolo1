#include <stdio.h>

int f(int* v,int i,int j);

int main(){
	int v[]={1,2,3,4};
    printf("%d\n", f(v,0,3));
    return 0;
}
