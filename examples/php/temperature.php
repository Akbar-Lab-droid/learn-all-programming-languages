<?php
// Temperature converter - PHP
function celsiusToFahrenheit($c) {
    return $c * 9 / 5 + 32;
}

function fahrenheitToCelsius($f) {
    return ($f - 32) * 5 / 9;
}

echo "25 C = " . celsiusToFahrenheit(25) . " F\n";
echo "77 F = " . fahrenheitToCelsius(77) . " C\n";
