// Temperature converter - Rust
fn celsius_to_fahrenheit(c: f64) -> f64 {
    c * 9.0 / 5.0 + 32.0
}

fn fahrenheit_to_celsius(f: f64) -> f64 {
    (f - 32.0) * 5.0 / 9.0
}

fn main() {
    println!("25 C = {} F", celsius_to_fahrenheit(25.0));
    println!("77 F = {} C", fahrenheit_to_celsius(77.0));
}
