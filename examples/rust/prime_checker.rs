// Prime checker - Rust
fn is_prime(n: i32) -> bool {
    if n < 2 {
        return false;
    }
    let mut i = 2;
    while i * i <= n {
        if n % i == 0 {
            return false;
        }
        i += 1;
    }
    true
}

fn main() {
    for n in [2, 7, 10, 17, 25, 29] {
        println!("{} is prime? {}", n, is_prime(n));
    }
    print!("Primes up to 50: ");
    for n in 2..=50 {
        if is_prime(n) {
            print!("{} ", n);
        }
    }
    println!();
}
