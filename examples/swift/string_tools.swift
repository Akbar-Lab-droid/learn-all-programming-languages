// String tools - Swift
func reverseText(_ text: String) -> String {
    String(text.reversed())
}

func countVowels(_ text: String) -> Int {
    text.lowercased().filter { "aeiou".contains($0) }.count
}

func isPalindrome(_ text: String) -> Bool {
    let clean = text.lowercased().filter { $0.isLetter || $0.isNumber }
    return clean == String(clean.reversed())
}

let word = "level"
print("Reverse of '\(word)': \(reverseText(word))")
print("Vowels in 'Hello World': \(countVowels("Hello World"))")
print("Is '\(word)' a palindrome? \(isPalindrome(word))")
