// Prime checker - Kotlin
fun isPrime(n: Int): Boolean {
    if (n < 2) return false
    var i = 2
    while (i * i <= n) {
        if (n % i == 0) return false
        i++
    }
    return true
}

fun main() {
    for (n in listOf(2, 7, 10, 17, 25, 29)) {
        println("$n is prime? ${isPrime(n)}")
    }
    print("Primes up to 50: ")
    for (n in 2..50) {
        if (isPrime(n)) print("$n ")
    }
    println()
}
