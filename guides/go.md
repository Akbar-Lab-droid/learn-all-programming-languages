# Go — Complete Mini-Course

## 1. What Is Go?
Go is Google's language for fast backends, microservices, and cloud tools. Small syntax, fast compilation, built-in concurrency.

## 2. Hello World
```go
package main

import "fmt"

func main() {
    fmt.Println("Hello, World!")
}
```

## 3. Variables & Data Types
```go
name := "Akbar"   // short declaration, type inferred
var age int = 20
height := 1.75
isStudent := true
```

## 4. Operators
```go
fmt.Println(10 + 3)  // 13
fmt.Println(10 / 3)  // 3 (integer division)
fmt.Println(10 % 3)  // 1
```

## 5. Conditionals
```go
score := 85
if score >= 90 {
    fmt.Println("A")
} else if score >= 75 {
    fmt.Println("B")
} else {
    fmt.Println("C")
}
```

## 6. Loops (Only `for`)
```go
for i := 0; i < 5; i++ {
    fmt.Println(i)
}

// while-style loop
count := 0
for count < 3 {
    fmt.Println(count)
    count++
}
```

## 7. Functions
```go
func add(a, b int) int {
    return a + b
}

// Go functions can return multiple values!
func divide(a, b float64) (float64, error) {
    if b == 0 {
        return 0, fmt.Errorf("cannot divide by zero")
    }
    return a / b, nil
}
```

## 8. Slices & Maps
```go
fruits := []string{"apple", "banana"}
fruits = append(fruits, "mango")

ages := map[string]int{"Akbar": 20, "Budi": 21}
fmt.Println(ages["Akbar"])  // 20
```

## 9. Structs
```go
type Student struct {
    Name  string
    Major string
}

s := Student{Name: "Akbar", Major: "Informatics"}
```

## 10. Goroutines (Concurrency)
```go
go fmt.Println("runs in the background")
time.Sleep(time.Second)  // give it time to run
```

## 11. Common Mistakes
- Unused variables/imports — Go refuses to compile
- `:=` vs `=` (short declaration only inside functions)
- Forgetting that maps are references, not copies
- Ignoring returned errors

## 12. Practice Exercises
1. A REST API with `net/http`: GET/POST a to-do list.
2. A URL shortener.
3. A CLI tool that counts words in a file.

## 13. String Manipulation
```go
text := "  Hello, World!  "
fmt.Println(strings.TrimSpace(text))
fmt.Println(strings.ToLower(text))
fmt.Println(strings.Replace(text, "World", "Go", 1))
fmt.Println(strings.Split("a,b,c", ","))
fmt.Println(strings.Contains(text, "World"))
```

## 14. File Handling
```go
os.WriteFile("notes.txt", []byte("Hello, file!\n"), 0644)
data, _ := os.ReadFile("notes.txt")
fmt.Println(string(data))
```

## 15. Error Handling
```go
data, err := os.ReadFile("missing.txt")
if err != nil {
    fmt.Println("Could not read file:", err)
    return
}
fmt.Println(string(data))
```

## 16. Mini-Project: URL Health Checker
A program that takes a list of URLs, checks each one with an HTTP GET, and prints whether it is up (200) or down — with the response time. Use goroutines to check them all at once.

## 17. More Exercises & Interview Questions
**Exercises:**
4. A web server with two routes (net/http).
5. A program that counts lines in all .go files in a folder.
6. A concurrent downloader with goroutines and channels.
7. A simple key-value store with a map and a CLI.
8. A JSON API client that prints data from a public API.

**Interview questions:**
- What is a goroutine? What is a channel?
- How does Go handle errors?
- What is the difference between a slice and an array?
- What is the zero value?
- How does the Go scheduler work?

## 18. Next Steps
- Interactive tour: https://go.dev/tour/
- Book: https://quii.gitbook.io/learn-go-with-tests/
- Code examples in this repo: [`examples/go/`](../examples/go/)
