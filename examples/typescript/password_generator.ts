// Password generator - TypeScript
function generatePassword(length: number = 12): string {
  const chars: string =
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
