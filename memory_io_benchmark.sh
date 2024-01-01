#! /usr/bin/env bash

# Function to perform memory read benchmark
memory_read_benchmark() {
    echo "Running memory read benchmark..."
    stream -v 1 -t 4
}

# Function to perform memory write benchmark
memory_write_benchmark() {
    echo "Running memory write benchmark..."
    stream -v 2 -t 4
}

# Run benchmarks
memory_read_benchmark
memory_write_benchmark
