#!/bin/zsh

set -e

ZSH_CUSTOM="${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}"

if [ ! -d "$HOME/.oh-my-zsh" ]; then
    echo "ERROR: no tienes instalao el oh my zsh pa"
    exit 1
fi


PLUGINS=("zsh-autosuggestions" "zsh-syntax-highlighting")

for plugin in "${PLUGINS[@]}"; do
   PLUGIN_DIR="$ZSH_CUSTOM/plugins/$plugin"
   if [ ! -d "$PLUGIN_DIR" ]; then
       echo "Instalando plugin: $plugin...."
       git clone https://github.com/zsh-users/$plugin "$PLUGIN_DIR"
       else
   	   echo "El plugin '$plugin' ya esta listo."
       fi
done

echo "Configurando plugins .zshrc...."
sed -i '/^plugins=/c\plugins=(git zsh-autosuggestions zsh-syntax-highlighting)' "$HOME/.zshrc"
echo "Ya quedaron todos los plugins pa. Abre una nueva terminal pa ver que show."
