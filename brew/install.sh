#!/usr/bin/env bash

# Exit on error
set -e

# Determine Homebrew prefix
BREW_PREFIX="/usr/local"
if [[ "$(uname -m)" == "arm64" ]]; then
  BREW_PREFIX="/opt/homebrew"
fi

# Install Homebrew if missing
if ! command -v brew &>/dev/null; then
  echo "Homebrew not found. Installing..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
  echo "Homebrew already installed."
fi

# Apply Homebrew for current session
eval "$(${BREW_PREFIX}/bin/brew shellenv)"

# Persist Homebrew PATH in ~/.zprofile
LINE="eval \"\$(${BREW_PREFIX}/bin/brew shellenv)\""
if ! grep -Fxq "$LINE" "$HOME/.zprofile"; then
  echo "$LINE" >> "$HOME/.zprofile"
  echo "Added Homebrew environment to ~/.zprofile"
fi

# Install packages from Brewfile in the same directory
brew bundle --file="$(dirname "$0")/Brewfile"

echo "Homebrew setup completed!"

