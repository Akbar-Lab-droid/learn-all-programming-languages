// String tools - TypeScript
function reverse(text: string): string {
  return text.split("").reverse().join("");
}
function countVowels(text: string): number {
  return (text.toLowerCase().match(/[aeiou]/g) || []).length;
}
function isPalindrome(text: string): boolean {
  const clean = text.toLowerCase().replace(/[^a-z0-9]/g, "");
  return clean === clean.split("").reverse().join("");
}
const word = "level";
console.log(`Reverse of '${word}': ${reverse(word)}`);
console.log(`Vowels in 'Hello World': ${countVowels("Hello World")}`);
console.log(`Is '${word}' a palindrome? ${isPalindrome(word)}`);
