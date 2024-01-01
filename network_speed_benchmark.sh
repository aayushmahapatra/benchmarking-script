#!/bin/bash

# Function to perform network speed benchmark
network_speed_benchmark() {
    echo "Running network speed benchmark..."
    iperf -s -i 1 &
    sleep 2
    iperf -c 127.0.0.1 -t 10
    killall iperf
}

# Run benchmark
network_speed_benchmark
