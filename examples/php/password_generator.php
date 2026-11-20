<?php
// Password generator - PHP
function generatePassword($length = 12) {
    $chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*";
    $password = "";
    for ($i = 0; $i < $length; $i++) {
        $password .= $chars[random_int(0, strlen($chars) - 1)];
    }
    return $password;
}

for ($i = 1; $i <= 3; $i++) {
    echo "Password $i: " . generatePassword() . "\n";
}
