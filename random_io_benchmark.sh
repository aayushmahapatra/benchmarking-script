#! /usr/bin/env bash

# Function to perform random read benchmark
random_read_benchmark() {
    echo "Running random read benchmark..."
    fio --name=random_read --ioengine=sync --rw=randread --bs=4k --numjobs=4 --size=1G --time_based --runtime=30s --output=random_read_results.txt
}

# Function to perform random write benchmark
random_write_benchmark() {
    echo "Running random write benchmark..."
    fio --name=random_write --ioengine=sync --rw=randwrite --bs=4k --numjobs=4 --size=1G --time_based --runtime=30s --output=random_write_results.txt
}

# Run benchmarks
random_read_benchmark
random_write_benchmark
