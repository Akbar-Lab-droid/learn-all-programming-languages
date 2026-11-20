// Simple & compound interest - Swift
import Foundation

func simpleInterest(principal: Double, rate: Double, years: Double) -> Double {
    principal * rate * years / 100
}

func compoundInterest(principal: Double, rate: Double, years: Double) -> Double {
    principal * pow(1 + rate / 100, years) - principal
}

let p = 1000.0, r = 5.0, y = 3.0
print(String(format: "Simple interest: $%.2f", simpleInterest(principal: p, rate: r, years: y)))
print(String(format: "Compound interest: $%.2f", compoundInterest(principal: p, rate: r, years: y)))
