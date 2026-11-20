# Temperature converter - Python
def celsius_to_fahrenheit(c):
    return c * 9 / 5 + 32

def fahrenheit_to_celsius(f):
    return (f - 32) * 5 / 9

print("25 C =", celsius_to_fahrenheit(25), "F")
print("77 F =", fahrenheit_to_celsius(77), "C")
print("0 C =", celsius_to_fahrenheit(0), "F")
print("100 C =", celsius_to_fahrenheit(100), "F")
