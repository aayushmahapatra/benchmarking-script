#! /usr/bin/env bash

# Function to perform CPU-intensive operation
perform_cpu_intensive_operation() {
    # Adjust the intensity of the operation based on your requirements
    echo "Performing CPU-intensive operation..."
    for ((i=0; i<1000000; i++)); do
        result=$(echo "scale=10; sqrt($i)" | bc)
    done
}

# Function to measure execution time
measure_execution_time() {
    start_time=$(date +%s.%N)
    perform_cpu_intensive_operation
    end_time=$(date +%s.%N)
    execution_time=$(echo "$end_time - $start_time" | bc)
    echo "Execution time: $execution_time seconds"
}

# Run the benchmark
measure_execution_time
