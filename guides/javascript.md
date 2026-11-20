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

## 12. Next Steps
- Full free course: https://www.freecodecamp.org/learn/javascript-algorithms-and-data-structures/
- Reference: https://developer.mozilla.org/en-US/docs/Web/JavaScript
- Code examples in this repo: [`examples/javascript/`](../examples/javascript/)
