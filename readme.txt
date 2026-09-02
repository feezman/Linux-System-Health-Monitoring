
# Project 3: Linux System Health Monitoring

## Project Overview

This project automates Linux server health monitoring using a Bash script and Cron.

The script collects important system information and generates a daily system health report. The report contains information about the server hostname, current user, disk usage, memory usage, CPU load, running services, running processes, system uptime, kernel version, and IP addresses.

Cron is configured to execute the monitoring script automatically.

---

## Objectives

The objectives of this project are to:

- Monitor Linux system health using Bash
- Collect important server metrics
- Generate a system health report
- Add colorized terminal output
- Automate report generation using Cron
- Handle Cron's restricted environment
- Use absolute paths for reliable command execution
- Store the generated report in the script directory
- Troubleshoot and validate automated jobs
- Commit the project to GitHub

---

## Technologies Used

- Linux
- CentOS Stream 9
- Bash
- Cron
- systemd
- Git
- GitHub
- Vagrant
- VirtualBox

---

## System Health Information Collected

The monitoring script collects:

1. Date and time
2. Hostname
3. Current user
4. Disk usage
5. Memory usage
6. CPU load
7. Running services
8. Running processes
9. System uptime
10. Kernel version
11. IP addresses

---

## Project Structure

```text
linux-file-server-project/
├── README.md
├── setup_company_server.sh
└── system-report.sh
