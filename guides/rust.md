# Rust — Complete Mini-Course

## 1. What Is Rust?
Rust is fast like C++ and safe like no other systems language — the compiler catches memory bugs before your program runs. Used for operating systems, blockchain, and WebAssembly.

## 2. Hello World
```rust
fn main() {
    println!("Hello, World!");
}
```

## 3. Variables & Mutability
```rust
let name = "Akbar";       // immutable by default
let mut age = 20;         // mutable
age = 21;
let height: f64 = 1.75;   // explicit type
```

## 4. Operators
```rust
println!("{}", 10 + 3);  // 13
println!("{}", 10 / 3);  // 3 (integer division)
println!("{}", 10 % 3);  // 1
```

## 5. Conditionals
```rust
let score = 85;
if score >= 90 {
    println!("A");
} else if score >= 75 {
    println!("B");
} else {
    println!("C");
}
```

## 6. Loops
```rust
for i in 0..5 {
    println!("{}", i);
}

let mut count = 0;
while count < 3 {
    println!("{}", count);
    count += 1;
}
```

## 7. Functions
```rust
fn add(a: i32, b: i32) -> i32 {
    a + b  // no semicolon = the return value
}
```

## 8. Ownership (The Big Idea)
```rust
let s1 = String::from("hello");
let s2 = s1;            // s1 is MOVED — it no longer owns the string
// println!("{}", s1);  // ERROR: s1 was moved
println!("{}", s2);     // works
```

## 9. Structs & Enums
```rust
struct Student {
    name: String,
    major: String,
}

enum Grade {
    A,
    B,
    C,
}
```

## 10. Error Handling with Result
```rust
fn divide(a: f64, b: f64) -> Result<f64, String> {
    if b == 0.0 {
        Err("cannot divide by zero".to_string())
    } else {
        Ok(a / b)
    }
}
```

## 11. Common Mistakes
- Fighting the borrow checker instead of restructuring the code
- Forgetting `mut` when you need to change a value
- `String` vs `&str` confusion (owned vs borrowed text)
- Semicolons: the last expression without `;` is the return value

## 12. Practice Exercises
1. A CLI tool that reads a file and counts its lines.
2. A simple web server with `std::net`.
3. A small game (guess the number) with proper error handling.

## 13. Next Steps
- The Rust Book (free): https://doc.rust-lang.org/book/
- Exercises: https://github.com/rust-lang/rustlings
- Code examples in this repo: [`examples/rust/`](../examples/rust/)
