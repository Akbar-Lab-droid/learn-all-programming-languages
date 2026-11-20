// String tools - Rust
fn reverse(text: &str) -> String {
    text.chars().rev().collect()
}

fn count_vowels(text: &str) -> usize {
    text.to_lowercase()
        .chars()
        .filter(|c| "aeiou".contains(*c))
        .count()
}

fn is_palindrome(text: &str) -> bool {
    let clean: String = text
        .to_lowercase()
        .chars()
        .filter(|c| c.is_alphanumeric())
        .collect();
    clean == reverse(&clean)
}

fn main() {
    let word = "level";
    println!("Reverse of '{}': {}", word, reverse(word));
    println!("Vowels in 'Hello World': {}", count_vowels("Hello World"));
    println!("Is '{}' a palindrome? {}", word, is_palindrome(word));
}
