// Simple & compound interest - JavaScript
function simpleInterest(principal, rate, years) {
  return ((principal * rate * years) / 100);
}
function compoundInterest(principal, rate, years) {
  return principal * (1 + rate / 100) ** years - principal;
}
const p = 1000, r = 5, y = 3;
console.log(`Principal: $${p}, Rate: ${r}%, Years: ${y}`);
console.log(`Simple interest: $${simpleInterest(p, r, y).toFixed(2)}`);
console.log(`Compound interest: $${compoundInterest(p, r, y).toFixed(2)}`);
console.log(`Total with compound: $${(p + compoundInterest(p, r, y)).toFixed(2)}`);
