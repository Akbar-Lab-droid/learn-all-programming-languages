// Temperature converter - Swift
func celsiusToFahrenheit(_ c: Double) -> Double { c * 9 / 5 + 32 }
func fahrenheitToCelsius(_ f: Double) -> Double { (f - 32) * 5 / 9 }

print("25 C = \(celsiusToFahrenheit(25)) F")
print("77 F = \(fahrenheitToCelsius(77)) C")
