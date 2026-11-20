# C++ — Complete Mini-Course

## 1. What Is C++?
C++ is C with classes and a huge standard library. It is the fastest mainstream language — the choice for games (Unreal Engine), finance, and competitive programming.

## 2. Hello World
```cpp
#include <iostream>
using namespace std;

int main() {
    cout << "Hello, World!" << endl;
    return 0;
}
```

## 3. Variables & Data Types
```cpp
string name = "Akbar";
int age = 20;
double height = 1.75;
bool isStudent = true;
char grade = 'A';
```

## 4. Operators
```cpp
cout << 10 + 3 << endl;  // 13
cout << 10 / 3 << endl;  // 3 (integer division)
cout << 10 % 3 << endl;  // 1
```

## 5. Conditionals
```cpp
int score = 85;
if (score >= 90) cout << "A" << endl;
else if (score >= 75) cout << "B" << endl;
else cout << "C" << endl;
```

## 6. Loops
```cpp
for (int i = 0; i < 5; i++) {
    cout << i << endl;
}
```

## 7. Functions
```cpp
int add(int a, int b) {
    return a + b;
}
cout << add(2, 3) << endl;  // 5
```

## 8. The STL (Vector & String)
```cpp
#include <vector>
#include <string>

vector<int> numbers = {1, 2, 3};
numbers.push_back(4);
cout << numbers[0] << endl;  // 1

string s = "hello";
cout << s.length() << endl;  // 5
```

## 9. Classes
```cpp
class Student {
public:
    string name;
    string major;

    Student(string n, string m) : name(n), major(m) {}

    string introduce() {
        return "Hi, I am " + name + ".";
    }
};
```

## 10. Common Mistakes
- Forgetting `#include <string>` when using `string`
- `=` vs `==`
- Integer division surprises
- Forgetting `;` after a class definition

## 11. Practice Exercises
1. FizzBuzz from 1 to 100.
2. A simple game with SFML (draw a moving square).
3. Solve 10 problems on Codeforces/LeetCode in C++.

## 12. String Manipulation
```cpp
string text = "  Hello, World!  ";
cout << text.substr(2, 5) << endl;  // "Hello"
cout << text.find("World") << endl; // position
text.replace(2, 5, "C++");
cout << text << endl;
cout << to_string(42) << endl;
```

## 13. File Handling
```cpp
#include <fstream>
ofstream out("notes.txt");
out << "Hello, file!" << endl;
out.close();
ifstream in("notes.txt");
string line;
while (getline(in, line)) cout << line << endl;
```

## 14. Error Handling
```cpp
try {
    throw runtime_error("Something went wrong");
} catch (const exception &e) {
    cout << "Caught: " << e.what() << endl;
}
```

## 15. Mini-Project: Contact Book
A `vector<Contact>` where `Contact` is a struct with name and phone. Functions to add, search, list, and save/load from a file. Add a text menu in `main`.

## 16. More Exercises & Interview Questions
**Exercises:**
4. A program that reads numbers from a file and prints their average.
5. A stack class using `std::vector`.
6. A simple text-based RPG: player, enemy, attack, health.
7. Sort students by score using `std::sort` with a custom comparator.
8. A phone book with `std::map`.

**Interview questions:**
- What is the difference between `new` and `malloc`?
- What is RAII?
- What is the difference between a pointer and a reference?
- What is a virtual function?
- What is the rule of three/five?

## 17. Next Steps
- Full free tutorial: https://www.learncpp.com
- Code examples in this repo: [`examples/cpp/`](../examples/cpp/)
