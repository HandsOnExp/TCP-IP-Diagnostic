# TCP/IP Diagnostic CLI Tool

A simple Bash-based menu tool for diagnosing common TCP/IP networking issues.

This tool provides basic tests like `ping`, `traceroute`, `nslookup`, and `curl` through an interactive CLI, with automatic tool installation and logging.

---

## 🔧 Features

- ✅ Menu-driven interface
- ✅ Automatic tool checks and installs (`ping`, `traceroute`, `nslookup`, `curl`)
- ✅ Input validation (no empty targets)
- ✅ Basic logging to `diag_log.txt`
- ✅ HTTP status code handling (2xx/3xx/4xx/5xx)

---

## 📋 Example Output

```bash
=== TCP/IP Diagnostic Tool ===
1. Ping Test
2. Traceroute
3. DNS Lookup
4. HTTP Connectivity
5. Exit
Choose an option [1-5]:
