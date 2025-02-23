#!/bin/bash

# Source test cases for each script
. test_hummingbot_create.sh
. test_folder-structure.sh

# Function to print test results
print_test_result() {
    if [ $? -eq 0 ]; then
        echo "PASS: $1"
    else
        echo "FAIL: $1"
        exit 1
    fi
}

# Run test cases for each script
run_test_cases_folder_structure
print_test_result "Test cases for ../bash_scripts/folder-structure.sh"
run_test_cases_hummingbot_common
print_test_result "Test cases for ../bash_scripts/hummingbot-common.sh"
run_test_cases_hummingbot_create
print_test_result "Test cases for ../bash_scripts/hummingbot-create.sh"
run_test_cases_hummingbot_update
print_test_result "Test cases for ../bash_scripts/hummingbot-update.sh"
run_test_cases_hummingbot_start
print_test_result "Test cases for ../bash_scripts/hummingbot-start.sh"

# Add more test cases for other scripts as needed
