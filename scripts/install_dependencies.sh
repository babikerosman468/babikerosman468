#!/bin/bash

echo "Installing dependencies..."

# Create virtual environment
python3 -m venv venv
source venv/bin/activate

# Install Python dependencies
pip install -r requirements.txt

echo "Dependencies installed successfully!"


