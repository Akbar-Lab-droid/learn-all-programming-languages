// BMI calculator - JavaScript
function bmi(weightKg, heightM) {
  return weightKg / (heightM * heightM);
}
function category(value) {
  if (value < 18.5) return "Underweight";
  if (value < 25) return "Normal";
  if (value < 30) return "Overweight";
  return "Obese";
}
const people = [
  { name: "Akbar", w: 70, h: 1.75 },
  { name: "Budi", w: 85, h: 1.7 },
  { name: "Citra", w: 50, h: 1.6 },
];
for (const p of people) {
  const value = bmi(p.w, p.h);
  console.log(`${p.name}: BMI ${value.toFixed(1)} - ${category(value)}`);
}
