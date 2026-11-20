// Temperature converter - Kotlin
fun celsiusToFahrenheit(c: Double): Double = c * 9 / 5 + 32
fun fahrenheitToCelsius(f: Double): Double = (f - 32) * 5 / 9

fun main() {
    println("25 C = ${celsiusToFahrenheit(25.0)} F")
    println("77 F = ${fahrenheitToCelsius(77.0)} C")
}
