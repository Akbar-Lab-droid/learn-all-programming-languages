# C — Complete Mini-Course

## 1. What Is C?
C is the mother of modern languages. It is close to the hardware: you manage memory yourself. It powers operating systems, embedded devices, and IoT — and it is what most CS programs teach first.

## 2. Hello World
```c
#include <stdio.h>

int main(void) {
    printf("Hello, World!\n");
    return 0;
}
```

## 3. Variables & Data Types
```c
int age = 20;
float height = 1.75f;
double precise = 3.14159265;
char grade = 'A';
char name[] = "Akbar";
```

## 4. Operators
```c
printf("%d\n", 10 + 3);  // 13
printf("%d\n", 10 / 3);  // 3 (integer division)
printf("%d\n", 10 % 3);  // 1
```

## 5. Conditionals
```c
int score = 85;
if (score >= 90) {
    printf("A\n");
} else if (score >= 75) {
    printf("B\n");
} else {
    printf("C\n");
}
```

## 6. Loops
```c
for (int i = 0; i < 5; i++) {
    printf("%d\n", i);
}

int count = 0;
while (count < 3) {
    printf("%d\n", count);
    count++;
}
```

## 7. Functions
```c
int add(int a, int b) {
    return a + b;
}

int main(void) {
    printf("%d\n", add(2, 3));  // 5
    return 0;
}
```

## 8. Arrays & Strings
```c
int numbers[] = {1, 2, 3, 4, 5};
printf("%d\n", numbers[0]);  // 1

char name[] = "Akbar";
printf("%s\n", name);  // Akbar
```

## 9. Pointers (The Big Idea)
```c
int x = 10;
int *p = &x;   // p holds the ADDRESS of x
*p = 20;       // change x through the pointer
printf("%d\n", x);  // 20
```

## 10. Structs
```c
struct Student {
    char name[50];
    int age;
};

struct Student s = {"Akbar", 20};
printf("%s is %d\n", s.name, s.age);
```

## 11. Common Mistakes
- Forgetting `&` in `scanf("%d", &x)`
- `=` (assign) vs `==` (compare)
- Forgetting `\n` in `printf` (output runs together)
- Using a variable before initializing it

## 12. Practice Exercises
1. A CLI calculator: read two numbers and an operator, print the result.
2. A snake game on a text grid.
3. A student record system that saves to a file.

## 13. String Manipulation
```c
#include <string.h>
char text[] = "Hello, World!";
printf("Length: %zu\n", strlen(text));
char copy[50];
strcpy(copy, text);
printf("%s\n", copy);
printf("Compare: %d\n", strcmp("apple", "banana"));  // negative: apple < banana
char *found = strstr(text, "World");
printf("Found at position: %ld\n", found - text);
```

## 14. File Handling
```c
// Write
FILE *f = fopen("notes.txt", "w");
fprintf(f, "Hello, file!\n");
fclose(f);
// Read
f = fopen("notes.txt", "r");
char line[100];
while (fgets(line, sizeof line, f)) {
    printf("%s", line);
}
fclose(f);
```

## 15. Error Handling
```c
#include <errno.h>
FILE *f = fopen("missing.txt", "r");
if (f == NULL) {
    perror("Could not open file");  // "Could not open file: No such file or directory"
}
```

## 16. Mini-Project: Contact Book
An array of `struct Contact` (name, phone), with functions to add a contact, search by name, list all contacts, and save/load the list to a file. Start with a text menu in `main`.

## 17. More Exercises & Interview Questions
**Exercises:**
4. A program that counts words in a text file.
5. A phone book using structs and file storage.
6. Bubble sort an array of 10 numbers.
7. A program that reverses a file line by line.
8. A tic-tac-toe game on a 3x3 board.

**Interview questions:**
- What is a pointer? What is the difference between `*p` and `&x`?
- What is the difference between stack and heap memory?
- What does `malloc` do? What happens if you forget `free`?
- What is a segmentation fault?
- What is the difference between `struct` and `union`?

## 18. Next Steps
- Free course: CS50 — https://cs50.harvard.edu
- Interactive tutorial: https://www.learn-c.org
- Code examples in this repo: [`examples/c/`](../examples/c/)
