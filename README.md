# TCP/IP Diagnostic CLI Tool

A simple Bash-based menu tool for diagnosing common TCP/IP networking issues.

This tool provides basic tests like `ping`, `traceroute`, `nslookup`, and `curl` through an interactive CLI, with automatic tool installation and logging.

# 🔧 Features

- ✅ Menu-driven interface
- ✅ Automatic tool checks and installs (`ping`, `traceroute`, `nslookup`, `curl`)
- ✅ Input validation (no empty targets)
- ✅ Basic logging to `diag_log.txt`
- ✅ HTTP status code handling (2xx/3xx/4xx/5xx)

# 📋 Example Output

=== TCP/IP Diagnostic Tool ===
1. Ping Test
2. Traceroute
3. DNS Lookup
4. HTTP Connectivity
5. Exit
Choose an option [1-5]:


# 🧪 Tests Included

Option	  Tool	       What it does
1	      ping	       ICMP ping test
2	      traceroute   Shows hops between source and dest
3	      nslookup	   DNS name resolution
4	      curl	       HTTP status code and connectivity


# 📦 Requirements

Debian/Ubuntu-based system with apt
Bash (script uses [[ ... ]] syntax)
Internet connection for installation (if tools are missing) and for tools functionality 


# 🗂️ Logs

All operations are logged to diag_log.txt in the same directory:

[2025-08-01 14:24:36] Ping to 8.8.8.8 succeeded
[2025-08-01 14:25:03] traceroute to google.com failed


# 🚀 Usage

chmod +x tcp_diag.sh
./tcp_diag.sh