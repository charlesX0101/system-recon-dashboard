#!/bin/bash

# sysrecon.sh - Basic CLI System Dashboard
# Provides quick system info for sysadmins and analysts

clear

echo "========================================"
echo "        System Recon Dashboard          "
echo "========================================"
echo "Date: $(date)"
echo

# System Identity
echo "Hostname:                    $(hostname)"
echo "OS:                          $(grep '^PRETTY_NAME=' /etc/os-release | cut -d= -f2 | tr -d '\"')"
echo "Kernel:                      $(uname -r)"

# Uptime & Users
echo "Uptime:                      $(uptime -p)"
echo "Logged-in Users:             $(who | wc -l)"

# CPU Usage
cpu_usage=$(top -bn1 | grep "Cpu(s)" | awk '{print $2 " user, " $4 " system, " $8 " idle"}')
echo "CPU Usage:                   $cpu_usage"

# Memory Usage
mem_usage=$(free -h | awk '/^Mem:/ {print $3 " / " $2 " used"}')
echo "Memory Usage:                $mem_usage"

# Disk Usage
disk_usage=$(df -h / | awk 'NR==2 {print $3 " / " $2 " used (" $5 ")"}')
echo "Disk Usage (Root):           $disk_usage"

# Network Info
ip_address=$(hostname -I | awk '{print $1}')
echo "Primary IP Address:          $ip_address"

# Optional: Temperature
if command -v sensors &> /dev/null; then
    temp=$(sensors | grep -m 1 '°C' | awk '{print $2}')
    echo "System Temperature:          $temp"
fi

echo

