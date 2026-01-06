# Linux Ops Automation

This repository contains practical Linux automation scripts commonly used by
Systems and DevOps Engineers to monitor system health, manage disk usage,
clean logs, and analyze operational data.

---

## What This Project Demonstrates

- Linux system health checks
- Disk usage monitoring and alerting
- Log file cleanup automation
- Basic log analysis using Python
- Containerized execution of ops scripts using Docker

---

## Scripts Included

### Bash Scripts
- health_check.sh  
  Displays hostname, uptime, disk usage, memory usage, and top CPU processes.

- disk_alert.sh  
  Checks disk usage and exits with an alert if a threshold is exceeded.

- log_cleanup.sh  
  Deletes old log files based on retention period.

### Python Script
- log_parser.py  
  Parses log files and summarizes INFO, WARN, and ERROR occurrences.

---

## Tech Stack

- Linux
- Bash
- Python
- Docker

---

## Repository Structure

linux-ops-automation/
- bash/
  - health_check.sh
  - disk_alert.sh
  - log_cleanup.sh
- python/
  - log_parser.py
- Dockerfile
- README.md

---

## Run Locally

Run bash scripts:
bash bash/health_check.sh
bash bash/disk_alert.sh 80
bash bash/log_cleanup.sh /var/log 7

Run Python script:
python python/log_parser.py /var/log/syslog

---

## Run with Docker

Build image:
docker build -t linux-ops-automation:local .

Run container:
docker run --rm linux-ops-automation:local

---

## Why This Repository Matters

This project reflects real-world Linux operational tasks performed in production
environments. It demonstrates scripting, automation, and troubleshooting skills
expected from Systems and DevOps Engineers.

---

Author  
Fathima Gousiya  
DevOps / Systems Engineer  
LinkedIn: https://linkedin.com/in/Fathima-gousiya
