#!/bin/bash

# list of extensons for VSCode
extensons=(
    adpyke.codesnap
    dzhavat.bracket-pair-toggler
    ecmel.vscode-html-css
    fabiospampinato.vscode-todo-plus
    formulahendry.auto-rename-tag
    hediet.vscode-drawio
    liviuschera.noctis
    ms-vscode.cpptools
    ms-vscode.makefile-tools
    PKief.material-icon-theme
    qwtel.sqlite-viewer
    s-nlf-fh.glassit
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
