// Prime checker - Java
public class PrimeChecker {
    public static boolean isPrime(int n) {
        if (n < 2) return false;
        for (int i = 2; i * i <= n; i++) {
            if (n % i == 0) return false;
        }
        return true;
    }

    public static void main(String[] args) {
        int[] tests = {2, 7, 10, 17, 25, 29};
        for (int n : tests) {
            System.out.println(n + " is prime? " + isPrime(n));
        }
        System.out.print("Primes up to 50: ");
        for (int n = 2; n <= 50; n++) {
            if (isPrime(n)) System.out.print(n + " ");
        }
        System.out.println();
    }
}
