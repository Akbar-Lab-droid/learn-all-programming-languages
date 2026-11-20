// Prime checker - Swift
func isPrime(_ n: Int) -> Bool {
    if n < 2 { return false }
    var i = 2
    while i * i <= n {
        if n % i == 0 { return false }
        i += 1
    }
    return true
}

for n in [2, 7, 10, 17, 25, 29] {
    print("\(n) is prime? \(isPrime(n))")
}
print("Primes up to 50: ", terminator: "")
for n in 2...50 where isPrime(n) {
    print(n, terminator: " ")
}
print()
