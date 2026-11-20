// Temperature converter - C
#include <stdio.h>

double celsius_to_fahrenheit(double c) { return c * 9 / 5 + 32; }
double fahrenheit_to_celsius(double f) { return (f - 32) * 5 / 9; }

int main(void) {
    printf("25 C = %.1f F\n", celsius_to_fahrenheit(25));
    printf("77 F = %.1f C\n", fahrenheit_to_celsius(77));
    return 0;
}
