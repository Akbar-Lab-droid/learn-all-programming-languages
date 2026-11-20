// Number guessing game - Kotlin (demo with fixed guesses)
fun main() {
    val secret = 42
    val guesses = listOf(10, 50, 42)
    for (guess in guesses) {
        if (guess < secret) println("$guess is too low!")
        else if (guess > secret) println("$guess is too high!")
        else {
            println("$guess is correct! You win!")
            break
        }
    }
}
