#!/bin/bash

# This script is used to analysis the server health

# System uptime
echo "================================"
echo "System Uptime:"
uptime
echo "================================"
echo ""
echo ""

# OS version
echo "================================"
echo "OS Version:"
cat /etc/os-release
echo "================================"
echo ""
echo ""

# Login user
echo "================================"
echo "Login User:"
who | head -n 1
echo "================================"
echo ""


# Total CPU usage
echo "================================"
echo "Total CPU Usage:"
top -bn2 | grep "Cpu(s)" | tail -1 | awk '{print 100 - $8 "%"}'
echo "================================"
echo ""
echo ""

# Total memory usage (Free vs Used including percentage)
echo "================================"
echo "Total Memory Usage:"
free -h 
echo "================================"
echo ""
echo ""

# Total disk usage (Free vs Used including percentage)
echo "================================"
echo "Total Disk Usage:"
df -h 
echo "================================"
echo ""
echo ""

# Top 5 processes by CPU usage
echo "================================"
echo "Top 5 Processes by CPU Usage:"
ps --sort=%cpu -eo pid,ppid,cmd,%mem,%cpu | head -n 5
echo "================================"
echo ""
echo ""

# Top 5 processes by memory usage
echo "================================"
echo "Top 5 Processes by Memory Usage:"
ps --sort=%mem -eo pid,ppid,cmd,%mem,%cpu | head -n 5
echo "================================"
echo ""
echo ""
