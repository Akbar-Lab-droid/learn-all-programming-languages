// Simple & compound interest - C
#include <stdio.h>
#include <math.h>

double simple_interest(double principal, double rate, double years) {
    return principal * rate * years / 100;
}

double compound_interest(double principal, double rate, double years) {
    return principal * pow(1 + rate / 100, years) - principal;
}

int main(void) {
    double p = 1000, r = 5, y = 3;
    printf("Simple interest: $%.2f\n", simple_interest(p, r, y));
    printf("Compound interest: $%.2f\n", compound_interest(p, r, y));
    return 0;
}
