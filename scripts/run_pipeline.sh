#!/bin/bash

echo "Starting Execution Pipeline..."

# Step 1: Set up environment
echo "Activating environment..."
source scripts/setup_env.sh

# Step 2: Preprocess data
echo "Preprocessing data..."
python src/python/preprocess_data.py

# Step 3: Run Monte Carlo Simulations
echo "Running Monte Carlo Simulations..."
python src/python/monte_carlo_simulation.py

# Step 4: Run Neural Network Models
echo "Training Neural Network..."
python src/python/train_neural_network.py

# Step 5: Run SAS Analysis
echo "Running SAS Analysis..."
sas src/sas/data_analysis.sas

# Step 6: Generate Reports
echo "Generating Reports..."
python scripts/generate_report.py

echo "Pipeline Execution Complete!"

