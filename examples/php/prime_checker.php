<?php
// Prime checker - PHP
function isPrime($n) {
    if ($n < 2) return false;
    for ($i = 2; $i * $i <= $n; $i++) {
        if ($n % $i === 0) return false;
    }
    return true;
}

foreach ([2, 7, 10, 17, 25, 29] as $n) {
    echo "$n is prime? " . (isPrime($n) ? "yes" : "no") . "\n";
}
echo "Primes up to 50: ";
for ($n = 2; $n <= 50; $n++) {
    if (isPrime($n)) echo "$n ";
}
echo "\n";
