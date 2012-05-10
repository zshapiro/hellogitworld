static int fib(int n) {
    int f1 = 0
    int f2 = 1
    if (n == 0) f1
    else if (n == 1) f2
    else {
        for(int i=1; i<n; i++) {
            int newF = f1+f2
            f1 = f2
            f2 = newF
        }
        f2
    }
}
