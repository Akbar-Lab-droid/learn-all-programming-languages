<?php
// String tools - PHP
function reverseStr($text) {
    return strrev($text);
}

function countVowels($text) {
    return preg_match_all("/[aeiou]/i", $text);
}

function isPalindrome($text) {
    $clean = strtolower(preg_replace("/[^a-z0-9]/", "", $text));
    return $clean === strrev($clean);
}

$word = "level";
echo "Reverse of '$word': " . reverseStr($word) . "\n";
echo "Vowels in 'Hello World': " . countVowels("Hello World") . "\n";
echo "Is '$word' a palindrome? " . (isPalindrome($word) ? "yes" : "no") . "\n";
