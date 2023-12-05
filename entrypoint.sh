#!/bin/bash

# Run hottest with user-specified arguments
echo "Running hottest"
hottest "$@"

# Check the exit status of hottest
hottest_exit_status=$?
echo "exit status: $hottest_exit_status"

# If hottest exit status is not 0, set the script exit status to 1 (failure)
if [ $hottest_exit_status -ne 0 ]; then
    exit 1
fi
