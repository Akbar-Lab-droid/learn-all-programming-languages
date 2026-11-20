// Prime checker - C
#include <stdio.h>

int is_prime(int n) {
    if (n < 2) return 0;
    for (int i = 2; i * i <= n; i++) {
        if (n % i == 0) return 0;
    }
    return 1;
}

int main(void) {
    int tests[] = {2, 7, 10, 17, 25, 29};
    for (int i = 0; i < 6; i++) {
        printf("%d is prime? %s\n", tests[i], is_prime(tests[i]) ? "yes" : "no");
    }
    printf("Primes up to 50: ");
    for (int n = 2; n <= 50; n++) {
        if (is_prime(n)) printf("%d ", n);
    }
    printf("\n");
    return 0;
}
