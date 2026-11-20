<?php
// Simple calculator - PHP
function add($a, $b) {
    return $a + $b;
}

function divide($a, $b) {
    if ($b == 0) {
        return "Cannot divide by zero!";
    }
    return $a / $b;
}

echo "10 + 5 = " . add(10, 5) . "\n";
echo "10 / 5 = " . divide(10, 5) . "\n";
