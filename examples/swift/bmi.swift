// BMI calculator - Swift
func bmi(weightKg: Double, heightM: Double) -> Double {
    weightKg / (heightM * heightM)
}

func category(_ value: Double) -> String {
    if value < 18.5 { return "Underweight" }
    if value < 25 { return "Normal" }
    if value < 30 { return "Overweight" }
    return "Obese"
}

let people = [("Akbar", 70.0, 1.75), ("Budi", 85.0, 1.70), ("Citra", 50.0, 1.60)]
for (name, w, h) in people {
    let value = bmi(weightKg: w, heightM: h)
    print("\(name): BMI \(String(format: "%.1f", value)) - \(category(value))")
}
