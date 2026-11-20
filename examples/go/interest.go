// Simple & compound interest - Go
package main

import (
	"fmt"
	"math"
)

func simpleInterest(principal, rate, years float64) float64 {
	return principal * rate * years / 100
}

func compoundInterest(principal, rate, years float64) float64 {
	return principal*math.Pow(1+rate/100, years) - principal
}

func main() {
	p, r, y := 1000.0, 5.0, 3.0
	fmt.Printf("Simple interest: $%.2f\n", simpleInterest(p, r, y))
	fmt.Printf("Compound interest: $%.2f\n", compoundInterest(p, r, y))
}
