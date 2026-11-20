<?php
// Number guessing game - PHP (demo with fixed guesses)
$secret = 42;
$guesses = [10, 50, 42];
foreach ($guesses as $guess) {
    if ($guess < $secret) {
        echo "$guess is too low!\n";
    } elseif ($guess > $secret) {
        echo "$guess is too high!\n";
    } else {
        echo "$guess is correct! You win!\n";
        break;
    }
}
