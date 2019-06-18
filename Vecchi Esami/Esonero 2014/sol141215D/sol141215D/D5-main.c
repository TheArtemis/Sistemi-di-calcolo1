#include <stdio.h>

int f();

int h(int x){
    return x+1;
}

int main(){
    printf("%d\n", f());
    return 0;
}
