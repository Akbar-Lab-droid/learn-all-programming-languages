// Number guessing game - TypeScript (demo with fixed guesses)
const secret: number = 42;
const guesses: number[] = [10, 50, 42];
for (const guess of guesses) {
  if (guess < secret) console.log(`${guess} is too low!`);
  else if (guess > secret) console.log(`${guess} is too high!`);
  else {
    console.log(`${guess} is correct! You win!`);
    break;
  }
}
