#!/bin/bash

# Function to send SMS using Termux API
send_sms() {
    termux-sms-send -n "$1" "$2"
}

# Prompt the user for input
read -p "Enter the phone number: " phone_number
read -p "Enter the message: " message
read -p "Enter the number of times to send the message: " num_times

# Loop to send SMS
for ((i=1; i<=num_times; i++)); do
    send_sms "$phone_number" "$message"
    echo "SMS $i sent to $phone_number"
done
