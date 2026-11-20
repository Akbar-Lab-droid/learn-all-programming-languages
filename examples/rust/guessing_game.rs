// Number guessing game - Rust (demo with fixed guesses)
fn main() {
    let secret = 42;
    let guesses = [10, 50, 42];
    for guess in guesses {
        if guess < secret {
            println!("{} is too low!", guess);
        } else if guess > secret {
            println!("{} is too high!", guess);
        } else {
            println!("{} is correct! You win!", guess);
            break;
        }
    }
}
