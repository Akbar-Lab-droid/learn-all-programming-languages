# JavaScript — Complete Mini-Course

## 1. What Is JavaScript?
JavaScript runs in every browser and on servers (Node.js). It is the language of the web — if you want to build websites, you need it.

## 2. Hello World
```js
console.log("Hello, World!");
```

## 3. Variables & Data Types
```js
let name = "Akbar";      // can change (let)
const age = 20;          // cannot change (const)
let height = 1.75;       // number
let isStudent = true;    // boolean
let skills = ["JS", "Git"];              // array
let profile = { name: "Akbar", age: 20 }; // object
```

## 4. Operators
```js
console.log(10 + 3);  // 13
console.log(10 % 3);  // 1
console.log("5" + 3); // "53" (string wins)
console.log("5" - 3); // 2 (number wins)
console.log(5 === "5"); // false (strict equality, no type conversion)
```

## 5. Conditionals
```js
const score = 85;
if (score >= 90) console.log("A");
else if (score >= 75) console.log("B");
else console.log("C");
```

## 6. Loops
```js
for (let i = 0; i < 5; i++) console.log(i);

let count = 0;
while (count < 3) {
  console.log(count);
  count++;
}
```

## 7. Functions
```js
function greet(name) {
  return `Hello, ${name}!`;
}
console.log(greet("Akbar"));

const add = (a, b) => a + b;  // arrow function
console.log(add(2, 3));
```

## 8. Arrays & Objects
```js
const fruits = ["apple", "banana"];
fruits.push("mango");
console.log(fruits[0]);       // apple
console.log(fruits.length);   // 3
console.log(fruits.map(f => f.toUpperCase()));

const user = { name: "Akbar", age: 20 };
console.log(user.name);  // Akbar
```

## 9. The DOM (Making Web Pages Interactive)
```js
// Change text on the page
document.querySelector("h1").textContent = "Hello from JS!";

// React to a click
document.querySelector("button").addEventListener("click", () => {
  alert("You clicked the button!");
});
```

## 10. Common Mistakes
- Using `==` instead of `===` (loose equality converts types and surprises you)
- Forgetting that `const` arrays/objects can still be modified inside
- `undefined` vs `null` vs "not defined"
- Forgetting `await` on a promise

## 11. Practice Exercises
1. A to-do list: an array of tasks, functions to add and remove tasks.
2. A number guessing game: the computer picks 1–100, the user guesses until correct.
3. Fetch data from a public API and print the results with `fetch()`.

## 12. String Manipulation
```js
const text = "  Hello, World!  ";
console.log(text.trim());
console.log(text.toLowerCase());
console.log(text.replace("World", "JS"));
console.log("hello world".split(" "));
console.log(["a", "b"].join("-"));
console.log("JavaScript".startsWith("Java"));
console.log("JavaScript".includes("Script"));
```

## 13. File Handling (Node.js)
```js
const fs = require("fs");
// Write
fs.writeFileSync("notes.txt", "Hello, file!\nSecond line\n");
// Read
console.log(fs.readFileSync("notes.txt", "utf8"));
// Append
fs.appendFileSync("notes.txt", "Third line\n");
```

## 14. Error Handling
```js
try {
  const data = JSON.parse("not json");
} catch (error) {
  console.log("Invalid JSON:", error.message);
} finally {
  console.log("This always runs.");
}
```

## 15. Mini-Project: Expense Tracker
```js
// Track spending, total it, and filter by category
const expenses = [
  { item: "Coffee", amount: 3.5, category: "food" },
  { item: "Book", amount: 25, category: "learning" },
  { item: "Bus", amount: 2, category: "transport" },
];
const total = expenses.reduce((sum, e) => sum + e.amount, 0);
console.log("Total spent: $" + total);
const food = expenses.filter(e => e.category === "food");
console.log("Food expenses:", food);
```

## 16. More Exercises & Interview Questions
**Exercises:**
4. A shopping cart: add/remove items, compute the total with tax.
5. A stopwatch using `setInterval`.
6. Validate an email address with a regex.
7. A debounce function: delay a call until the user stops typing.
8. Fetch 5 posts from https://jsonplaceholder.typicode.com/posts and print their titles.

**Interview questions:**
- What is the difference between `let`, `const`, and `var`?
- Explain closures with an example.
- What is the event loop?
- What is the difference between `==` and `===`?
- What are promises and async/await?

## 17. Next Steps
- Full free course: https://www.freecodecamp.org/learn/javascript-algorithms-and-data-structures/
- Reference: https://developer.mozilla.org/en-US/docs/Web/JavaScript
- Code examples in this repo: [`examples/javascript/`](../examples/javascript/)
