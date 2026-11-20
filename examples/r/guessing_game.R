# Number guessing game - R (demo with fixed guesses)
secret <- 42
guesses <- c(10, 50, 42)
for (guess in guesses) {
  if (guess < secret) {
    print(paste(guess, "is too low!"))
  } else if (guess > secret) {
    print(paste(guess, "is too high!"))
  } else {
    print(paste(guess, "is correct! You win!"))
    break
  }
}
