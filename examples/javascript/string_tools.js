// String tools - JavaScript
function reverse(text) {
  return text.split("").reverse().join("");
}
function countVowels(text) {
  return (text.toLowerCase().match(/[aeiou]/g) || []).length;
}
function isPalindrome(text) {
  const clean = text.toLowerCase().replace(/[^a-z0-9]/g, "");
  return clean === clean.split("").reverse().join("");
}
const word = "level";
console.log(`Reverse of '${word}': ${reverse(word)}`);
console.log(`Vowels in 'Hello World': ${countVowels("Hello World")}`);
console.log(`Is '${word}' a palindrome? ${isPalindrome(word)}`);
console.log(`Is 'hello' a palindrome? ${isPalindrome("hello")}`);
