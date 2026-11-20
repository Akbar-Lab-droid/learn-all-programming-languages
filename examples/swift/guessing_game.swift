// Number guessing game - Swift (demo with fixed guesses)
let secret = 42
let guesses = [10, 50, 42]
for guess in guesses {
    if guess < secret {
        print("\(guess) is too low!")
    } else if guess > secret {
        print("\(guess) is too high!")
    } else {
        print("\(guess) is correct! You win!")
        break
    }
}
