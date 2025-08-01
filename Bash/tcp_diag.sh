#!/bin/bash

while true; do
    echo ""
    echo "=== TCP/IP Diagnostic Tool ==="
    echo "1. Ping Test"
    echo "2. Traceroute"
    echo "3. DNS Lookup"
    echo "4. HTTP Connectivity"
    echo "5. Exit"
    echo "Choose an option [1-5]: "
    read -r choice

    case $choice in
        1)
            echo "[Ping Test]"
              command -v ping >/dev/null 2>&1 || {
                echo "ping is not installed"
                echo "installing ping..."
                sudo apt update && sudo apt install -y iputils-ping
              }  
            read -p "Choose your destination: " dest 
            if [[ -z "$dest" ]]; then
              echo "Destination cannot be empty."
            else
              echo "Pinging $dest..."
              ping -c4 "$dest"
            fi
    
              
            ;;
        2)
            echo "[Traceroute]"
            ;;
        3)
            echo "[DNS Lookup]"
            ;;
        4)
            echo "[HTTP Check]"
            ;;
        5)
            echo "Exiting. Goodbye!"
            break
            ;;
        *)
            echo "Invalid option. Please try again."
            ;;
    esac
done
