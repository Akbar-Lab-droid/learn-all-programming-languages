# Password generator - Python
import random
import string

def generate_password(length=12):
    chars = string.ascii_letters + string.digits + "!@#$%^&*"
    return "".join(random.choice(chars) for _ in range(length))

for i in range(3):
    print(f"Password {i + 1}: {generate_password()}")
print("Strong password:", generate_password(16))
