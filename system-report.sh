#!/bin/bash

REPORT="system-report.txt"

echo "================ SYSTEM HEALTH REPORT ================" > $REPORT
echo "Date: $(date)" >> $REPORT
echo "" >> $REPORT

echo "Hostname: $(hostname)" >> $REPORT
echo "Current User: $(whoami)" >> $REPORT
echo "" >> $REPORT

echo "---------------- DISK USAGE ----------------" >> $REPORT
df -h >> $REPORT
echo "" >> $REPORT

echo "---------------- MEMORY USAGE ----------------" >> $REPORT
free -h >> $REPORT
echo "" >> $REPORT

echo "---------------- CPU LOAD ----------------" >> $REPORT
top -bn1 | grep "load average" >> $REPORT
echo "" >> $REPORT

echo "---------------- RUNNING SERVICES ----------------" >> $REPORT
systemctl list-units --type=service --state=running >> $REPORT
echo "" >> $REPORT

echo "---------------- RUNNING PROCESSES ----------------" >> $REPORT
ps aux >> $REPORT
echo "" >> $REPORT

echo "---------------- SYSTEM UPTIME ----------------" >> $REPORT
uptime >> $REPORT
echo "" >> $REPORT

echo "---------------- KERNEL VERSION ----------------" >> $REPORT
uname -r >> $REPORT
echo "" >> $REPORT

echo "---------------- IP ADDRESS ----------------" >> $REPORT
ip a | grep inet >> $REPORT
echo "" >> $REPORT

echo "Report generated successfully!"
