#!/usr/bin/env bash
set -euo pipefail

BREWFILE="$HOME/.dsa/brew/Brewfile"

if [[ ! -f "$BREWFILE" ]]; then
  echo "No Brewfile found at $BREWFILE"
  exit 1
fi

echo "Installing from $BREWFILE..."
brew bundle --file="$BREWFILE" --verbose
echo "Installation complete."
