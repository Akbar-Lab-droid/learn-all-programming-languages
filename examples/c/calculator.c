// Simple calculator - C
#include <stdio.h>

int add(int a, int b) { return a + b; }

double divide(double a, double b) {
    if (b == 0) {
        printf("Cannot divide by zero!\n");
        return 0;
    }
    return a / b;
}

int main(void) {
    printf("10 + 5 = %d\n", add(10, 5));
    printf("10 / 5 = %.1f\n", divide(10, 5));
    return 0;
}
