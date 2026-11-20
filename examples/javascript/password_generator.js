// Password generator - JavaScript
function generatePassword(length = 12) {
  const chars =
    "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*";
  let password = "";
  for (let i = 0; i < length; i++) {
    password += chars[Math.floor(Math.random() * chars.length)];
  }
  return password;
}
for (let i = 1; i <= 3; i++) {
  console.log(`Password ${i}: ${generatePassword()}`);
}
console.log("Strong password:", generatePassword(16));
