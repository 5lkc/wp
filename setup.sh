#!/bin/bash

# list of extensons for VSCode
extensons=(
    adpyke.codesnap
    dzhavat.bracket-pair-toggler
    ecmel.vscode-html-css
    fabiospampinato.vscode-todo-plus
    formulahendry.auto-rename-tag
    humao.rest-client
    liviuschera.noctis
    ms-vscode.cpptools
    PKief.material-icon-theme
    rangav.vscode-thunder-client
    ritwickdey.LiveServer
    s-nlf-fh.glassit
    softwaredotcom.swdc-vscode
    solnurkarim.html-to-css-autocompletion
    usernamehw.errorlens
    Vue.volar
    wayou.vscode-todo-highlight
    wix.vscode-import-cost
)

# Install all extensons of the list
for extenson in "${extensons[@]}"
do
    code --install-extension "$extenson"
done

# set up terminal appearance . . .
# [1]- Install Oh-My-Zsh
sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
# [2]- Setup the "agnosterzak" theme
git clone https://github.com/zakaziko99/agnosterzak-ohmyzsh-theme.git
mv agnosterzak-ohmyzsh-theme/agnosterzak.zsh-theme .oh-my-zsh/themes
rm -rf agnosterzak-ohmyzsh-theme

# Set my Gitea credencials
git config --global user.email "papebilalysow@gmail.com"
git config --global user.name "papebsow"
git config --global credential.helper store
