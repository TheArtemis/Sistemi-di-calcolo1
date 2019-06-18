int df(int x, int y);

int fun(int* x, int* y) {
    if (x>y) return df(*x*2,*y); 
    return 7*df(*x,*y);
}
