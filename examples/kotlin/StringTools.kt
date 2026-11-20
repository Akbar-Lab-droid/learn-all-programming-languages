// String tools - Kotlin
fun reverseText(text: String): String = text.reversed()

fun countVowels(text: String): Int =
    text.lowercase().count { it in "aeiou" }

fun isPalindrome(text: String): Boolean {
    val clean = text.lowercase().filter { it.isLetterOrDigit() }
    return clean == clean.reversed()
}

fun main() {
    val word = "level"
    println("Reverse of '$word': ${reverseText(word)}")
    println("Vowels in 'Hello World': ${countVowels("Hello World")}")
    println("Is '$word' a palindrome? ${isPalindrome(word)}")
}
