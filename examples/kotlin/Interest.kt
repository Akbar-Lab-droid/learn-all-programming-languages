// Simple & compound interest - Kotlin
import kotlin.math.pow

fun simpleInterest(principal: Double, rate: Double, years: Double): Double =
    principal * rate * years / 100

fun compoundInterest(principal: Double, rate: Double, years: Double): Double =
    principal * (1 + rate / 100).pow(years) - principal

fun main() {
    val p = 1000.0; val r = 5.0; val y = 3.0
    println("Simple interest: $${"%.2f".format(simpleInterest(p, r, y))}")
    println("Compound interest: $${"%.2f".format(compoundInterest(p, r, y))}")
}
