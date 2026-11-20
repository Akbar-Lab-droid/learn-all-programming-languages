// Temperature converter - JavaScript
function celsiusToFahrenheit(c) {
  return (c * 9) / 5 + 32;
}
function fahrenheitToCelsius(f) {
  return ((f - 32) * 5) / 9;
}
console.log("25 C =", celsiusToFahrenheit(25), "F");
console.log("77 F =", fahrenheitToCelsius(77), "C");
console.log("0 C =", celsiusToFahrenheit(0), "F");
console.log("100 C =", celsiusToFahrenheit(100), "F");
