
#!/bin/bash

# Set PATH for cron
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

# Always save the report in the same directory as this script
SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
REPORT="$SCRIPT_DIR/system-report.txt"

# Terminal colors
GREEN="\e[32m"
RED="\e[31m"
YELLOW="\e[33m"
RESET="\e[0m"

# Report Header
echo -e "${GREEN}================ SYSTEM HEALTH REPORT ================${RESET}"
echo "================ SYSTEM HEALTH REPORT ================" > "$REPORT"

# Date
echo -e "${YELLOW}Date:${RESET} $(date)"
echo "Date: $(date)" >> "$REPORT"
echo "" >> "$REPORT"

# Hostname
echo -e "${YELLOW}Hostname:${RESET} $(hostname)"
echo "Hostname: $(hostname)" >> "$REPORT"

# Current User
echo -e "${YELLOW}Current User:${RESET} $(whoami)"
echo "Current User: $(whoami)" >> "$REPORT"
echo "" >> "$REPORT"

# Disk Usage
echo -e "${GREEN}---------------- DISK USAGE ----------------${RESET}"
echo "---------------- DISK USAGE ----------------" >> "$REPORT"
df -h
df -h >> "$REPORT"
echo "" >> "$REPORT"

# Memory Usage
echo -e "${GREEN}---------------- MEMORY USAGE ----------------${RESET}"
echo "---------------- MEMORY USAGE ----------------" >> "$REPORT"
free -h
free -h >> "$REPORT"
echo "" >> "$REPORT"

# CPU Load
echo -e "${GREEN}---------------- CPU LOAD ----------------${RESET}"
echo "---------------- CPU LOAD ----------------" >> "$REPORT"
top -bn1 | grep "load average"
top -bn1 | grep "load average" >> "$REPORT"
echo "" >> "$REPORT"

# Running Services
echo -e "${GREEN}---------------- RUNNING SERVICES ----------------${RESET}"
echo "---------------- RUNNING SERVICES ----------------" >> "$REPORT"
systemctl list-units --type=service --state=running --no-pager
systemctl list-units --type=service --state=running --no-pager >> "$REPORT"
echo "" >> "$REPORT"

# Running Processes
echo -e "${GREEN}---------------- RUNNING PROCESSES ----------------${RESET}"
echo "---------------- RUNNING PROCESSES ----------------" >> "$REPORT"
ps aux
ps aux >> "$REPORT"
echo "" >> "$REPORT"

# System Uptime
echo -e "${GREEN}---------------- SYSTEM UPTIME ----------------${RESET}"
echo "---------------- SYSTEM UPTIME ----------------" >> "$REPORT"
uptime
uptime >> "$REPORT"
echo "" >> "$REPORT"

# Kernel Version
echo -e "${GREEN}---------------- KERNEL VERSION ----------------${RESET}"
echo "---------------- KERNEL VERSION ----------------" >> "$REPORT"
uname -r
uname -r >> "$REPORT"
echo "" >> "$REPORT"

# IP Address
echo -e "${GREEN}---------------- IP ADDRESS ----------------${RESET}"
echo "---------------- IP ADDRESS ----------------" >> "$REPORT"
ip a | grep inet
ip a | grep inet >> "$REPORT"
echo "" >> "$REPORT"

# Completion Message
echo -e "${GREEN}Report generated successfully!${RESET}"
