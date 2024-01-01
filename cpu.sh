#!/bin/bash

# Function to display CPU usage
display_cpu_usage() {
    echo "CPU Usage:"
    top -l 3 -s 1 -n 0 | grep "CPU usage"
}

# Run benchmarks
display_cpu_usage
