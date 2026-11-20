# Swift — Complete Mini-Course

## 1. What Is Swift?
Swift is Apple's language for iOS, macOS, and watchOS apps. Modern, safe, and fast — the only official way to the App Store.

## 2. Hello World
```swift
print("Hello, World!")
```

## 3. Variables & Constants
```swift
let name = "Akbar"   // constant (preferred)
var age = 20         // variable
let height = 1.75
let isStudent = true
```

## 4. Operators
```swift
print(10 + 3)  // 13
print(10 / 3)  // 3 (integer division)
print(10 % 3)  // 1
```

## 5. Conditionals
```swift
let score = 85
if score >= 90 {
    print("A")
} else if score >= 75 {
    print("B")
} else {
    print("C")
}
```

## 6. Loops
```swift
for i in 1...5 {
    print(i)
}

var count = 0
while count < 3 {
    print(count)
    count += 1
}
```

## 7. Functions
```swift
func greet(name: String) -> String {
    return "Hello, \(name)!"
}
print(greet(name: "Akbar"))
```

## 8. Optionals (The Big Idea)
```swift
var nickname: String? = nil   // may or may not have a value

if let name = nickname {
    print(name)  // safe unwrap
} else {
    print("No nickname")
}

// Nil-coalescing: use a default when nil
print(nickname ?? "Guest")
```

## 9. Arrays & Dictionaries
```swift
var fruits = ["apple", "banana"]
fruits.append("mango")

var ages = ["Akbar": 20, "Budi": 21]
print(ages["Akbar"]!)  // 20
```

## 10. Structs
```swift
struct Student {
    var name: String
    var major: String

    func introduce() -> String {
        return "Hi, I am \(name)."
    }
}
```

## 11. Common Mistakes
- Force-unwrapping `!` on a nil optional (crash!)
- `let` vs `var` confusion
- Forgetting that arrays are value types (copied, not shared)
- Range operators: `1...5` (inclusive) vs `1..<5` (exclusive)

## 12. Practice Exercises
1. A notes app with SwiftUI.
2. A weather app that fetches a public API.
3. An iOS to-do list with local storage.

## 13. Next Steps
- 100 Days of SwiftUI: https://www.hackingwithswift.com/100/swiftui
- Apple tutorials: https://developer.apple.com/tutorials/app-dev-training
- Code examples in this repo: [`examples/swift/`](../examples/swift/)
