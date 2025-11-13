#!/usr/bin/env bash

if ! command -v brew &>/dev/null; then
  echo "Homebrew not found. Installing..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  echo "Homebrew installation complete."
else
  echo "Homebrew already installed."
fi

if [ -f "./Brewfile" ]; then
  echo "Installing from Brewfile..."
  brew bundle --file="./Brewfile"
else
  echo "Not found Brewfile."
fi

