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

## 10. Next Steps
- Handbook (official): https://www.typescriptlang.org/docs/handbook/intro.html
- Code examples in this repo: [`examples/typescript/`](../examples/typescript/)
