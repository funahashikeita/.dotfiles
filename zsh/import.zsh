# Define an array of alias files to load
alias_files=(
  "alias.git.zsh"
  "alias.common.zsh"
  "alias.mac.zsh"
)

# Loop through the array and source each file if it exists
for file in "${alias_files[@]}"; do
  [ -f "$file" ] && source "$file"
done

