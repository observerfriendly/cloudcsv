#!/bin/bash

# Check if Homebrew is installed
if ! command -v brew &> /dev/null; then
    echo "Homebrew is not installed. Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" || {
        echo "Failed to install Homebrew. Exiting."
        exit 1
    }
else
    echo "Homebrew is already installed."
    echo "Updating Homebrew..."
    brew update || {
        echo "Failed to update Homebrew. Exiting."
        exit 1
    }
fi

# Install Git using Homebrew
if ! command -v git &> /dev/null; then
    echo "Installing Git..."
    brew install git || {
        echo "Failed to install Git. Exiting."
        exit 1
    }
else
    echo "Git is already installed."
fi

echo "Installation complete."
