#!/bin/bash

if [ ! -d ".venv" ]; then
    echo ".venv directory not found. Creating virtual environment..."
    python3 -m venv .venv
    echo "Virtual environment created in .venv."
    echo "Installing requirments"
    echo "====================================="
    ./.venv/bin/pip install -r requirements.txt 
    echo "=====================================" 
else
    echo ".venv directory already exists. Skipping virtual environment creation."
fi

