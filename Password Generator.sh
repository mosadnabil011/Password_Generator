#!/bin/bash

echo "==============================="
echo "    Password Generator"
echo "==============================="
echo
read -p "Enter password length: " length

echo
echo "Choose password complexity:"
echo "1) Numbers only"
echo "2) Letters + Numbers"
echo "3) Letters + Numbers + Symbols"
read -p "Enter choice (1-3): " choice

case $choice in
    1)
        charset='0-9'
    ;;
    2)
        charset='A-Za-z0-9'
    ;;
    3)
        charset='A-Za-z0-9!@#$%^&*()_+=-{}[]'
    ;;
    *)
        echo "Invalid choice!"
        exit 1
    ;;
esac

password=$(tr -dc "$charset" < /dev/urandom | head -c $length)

echo
echo "Generated Password:"
echo "$password"
echo
