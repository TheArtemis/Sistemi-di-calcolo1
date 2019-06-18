#include <stdio.h>

unsigned f(unsigned x, unsigned y);

int main() {
	printf("%d [atteso=1]\n", f(9,9));
	printf("%d [atteso=1]\n", f(1,2));
	printf("%d [atteso=1]\n", f(2,-3));
	printf("%d [atteso=0]\n", f(-2,3));
	printf("%d [atteso=0]\n", f(5,1));
	return 0;
}
