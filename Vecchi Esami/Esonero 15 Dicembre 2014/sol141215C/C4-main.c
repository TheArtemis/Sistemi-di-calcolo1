#include <stdio.h>

int f(int x, int y);

int main() {
	printf("f(1,2) =%d [atteso=1 -   2>1]\n", f(1,2));
	printf("f(2,-3)=%d [atteso=0 - ~-3>2]\n", f(2,-3));
	printf("f(-2,3)=%d [atteso=1 -   3>-2]\n", f(-2,3));
	printf("f(5,1) =%d [atteso=0 -  ~1>5]\n", f(5,1));
	return 0;
}
