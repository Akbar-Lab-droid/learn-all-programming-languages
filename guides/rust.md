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

## 13. String Manipulation
```rust
let text = "  Hello, World!  ";
println!("{}", text.trim());
println!("{}", text.to_lowercase());
println!("{}", text.replace("World", "Rust"));
println!("{}", "a,b,c".split(',').collect::<Vec<_>>().join("-"));
```

## 14. File Handling
```rust
use std::fs;
fs::write("notes.txt", "Hello, file!\n").unwrap();
let content = fs::read_to_string("notes.txt").unwrap();
println!("{}", content);
```

## 15. Error Handling
```rust
use std::fs;
match fs::read_to_string("missing.txt") {
    Ok(content) => println!("{}", content),
    Err(e) => println!("Could not read file: {}", e),
}
// The ? operator propagates errors from functions that return Result.
```

## 16. Mini-Project: Word Frequency Counter
Read a text file, count how often each word appears with a `HashMap`, and print the top 5 words. Handle the missing-file case with a friendly error message.

## 17. More Exercises & Interview Questions
**Exercises:**
4. A CLI that greps a pattern in a file (mini grep).
5. A program that sorts numbers from a file.
6. A simple HTTP server with `std::net`.
7. A to-do list stored in a file.
8. A guessing game that reads input from the terminal.

**Interview questions:**
- What is ownership? What is borrowing?
- What is the difference between String and &str?
- What is a lifetime?
- How does Rust handle errors? (Result, Option, ?)
- What is a trait?

## 18. Next Steps
- The Rust Book (free): https://doc.rust-lang.org/book/
- Exercises: https://github.com/rust-lang/rustlings
- Code examples in this repo: [`examples/rust/`](../examples/rust/)
