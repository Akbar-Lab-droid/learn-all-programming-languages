// Prime checker - C#
using System;

class PrimeChecker {
    static bool IsPrime(int n) {
        if (n < 2) return false;
        for (int i = 2; i * i <= n; i++) {
            if (n % i == 0) return false;
        }
        return true;
    }

    static void Main() {
        int[] tests = { 2, 7, 10, 17, 25, 29 };
        foreach (int n in tests) {
            Console.WriteLine($"{n} is prime? {IsPrime(n)}");
        }
        Console.Write("Primes up to 50: ");
        for (int n = 2; n <= 50; n++) {
            if (IsPrime(n)) Console.Write(n + " ");
        }
        Console.WriteLine();
    }
}
