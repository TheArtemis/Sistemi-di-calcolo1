void count_space(char* s, int* c) {
    *c = 0;
    while (*s) {
        if (*s == 32) (*c)++;
        s++;
    }
}
