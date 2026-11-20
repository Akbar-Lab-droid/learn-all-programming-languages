// Prime checker - TypeScript
function isPrime(n: number): boolean {
  if (n < 2) return false;
  for (let i = 2; i * i <= n; i++) {
    if (n % i === 0) return false;
  }
  return true;
}
for (const n of [2, 7, 10, 17, 25, 29]) {
  console.log(`${n} is prime? ${isPrime(n)}`);
}
