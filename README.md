# 🔐 CLI Password Generator

A lightweight, secure, and interactive **Bash script** to generate strong passwords directly from your terminal. This tool leverages Linux's native `/dev/urandom` to ensure high entropy and true randomness.

## 📖 Overview

This script provides a quick way for developers and system administrators to generate random passwords with customizable length and complexity. It eliminates the need for online password generators, keeping your data local and secure.

## ✨ Features

- **Customizable Length:** You define exactly how long the password should be.
- **3 Complexity Levels:**
    1.  **Numbers Only:** (PIN codes, basic keys)
    2.  **Alphanumeric:** (Standard passwords)
    3.  **High Security:** (Letters + Numbers + Special Symbols)
- **Secure Randomness:** Uses `/dev/urandom` and `tr` to generate unpredictable strings.
- **Zero Dependencies:** Runs on any standard Linux/Unix bash shell.

## 🚀 How to Use

### 1. Save the Script
Save the code into a file named `password_gen.sh`.

### 2. Make it Executable
Open your terminal and run:
```bash
chmod +x password_gen.sh
```
3. Run the Generator
Execute the script:
```bash
./password_gen.sh
```
🎮 Usage Example
```bash
$ ./password_gen.sh
===============================
    Password Generator
===============================

Enter password length: 16

Choose password complexity:
1) Numbers only
2) Letters + Numbers
3) Letters + Numbers + Symbols
Enter choice (1-3): 3
```
🛠️ Technical Details
The core logic utilizes the following command to filter random data:
```bash
tr -dc "$charset" < /dev/urandom | head -c $length
```
`/dev/urandom`: A special file in Unix-like systems that serves as a non-blocking pseudorandom number generator.

`tr -dc`: Deletes characters not in the specified set (filtering).

👤 Author
Mosaad Nabil Abokammer

A simple utility script for secure password generation.

Generated Password:
H9x#mK2$pL@zQ1!w
