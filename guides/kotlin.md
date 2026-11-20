# Kotlin — Complete Mini-Course

## 1. What Is Kotlin?
Kotlin is Google's official language for Android. Modern, concise, and null-safe — like Swift, but for Android.

## 2. Hello World
```kotlin
fun main() {
    println("Hello, World!")
}
```

## 3. Variables
```kotlin
val name = "Akbar"   // read-only (preferred)
var age = 20         // mutable
val height = 1.75
val isStudent = true
```

## 4. Operators
```kotlin
println(10 + 3)  // 13
println(10 / 3)  // 3 (integer division)
println(10 % 3)  // 1
```

## 5. Conditionals
```kotlin
val score = 85
if (score >= 90) println("A")
else if (score >= 75) println("B")
else println("C")
```

## 6. When (Kotlin's Switch)
```kotlin
val grade = when (score) {
    in 90..100 -> "A"
    in 75..89 -> "B"
    else -> "C"
}
```

## 7. Loops
```kotlin
for (i in 1..5) println(i)
for (i in 1 until 5) println(i)  // 1, 2, 3, 4

var count = 0
while (count < 3) {
    println(count)
    count++
}
```

## 8. Functions
```kotlin
fun greet(name: String): String {
    return "Hello, $name!"
}
println(greet("Akbar"))
```

## 9. Null Safety (The Big Idea)
```kotlin
var nickname: String? = null   // nullable type with ?

println(nickname?.length)      // safe call: null if nickname is null
println(nickname ?: "Guest")   // Elvis operator: default when null
```

## 10. Data Classes
```kotlin
data class Student(val name: String, val major: String)

val s = Student("Akbar", "Informatics")
println(s)  // Student(name=Akbar, major=Informatics)
```

## 11. Common Mistakes
- Using `!!` (force unwrap) on nulls — crashes
- `val` vs `var` confusion
- `1..5` (inclusive) vs `1 until 5` (exclusive)
- Forgetting that `when` needs an `else` when used as an expression

## 12. Practice Exercises
1. An Android notes app with Jetpack Compose.
2. A weather app using Retrofit to call an API.
3. A to-do list with Room database.

## 13. String Manipulation
```kotlin
val text = "  Hello, World!  "
println(text.trim())
println(text.lowercase())
println(text.replace("World", "Kotlin"))
println("a,b,c".split(","))
println("Kotlin".startsWith("Kot"))
```

## 14. File Handling
```kotlin
import java.io.File
File("notes.txt").writeText("Hello, file!\n")
println(File("notes.txt").readText())
File("notes.txt").forEachLine { println(it) }
```

## 15. Error Handling
```kotlin
try {
    val n = "abc".toInt()
} catch (e: NumberFormatException) {
    println("Not a number: ${e.message}")
} finally {
    println("This always runs.")
}
```

## 16. Mini-Project: Notes App
A Jetpack Compose list of notes with add and delete. Store notes in a list of data classes, and persist them in a Room database so they survive app restarts.

## 17. More Exercises & Interview Questions
**Exercises:**
4. A tip calculator app.
5. A weather app with Retrofit.
6. A flashcard app.
7. A stopwatch app.
8. A to-do app with Room database.

**Interview questions:**
- What is null safety? What is the Elvis operator?
- What is the difference between `val` and `var`?
- What is a data class?
- What are coroutines?
- What is the difference between a list and a mutable list?

## 18. Next Steps
- Official docs: https://kotlinlang.org/docs/home.html
- Android Basics: https://developer.android.com/courses/android-basics-compose/course
- Code examples in this repo: [`examples/kotlin/`](../examples/kotlin/)
