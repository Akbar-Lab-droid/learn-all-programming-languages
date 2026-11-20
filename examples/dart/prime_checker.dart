// Prime checker - Dart
bool isPrime(int n) {
  if (n < 2) return false;
  for (var i = 2; i * i <= n; i++) {
    if (n % i == 0) return false;
  }
  return true;
}

void main() {
  for (var n in [2, 7, 10, 17, 25, 29]) {
    print('$n is prime? ${isPrime(n)}');
  }
  var primes = <int>[];
  for (var n = 2; n <= 50; n++) {
    if (isPrime(n)) primes.add(n);
  }
  print('Primes up to 50: $primes');
}
