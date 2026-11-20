// Password generator - Rust (tiny LCG, stdlib has no rand)
fn next_random(state: &mut u64) -> u64 {
    *state = state.wrapping_mul(6364136223846793005).wrapping_add(1);
    *state >> 33
}

fn generate_password(length: usize, state: &mut u64) -> String {
    let chars: Vec<char> =
        "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*"
            .chars()
            .collect();
    (0..length)
        .map(|_| chars[(next_random(state) as usize) % chars.len()])
        .collect()
}

fn main() {
    let mut state: u64 = 42; // fixed seed so the demo is repeatable
    for i in 1..=3 {
        println!("Password {}: {}", i, generate_password(12, &mut state));
    }
}
