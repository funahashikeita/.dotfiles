# Get the directory where this script is located
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]:-${(%):-%x}}")" && pwd)"

alias_files=(
  "alias.git.zsh"
  "alias.common.zsh"
  "alias.mac.zsh"
)

# Loop through the array and source each file if it exists
for file in "${alias_files[@]}"; do
  [ -f "$SCRIPT_DIR/$file" ] && source "$SCRIPT_DIR/$file"
done

