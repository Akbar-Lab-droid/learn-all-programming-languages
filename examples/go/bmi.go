// BMI calculator - Go
package main

import "fmt"

func bmi(weightKg, heightM float64) float64 {
	return weightKg / (heightM * heightM)
}

func category(value float64) string {
	if value < 18.5 {
		return "Underweight"
	}
	if value < 25 {
		return "Normal"
	}
	if value < 30 {
		return "Overweight"
	}
	return "Obese"
}

func main() {
	names := []string{"Akbar", "Budi", "Citra"}
	data := [][2]float64{{70, 1.75}, {85, 1.70}, {50, 1.60}}
	for i, d := range data {
		value := bmi(d[0], d[1])
		fmt.Printf("%s: BMI %.1f - %s\n", names[i], value, category(value))
	}
}
