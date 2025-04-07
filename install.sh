#!/bin/bash

# Create symlinks
echo "Creating symbolic links..."

# For Neovim
mkdir -p "$HOME/.config"
ln -sf "$(pwd)/.config/nvim" "$HOME/.config/"

# For tmux
ln -sf "$(pwd)/.tmux.conf" "$HOME/.tmux.conf"
ln -sf "$(pwd)/.tmux" "$HOME/.tmux"

# Additional configs
ln -sf "$(pwd)/.bashrc" "$HOME/.bashrc"
ln -sf "$(pwd)/.zshrc" "$HOME/.zshrc"
# Add more symlinks as needed

# Install tmux plugin manager if not already installed
if [ ! -d "$(pwd)/.tmux/plugins/tpm" ]; then
  echo "Installing tmux plugin manager..."
  git clone https://github.com/tmux-plugins/tpm "$(pwd)/.tmux/plugins/tpm"
fi

echo "Dotfiles installed successfully!"
echo "Start a new tmux session and press prefix + I to install tmux plugins."
echo "Start Neovim to install plugins."
