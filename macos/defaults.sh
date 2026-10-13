#!/usr/bin/env bash
set -euo pipefail

# Finder: prefer column view
# Finder may retain per-folder view settings that override this preference.
defaults write com.apple.finder FXPreferredViewStyle -string "clmv"

# Restart Finder so the preference is reloaded.
killall Finder
