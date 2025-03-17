#!/bin/bash

echo "Setting up the environment..."

# Load Python virtual environment (modify path as needed)
if [ -d "venv" ]; then
    source venv/bin/activate
else
    echo "Python virtual environment not found. Please run install_dependencies.sh first."
fi

# Load SAS Viya if available
if command -v sas &> /dev/null; then
    echo "SAS found!"
else
    echo "SAS not installed or not in PATH!"
fi

echo "Environment setup complete!"


