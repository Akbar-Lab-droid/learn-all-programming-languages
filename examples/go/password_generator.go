// Password generator - Go
package main

import (
	"fmt"
	"math/rand"
)

func generatePassword(length int) string {
	chars := "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*"
	password := make([]byte, length)
	for i := range password {
		password[i] = chars[rand.Intn(len(chars))]
	}
	return string(password)
}

func main() {
	rand.Seed(42) // fixed seed so the demo is repeatable
	for i := 1; i <= 3; i++ {
		fmt.Printf("Password %d: %s\n", i, generatePassword(12))
	}
}
