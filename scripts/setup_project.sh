#!/bin/bash

# Define directories
dirs=(
    "src/python"
    "src/sas"
    "src/ai_models"
    "src/notebooks"
    "src/bash"
    "data/raw/genome_sequences"
    "data/raw/rr_intervals"
    "data/raw/rng_deviations"
    "data/raw/heart_coherence"
    "data/processed"
    "data/simulations"
    "data/neural_net_outputs"
    "data/consciousness_data"
    "data/metadata"
    "models/trained"
    "models/checkpoints"
    "models/logs"
    "docs/literature"
    "docs/methodology"
    "figures"
    "reports"
    "scripts"
    "tests"
)

# Define files
files=(
    "README.md"
    ".gitignore"
    "requirements.txt"
    "environment.yml"
    "LICENSE"
    "docs/project_notes.md"
    "docs/results.md"
    "docs/ethics_considerations.md"
    "docs/methodology/monte_carlo.md"
    "docs/methodology/neural_networks.md"
    "docs/methodology/genetics.md"
    "docs/methodology/heart_coherence.md"
    "docs/methodology/consciousness_modeling.md"
    "scripts/setup_env.sh"
    "scripts/install_dependencies.sh"
    "scripts/run_pipeline.sh"
    "scripts/generate_report.py"
)

# Create directories
echo "Creating project directories..."
for dir in "${dirs[@]}"; do
    mkdir -p "$dir"
done

# Create files
echo "Creating project files..."
for file in "${files[@]}"; do
    touch "$file"
done

# Make scripts executable
echo "Setting permissions for scripts..."
chmod +x scripts/*.sh

# Initialize Git and commit the structure
echo "Initializing Git repository..."
git init
git add .
git commit -m "Initialized structured project layout"
git push origin main

echo "Project structure setup complete!"


