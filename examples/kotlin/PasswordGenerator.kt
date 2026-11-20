// Password generator - Kotlin
import kotlin.random.Random

fun generatePassword(length: Int = 12): String {
    val chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*"
    val random = Random(42)  // fixed seed so the demo is repeatable
    return (1..length).map { chars[random.nextInt(chars.length)] }.joinToString("")
}

fun main() {
    for (i in 1..3) {
        println("Password $i: ${generatePassword()}")
    }
}
