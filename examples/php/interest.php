<?php
// Simple & compound interest - PHP
function simpleInterest($principal, $rate, $years) {
    return $principal * $rate * $years / 100;
}

function compoundInterest($principal, $rate, $years) {
    return $principal * pow(1 + $rate / 100, $years) - $principal;
}

$p = 1000; $r = 5; $y = 3;
echo "Simple interest: $" . number_format(simpleInterest($p, $r, $y), 2) . "\n";
echo "Compound interest: $" . number_format(compoundInterest($p, $r, $y), 2) . "\n";
