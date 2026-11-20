# BMI calculator - Python
def bmi(weight_kg, height_m):
    return weight_kg / (height_m ** 2)

def category(value):
    if value < 18.5:
        return "Underweight"
    if value < 25:
        return "Normal"
    if value < 30:
        return "Overweight"
    return "Obese"

for name, w, h in [("Akbar", 70, 1.75), ("Budi", 85, 1.70), ("Citra", 50, 1.60)]:
    value = bmi(w, h)
    print(f"{name}: BMI {value:.1f} - {category(value)}")
