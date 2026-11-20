// Password generator - Swift
func generatePassword(length: Int = 12) -> String {
    let chars = Array("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*")
    return String((0..<length).map { _ in chars.randomElement()! })
}

for i in 1...3 {
    print("Password \(i): \(generatePassword())")
}
