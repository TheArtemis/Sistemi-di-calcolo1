#include <stdio.h>

int f(int x, int y);

int main() {
	printf("%d\n", f(1,2));
	printf("%d\n", f(2,-3));
	printf("%d\n", f(-2,3));
	printf("%d\n", f(5,1));
	return 0;
}
