#!/bin/bash

# list of extensons for VSCode
extensons=(
    adpyke.codesnap
    alfredbirk.tailwind-documentation
    clarkyu.vscode-sql-beautify
    bradlc.vscode-tailwindcss
    dzhavat.bracket-pair-toggler
    ecmel.vscode-html-css
    fabiospampinato.vscode-todo-plus
    formulahendry.auto-rename-tag
    humao.rest-client
    liviuschera.noctis
    PKief.material-icon-theme
    qwtel.sqlite-viewer
    rangav.vscode-thunder-client
    ritwickdey.LiveServer
    s-nlf-fh.glassit
    solnurkarim.html-to-css-autocompletion
    TabNine.tabnine-vscode
    usernamehw.errorlens
    Vue.volar
    WallabyJs.quokka-vscode
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
