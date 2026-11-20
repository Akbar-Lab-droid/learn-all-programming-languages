# String tools - R
reverse_text <- function(text) {
  paste(rev(strsplit(text, "")[[1]]), collapse = "")
}

count_vowels <- function(text) {
  chars <- strsplit(tolower(text), "")[[1]]
  sum(chars %in% c("a", "e", "i", "o", "u"))
}

is_palindrome <- function(text) {
  clean <- gsub("[^a-z0-9]", "", tolower(text))
  clean == reverse_text(clean)
}

word <- "level"
print(paste("Reverse of", word, ":", reverse_text(word)))
print(paste("Vowels in 'Hello World':", count_vowels("Hello World")))
print(paste("Is", word, "a palindrome?", is_palindrome(word)))
