// Simple & compound interest - TypeScript
function simpleInterest(principal: number, rate: number, years: number): number {
  return (principal * rate * years) / 100;
}
function compoundInterest(principal: number, rate: number, years: number): number {
  return principal * (1 + rate / 100) ** years - principal;
}
const p = 1000, r = 5, y = 3;
console.log(`Simple interest: $${simpleInterest(p, r, y).toFixed(2)}`);
console.log(`Compound interest: $${compoundInterest(p, r, y).toFixed(2)}`);
