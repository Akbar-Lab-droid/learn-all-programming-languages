// Number guessing game - Go (demo with fixed guesses)
package main

import "fmt"

func main() {
	secret := 42
	guesses := []int{10, 50, 42}
	for _, guess := range guesses {
		if guess < secret {
			fmt.Println(guess, "is too low!")
		} else if guess > secret {
			fmt.Println(guess, "is too high!")
		} else {
			fmt.Println(guess, "is correct! You win!")
			break
		}
	}
}
