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
            echo "[Traceroute Test]"
              command -v traceroute >/dev/null 2>&1 || {
                echo "traceroute is not installed"
                echo "Installing traceroute..."
                sudo apt update && sudo apt install -y traceroute
              }

            read -p "Choose your destination: " dest
            if [[ -z "$dest" ]]; then
                echo "Destination cannot be empty."
            else
                echo "Tracing route to $dest..."
                traceroute "$dest"
            fi
            ;;

        3)
            echo "[DNS Lookup Test]"
              command -v nslookup >/dev/null 2>&1 || { 
                echo "nslookup is not installed"
                echo "Installing nslookup..."
                sudo apt update && sudo apt install -y dnsutils
              }

            read -p "Choose your destination: " dest
            if [[ -z "$dest" ]]; then
                echo "Destination cannot be empty."
            else
                echo "DNS look up to $dest..." 
                nslookup "$dest" 
            fi
            ;;

        4)
            echo "[HTTP status Test]"
              command -v curl >/dev/null 2>&1 || {
                echo "curl is not installed"
                echo "Installing curl..."
                sudo apt update && sudo apt install -y curl
              }

            read -p "Choose your destination: " dest
            if [[ -z "$dest" ]]; then
                echo "Destination cannot be empty."
            else
                echo "Checking HTTP status on $dest..."
                code=$(curl -s -o /dev/null -w "%{http_code}" "$dest")

                if [[ $code == 2* ]]; then
                  echo "Success: HTTP $code"
                elif [[ $code == 3* ]]; then
                  echo "Redirect: HTTP $code"
                elif [[ $code == 4* ]]; then
                  echo "Client error: HTTP $code"
                elif [[ $code == 5* ]]; then
                  echo "Server error: HTTP $code"
                else
                  echo "Unexpected response: HTTP $code"
                fi
            fi
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
