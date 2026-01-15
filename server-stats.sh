#!/bin/bash

echo "=============================="
echo " Server Performance Statistics"
echo "=============================="
echo

echo "🧠 CPU Usage:"
top -bn1 | grep "Cpu(s)" | awk '{print "Used: " 100 - $8 "%"}'
echo

echo "🧠 Memory Usage:"
free -h
echo

echo "💽 Disk Usage:"
df -h /
echo

echo "🔥 Top 5 processes by CPU:"
ps -eo pid,comm,%cpu --sort=-%cpu | head -n 6
echo

echo "🐏 Top 5 processes by Memory:"
ps -eo pid,comm,%mem --sort=-%mem | head -n 6
echo
