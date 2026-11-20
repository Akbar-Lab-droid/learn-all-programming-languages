// BMI calculator - Rust
fn bmi(weight_kg: f64, height_m: f64) -> f64 {
    weight_kg / (height_m * height_m)
}

fn category(value: f64) -> &'static str {
    if value < 18.5 {
        "Underweight"
    } else if value < 25.0 {
        "Normal"
    } else if value < 30.0 {
        "Overweight"
    } else {
        "Obese"
    }
}

fn main() {
    let people = [("Akbar", 70.0, 1.75), ("Budi", 85.0, 1.70), ("Citra", 50.0, 1.60)];
    for (name, w, h) in people {
        let value = bmi(w, h);
        println!("{}: BMI {:.1} - {}", name, value, category(value));
    }
}
