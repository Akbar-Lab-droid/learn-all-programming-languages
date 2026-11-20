// Number guessing game - JavaScript (demo with fixed guesses)
const secret = 42;
const guesses = [10, 50, 42];
for (const guess of guesses) {
  if (guess < secret) console.log(`${guess} is too low!`);
  else if (guess > secret) console.log(`${guess} is too high!`);
  else {
    console.log(`${guess} is correct! You win!`);
    break;
  }
}
