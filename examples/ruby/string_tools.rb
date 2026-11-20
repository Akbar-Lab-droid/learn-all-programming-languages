# String tools - Ruby
def reverse_text(text)
  text.reverse
end

def count_vowels(text)
  text.downcase.count("aeiou")
end

def palindrome?(text)
  clean = text.downcase.gsub(/[^a-z0-9]/, "")
  clean == clean.reverse
end

word = "level"
puts "Reverse of '#{word}': #{reverse_text(word)}"
puts "Vowels in 'Hello World': #{count_vowels('Hello World')}"
puts "Is '#{word}' a palindrome? #{palindrome?(word)}"
