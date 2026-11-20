// Temperature converter - TypeScript
function celsiusToFahrenheit(c: number): number {
  return (c * 9) / 5 + 32;
}
function fahrenheitToCelsius(f: number): number {
  return ((f - 32) * 5) / 9;
}
console.log("25 C =", celsiusToFahrenheit(25), "F");
console.log("77 F =", fahrenheitToCelsius(77), "C");
