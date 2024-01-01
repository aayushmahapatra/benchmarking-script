#!/bin/bash

# Check if sysstat is installed
if ! command -v sar &> /dev/null; then
    echo "Sysstat is not installed. Please install sysstat before running this script."
    exit 1
fi

# Function to display CPU usage
display_cpu_usage() {
    echo "CPU Usage:"
    sar -u 1 3 # Display CPU usage every 1 second for 3 iterations
}

# Run benchmarks
display_cpu_usage
