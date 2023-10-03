#!/bin/bash

# list of extensons for VSCode
extensons=(
    dzhavat.bracket-pair-toggler
    ecmel.vscode-html-css
    usernamehw.errorlens
    fabiospampinato.vscode-todo-plus
    humao.rest-client
    liviuschera.noctis
    mintlify.document
    ms-vscode.cpptools
    PKief.material-icon-theme
    s-nlf-fh.glassit
    solnurkarim.html-to-css-autocompletion
    ritwickdey.LiveServer
    robertz.code-snapshot
    Vue.volar
)

# Install all extensons of the list
for extenson in "${extensons[@]}"
do
    code --install-extension "$extenson"
done

# set up terminal appearance . . .
# Install Oh-My-Zsh and set up the "agnosterzak" theme
sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
git clone https://github.com/zakaziko99/agnosterzak-ohmyzsh-theme.git
mv agnosterzak-ohmyzsh-theme/agnosterzak.zsh-theme .oh-my-zsh/themes
rm -rf agnosterzak-ohmyzsh-theme

# Define the old and new theme settings
old_theme='ZSH_THEME="robbyrussell"'
new_theme='ZSH_THEME="agnosterzak"'

# Define the .zshrc file
zshrc_file="$HOME/.zshrc"

# Check if the .zshrc file exists
if [ ! -f "$zshrc_file" ]; then
    echo "Error: .zshrc file not found in your home directory."
    exit 1
fi

# Use sed to replace the old theme setting with the new theme setting
sed -i "s|$old_theme|$new_theme|g" "$zshrc_file"

# Apply the new theme
exec zsh

# Set my Gitea credencials
git config --global user.email "papebilalysow@gmail.com"
git config --global user.name "papebsow"
git config --global credential.helper store
