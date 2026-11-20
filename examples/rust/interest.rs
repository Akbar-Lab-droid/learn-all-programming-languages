// Simple & compound interest - Rust
fn simple_interest(principal: f64, rate: f64, years: f64) -> f64 {
    principal * rate * years / 100.0
}

fn compound_interest(principal: f64, rate: f64, years: f64) -> f64 {
    principal * (1.0 + rate / 100.0).powf(years) - principal
}

fn main() {
    let (p, r, y) = (1000.0, 5.0, 3.0);
    println!("Simple interest: ${:.2}", simple_interest(p, r, y));
    println!("Compound interest: ${:.2}", compound_interest(p, r, y));
}
