# TypeScript — Complete Mini-Course

## 1. What Is TypeScript?
TypeScript is JavaScript with types. It catches errors before you run the code and is the standard for large projects. Learn JavaScript first, then TypeScript.

## 2. Hello World
```ts
function greet(name: string): string {
  return `Hello, ${name}!`;
}
console.log(greet("Akbar"));
```

## 3. Basic Types
```ts
let name: string = "Akbar";
let age: number = 20;
let isStudent: boolean = true;
let skills: string[] = ["TS", "Git"];
let anything: any = 5;        // avoid `any` when you can
let score: number | string = 90;  // union type
```

## 4. Interfaces & Types
```ts
interface User {
  name: string;
  age: number;
  email?: string;  // optional
}

const user: User = { name: "Akbar", age: 20 };
```

## 5. Functions with Types
```ts
function add(a: number, b: number): number {
  return a + b;
}

const multiply = (a: number, b: number): number => a * b;
```

## 6. Generics
```ts
function first<T>(arr: T[]): T {
  return arr[0];
}
console.log(first([1, 2, 3]));       // 1
console.log(first(["a", "b"]));      // "a"
```

## 7. Classes
```ts
class Student {
  constructor(public name: string, private age: number) {}

  introduce(): string {
    return `Hi, I am ${this.name}.`;
  }
}
```

## 8. Common Mistakes
- Using `any` everywhere (defeats the purpose of TypeScript)
- Forgetting that types disappear at runtime — they are only for development
- Confusing `interface` and `type` (both work; `interface` is preferred for objects)

## 9. Practice Exercises
1. Convert a JavaScript project of yours to TypeScript.
2. Define types for a small shop: Product, Cart, Order.
3. Write a generic function that reverses any array.

## 10. String Manipulation
```ts
function shout(text: string): string {
  return text.toUpperCase() + "!";
}
console.log(shout("hello"));  // "HELLO!"
const parts: string[] = "a,b,c".split(",");
console.log(parts.join("-"));  // "a-b-c"
console.log("TypeScript".includes("Script"));  // true
```

## 11. File Handling (Node.js)
```ts
import * as fs from "fs";
fs.writeFileSync("notes.txt", "Hello, file!\n");
const content: string = fs.readFileSync("notes.txt", "utf8");
console.log(content);
```

## 12. Error Handling
```ts
function parseNumber(input: string): number {
  const n = Number(input);
  if (isNaN(n)) throw new Error(`"${input}" is not a number`);
  return n;
}
try {
  console.log(parseNumber("abc"));
} catch (error) {
  console.log("Caught:", (error as Error).message);
}
```

## 13. Mini-Project: Typed Expense Tracker
```ts
interface Expense {
  item: string;
  amount: number;
  category: string;
}
const expenses: Expense[] = [
  { item: "Coffee", amount: 3.5, category: "food" },
  { item: "Book", amount: 25, category: "learning" },
];
function totalByCategory(list: Expense[], category: string): number {
  return list
    .filter(e => e.category === category)
    .reduce((sum, e) => sum + e.amount, 0);
}
console.log("Food total: $" + totalByCategory(expenses, "food"));
```

## 14. More Exercises & Interview Questions
**Exercises:**
4. A typed user registry with interfaces.
5. A generic `Stack<T>` class with push/pop/peek.
6. Convert the JavaScript expense tracker to TypeScript with strict types.
7. A function that fetches JSON and validates its shape.
8. A small CLI with typed command-line arguments.

**Interview questions:**
- What is the difference between `interface` and `type`?
- What are generics and when do you use them?
- What does `strict` mode enable?
- How do enums differ from union types?
- What is a declaration file (.d.ts)?

## 15. Next Steps
- Handbook (official): https://www.typescriptlang.org/docs/handbook/intro.html
- Code examples in this repo: [`examples/typescript/`](../examples/typescript/)
