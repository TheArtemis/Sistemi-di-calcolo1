#include <stdio.h>

void count_space(char* s, int* c);

int main() {
    char s1[]="Star Wars 7 ";
    char s2[]="Obi-Wan Kenobi";
    char s3[]=" Chewbecca";
    char s4[]="";
    int c1, c2, c3, c4;

    count_space(s1, &c1);
    printf("%d [corretto = 3]\n", c1);

    count_space(s2, &c2);
    printf("%d [corretto = 1]\n", c2);

    count_space(s3, &c3);
    printf("%d [corretto = 1]\n", c3);

    count_space(s4, &c4);
    printf("%d [corretto = 0]\n", c4);

    return 0;
}
