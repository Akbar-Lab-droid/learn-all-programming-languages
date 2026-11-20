# Number guessing game - Python (demo with fixed guesses)
secret = 42
guesses = [10, 50, 42]

for guess in guesses:
    if guess < secret:
        print(f"{guess} is too low!")
    elif guess > secret:
        print(f"{guess} is too high!")
    else:
        print(f"{guess} is correct! You win!")
        break
