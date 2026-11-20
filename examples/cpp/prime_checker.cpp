// Prime checker - C++
#include <iostream>
using namespace std;

bool isPrime(int n) {
    if (n < 2) return false;
    for (int i = 2; i * i <= n; i++) {
        if (n % i == 0) return false;
    }
    return true;
}

int main() {
    int tests[] = {2, 7, 10, 17, 25, 29};
    for (int n : tests) {
        cout << n << " is prime? " << (isPrime(n) ? "yes" : "no") << endl;
    }
    cout << "Primes up to 50: ";
    for (int n = 2; n <= 50; n++) {
        if (isPrime(n)) cout << n << " ";
    }
    cout << endl;
    return 0;
}
