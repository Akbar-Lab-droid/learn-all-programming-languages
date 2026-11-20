// Prime checker - JavaScript
function isPrime(n) {
  if (n < 2) return false;
  for (let i = 2; i * i <= n; i++) {
    if (n % i === 0) return false;
  }
  return true;
}
for (const n of [2, 7, 10, 17, 25, 29]) {
  console.log(`${n} is prime? ${isPrime(n)}`);
}
const primes = [];
for (let n = 2; n <= 50; n++) if (isPrime(n)) primes.push(n);
console.log("Primes up to 50:", primes);
