<?php
// BMI calculator - PHP
function bmi($weightKg, $heightM) {
    return $weightKg / ($heightM * $heightM);
}

function category($value) {
    if ($value < 18.5) return "Underweight";
    if ($value < 25) return "Normal";
    if ($value < 30) return "Overweight";
    return "Obese";
}

$people = [
    ["Akbar", 70, 1.75],
    ["Budi", 85, 1.70],
    ["Citra", 50, 1.60],
];
foreach ($people as [$name, $w, $h]) {
    $value = bmi($w, $h);
    echo "$name: BMI " . number_format($value, 1) . " - " . category($value) . "\n";
}
