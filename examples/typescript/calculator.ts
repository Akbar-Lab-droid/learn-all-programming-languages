// Simple calculator - TypeScript
function add(a: number, b: number): number {
  return a + b;
}

function divide(a: number, b: number): number | string {
  if (b === 0) return "Cannot divide by zero!";
  return a / b;
}

console.log("10 + 5 =", add(10, 5));
console.log("10 / 5 =", divide(10, 5));
console.log("10 / 0 =", divide(10, 0));
