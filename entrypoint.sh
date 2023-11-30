#!/bin/bash

# Install hottest
go install github.com/nao1215/hottest@latest

# Run hottest with user-specified arguments
hottest "$@"

# Check the exit status of hottest
hottest_exit_status=$?

# If hottest exit status is not 0, set the script exit status to 1 (failure)
if [ $hottest_exit_status -ne 0 ]; then
    exit 1
fi
