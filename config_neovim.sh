#!/bin/zsh

sudo dnf -y install neovim
mkdir -p ~/temp-fonts && cd ~/temp-fonts
wget 'https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/JetBrainsMono.zip'
mkdir -p ~/.local/share/fonts
unzip -o JetBrainsMono.zip -d ~/.local/share/fonts
fc-cache -fv

fc-list | grep "JetBrainsMono Nerd Font"

if [ -d "$HOME/.config/nvim" ]; then
  echo "Neovim instalado correctamente, se procede a configurar..."
  git clone https://github.com/VivaldoGP/nvim-config.git $HOME/.config/nvim
