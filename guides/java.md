# Java — Complete Mini-Course

## 1. What Is Java?
Java is a strict, object-oriented language used by banks, large companies, and Android (classic). It teaches strong OOP discipline.

## 2. Hello World
```java
public class HelloWorld {
    public static void main(String[] args) {
        System.out.println("Hello, World!");
    }
}
```

## 3. Variables & Data Types
```java
String name = "Akbar";
int age = 20;
double height = 1.75;
boolean isStudent = true;
char grade = 'A';
```

## 4. Operators
```java
System.out.println(10 + 3);  // 13
System.out.println(10 / 3);  // 3 (integer division!)
System.out.println(10.0 / 3); // 3.333...
System.out.println(10 % 3);  // 1
```

## 5. Conditionals
```java
int score = 85;
if (score >= 90) {
    System.out.println("A");
} else if (score >= 75) {
    System.out.println("B");
} else {
    System.out.println("C");
}
```

## 6. Loops
```java
for (int i = 0; i < 5; i++) {
    System.out.println(i);
}

int count = 0;
while (count < 3) {
    System.out.println(count);
    count++;
}
```

## 7. Methods
```java
public static int add(int a, int b) {
    return a + b;
}
System.out.println(add(2, 3));  // 5
```

## 8. Arrays & Lists
```java
int[] numbers = {1, 2, 3, 4, 5};
System.out.println(numbers[0]);  // 1

ArrayList<String> fruits = new ArrayList<>();
fruits.add("apple");
```

## 9. OOP Basics
```java
class Student {
    String name;
    String major;

    Student(String name, String major) {
        this.name = name;
        this.major = major;
    }

    String introduce() {
        return "Hi, I am " + name + ", studying " + major + ".";
    }
}
```

## 10. Common Mistakes
- `==` on Strings compares references — use `.equals()` instead
- Forgetting the semicolon `;`
- Integer division: `10 / 3` is `3`, not `3.33`
- File name must match the public class name

## 11. Practice Exercises
1. A cashier system: items, prices, total, change.
2. A student record system using ArrayList.
3. A simple number guessing game.

## 12. Next Steps
- Free course: https://java-programming.mooc.fi
- Reference: https://docs.oracle.com/javase/tutorial/
- Code examples in this repo: [`examples/java/`](../examples/java/)
