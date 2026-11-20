// Prime checker - Go
package main

import "fmt"

func isPrime(n int) bool {
	if n < 2 {
		return false
	}
	for i := 2; i*i <= n; i++ {
		if n%i == 0 {
			return false
		}
	}
	return true
}

func main() {
	for _, n := range []int{2, 7, 10, 17, 25, 29} {
		fmt.Println(n, "is prime?", isPrime(n))
	}
	fmt.Print("Primes up to 50: ")
	for n := 2; n <= 50; n++ {
		if isPrime(n) {
			fmt.Print(n, " ")
		}
	}
	fmt.Println()
}
