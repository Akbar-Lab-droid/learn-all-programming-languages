# C# — Complete Mini-Course

## 1. What Is C#?
C# is Microsoft's modern, object-oriented language. It powers Unity games, Windows apps, and .NET web backends.

## 2. Hello World
```csharp
using System;

class Hello {
    static void Main() {
        Console.WriteLine("Hello, World!");
    }
}
```

## 3. Variables & Data Types
```csharp
string name = "Akbar";
int age = 20;
double height = 1.75;
bool isStudent = true;
char grade = 'A';
```

## 4. Operators
```csharp
Console.WriteLine(10 + 3);  // 13
Console.WriteLine(10 / 3);  // 3 (integer division)
Console.WriteLine(10.0 / 3); // 3.333...
Console.WriteLine(10 % 3);  // 1
```

## 5. Conditionals
```csharp
int score = 85;
if (score >= 90) Console.WriteLine("A");
else if (score >= 75) Console.WriteLine("B");
else Console.WriteLine("C");
```

## 6. Loops
```csharp
for (int i = 0; i < 5; i++) {
    Console.WriteLine(i);
}
```

## 7. Methods
```csharp
static int Add(int a, int b) => a + b;
Console.WriteLine(Add(2, 3));  // 5
```

## 8. Lists & LINQ
```csharp
var fruits = new List<string> { "apple", "banana" };
fruits.Add("mango");

var numbers = new List<int> { 1, 2, 3, 4, 5 };
var evens = numbers.Where(n => n % 2 == 0);  // LINQ
```

## 9. Classes
```csharp
class Student {
    public string Name { get; set; }
    public string Major { get; set; }

    public string Introduce() => $"Hi, I am {Name}.";
}
```

## 10. Common Mistakes
- `==` on strings works in C# (unlike Java) — but be careful with `null`
- Forgetting `using System;`
- Integer division surprises
- Not disposing resources (use `using` blocks)

## 11. Practice Exercises
1. A 2D Unity game: a character that moves with arrow keys.
2. A console cashier system.
3. An ASP.NET Core REST API for a to-do list.

## 12. Next Steps
- Official learning path: https://learn.microsoft.com/en-us/dotnet/csharp/
- Unity Learn: https://learn.unity.com
- Code examples in this repo: [`examples/csharp/`](../examples/csharp/)
