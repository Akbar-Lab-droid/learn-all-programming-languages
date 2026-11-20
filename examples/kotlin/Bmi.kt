// BMI calculator - Kotlin
fun bmi(weightKg: Double, heightM: Double): Double =
    weightKg / (heightM * heightM)

fun category(value: Double): String {
    if (value < 18.5) return "Underweight"
    if (value < 25) return "Normal"
    if (value < 30) return "Overweight"
    return "Obese"
}

fun main() {
    val people = listOf(
        Triple("Akbar", 70.0, 1.75),
        Triple("Budi", 85.0, 1.70),
        Triple("Citra", 50.0, 1.60)
    )
    for ((name, w, h) in people) {
        val value = bmi(w, h)
        println("$name: BMI ${"%.1f".format(value)} - ${category(value)}")
    }
}
