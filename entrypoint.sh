#!/bin/bash

# Install hottest
go install github.com/nao1215/hottest@latest

# Run hottest with user-specified arguments
hottest "$@"
