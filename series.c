#include <stdio.h>

int main() {
    float a, b, t;
    int i, n;
    a = 0.0;
    b = 1.0;
    i = 1;
    scanf("%d", &n);
    printf("%f\n", a);
    printf("%f\n", b);
    while (i < n) {
        t = b;
        b = a + b;
        printf("%f\n", b);
        a = t;
        i = i + 1;
    }
    return 0;
}
