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
    PKief.material-icon-theme
    s-nlf-fh.glassit
    solnurkarim.html-to-css-autocompletion
    ritwickdey.LiveServer
    robertz.code-snapshot
    Vue.volar
)

for extenson in "${extensons[@]}"
do
    code --install-extension "$extenson"
done

# set up terminal appearance
git clone https://github.com/zakaziko99/agnosterzak-ohmyzsh-theme.git
mv agnosterzak-ohmyzsh-theme/agnosterzak.zsh-theme .oh-my-zsh/themes
rm -rf agnosterzak-ohmyzsh-theme
code .zshrc
