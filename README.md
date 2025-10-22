# Setup

This repository contains useful Zsh aliases and functions.  
To load them in your shell, you need to source `import.zsh` from your `~/.zshrc`.

# Clone

Clone this repository (example path: `~/.dotfiles`):

```zsh
$ git clone https://github.com/funahashikeita/.dotfiles.git ~/.dotfiles/
```

## Zsh Setup

### 1. Open your ~/.zshrc in an editor:

```zsh
$ open ~/.zshrc
```

### 2. Add the following line at the end of your .zshrc:

```zsh
if [ -f ~/.dotfiles/zsh/import.zsh ]; then
  source ~/.dotfiles/zsh/import.zsh
fi
```

### 3. Save and reload .zshrc:
```zsh
$ source ~/.zshrc
```

## iTerm2 Setup

This repository contains my iTerm2 configuration for multiple machines.

### Configure iTerm2 to use the custom folder

1. Open iTerm2 → Preferences → General

1. Check **Load preferences from a custom folder or URL**

1. Select the folder: `~/.dotfiles/iterm2`

1. When prompted **"Copy Local preferences to custom folder?" → NO**

    - We want to use the settings from this repository, not the local Mac preferences

1. (Optional) Check **Save changes to folder when iTerm2 quits**

    - This ensures that any changes in iTerm2 are automatically saved back to the repository folder

### iTerm2 Hotkey

- **Toggle iTerm2 visibility** using `Option + Space`  
- Pressing this hotkey will **hide or show iTerm2** quickly, regardless of which app is currently active

