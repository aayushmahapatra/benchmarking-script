#! /usr/bin/env bash

# Function to perform memory read benchmark
memory_read_benchmark() {
    echo "Running memory read benchmark..."
    sysbench --test=memory --memory-oper=read run
}

# Function to perform memory write benchmark
memory_write_benchmark() {
    echo "Running memory write benchmark..."
    sysbench --test=memory --memory-oper=write run
}

# Run benchmarks
memory_read_benchmark
memory_write_benchmark
