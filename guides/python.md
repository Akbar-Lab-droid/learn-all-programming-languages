# Python — Complete Mini-Course

## 1. What Is Python?
Python is a high-level, interpreted language famous for readable syntax. It is the #1 language for data science, AI, automation, and a great first language.

## 2. Hello World
```python
print("Hello, World!")
```

## 3. Variables & Data Types
```python
name = "Akbar"        # str
age = 20              # int
height = 1.75         # float
is_student = True     # bool
skills = ["Python", "Git"]              # list
profile = {"name": "Akbar", "age": 20}  # dict
```

## 4. Operators
```python
print(10 + 3)   # 13
print(10 / 3)   # 3.333...
print(10 // 3)  # 3 (floor division)
print(10 % 3)   # 1 (remainder)
print(2 ** 3)   # 8 (power)
```

## 5. Conditionals
```python
score = 85
if score >= 90:
    print("A")
elif score >= 75:
    print("B")
else:
    print("C")
```

## 6. Loops
```python
for i in range(5):
    print(i)

count = 0
while count < 3:
    print(count)
    count += 1
```

## 7. Functions
```python
def greet(name):
    return f"Hello, {name}!"

print(greet("Akbar"))
```

## 8. Data Structures
```python
fruits = ["apple", "banana", "orange"]
fruits.append("mango")
print(fruits[0])  # apple

squares = [x * x for x in range(5)]  # list comprehension -> [0, 1, 4, 9, 16]
```

## 9. OOP Basics
```python
class Student:
    def __init__(self, name, major):
        self.name = name
        self.major = major

    def introduce(self):
        return f"Hi, I am {self.name}, studying {self.major}."

s = Student("Akbar", "Informatics")
print(s.introduce())
```

## 10. Common Mistakes
- Forgetting the `:` after `if`, `for`, `def`
- Mixing tabs and spaces (use 4 spaces)
- Modifying a list while looping over it
- `=` (assign) vs `==` (compare)

## 11. Practice Exercises
1. Ask for a name and age, then print "Hello <name>, you are <age> years old."
2. Print all even numbers from 1 to 50.
3. Build a calculator with functions for add, subtract, multiply, divide.

## 12. String Manipulation
```python
text = "  Hello, World!  "
print(text.strip())            # "Hello, World!"
print(text.lower())            # "  hello, world!  "
print(text.replace("World", "Python"))  # "  Hello, Python!  "
print("hello world".title())   # "Hello World"
words = "a,b,c".split(",")     # ['a', 'b', 'c']
print("-".join(words))         # "a-b-c"
print("Python".startswith("Py"))  # True
```

## 13. File Handling
```python
# Write
with open("notes.txt", "w") as f:
    f.write("Hello, file!\n")
    f.write("Second line\n")

# Read the whole file
with open("notes.txt") as f:
    print(f.read())

# Read line by line
with open("notes.txt") as f:
    for line in f:
        print(line.strip())
```

## 14. Error Handling
```python
try:
    number = int("not a number")
except ValueError:
    print("That is not a valid number!")

try:
    result = 10 / 0
except ZeroDivisionError:
    print("Cannot divide by zero!")
finally:
    print("This always runs.")
```

## 15. Mini-Project: Word Counter
```python
# Counts lines, words, and characters in a text file
def analyze_file(path):
    with open(path) as f:
        text = f.read()
    words = text.split()
    print(f"Lines: {text.count(chr(10)) + 1}")
    print(f"Words: {len(words)}")
    print(f"Characters: {len(text)}")

analyze_file("notes.txt")
```

## 16. More Exercises & Interview Questions
**Exercises:**
4. A password strength checker: length >= 8, has a digit, has an uppercase letter.
5. A contact book: a dictionary of names to phone numbers, with add/search/delete.
6. Read a CSV file and print the average of a numeric column.
7. FizzBuzz with a twist: print "Fizz", "Buzz", "FizzBuzz", or the number, for a range the user types in.
8. A quiz game with 5 questions and a final score.

**Interview questions:**
- What is the difference between a list and a tuple?
- How does Python manage memory? (garbage collection, reference counting)
- What are decorators?
- What is the difference between `==` and `is`?
- Explain list comprehensions with an example.

## 17. Next Steps
- Full free course: MIT 6.0001 — https://ocw.mit.edu/courses/6-0001-introduction-to-computer-science-and-programming-in-python-fall-2016/
- Practice: https://www.kaggle.com/learn
- Code examples in this repo: [`examples/python/`](../examples/python/)
