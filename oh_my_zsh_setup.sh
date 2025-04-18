#!/bin/zsh

set -e

if [ ! -d "$HOME/.oh-my-zsh" ]; then
    echo "Instalando Oh my zsh..."
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
else
    echo "Oh my zsh instalado previamente"
fi

ZSH_THEME="gozilla"

echo "Configurando el tema '$ZSH_THEME' en .zshrc..."
sed -i "s/^ZSH_THEME=.*/ZSH_THEME=\"$ZSH_THEME\"/" "$HOME/.zshrc"

echo "Tema configurado"

