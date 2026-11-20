// BMI calculator - TypeScript
function bmi(weightKg: number, heightM: number): number {
  return weightKg / (heightM * heightM);
}
function category(value: number): string {
  if (value < 18.5) return "Underweight";
  if (value < 25) return "Normal";
  if (value < 30) return "Overweight";
  return "Obese";
}
interface Person {
  name: string;
  w: number;
  h: number;
}
const people: Person[] = [
  { name: "Akbar", w: 70, h: 1.75 },
  { name: "Budi", w: 85, h: 1.7 },
];
for (const p of people) {
  const value = bmi(p.w, p.h);
  console.log(`${p.name}: BMI ${value.toFixed(1)} - ${category(value)}`);
}
