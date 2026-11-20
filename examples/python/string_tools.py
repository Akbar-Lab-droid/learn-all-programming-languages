# String tools - Python
def reverse(text):
    return text[::-1]

def count_vowels(text):
    return sum(1 for ch in text.lower() if ch in "aeiou")

def is_palindrome(text):
    clean = "".join(ch.lower() for ch in text if ch.isalnum())
    return clean == clean[::-1]

word = "level"
print(f"Reverse of '{word}': {reverse(word)}")
print(f"Vowels in 'Hello World': {count_vowels('Hello World')}")
print(f"Is '{word}' a palindrome? {is_palindrome(word)}")
print(f"Is 'hello' a palindrome? {is_palindrome('hello')}")
