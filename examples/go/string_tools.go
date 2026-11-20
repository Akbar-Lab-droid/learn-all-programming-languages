// String tools - Go
package main

import (
	"fmt"
	"strings"
)

func reverse(text string) string {
	runes := []rune(text)
	for i, j := 0, len(runes)-1; i < j; i, j = i+1, j-1 {
		runes[i], runes[j] = runes[j], runes[i]
	}
	return string(runes)
}

func countVowels(text string) int {
	count := 0
	for _, ch := range strings.ToLower(text) {
		if strings.ContainsRune("aeiou", ch) {
			count++
		}
	}
	return count
}

func isPalindrome(text string) bool {
	clean := ""
	for _, ch := range strings.ToLower(text) {
		if (ch >= 'a' && ch <= 'z') || (ch >= '0' && ch <= '9') {
			clean += string(ch)
		}
	}
	return clean == reverse(clean)
}

func main() {
	word := "level"
	fmt.Printf("Reverse of '%s': %s\n", word, reverse(word))
	fmt.Println("Vowels in 'Hello World':", countVowels("Hello World"))
	fmt.Printf("Is '%s' a palindrome? %v\n", word, isPalindrome(word))
}
