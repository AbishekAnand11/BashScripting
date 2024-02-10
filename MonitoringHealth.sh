#!/bin/bash

# Check server uptime
uptime

# Check memory and CPU usage
free -m
top -n 1 | head -n 10

# Check disk usage
df -h

# Check running processes
ps aux
