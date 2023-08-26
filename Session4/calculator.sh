#!/bin/bash

while true; do
    echo "1. Addition"
    echo "2. Subtraction"
    echo "3. Multiplication"
    echo "4. Division"
    echo "5. Exit"

    read -p "Enter your choice: " operation

    case "$operation" in
        1)
            read -p "Enter the first number: " num1
            read -p "Enter the second number: " num2
            result=$((num1 + num2))
            echo "$num1 + $num2 = $result"
            ;;
        2)
            read -p "Enter the first number: " num1
            read -p "Enter the second number: " num2
            result=$((num1 - num2))
            echo "$num1 - $num2 = $result"
            ;;
        3)
            read -p "Enter the first number: " num1
            read -p "Enter the second number: " num2
            result=$((num1 * num2))
            echo "$num1 * $num2 = $result"
            ;;
        4)
            read -p "Enter the first number: " num1
            read -p "Enter the second number: " num2
            if [ "$num2" -eq 0 ]; then
                echo "Error: Division by zero is not allowed."
            else
                result=$((num1 / num2))
                echo "$num1 / $num2 = $result"
            fi
            ;;
        5)
            echo "Exiting..."
            exit 0
            ;;
        *)
            echo "Invalid choice. Please try again."
            ;;
    esac

    echo
done
